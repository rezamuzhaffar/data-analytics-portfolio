import pandas as pd
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup
import psycopg2
from sqlalchemy import create_engine

website = 'https://www.sql-practice.com/'
driver = webdriver.Chrome()
driver.get(website)

driver.implicitly_wait(10)
sql_database_button = driver.find_element('xpath', '(//div[@class="tab__link"])[1]')
sql_database_button.click()
time.sleep(10)

def scrap_table(tab_link_x_path, table_button_x_path, num_of_pages):
    tab_link = driver.find_element('xpath', tab_link_x_path)
    table_button = driver.find_element('xpath', table_button_x_path)
    action = webdriver.ActionChains(driver)    
    action.move_to_element(tab_link).perform()
    table_button.click()

    if num_of_pages > 1:
        driver.implicitly_wait(10)
        next_button = driver.find_element('xpath', '//button[@title="Next"]')
    page_source = driver.page_source
    soup = BeautifulSoup(page_source, 'lxml')
    table = soup.find("table", class_ = "gridjs-table")

    headers = table.find_all("th")

    header_titles = []
    for i in headers:
        title = i.text
        header_titles.append(title)

    df = pd.DataFrame(columns=header_titles)

    for page in range(num_of_pages):
        if num_of_pages > 1:
            if page > 0:
                next_button.click()
        page_source = driver.page_source
        soup = BeautifulSoup(page_source, 'lxml')
        table = soup.find("table", class_ = "gridjs-table")
        rows = table.find_all("tr")
        for i in rows[1:]:
            data = i.find_all("td")
            row = []
            for tr in data:
                row.append(tr.text)
            l = len(df)
            df.loc[l] = row
    return df

patients_tab_link = '(//div[@class="tab__link-thin"])[1]'
patients_button = '(//img[@alt="learn sql"])[2]'
patients = scrap_table(patients_tab_link, patients_button, 46)

admissions_tab_link = '(//div[@class="tab__link-thin"])[2]'
admissions_button = '(//img[@alt="learn sql"])[3]'
admissions = scrap_table(admissions_tab_link, admissions_button, 51)

doctors_tab_link = '(//div[@class="tab__link-thin"])[3]'
doctors_button = '(//img[@alt="learn sql"])[4]'
doctors = scrap_table(doctors_tab_link, doctors_button, 1)

province_names_tab_link = '(//div[@class="tab__link-thin"])[4]'
province_names_button = '(//img[@alt="learn sql"])[5]'
province_names = scrap_table(province_names_tab_link, province_names_button, 1)

driver.close()

patients['patient_id'] = patients['patient_id'].astype(int)
patients[['height', 'weight']] = patients[['height', 'weight']].astype(float)
patients['birth_date'] = pd.to_datetime(patients['birth_date'], format='%Y-%m-%d')

admissions[['patient_id', 'attending_doctor_id']] = admissions[['patient_id', 'attending_doctor_id']].astype(int)
admissions['admission_date'] = pd.to_datetime(admissions['admission_date'], format='%Y-%m-%d')
admissions['discharge_date'] = pd.to_datetime(admissions['discharge_date'], format='%Y-%m-%d')

doctors['doctor_id'] = doctors['doctor_id'].astype(int)

conn = psycopg2.connect(
    host = 'localhost',
    port = 5432,
    user = 'postgres',
    password = '11111111',
    dbname = 'hospital'
)

cursor = conn.cursor()

# dialect+driver://user:password@server/database
engine = create_engine('postgresql+psycopg2://postgres:11111111@localhost/hospital')

try:
    patients.to_sql('patients', engine, if_exists = 'fail', index = False)
    admissions.to_sql('admissions', engine, if_exists = 'fail', index = False)
    doctors.to_sql('doctors', engine, if_exists = 'fail', index = False)
    province_names.to_sql('province_names', engine, if_exists = 'fail', index = False)
except ValueError:
    pass

conn.close()