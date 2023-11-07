--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admissions (
    patient_id integer NOT NULL,
    admission_date date NOT NULL,
    discharge_date date NOT NULL,
    diagnosis character varying(50) NOT NULL,
    attending_doctor_id integer NOT NULL
);


ALTER TABLE public.admissions OWNER TO postgres;

--
-- Name: doctors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctors (
    doctor_id integer NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    specialty character varying(25) NOT NULL
);


ALTER TABLE public.doctors OWNER TO postgres;

--
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    patient_id integer NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    gender character(1) NOT NULL,
    birth_date date NOT NULL,
    city character varying(30) NOT NULL,
    province_id character(2) NOT NULL,
    allergies character varying(80),
    height numeric(3,0) NOT NULL,
    weight numeric(4,0) NOT NULL
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- Name: province_names; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.province_names (
    province_id character(2) NOT NULL,
    province_name character varying(30) NOT NULL
);


ALTER TABLE public.province_names OWNER TO postgres;

--
-- Data for Name: admissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admissions (patient_id, admission_date, discharge_date, diagnosis, attending_doctor_id) FROM stdin;
1	2018-11-06	2018-11-08	Ovarian Dermoid-Cyct	21
1	2018-09-20	2018-09-20	Ineffective Breathin Pattern R/T Fluid Accumulatio	24
3	2019-01-24	2019-01-29	Cardiac Arrest	2
3	2018-10-21	2018-10-27	Congestive Heart Failure	8
6	2018-06-13	2018-06-15	Asthma Exacerbation	3
6	2018-11-08	2018-11-09	Uterine Fibroid	22
7	2018-06-24	2018-07-03	Cancer	8
8	2018-09-18	2018-09-21	Amigima	6
9	2019-03-02	2019-03-09	Osteoarthritis	8
9	2018-12-31	2018-12-31	Ruptured Appendicitis	19
10	2018-12-30	2019-01-05	Zenkers Diverticulitis	14
10	2019-02-27	2019-02-27	Lower Quadrant Pain	27
11	2018-12-14	2018-12-16	Prostatectomy	15
12	2019-04-27	2019-05-04	Cerebral Aneurysm Rupture	21
13	2019-04-28	2019-05-01	Renal Failure	1
15	2018-10-01	2018-10-05	Hiatal Hernia	5
16	2019-01-10	2019-01-14	Pyloric Obstruction	6
16	2019-04-04	2019-04-13	Schizophrenic Disorder	12
17	2019-03-04	2019-03-04	Diabetes Mellitus	9
17	2018-12-12	2018-12-14	Fractured Femur	2
18	2018-07-02	2018-07-05	Spinal Infection	3
18	2019-04-25	2019-05-04	40 Weeks Pregnant	10
20	2019-01-30	2019-02-04	Essential Hypertension	15
21	2018-06-07	2018-06-10	Exploratory, Orthoscopic - Knee	12
21	2018-11-19	2018-11-27	Emphysema	12
22	2018-07-17	2018-07-20	Pregnancy	8
22	2018-11-04	2018-11-07	Congestive Heart Failure	13
23	2019-04-07	2019-04-15	Ca. Of Blatter	26
23	2019-01-18	2019-01-22	Enlarged Bunion On Left Primary Metaarsal	4
24	2019-03-18	2019-03-22	Bipolar Affective Disorder	21
24	2019-05-04	2019-05-10	Anterior MI	1
27	2018-09-10	2018-09-12	Amigima	12
28	2019-03-30	2019-03-30	Cancer Of The Stomach	26
29	2019-01-12	2019-01-14	Anterior MI	4
31	2018-09-26	2018-09-26	Cardiovascular Disease	19
32	2019-05-18	2019-05-23	Stroke (CVA)	22
32	2018-10-02	2018-10-11	Stomache Pain	12
33	2019-05-31	2019-06-01	Myocardial Infarction	14
34	2018-12-06	2018-12-07	Bladder Tomour	11
34	2018-12-24	2018-12-26	Fracture Right Distal Radius (Colles Fracture)	17
35	2018-11-29	2018-12-02	Myocardial Infarction	7
35	2019-06-05	1971-01-05	Possible Renal Calculi	8
36	2019-05-08	2019-05-12	Lung Cancer (Rt. Lung)	20
37	2019-03-09	2019-03-18	Basal Skull Fracture	27
37	2018-11-08	2018-11-10	Rt. Nephrectomy	3
38	2018-11-25	2018-11-27	Chronic Obstructive Pulmonary Disease	6
39	2019-03-13	2019-03-22	Fibroids	12
39	2019-01-17	2019-01-18	Peptic Ulcer	12
40	2018-12-03	2018-12-04	Appendicitis	13
40	2018-09-04	2018-09-12	Spinal Compresion	5
41	2018-06-13	2018-06-21	Chest Pain	20
45	2018-11-15	2018-11-23	Post Partum Hemmorage	6
46	2019-01-01	2019-01-06	Caeserian Section	15
46	2018-06-08	2018-06-16	Severe Substernal Pain Radiating To Left Shoulder	22
47	2019-02-02	2019-02-08	Appendicitis	3
48	2018-08-15	2018-08-18	Pneumonia	11
49	2018-06-24	2018-06-30	Unable To Void.	7
51	2018-07-16	2018-07-18	Undiagnosed Chest Pain	1
51	2018-11-05	2018-11-11	Hysterectomy	14
52	2019-05-10	2019-05-14	Prostatectomy	14
53	2018-10-24	2018-10-24	Urinary Tract Infection	8
53	2018-11-17	2018-11-22	Pyelonephritis	2
54	2018-10-31	2018-11-03	Diabetes	21
54	2019-04-07	2019-04-07	Hypertension	21
56	2018-12-11	2018-12-13	Abdominal Perineal Resection	25
56	2018-10-07	2018-10-16	Cardiovascular Disease	26
58	2018-11-12	2018-11-15	Cardiovascular Disease	14
59	2018-11-08	2018-11-15	Birth By Caeserian Section	18
60	2018-09-12	2018-09-13	Impaired Gas Exchange	2
60	2019-03-17	2019-03-18	Kock Pouch Urinary Diversion	25
61	2018-09-02	2018-09-05	Cva (Left) - Cerebral Vascular Accident (Stroke)	20
61	2018-11-16	2018-11-19	Chronic Bronchitis	16
62	2018-10-15	2018-10-19	Manic Depression	14
62	2018-12-11	2018-12-16	Rheumataoid Arthritis	2
63	2018-08-28	2018-08-31	Really Sick	21
64	2019-05-05	2019-05-14	Unable To Void.	17
66	2019-05-10	2019-05-14	Diabetes Mellitus	17
67	2018-10-20	2018-10-29	Pregnancy	15
67	2019-02-09	2019-02-15	Ovarian Cancer	21
68	2018-12-02	2018-12-07	Diabetes Mellitus	12
68	2018-11-05	2018-11-09	Pregnancy	11
69	2019-05-02	2019-05-08	Asthma	12
70	2018-07-17	2018-07-17	Migraine	20
71	2018-08-07	2018-08-11	Post Partum Hemmorage	10
71	2018-11-21	2018-11-27	Bronchiolitis	20
73	2019-01-24	2019-01-27	Ovarian Cancer	6
73	2019-03-09	2019-03-15	Lung Cancer	17
74	2018-11-04	2018-11-06	Fractured Right Femur (Compound)	25
75	2018-10-13	2018-10-22	Headache	7
76	2018-09-25	2018-10-03	Appendicitis	11
76	2019-01-12	2019-01-20	Pain In Abdomen Left Side	23
77	2018-06-18	2018-06-26	Head Injury M.V.A.	18
77	2018-10-25	2018-11-02	Asthma	2
78	2018-06-17	2018-06-17	Hypertension	17
79	2019-02-19	2019-02-22	Hypertension	10
79	2019-02-28	2019-03-05	3rd Degree Burn	27
81	2018-12-07	2018-12-11	Angina Pectoris	27
81	2019-04-27	2019-05-03	Repair Stab Wound	22
82	2019-01-06	2019-01-07	L4-Lf Spinal Fusion	9
83	2019-05-13	2019-05-17	Enlarged Bunion On Left Primary Metaarsal	26
84	2019-01-12	2019-01-14	Endometriosis	18
84	2019-01-02	2019-01-07	Anterior Myocardial Infraction	2
86	2019-05-21	2019-05-27	Pregnancy	14
87	2019-02-05	2019-02-07	Uterine Fibroid	11
87	2019-04-11	2019-04-15	Pneumonia	15
88	2018-07-04	2018-07-06	Enlarged Bunion On Left Primary Metaarsal	26
88	2019-02-07	2019-02-16	Emphysema	15
90	2018-06-27	2018-07-01	Cancer	11
91	2018-08-30	2018-08-30	Congestive Heart Failure	3
91	2019-03-15	2019-03-18	Emphysema	13
92	2018-08-05	2018-08-13	Fractured Femur	7
92	2019-01-03	2019-01-03	Osteo Arthtitis Knee	5
93	2018-11-18	2018-11-27	Crohns Disease	11
93	2019-05-20	2019-05-20	Left Creebral Vascular Accident	12
94	2018-06-16	2018-06-18	Left Shoulder Rotator Cuff Repair	22
97	2018-07-07	2018-07-16	Ovarian Cancer	24
98	2019-04-10	2019-04-17	Pregnancy	25
98	2018-12-15	2018-12-22	Birth By Caeserian Section	5
100	2018-12-04	2018-12-13	Depression, Dementia	22
100	2018-11-06	2018-11-14	Respiratory Failure	21
101	2019-05-17	2019-05-26	Stroke (CVA)	8
102	2018-10-28	2018-11-02	Melanoma, Cancer	3
103	2019-02-13	2019-02-22	Ovarian Cyst	22
103	2018-11-04	2018-11-10	Basal Skull Fracture	2
104	2019-01-02	2019-01-10	Abdominal Pain	25
105	2018-10-04	2018-10-06	Pneumonia	6
106	2018-06-26	2018-06-29	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	2
108	2019-05-20	2019-05-28	Decubitus Ulcer	15
108	2019-03-17	2019-03-19	Unstable Angina	12
110	2019-02-18	2019-02-18	Biliary Colic	14
110	2019-04-08	2019-04-17	Lumbar Disc Protrusion	23
111	2019-02-18	2019-02-22	Total Hysterectomy	1
111	2018-08-25	2018-08-25	Subdural Hematoma	27
112	2018-09-25	2018-10-03	Amyotopic Lateral Scletosis	5
112	2018-07-11	2018-07-13	Obsessive - Compulsive Order	23
113	2018-10-21	2018-10-21	2nd & 3rd Degree Burns To Right Arm / Both Legs	13
114	2019-02-11	2019-02-11	MVA HI	26
115	2019-01-06	2019-01-13	Myocardial Infarction	11
115	2018-08-21	2018-08-29	CHF	12
117	2018-07-10	2018-07-15	Myocardial Infarction	17
118	2018-08-27	2018-09-04	Anterior MI	25
119	2018-08-09	2018-08-10	Renal Failure	12
119	2018-08-05	2018-08-14	Colorectal Cancer	18
120	2019-04-05	2019-04-13	Migraine	7
120	2018-10-04	2018-10-04	Uterine Fibroid	26
121	2018-09-05	2018-09-13	Anterior Myocardial Infraction	10
122	2018-06-26	2018-06-28	Cerebrovascular Accident (Stroke)	9
123	2019-03-30	2019-03-30	Pregnancy	6
123	2018-07-09	2018-07-11	Back Injury	21
124	2019-02-26	2019-03-06	Zenkers Diverticulitis	13
125	2019-05-16	2019-05-24	Labour	20
125	2018-10-30	2018-11-03	Myocardial Infarction (MI)	13
126	2018-08-20	2018-08-24	Rheumataoid Arthritis	4
126	2018-12-06	2018-12-15	Paranoid Schizophrenic	5
127	2019-05-01	2019-05-07	Chest Infection	19
128	2018-08-03	2018-08-12	Prostatectomy	5
128	2018-07-31	2018-08-07	Hunting Disease	16
129	2019-02-06	2019-02-08	Pain In Abdomen Left Side	7
129	2019-04-02	2019-04-07	Pregnant	11
130	2019-05-19	2019-05-28	Cancer	19
131	2019-03-04	2019-03-12	Hypoglycemia	13
131	2018-06-07	2018-06-07	Amyotopic Lateral Scletosis	20
132	2018-07-03	2018-07-03	Appendicitis	2
133	2019-04-03	2019-04-12	Ovarian Dermoid-Cyct	2
133	2018-07-20	2018-07-21	Congestive Heart Failure	26
135	2019-04-06	2019-04-12	Caeserian Section	21
137	2018-10-26	2018-10-27	Pregnancy	23
137	2019-04-30	2019-05-06	Pregnancy	13
139	2018-10-25	2018-10-28	Pyclonephritis	18
143	2018-09-13	2018-09-15	Ca R Breast	26
145	2018-09-12	2018-09-21	Pregnant	25
145	2018-10-30	2018-10-30	Rll Pneumonia	20
147	2018-06-14	2018-06-21	Congestive Heart Failure	19
147	2019-03-09	2019-03-13	Pregnancy	18
148	2018-10-03	2018-10-12	Myocardial Infarction	15
148	2018-12-07	2018-12-11	Fractured L. Tibia	17
150	2018-12-01	2018-12-03	Osteomyslitis - Right Hip	14
150	2018-07-31	2018-08-02	Manic Depression	12
151	2019-05-18	2019-05-26	Fractured Left Hip	14
151	2019-01-23	2019-01-23	Broken Hip	27
152	2018-11-10	2018-11-11	Fractured Hip	6
154	2019-04-17	2019-04-24	Pain In Abdomen Left Side	24
154	2018-12-22	2018-12-27	Latent Phase Of First Stage Labour	4
155	2018-07-25	2018-07-27	Multiple Sclerosis	2
156	2018-09-11	2018-09-11	Scatica	11
156	2019-01-04	2019-01-06	Cva-Right-Sided-Weakness	20
158	2018-09-22	2018-09-24	Fractured Right Humeral Head	21
159	2018-10-06	2018-10-14	Cleft Palate And Complete Unilateral Cleft Up	9
159	2018-11-16	2018-11-16	Fractured Left Leg	13
160	2018-06-09	2018-06-18	Dementia	24
161	2018-08-02	2018-08-10	Asthma	12
162	2018-11-03	2018-11-06	Unstable Angina	15
163	2018-06-11	2018-06-14	Ulcerative Colitis	27
164	2018-06-30	2018-07-04	Cervical Spinal Tumor	9
164	2018-12-17	2018-12-21	40 Weeks Pregnant	2
165	2018-08-03	2018-08-10	3rd Degree Burn To Face	6
166	2018-08-04	2018-08-10	Immobility R/T Pain And Swelling R Ankle	2
168	2018-10-08	2018-10-17	Birth By Caeserian Section	15
168	2018-07-11	2018-07-17	Congestive Heart Failure	5
170	2018-11-08	2018-11-11	Bladder Cancer	21
170	2018-10-12	2018-10-20	Asthma	13
171	2019-03-11	2019-03-16	Cancer Of The Stomach	2
171	2019-03-05	2019-03-11	Angina	18
172	2019-01-26	2019-01-31	Appendicitis	11
172	2019-05-07	2019-05-10	Osteoarthritis	1
173	2018-10-19	2018-10-24	Interstitial, Pulmonary Edema	4
363	2018-10-04	2018-10-07	Bronchitis	23
174	2019-03-15	2019-03-19	Spinal Infection	20
176	2018-08-25	2018-08-26	Labour	17
177	2018-08-09	2018-08-12	Amigima	19
177	2019-03-15	2019-03-23	Paranoid Schizophrenia	4
178	2018-10-30	2018-11-03	Dementia	17
179	2018-07-07	2018-07-11	Myocardial Infarction	27
179	2018-12-27	2019-01-03	Pregnancy	7
180	2019-01-13	2019-01-20	Dehydradion, Vomiting	25
182	2018-10-31	2018-11-09	Crohns Disease	20
183	2019-02-01	2019-02-10	Pneumonia	6
185	2019-02-28	2019-03-02	Pregnant	21
186	2019-02-13	2019-02-21	Pregnancy	18
191	2019-01-15	2019-01-21	Cerebrovascular Accident (Stroke)	7
191	2019-05-24	2019-05-31	Severe Pain + Tenderness In Left Calf	20
193	2019-05-04	2019-05-09	Alt. In Emotional Integrity - Anxiety	10
194	2019-02-12	2019-02-18	Fractured L. Tibia	23
197	2018-09-01	2018-09-03	Fractured Right Humeral Head	14
197	2019-02-16	2019-02-20	Appendicitis	10
199	2018-12-25	2019-01-01	CHF	14
200	2019-04-23	2019-04-30	Diabetes Mellitus	7
201	2018-11-08	2018-11-17	Anorexia Nervosa	16
201	2019-03-15	2019-03-23	Stress Incotinence	15
202	2018-12-15	2018-12-15	Headache	1
202	2018-08-08	2018-08-08	Chest Pain	19
205	2019-01-31	2019-02-07	3rd Degree Burn	5
206	2018-09-03	2018-09-08	Stomach Ulcer	25
207	2018-06-18	2018-06-25	Dementia	10
207	2018-09-04	2018-09-10	Atrial Fibrillation R/O MI	4
208	2018-11-03	2018-11-03	Turp	22
208	2018-09-26	2018-10-01	Head Injury M.V.A.	4
209	2018-06-11	2018-06-14	Atrial Fibrillation R/O MI	22
209	2019-02-24	2019-02-24	Injury Lt Patella Inferior	22
210	2018-10-08	2018-10-09	Multiple Fractures Of R Scapula. Insertion Of Pins	22
210	2018-12-16	2018-12-19	Fractured Femur	9
211	2019-01-24	2019-01-26	MI	12
212	2018-06-20	2018-06-21	Myocardial Infarction	7
212	2019-04-29	2019-05-03	Cardiovascular Disease	14
213	2018-10-23	2018-10-31	Appendicitis	4
213	2019-04-20	2019-04-21	Coronary Artery Disease	8
215	2019-01-14	2019-01-17	2nd & 3rd Degree Burns To Right Arm / Both Legs	23
215	2018-09-12	2018-09-14	Osteoarthritis Right Knee	20
216	2018-07-02	2018-07-04	Rul Pneumonia	3
216	2019-05-30	2019-06-01	Fractured Skull	24
221	2018-08-10	2018-08-16	Fractured Left Leg	27
222	2019-01-04	2019-01-07	Basal Skull Fracture	24
223	2018-06-24	2018-07-02	Subarachroid Hemorrhage	13
223	2018-10-14	2018-10-18	Congestive Heart Failure	23
224	2018-06-14	2018-06-14	Bronchiolitis	11
224	2019-04-20	2019-04-23	Left Lobar Pneumonia	26
226	2019-01-03	2019-01-03	Hypertension	13
227	2018-10-26	2018-10-27	Crohns Disease	19
227	2018-07-11	2018-07-18	Breast Cancer	23
228	2018-12-18	2018-12-18	Fibromyalgia	1
228	2018-09-09	2018-09-14	Fractured Left Hip	9
229	2018-12-30	2019-01-02	2nd Degree Burn Of Face	8
230	2019-05-31	1971-01-05	Rul Pneumonia	2
230	2018-10-03	2018-10-09	Congestive Heart Failure	2
231	2019-03-12	2019-03-14	Fracture Of Left Femur	24
232	2019-02-22	2019-02-25	Chest Pain	15
232	2019-03-26	2019-03-26	Chronic Obstructive Pulmonary Disease	23
234	2019-03-04	2019-03-08	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	17
234	2018-08-19	2018-08-22	Broken Hip	20
235	2019-02-25	2019-02-28	Congestive Heart Failure	7
236	2019-06-02	1971-01-05	Pneumonia	6
236	2019-05-15	2019-05-24	Schizophrenic Disorder	27
237	2019-04-17	2019-04-26	Diabetes Mellitus	5
237	2018-11-24	2018-11-29	Chronic Caugh Disease	22
240	2019-04-07	2019-04-16	Hallecinations	3
240	2018-09-27	2018-10-06	Parkinsons Disease	2
241	2018-10-21	2018-10-21	Pain In Abdomen Left Side	25
241	2018-12-23	2019-01-01	Dehydration	24
242	2018-07-10	2018-07-18	Congestive Heart Failure	24
242	2018-11-24	2018-11-30	Pregnancy	8
243	2019-01-12	2019-01-16	Diabetes Mellitus	21
243	2019-03-03	2019-03-11	Congestive Heart Failure	10
244	2018-09-17	2018-09-25	Fracture Right Distal Radius (Colles Fracture)	16
245	2019-02-09	2019-02-12	Spinal Infection	20
245	2018-09-04	2018-09-08	Prostate Cancer	17
246	2019-03-31	2019-04-07	Breast Cancer	10
247	2019-01-01	2019-01-04	Ruptured Appendicitis	11
247	2018-06-10	2018-06-14	Paranoid Schizophrenic	8
248	2018-11-19	2018-11-25	Atrial Arrhythmias	19
248	2018-09-16	2018-09-20	Biliary Colic	24
249	2019-01-01	2019-01-05	Acute Lower Abdominal Right-Sided Pain	8
249	2018-10-23	2018-11-01	Pyclonephritis	18
250	2018-06-11	2018-06-20	Profound Depression	15
251	2019-01-26	2019-01-30	Child Birth	23
251	2019-01-18	2019-01-26	Acute Lower Abdominal Right-Sided Pain	5
252	2018-08-28	2018-08-31	Abdominal Pain	10
253	2018-12-13	2018-12-14	Abdominal Perineal Resection	23
253	2019-03-09	2019-03-15	Ovarian Cancer	16
254	2019-01-26	2019-01-31	Coronary Artary Disease / Lt Sided Weakness	17
254	2018-07-09	2018-07-17	Lung Cancer	19
256	2018-07-24	2018-07-27	Cystocele/Stress Incontinence	19
256	2018-06-25	2018-06-28	Pneumonia	26
257	2018-09-01	2018-09-07	Angina	12
257	2018-08-01	2018-08-05	Rll Pneumonia	7
258	2019-04-10	2019-04-14	Obstructive Nephropathy	9
258	2018-07-07	2018-07-11	Gall Stones	12
259	2019-03-15	2019-03-18	Severed Spine At C3	18
260	2019-03-24	2019-03-26	Cva Right Side	11
261	2018-10-14	2018-10-22	Congestive Heart Failure	25
261	2018-09-09	2018-09-14	Active Labour	1
262	2018-06-18	2018-06-25	Congestive Heart Failure	21
264	2019-03-25	2019-04-01	Laceration On Right Leg	25
265	2018-08-12	2018-08-19	Scatica	1
265	2018-06-09	2018-06-11	Head Injury M.V.A.	25
267	2019-03-22	2019-03-25	Hypertrophy Of Prostate Gland	3
269	2019-01-15	2019-01-17	M.I.	22
269	2019-05-09	2019-05-12	Fractured Femur	13
270	2019-03-21	2019-03-23	Cancer Of The Descending Colon	26
271	2019-01-22	2019-01-29	Chlymidia	1
273	2019-03-01	2019-03-01	Acute Lower Abdominal Right-Sided Pain	24
274	2018-12-29	2019-01-01	Pneumonia	18
275	2018-08-02	2018-08-03	Immobility R/T Pain And Swelling R Ankle	11
277	2018-11-10	2018-11-10	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	8
277	2019-02-02	2019-02-04	Prostate Cancer	9
278	2019-03-21	2019-03-26	Cancer Of The Stomach	16
280	2018-12-02	2018-12-07	Asthma	2
280	2019-03-24	2019-03-28	Chronic Obstructive Pulmonary Disease	8
281	2019-05-31	2019-06-01	Pulmonary Edema	26
282	2018-10-09	2018-10-12	Schizophrenic Disorder	25
282	2018-07-01	2018-07-03	Cardiac Arrest	20
283	2018-08-08	2018-08-17	Intestinal Obstruction Hirschsprungs Disease	25
283	2018-10-28	2018-10-28	Labour	27
284	2019-04-26	2019-05-02	Cervical Spinal Tumor	1
284	2018-10-18	2018-10-22	Stress Incotinence	17
285	2018-08-02	2018-08-08	Cerebral Vascular Aneurys,	6
285	2018-07-27	2018-07-28	Hysterectomy	21
287	2019-04-19	2019-04-19	Chlymidia	4
287	2018-09-29	2018-10-03	Child Birth	27
288	2018-11-08	2018-11-15	Crohns Disease	2
289	2019-04-02	2019-04-06	Cerebral Vascular Aneurys,	10
291	2018-10-10	2018-10-17	Alzheimers	27
291	2019-05-14	2019-05-14	Fractured Femur	20
292	2018-08-31	2018-09-06	Cardiac Catheterization	14
292	2019-01-10	2019-01-12	Anorexia Nervosa	7
295	2019-02-27	2019-03-01	Cholecystectomy	8
296	2018-11-02	2018-11-09	Diabetes Mellitus	27
296	2018-08-06	2018-08-10	Pneumonia	4
297	2018-09-06	2018-09-14	Schizophrenia Paranoid Delusions	19
298	2019-01-12	2019-01-15	Rll Pneumonia	8
298	2018-08-16	2018-08-17	Pneumonia	25
300	2018-12-07	2018-12-10	Fractured Left Leg	17
301	2018-07-02	2018-07-03	Broken Rt Femur	15
301	2018-11-27	2018-11-28	Congestive Heart Failure	17
302	2019-03-13	2019-03-18	Osteoarthritis	2
303	2018-10-12	2018-10-17	Hysterectomy	7
304	2018-08-29	2018-09-05	Osteoarthritis	11
304	2018-09-16	2018-09-18	3rd Degree Burn	15
306	2018-06-06	2018-06-08	Appendicitis	20
307	2018-07-01	2018-07-10	Hunting Disease	14
308	2018-07-14	2018-07-18	Fractured Left Hip	3
310	2018-06-10	2018-06-17	Ectopic Pregnancy	3
310	2018-06-20	2018-06-27	Pain In Abdomen Left Side	1
311	2018-08-27	2018-09-01	CHF	13
312	2018-07-19	2018-07-25	Knee Replacement	21
316	2018-06-09	2018-06-15	Pyloric Obstruction	25
317	2018-12-16	2018-12-22	Total Hysterectomy	19
317	2019-02-06	2019-02-08	Severe Pain + Tenderness In Left Calf	11
318	2018-08-15	2018-08-17	Fractured Fib And Tib	23
320	2018-07-12	2018-07-15	Pneumonia	13
320	2019-06-02	1971-01-05	Pneumonia	2
321	2018-08-20	2018-08-26	Pulmonary Edema	11
322	2018-08-13	2018-08-14	Congestive Heart Failure	11
322	2018-09-20	2018-09-23	Angina Pectoris	7
324	2018-08-29	2018-09-03	Hypertension	21
324	2018-11-25	2018-12-03	Manic Depression	22
326	2018-06-15	2018-06-22	Spinal Compresion	4
326	2018-11-19	2018-11-27	Appendicitis	19
328	2019-03-20	2019-03-20	Ca R Breast	26
330	2019-02-27	2019-03-01	Congestive Heart Failure	8
332	2018-07-11	2018-07-13	Pneumothorax	11
332	2019-02-10	2019-02-16	Pregnancy	27
333	2019-04-28	2019-05-03	Chronic Caugh Disease	18
334	2018-11-22	2018-11-29	Abdominal Pain	26
334	2019-01-28	2019-01-28	Tonsillitis	4
335	2018-11-18	2018-11-18	Coronary Artary Disease / Lt Sided Weakness	3
335	2019-05-29	2019-06-03	Breast Cancer	18
336	2019-01-20	2019-01-29	Bladder Cancer	22
336	2018-09-07	2018-09-09	Tonsillitis	5
338	2018-08-25	2018-08-28	Emphysema	9
339	2018-06-09	2018-06-18	Caeserian Section	21
340	2018-12-01	2018-12-04	Zenkers Diverticulitis	22
341	2018-12-21	2018-12-21	Gunshot Wound To Head	19
342	2018-06-28	2018-07-03	Complete Unilateral Cleft Lip & Cleft Palate	5
343	2019-05-06	2019-05-14	Gastoric Ulcer	5
343	2019-03-27	2019-03-28	Unstable Angina	17
346	2018-07-17	2018-07-21	Lwr Right Quad Pain That Radiates Through Abdomen	22
346	2018-10-13	2018-10-18	Ovarian Dermoid-Cyct	13
347	2019-01-18	2019-01-25	Back Injury	19
349	2018-10-31	2018-11-03	Amyotopic Lateral Scletosis	18
349	2018-07-17	2018-07-22	Congestive Heart Failure	26
350	2018-07-14	2018-07-17	Post Partum Hemmorage	11
350	2018-06-30	2018-07-06	Pneumonia	24
351	2019-01-17	2019-01-20	Malnutrition	7
351	2019-04-10	2019-04-11	Sinus Tachcardia,	2
353	2018-11-10	2018-11-16	Pregnancy	21
354	2019-06-01	1971-01-05	Pre-Eclampsia	26
354	2019-01-06	2019-01-09	Upper Respetory Infection	25
355	2018-11-04	2018-11-12	Cholelithiasis	7
356	2018-06-28	2018-07-05	Prostatectomy	4
358	2018-10-16	2018-10-17	Asthma	10
360	2019-03-14	2019-03-17	Bronchitis	27
362	2018-07-16	2018-07-18	Gall Stones	8
362	2019-04-20	2019-04-29	Alzheimers	26
363	2019-02-06	2019-02-10	2nd Degree Burn Of Face	7
364	2019-05-23	2019-05-23	Vsa Cardiac Arrest	25
366	2018-11-19	2018-11-25	Full Term Delivery	26
366	2019-01-20	2019-01-22	C. O. P. D.	6
367	2018-06-29	2018-07-02	Fractured Right Tibia	24
367	2018-07-18	2018-07-24	Asthma	17
368	2018-08-29	2018-09-03	Open Reduction Fracture Rt Humerus	21
369	2018-10-15	2018-10-19	Dilation + Evacuation	11
369	2018-10-12	2018-10-16	Congestive Heart Failure	12
370	2019-02-20	2019-02-26	Cva-Leftside	23
371	2019-01-18	2019-01-18	Congestive Heart Failure	7
373	2019-01-12	2019-01-19	Cerebral Aneurysm	7
373	2018-07-02	2018-07-03	Fractured Hip	23
374	2018-11-08	2018-11-16	Bronchiolitis	21
375	2018-07-19	2018-07-25	Unable To Void.	13
375	2019-04-05	2019-04-09	Acute Appendicitis, Diabetes Type II	1
376	2018-11-24	2018-11-30	Broken Rt Femur	19
376	2019-03-20	2019-03-26	Angina	1
377	2018-09-29	2018-10-05	Pregnant	17
377	2018-06-08	2018-06-11	Fracture Of Fibula And Tibia	3
378	2018-10-28	2018-11-06	Osteomyslitis - Right Hip	25
378	2019-05-20	2019-05-21	Quarian Cyst	21
380	2018-07-09	2018-07-11	Fractured Femur	27
380	2018-12-12	2018-12-17	Dehydration	11
381	2019-02-28	2019-03-06	Appendicitis	18
382	2019-01-14	2019-01-21	Cerebral Vascular Aneurys,	19
384	2018-06-18	2018-06-24	Pregnancy	26
386	2019-01-14	2019-01-14	Chest Pain	5
387	2019-01-04	2019-01-10	Unable To Void.	10
387	2018-12-26	2018-12-28	Uterine Fibroid	9
388	2018-10-28	2018-10-28	Lung Cancer (Rt. Lung)	3
389	2018-07-11	2018-07-12	MI	26
390	2018-10-20	2018-10-20	Essential Hypertension	24
392	2019-03-13	2019-03-20	Lower Quadrant Pain	12
392	2019-01-17	2019-01-17	Fibroids	6
393	2018-09-21	2018-09-27	Pregnant	3
393	2018-08-23	2018-08-25	Left Creebral Vascular Accident	25
394	2019-02-06	2019-02-15	Coronary Artery Disease	19
395	2019-03-14	2019-03-15	Pregnant	23
396	2019-01-29	2019-01-30	Total Lt Hip Replacement Because Of Osteoarthritis	26
396	2018-09-10	2018-09-16	Femoral Shaft Fracture	7
397	2019-01-13	2019-01-21	Endometriosis	6
398	2019-01-27	2019-01-31	Myocardial Infarction	24
399	2018-07-21	2018-07-27	Pregnant	10
401	2018-10-30	2018-11-05	Stress Incotinence	1
402	2018-07-31	2018-08-01	Left Side CVA	4
403	2019-03-17	2019-03-17	Unstable Angina	17
405	2018-10-11	2018-10-19	Acute Bronchitis	4
406	2019-04-09	2019-04-11	Unstable Angina	20
406	2019-03-08	2019-03-15	Chest Pain With Sob	1
407	2018-08-25	2018-08-29	Cva Right Side	26
407	2019-05-16	2019-05-19	Lung Cancer	15
408	2019-03-20	2019-03-22	Head Injury M.V.A.	23
408	2018-12-18	2018-12-21	Ruptured Appendicitis	11
411	2019-04-20	2019-04-27	Fractured Femur	2
411	2019-03-22	2019-03-28	Cholenithiasis	6
412	2019-02-17	2019-02-19	Migraine	22
413	2018-06-08	2018-06-15	Major Burn To The Anterior Thoracic Region	16
413	2018-07-28	2018-07-29	Glomerulonephritis	7
414	2018-11-23	2018-11-28	Basal Skull Fracture	17
414	2018-12-23	2018-12-28	Congestive Heart Failure	25
415	2018-08-23	2018-08-28	Unstable Angina	22
415	2018-06-16	2018-06-22	Fractured Left Leg	21
418	2019-01-10	2019-01-17	Cancer Of The Stomach	21
418	2018-11-11	2018-11-18	Pregnancy	4
419	2018-06-13	2018-06-16	Pregnancy	16
419	2019-04-04	2019-04-07	Asthma	8
420	2019-02-26	2019-03-04	Fractured Right Humeral Head	4
420	2019-01-07	2019-01-08	Unstable Angina	3
421	2018-12-06	2018-12-14	Pneumonia	10
422	2018-07-24	2018-07-25	Congestive Heart Failure	11
422	2019-04-19	2019-04-26	Cholenithiasis	15
423	2019-02-12	2019-02-15	Cancer	19
423	2018-07-14	2018-07-14	Myocardial Infarction	5
424	2019-03-28	2019-04-05	Acute Otitis Media	12
427	2019-05-03	2019-05-05	Pain In Abdomen Left Side	12
427	2018-07-17	2018-07-18	Congestive Heart Failure	26
428	2019-04-19	2019-04-23	Hallecinations	17
428	2019-04-21	2019-04-24	Anterior Myocardial Infraction	27
429	2019-05-26	2019-06-02	Cystocele/Stress Incontinence	13
430	2018-11-05	2018-11-09	Osteoarthritis Right Knee	12
431	2019-04-15	2019-04-20	Pneumonia	25
431	2019-01-20	2019-01-26	Increased Intr-Cranial Pressure	13
433	2018-10-12	2018-10-18	Myocardial Infarction	2
434	2019-04-07	2019-04-13	Anemia	24
436	2018-08-13	2018-08-13	Myasthen Gravis	1
436	2019-04-02	2019-04-11	Pregnant	19
437	2018-09-15	2018-09-17	Depression, Dementia	5
442	2018-06-07	2018-06-16	Congestive Heart Failure	25
443	2018-11-05	2018-11-10	Spinal Cord Injury	19
443	2019-02-24	2019-02-27	Chronic Obstructive Pulmonary Disease	22
444	2019-01-15	2019-01-23	Fractured Hip	14
445	2019-05-06	2019-05-15	Respiratory Failure	4
447	2018-10-14	2018-10-23	Glomerulonephritis	22
448	2019-01-12	2019-01-18	Abdominal Pain	12
449	2019-04-25	2019-04-25	Total Hysterectomy	8
449	2018-11-14	2018-11-18	Multiple Myeloma	3
450	2018-09-10	2018-09-15	Peptic Ulcer Disease	27
450	2019-05-21	2019-05-22	Asthma	26
451	2018-10-03	2018-10-09	Acute Leukemia	9
451	2018-11-30	2018-12-06	Renal Calculi	5
453	2018-06-09	2018-06-17	Cancer	3
454	2019-03-30	2019-04-03	Pyelonephritis	6
454	2019-02-21	2019-02-28	Fractured Femur	2
455	2018-10-08	2018-10-10	Anterior MI	27
456	2018-07-12	2018-07-21	Hysterectomy	20
456	2018-11-26	2018-12-04	Schizophrenic Disorder	25
457	2018-06-09	2018-06-12	Rll Pneumonia	10
460	2018-07-14	2018-07-16	Alzheimers	1
461	2019-03-12	2019-03-14	Fractured Skull	11
461	2018-08-29	2018-09-04	Decubitus Ulcer	12
462	2018-12-15	2018-12-18	Cerebral Aneurysm	14
463	2018-08-12	2018-08-18	Hypertension	8
463	2019-02-10	2019-02-14	Severe Substernal Pain Radiating To Left Shoulder	5
465	2019-05-25	2019-06-01	Enlarged Bunion On Left Primary Metaarsal	17
465	2018-11-21	2018-11-23	Pregnancy	23
468	2018-10-23	2018-10-28	Epilepsy	21
469	2019-01-05	2019-01-09	Epigastric Pain	10
469	2019-02-11	2019-02-20	CHF	18
471	2019-02-28	2019-03-02	Fever N.Y.D.	4
471	2018-06-18	2018-06-23	Cva Right Side	19
472	2019-03-17	2019-03-22	COPD	19
473	2018-07-23	2018-07-27	Pneumonia	21
474	2018-07-23	2018-08-01	Angina	7
475	2018-12-28	2019-01-03	Chronic Obtrusive Pulmonary Disease	4
475	2019-03-15	2019-03-17	Cva Right Side	7
476	2019-05-23	2019-06-01	Bipolar Disorder	21
477	2018-11-21	2018-11-26	Subdural Hematoma	25
479	2018-12-20	2018-12-20	Rheumataoid Arthritis	7
479	2019-05-03	2019-05-06	Aortic Stenosis	7
481	2019-04-26	2019-05-03	Congestive Heart Failure	23
481	2019-01-16	2019-01-23	Pneumonia	20
482	2019-03-07	2019-03-13	Complete Unilateral Cleft Lip 7 Cleft Palate	14
483	2018-09-07	2018-09-13	Pregnancy	12
483	2018-11-30	2018-12-07	Cervical Spinal Tumor	23
485	2018-11-08	2018-11-10	Injury Lt Patella Inferior	17
486	2018-07-27	2018-08-03	Severe Pain + Tenderness In Left Calf	7
487	2019-02-19	2019-02-25	Cholelithiasis	3
487	2018-07-20	2018-07-27	Pyelonephritis	24
488	2019-04-21	2019-04-22	Chronic Bronchitis	22
489	2018-08-21	2018-08-24	Depression, Dementia	15
490	2018-12-27	2018-12-28	Really Sick	16
490	2019-03-30	2019-04-04	Chest Pain With Sob	27
491	2018-11-15	2018-11-18	Multiple Sclerosis	16
491	2018-08-25	2018-08-28	Appendicitis	13
492	2019-03-06	2019-03-14	Pregnancy	14
492	2019-04-16	2019-04-18	Spinal Infection	20
496	2018-07-22	2018-07-23	Fractured Tibia	7
497	2019-01-08	2019-01-14	Pulmonary Edema	18
498	2019-04-05	2019-04-09	Broken Rt Femur	15
499	2019-04-18	2019-04-20	Fractured \\"L\\" Femur	18
499	2019-05-09	2019-05-13	Congestive Heart Failure	21
500	2018-10-11	2018-10-17	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	4
500	2019-03-07	2019-03-12	Stomach Ulcer	20
501	2019-01-30	2019-01-31	Myocardial Infarction	1
501	2019-03-16	2019-03-16	Osteoarthritis Right Knee	26
502	2018-09-09	2018-09-09	Fractured Femur	9
502	2018-08-22	2018-08-27	Osteo Arthtitis Knee	6
503	2018-10-31	2018-11-01	Asthma	7
506	2019-05-12	2019-05-18	Bipolar Affective Disorder	14
506	2019-01-07	2019-01-09	Appendicitis	25
507	2019-03-25	2019-03-28	Chest Pain	7
508	2018-06-22	2018-06-22	Acute Bronchitis	17
509	2018-09-23	2018-10-02	Cerebral Aneurysm	11
509	2018-12-18	2018-12-21	Fractured Hip	11
510	2019-03-22	2019-03-26	Right Hip Replacement	23
514	2018-07-16	2018-07-18	Abdominal Perineal Resection	27
514	2019-02-17	2019-02-25	Ovarian Dermoid-Cyct	13
516	2018-09-09	2018-09-13	Parkinsons Disease	13
516	2018-12-23	2018-12-26	Asthma	7
517	2018-06-30	2018-07-07	Cancer Of The Colon	7
518	2019-02-15	2019-02-18	Myocardial Infarction	1
518	2018-10-28	2018-11-04	Cancer Of The Stomach	24
519	2019-03-20	2019-03-20	Bipolar Affective Disorder	7
521	2018-06-27	2018-06-28	Broken Hip	27
523	2019-03-12	2019-03-21	Fractured Left Hip	23
523	2018-09-14	2018-09-23	Pneumonia	4
524	2018-11-04	2018-11-04	Pyloric Obstruction	7
525	2019-05-09	2019-05-10	Acute Renal Failure	10
525	2018-12-26	2018-12-29	Ulcerative Colitis	22
526	2018-11-20	2018-11-22	Angina	3
526	2018-08-01	2018-08-10	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	17
527	2019-03-15	2019-03-16	Appendicitis	3
527	2019-05-08	2019-05-16	Abdominal Pain	26
528	2019-01-11	2019-01-12	Prostatectomy	4
528	2018-10-01	2018-10-05	M.I.	11
529	2018-11-05	2018-11-12	Immobility R/T Pain And Swelling R Ankle	3
530	2018-09-08	2018-09-14	Stomache Pain	14
531	2018-06-06	2018-06-08	Angina Pectoris	3
531	2019-05-20	2019-05-29	L. Calf Pain	9
532	2019-01-01	2019-01-01	Acute Otitis Media	24
533	2018-09-18	2018-09-26	Thrombocytopenia	20
534	2019-05-17	2019-05-18	Congestive Heart Failure	5
535	2018-06-11	2018-06-13	Repair Stab Wound	15
538	2018-12-16	2018-12-22	Multiple Fractures Of R Scapula. Insertion Of Pins	23
539	2018-11-17	2018-11-17	Renal Failure	18
540	2018-06-21	2018-06-23	CHF (Congestive Heart Failure)	4
541	2019-05-18	2019-05-19	Congestive Heart Failure	24
542	2019-04-06	2019-04-09	Abdominal Pain	14
542	2018-06-11	2018-06-12	Uterine Fibroid	17
543	2018-09-26	2018-09-27	L CVA	13
544	2019-05-30	2019-06-01	Schizophrenia Paranoid Delusions	25
544	2018-12-27	2019-01-03	Depression	20
545	2019-04-05	2019-04-12	Hiatal Hernia	11
548	2018-07-10	2018-07-17	Hypoglycemia	11
548	2018-10-09	2018-10-13	Chestpain Not Yet Diagnosed	4
549	2018-06-17	2018-06-25	Peripheral Edema	17
549	2019-01-19	2019-01-22	Major Depression B.Polar	14
551	2019-02-13	2019-02-14	Unstable Angina	11
551	2018-06-18	2018-06-22	Myocardial Infarction	25
552	2018-08-27	2018-09-01	Pneumothorax	24
553	2019-03-11	2019-03-11	Abdominal Pain	13
553	2019-03-22	2019-03-24	Impaired Gas Exchange	19
554	2018-06-17	2018-06-19	L CVA	15
557	2018-07-03	2018-07-10	Appendicitis	13
557	2018-10-05	2018-10-06	Abdominal Pain	15
558	2018-07-13	2018-07-22	Pneumonia	24
558	2018-10-25	2018-11-01	Gastoric Ulcer	25
559	2018-09-18	2018-09-27	Tuberculosis	23
559	2018-07-16	2018-07-24	Diabetes Mellitus	14
560	2018-10-18	2018-10-27	Congestive Heart Failure	15
560	2019-03-22	2019-03-26	Hypertension	6
561	2019-04-10	2019-04-14	Chest Pain	9
561	2018-11-28	2018-12-03	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	7
562	2019-05-23	2019-05-24	Breast Cancer	24
562	2019-05-25	2019-06-01	Turp	27
563	2019-02-22	2019-02-23	Myocardial Infarction	2
563	2019-03-22	2019-03-25	Emphysema	4
565	2018-11-14	2018-11-19	Hysterectomy	15
566	2018-11-28	2018-12-02	Asthma	11
566	2018-06-29	2018-07-03	Coronary Artary Disease / Lt Sided Weakness	10
567	2019-01-21	2019-01-28	Congestive Heart Failure	25
568	2019-03-13	2019-03-15	Unstable Angina	1
569	2019-02-21	2019-02-23	Pregnancy	25
571	2018-12-10	2018-12-13	Pregnancy	7
571	2018-09-25	2018-10-04	Anterior MI	16
572	2018-09-30	2018-10-04	Cardiovascular Disease	21
573	2018-08-14	2018-08-14	Possible Renal Calculi	17
575	2018-08-19	2018-08-20	Intestinal Obstruction Hirschsprungs Disease	27
575	2018-06-14	2018-06-20	Second & Third Degree Burns To Right Arm/Both Legs	6
578	2018-08-24	2018-09-02	Infertility, Secondary	16
579	2018-12-06	2018-12-12	Osteo Arthtitis Knee	19
579	2018-08-19	2018-08-27	Syncope NYD	19
580	2019-03-27	2019-04-03	Pneumonia	17
582	2018-07-12	2018-07-18	Appendicitis	8
582	2018-11-07	2018-11-08	Acute Appendicitis, Diabetes Type II	15
585	2019-02-26	2019-03-02	Lung Cancer	1
585	2018-10-20	2018-10-26	Myocardial Infarction	7
587	2019-03-28	2019-04-01	Stress Incotinence	1
588	2019-01-26	2019-01-30	Acute Bronchitis	7
590	2019-03-07	2019-03-12	Intestinal Obstruction Hirschsprungs Disease	13
591	2019-06-05	1971-01-05	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	27
593	2018-07-28	2018-08-02	Hysterectomy	24
594	2019-04-22	2019-04-27	Stroke (CVA)	25
594	2018-08-29	2018-09-02	Head Injury - Closed	23
595	2018-09-23	2018-09-28	Hunting Disease	4
595	2018-10-09	2018-10-09	Parkinsons Disease	20
600	2019-04-24	2019-05-03	Laceration On Right Leg	6
602	2018-06-15	2018-06-17	Chronic Obtrusive Pulmonary Disease	21
602	2019-03-14	2019-03-22	Cystic Fibrosis	23
603	2018-06-10	2018-06-18	Lung Cancer	8
603	2018-12-23	2018-12-24	Complete Unilateral Cleft Lip 7 Cleft Palate	16
604	2019-05-02	2019-05-11	Angina	8
604	2018-10-17	2018-10-23	Ca Prostate	1
605	2018-08-31	2018-09-01	Congestive Heart Failure	27
606	2019-04-06	2019-04-15	Fibroids	25
607	2018-08-14	2018-08-23	Severe Pain + Tenderness In Left Calf	3
608	2018-10-21	2018-10-23	Osteoarthritis Right Knee	8
608	2018-12-15	2018-12-23	Schizophrenia	2
610	2019-03-15	2019-03-21	Immobility R/T Pain And Swelling R Ankle	22
611	2019-04-15	2019-04-15	Appendicitis	3
611	2019-01-14	2019-01-21	Chest Pain	15
612	2018-12-11	2018-12-14	Hypoglycemia	25
613	2018-08-23	2018-08-30	Dementia	4
614	2019-02-07	2019-02-09	Sepis	6
615	2018-11-09	2018-11-12	Osteoarthritis	13
616	2018-11-23	2018-12-01	Uterine Fibroid	15
616	2019-01-04	2019-01-11	Tonsilectomy	27
617	2018-09-11	2018-09-13	Fracture Of Fibula And Tibia	6
618	2018-10-04	2018-10-04	Chest Pain	3
618	2018-10-30	2018-10-31	Congestive Heart Failure	3
620	2019-01-28	2019-02-02	Pain In Abdomen Left Side	14
620	2018-08-16	2018-08-17	Rll Pneumonia	21
621	2018-12-17	2018-12-17	Vsa Cardiac Arrest	10
622	2018-10-25	2018-10-30	Pregnancy	25
623	2018-08-11	2018-08-19	Myocardial Infarction (MI)	22
624	2019-01-17	2019-01-19	Congestive Heart Failure	22
624	2018-12-24	2018-12-31	Laceration On Right Leg	11
625	2019-02-28	2019-03-04	Head Injury M.V.A.	10
629	2018-10-03	2018-10-08	Coronary Artary Disease / Lt Sided Weakness	8
630	2019-05-16	2019-05-19	Possible Appendicitis	27
631	2018-10-01	2018-10-10	Interstitial, Pulmonary Edema	13
632	2019-05-26	2019-06-01	Congestive Heart Failure	16
632	2018-06-21	2018-06-26	Quarian Cyst	9
633	2018-08-28	2018-09-01	Pneumonia	26
633	2018-08-22	2018-08-24	Left Lobar Pneumonia	8
635	2019-04-06	2019-04-15	Profound Depression	18
636	2018-06-21	2018-06-22	Caeserian Section	22
638	2019-05-20	2019-05-20	Syncope NYD	27
638	2018-07-21	2018-07-30	Congestive Heart Failure	23
639	2019-01-20	2019-01-27	Sepis	12
639	2019-05-12	2019-05-21	Parkinsons Disease	5
640	2019-01-28	2019-01-29	Severe Narrowing Of Pyloric Channel	16
641	2018-12-13	2018-12-22	Impaired Gas Exchange	13
641	2018-06-30	2018-07-02	Amyotopic Lateral Scletosis	15
642	2018-12-01	2018-12-01	Chest Pain	6
643	2019-04-11	2019-04-18	Cardiac Arrest	22
644	2018-12-31	2019-01-04	Total Lt Hip Replacement Because Of Osteoarthritis	21
645	2019-04-15	2019-04-22	Acute Renal Failure	6
645	2019-05-11	2019-05-14	Unstable Angina	22
649	2018-08-11	2018-08-14	Cancer	16
649	2018-07-24	2018-07-26	Parkinsons Disease	11
650	2019-05-24	2019-05-24	Fracture Of Left Femur	25
650	2018-08-28	2018-08-30	Fractured Femur	25
651	2019-05-09	2019-05-10	Exploratory, Orthoscopic - Knee	24
652	2019-03-15	2019-03-17	Choledocholithiasis	22
652	2019-01-05	2019-01-06	Fractured Femur	20
653	2018-08-03	2018-08-04	Lung Cancer	7
653	2018-08-27	2018-09-04	Angina Pectoris	27
654	2018-09-17	2018-09-25	Lumbar Disc Protrusion	22
655	2018-08-04	2018-08-07	Choledocholithiasis	1
656	2018-07-20	2018-07-29	MVA HI	27
656	2019-02-09	2019-02-17	Knee Replacement	15
657	2018-12-03	2018-12-05	Aortic Stenosis	6
658	2018-07-24	2018-08-01	Complete Unilateral Cleft Lip 7 Cleft Palate	3
658	2018-12-23	2018-12-29	Anemia	16
659	2019-05-08	2019-05-11	Bronchitis	7
660	2018-06-17	2018-06-22	Unstable Angina	19
661	2019-05-10	2019-05-16	Myocardial Infarction	1
661	2018-09-24	2018-10-01	Simple Fracture Of The Tibia	9
662	2018-12-15	2018-12-18	Myocardial Infarction	15
662	2019-03-22	2019-03-24	Cancer	2
663	2018-08-26	2018-09-01	Dehydradion, Vomiting	2
663	2018-08-29	2018-08-29	Coronary Artery Disease	17
664	2018-08-16	2018-08-17	Second & Third Degree Burns To Right Arm/Both Legs	13
667	2019-02-06	2019-02-09	Depression, Dementia	12
667	2018-07-30	2018-07-30	Osteoarthritis	17
668	2019-02-01	2019-02-06	Fractured Fib And Tib	3
670	2018-08-24	2018-08-28	Enlarged Bunion On Left Primary Metaarsal	21
671	2018-11-13	2018-11-21	Hiatal Hernia	6
672	2018-06-16	2018-06-20	Unstable Angina	10
672	2019-05-05	2019-05-14	Chronic Obstructive Pulmonary Disease	9
673	2019-04-27	2019-04-30	Bronchitis	23
674	2019-02-07	2019-02-13	Severe Pain + Tenderness In Left Calf	2
675	2018-07-06	2018-07-13	Ca. Of Blatter	4
675	2019-01-30	2019-02-06	Congestive Heart Failure	8
676	2019-01-25	2019-01-29	Asthma	11
676	2018-06-11	2018-06-17	Poisoning	2
679	2018-11-29	2018-11-30	Cancer	12
681	2018-11-18	2018-11-23	Broken Hip	23
683	2018-06-20	2018-06-21	Pulmonay Embolism	10
684	2019-01-24	2019-01-25	Ruptured Fallopian Tube	2
684	2018-12-06	2018-12-10	Fractured Left Hip Due To Slip And Fall On Ice	17
685	2018-06-19	2018-06-25	Hypertension	15
687	2019-05-21	2019-05-25	Fractured Femur	6
687	2018-06-20	2018-06-24	Bipolar Affective Disorder	26
688	2019-03-25	2019-03-27	Prostate Cancer	15
688	2018-06-29	2018-07-02	Myocardial Infarction	14
690	2019-01-18	2019-01-27	Cystic Fibrosis	5
690	2018-09-21	2018-09-30	2nd Degree Burn Of Face	8
692	2018-10-21	2018-10-22	Stomach Ulcer	8
693	2019-04-20	2019-04-25	Bipolar Affective Disorder	18
693	2018-10-07	2018-10-13	Cancer	25
695	2019-04-08	2019-04-15	Left Shoulder Rotator Cuff Repair	7
695	2018-06-27	2018-06-27	Cardiovascular Disease	25
697	2018-06-07	2018-06-12	Left Lobar Pneumonia	3
697	2019-03-04	2019-03-08	Schizophrenia	8
701	2018-11-09	2018-11-12	MVA HI	11
701	2018-06-28	2018-06-30	Epilepsy	21
702	2019-05-02	2019-05-07	Essential Hypertension	17
702	2018-12-05	2018-12-10	Obstructive Nephropathy	13
703	2019-02-28	2019-03-08	Hypertension	1
703	2018-09-10	2018-09-12	Multiple Fractures Of R Scapula. Insertion Of Pins	14
704	2019-04-20	2019-04-22	Pregnancy	11
706	2018-12-20	2018-12-26	Congestive Heart Failure	20
707	2018-08-12	2018-08-21	Bipolar Affective Disorder	20
708	2019-05-29	2019-06-03	Congestive Heart Failure	23
709	2018-09-03	2018-09-05	Pregnancy	19
710	2018-12-20	2018-12-21	Amigima	27
711	2019-03-11	2019-03-15	Peptic Ulcer Disease	18
711	2018-08-09	2018-08-11	Congestive Heart Failure	18
713	2018-12-28	2019-01-02	Congestive Heart Failure	14
714	2019-01-15	2019-01-22	Pulmonay Embolism	19
716	2018-11-07	2018-11-15	Migraine	18
718	2018-06-06	2018-06-15	C. O. P. D.	5
718	2018-11-27	2018-11-30	Myocardial Infarction	6
719	2018-09-07	2018-09-12	Knee Replacement	26
719	2018-10-27	2018-10-29	Active Labour	1
721	2019-01-04	2019-01-13	Cardiac Catheterization	5
722	2019-02-23	2019-02-24	Ovarian Cancer	5
723	2018-10-03	2018-10-08	Biliary Colic	20
723	2018-06-29	2018-07-05	Hysterectomy	15
725	2018-08-25	2018-09-03	Ruptured Appendicitis	6
726	2019-02-11	2019-02-11	Pregnancy	16
726	2018-07-05	2018-07-08	Severe Substernal Pain Radiating To Left Shoulder	2
727	2019-01-12	2019-01-20	Fractured Right Femur (Compound)	25
728	2019-02-24	2019-02-25	Ca. Of Blatter	6
730	2018-09-29	2018-10-05	Pain In Abdomen Left Side	26
731	2018-09-19	2018-09-22	Ectopic Pregnancy	16
731	2018-12-21	2018-12-24	Cytutus	1
733	2019-03-04	2019-03-07	Multiple Fractures Of R Scapula. Insertion Of Pins	15
733	2019-03-07	2019-03-07	Chronic Obtrusive Pulmonary Disease	19
734	2019-02-17	2019-02-22	Chest Pain	4
734	2019-03-19	2019-03-19	Osteomyslitis - Right Hip	5
736	2019-01-14	2019-01-15	Congestive Heart Failure	23
737	2019-04-03	2019-04-05	Appendicitis	26
737	2019-05-29	2019-06-01	Broken Left Femur Compound Fracture	27
740	2019-05-08	2019-05-16	Tuberculosis	4
741	2018-08-24	2018-08-25	Fractured \\"L\\" Femur	21
741	2018-10-08	2018-10-09	Myocardial Infarction (MI)	9
743	2019-01-19	2019-01-25	Emphysema	24
743	2019-02-23	2019-02-26	Pregnancy	20
746	2019-02-21	2019-03-01	Latent Phase Of First Stage Labour	23
746	2019-02-25	2019-03-06	Ulcerative Colitis	5
749	2019-05-23	2019-05-31	Cancer Of The Descending Colon	7
750	2019-05-27	2019-05-30	Major Burn To The Anterior Thoracic Region	11
751	2019-05-23	2019-05-25	Pregnancy	26
751	2019-05-07	2019-05-16	Ankylkosing Spondylitis	18
752	2019-06-02	1971-01-05	Spinal Compresion	7
753	2019-01-27	2019-02-05	Ankylkosing Spondylitis	1
755	2019-03-08	2019-03-14	Caeserian Section	10
755	2018-08-15	2018-08-20	Tonsilectomy	20
756	2018-11-10	2018-11-12	Acute Bronchitis	27
756	2018-07-04	2018-07-07	Cerebral Aneurysm	8
757	2019-05-09	2019-05-12	Fractured Tibia	9
757	2019-02-09	2019-02-14	Severe Substernal Pain Radiating To Left Shoulder	15
759	2018-10-21	2018-10-23	Hyperemesis	3
759	2018-11-20	2018-11-26	CHF	20
760	2018-06-10	2018-06-18	Fractured Femur	4
761	2019-03-16	2019-03-19	Congestive Heart Failure	5
762	2019-02-08	2019-02-13	Prostate Cancer	17
762	2018-10-13	2018-10-20	Fractured Tibia	27
764	2019-01-29	2019-02-03	Infection	16
765	2018-12-16	2018-12-16	Congestive Heart Failure	3
766	2019-01-30	2019-02-01	Possible Appendicitis	9
767	2019-04-02	2019-04-10	Congestive Heart Failure	8
767	2018-08-16	2018-08-20	Possible Appendicitis	2
768	2018-07-31	2018-08-07	Hiatal Hernia	15
768	2019-01-30	2019-02-08	Fracture Right Distal Radius	21
769	2018-07-02	2018-07-10	Severe Pain + Tenderness In Left Calf	7
769	2019-02-15	2019-02-22	Exploratory, Orthoscopic - Knee	12
770	2019-05-21	2019-05-21	Paranoid Schizophrenic	11
771	2019-02-09	2019-02-12	Renal Failure	21
772	2018-11-12	2018-11-14	Hunting Disease	6
772	2018-11-29	2018-11-29	Hypoglycemia	6
773	2018-07-23	2018-07-27	Multiple Sclerosis	6
773	2018-11-19	2018-11-21	Hysterectomy	25
774	2019-04-26	2019-05-01	Pulmonary Edema	26
774	2019-01-15	2019-01-16	Ovarian Dermoid-Cyct	6
775	2018-06-26	2018-07-03	Asthma	16
776	2019-04-26	2019-05-02	Cleft Palate And Complete Unilateral Cleft Up	24
776	2019-02-22	2019-02-23	Subdural Hematoma	15
777	2018-07-07	2018-07-07	Angina	15
778	2018-07-30	2018-08-04	Pregnancy	1
780	2018-10-10	2018-10-16	Impaired Gas Exchange	17
781	2019-03-03	2019-03-08	Flanking Abdominal Pain	6
782	2019-03-09	2019-03-14	Pregnancy	24
782	2019-04-13	2019-04-19	Cerebrovascular Accident (Stroke)	11
784	2018-06-10	2018-06-16	Congestive Heart Failure	9
786	2019-05-16	2019-05-21	Abdominal Pain	18
786	2018-07-18	2018-07-18	Prostate Cancer	25
787	2019-04-03	2019-04-11	Pregnancy	19
787	2019-01-26	2019-02-04	Kock Pouch Urinary Diversion	23
788	2018-12-27	2018-12-29	Ovarian Dermoid-Cyct	25
788	2018-09-21	2018-09-21	Osteoarthritis	3
789	2018-06-07	2018-06-10	Uterine Fibroid	13
789	2018-08-03	2018-08-09	L. Calf Pain	3
790	2019-03-10	2019-03-19	CHF	19
790	2018-07-05	2018-07-07	Basal Skull Fracture	14
791	2018-08-13	2018-08-14	Manic Depression	5
792	2018-06-06	2018-06-08	Asthma	2
792	2018-10-25	2018-10-26	Pain In Abdomen Left Side	21
794	2018-11-10	2018-11-19	Fracture Right Distal Radius (Colles Fracture)	25
794	2018-10-05	2018-10-09	Birth By Caeserian Section	27
795	2018-08-18	2018-08-27	Congestive Heart Failure	3
796	2018-07-12	2018-07-16	Angina	24
797	2018-08-22	2018-08-23	Appendicitis	3
798	2019-01-30	2019-02-08	Lwr Right Quad Pain That Radiates Through Abdomen	10
800	2018-12-13	2018-12-19	Essential Hypertension	8
800	2019-04-28	2019-05-05	Appendicitis	21
801	2019-02-14	2019-02-21	Acute Renal Failure	15
801	2018-11-18	2018-11-26	Acute Lower Abdominal Right-Sided Pain	13
803	2018-09-13	2018-09-16	Fractured Left Hip Due To Slip And Fall On Ice	15
804	2019-02-13	2019-02-18	Hypertrophy Of Prostate Gland	5
804	2019-04-12	2019-04-16	Obsessive - Compulsive Disorder	17
805	2019-05-28	2019-06-01	Pulmonary Edema	20
805	2018-06-23	2018-07-02	Chronic Caugh Disease	16
806	2018-11-23	2018-11-24	Ruptured Fallopian Tube	6
806	2019-02-23	2019-02-28	Chest Pain With Sob	15
807	2019-05-26	2019-05-29	Congestive Heart Failure	15
807	2018-11-24	2018-12-02	Simple Fracture Of The Tibia	23
808	2018-06-23	2018-06-27	Appendicitis	20
808	2019-01-31	2019-01-31	Pain In Abdomen Left Side	2
812	2019-04-27	2019-05-05	Diabetes Mellitus	9
813	2018-10-04	2018-10-13	Depression, Dementia	17
814	2018-06-18	2018-06-18	Hysterectomy	15
815	2019-01-04	2019-01-05	Fibromyalgia	18
817	2019-03-10	2019-03-17	Left Lobar Pneumonia	27
818	2018-10-07	2018-10-11	Cardiac Catheterization	25
818	2018-11-11	2018-11-11	Pregnancy	6
822	2018-07-16	2018-07-25	Fracture Rt Radius	26
823	2018-12-14	2018-12-21	Anorexia Nervosa	19
824	2018-08-24	2018-08-30	Tuberculosis	13
825	2019-02-25	2019-03-06	Fractured Right Humeral Head	6
825	2019-03-16	2019-03-21	Chest Pain	10
827	2019-03-17	2019-03-20	Caeserian Section	7
828	2019-01-22	2019-01-28	Pregnancy	11
829	2019-02-11	2019-02-13	Simple Fracture Of The Tibia	12
830	2019-02-14	2019-02-20	Unable To Void.	12
831	2019-05-21	2019-05-30	Acute Bronchitis	4
831	2018-06-22	2018-07-01	Myasthen Gravis	12
832	2018-09-05	2018-09-11	Fracture Right Distal Radius (Colles Fracture)	5
832	2019-01-13	2019-01-18	Pregnant	7
834	2019-03-05	2019-03-08	Cva-Right-Sided-Weakness	13
834	2018-11-01	2018-11-07	MVA HI	6
835	2018-09-02	2018-09-06	Osteo Arthtitis Knee	20
835	2018-07-23	2018-08-01	Essential Hypertension	15
836	2019-01-12	2019-01-15	Dementia	1
836	2019-03-18	2019-03-21	Ineffective Breathin Pattern R/T Fluid Accumulatio	10
838	2019-02-14	2019-02-20	Chronic Caugh Disease	14
838	2019-01-06	2019-01-09	Congestive Heart Failure	4
839	2019-02-21	2019-02-22	Lung Cancer (Rt. Lung)	7
840	2018-07-29	2018-07-30	Subarachroid Hemorrhage	7
841	2018-10-08	2018-10-13	Left Side CVA	21
842	2018-08-04	2018-08-12	Fever N.Y.D.	15
845	2018-10-11	2018-10-19	Fractured Left Hip	23
845	2019-01-24	2019-01-24	Ovarian Cyst	19
846	2019-02-20	2019-02-28	Profound Depression	27
846	2019-01-16	2019-01-17	Stroke (CVA)	13
847	2018-11-26	2018-11-30	Pulmonary Edema	14
847	2018-09-02	2018-09-09	Fractured Right Tibia	23
848	2018-06-12	2018-06-18	Infection	12
848	2019-05-13	2019-05-13	Pregnancy	6
849	2018-11-19	2018-11-28	Hypertension	27
849	2019-04-15	2019-04-21	Ruptured Fallopian Tube	1
850	2019-02-03	2019-02-10	Chest Pain	20
851	2019-01-24	2019-01-24	3rd Degree Burn	3
852	2019-01-03	2019-01-07	Bowel Obstruction	3
853	2019-02-02	2019-02-10	Atrial Arrhythmias	17
854	2019-06-02	2019-06-03	Stomache Pain	2
855	2018-10-18	2018-10-26	Pregnant	4
855	2018-08-02	2018-08-02	Back Injury	14
856	2018-12-04	2018-12-10	Asthma	5
858	2018-10-12	2018-10-17	Diabetes Mellitus	12
859	2018-08-23	2018-08-25	Ovarian Cancer	23
859	2018-08-18	2018-08-21	Fractured Skull	9
860	2018-10-02	2018-10-08	Birth By Caeserian Section	16
861	2019-01-19	2019-01-23	Lower Quadrant Pain	17
861	2018-09-23	2018-09-23	Ineffective Breathin Pattern R/T Fluid Accumulatio	4
862	2019-05-31	2019-06-03	Pregnancy	18
862	2018-06-10	2018-06-18	Congestive Heart Failure	1
863	2018-08-08	2018-08-15	Bowel Obstruction	18
863	2018-07-06	2018-07-07	Fracture To Left Femur	1
865	2018-09-17	2018-09-25	Chronic Obstructive Pulmonary Disease	15
865	2018-07-14	2018-07-16	Chestpain Not Yet Diagnosed	26
866	2018-11-10	2018-11-14	Choledocholithiasis	18
867	2018-10-07	2018-10-11	Hysterectomy	3
869	2018-06-12	2018-06-20	Enlarged Bunion On Left Primary Metaarsal	3
870	2018-08-14	2018-08-19	C. O. P. D.	9
870	2019-01-22	2019-01-29	Hyperemesis	11
871	2019-03-14	2019-03-20	Intracerebral Bleed	23
871	2018-08-02	2018-08-05	Cervical Spinal Tumor	26
875	2019-03-29	2019-03-29	Complete Unilateral Cleft Lip & Cleft Palate	23
876	2018-09-09	2018-09-17	Emphysema	5
876	2018-07-17	2018-07-19	Fractured Right Humeral Head	18
877	2018-10-08	2018-10-09	Active Labour	16
877	2018-10-05	2018-10-07	Unstable Angina	27
878	2018-08-31	2018-09-06	Back Injury	1
879	2019-04-23	2019-04-24	Tonsilectomy	14
880	2019-06-04	1971-01-05	Cerebellar Brain Tumor Metastasis	19
881	2018-08-07	2018-08-12	Fractured Femur	17
881	2019-01-09	2019-01-16	Chronic Caugh Disease	23
882	2018-07-10	2018-07-17	Right Knee Replacement	4
882	2019-04-10	2019-04-11	Fracture Right Distal Radius	27
884	2018-09-20	2018-09-25	CHF Congestive Heart Failure	23
886	2018-07-18	2018-07-19	Active Labour	24
887	2019-01-03	2019-01-11	CHF	20
887	2018-11-18	2018-11-26	Turp	11
889	2018-09-20	2018-09-20	Appendicitis	16
889	2018-07-16	2018-07-23	Fracture Of Left Femur	5
890	2018-11-06	2018-11-15	Hypertrophy Of Prostate Gland	22
892	2019-05-06	2019-05-13	Cancer	18
892	2019-02-06	2019-02-07	Labour	11
893	2019-01-17	2019-01-19	Quarian Cyst	11
894	2018-10-15	2018-10-16	Complete Unilateral Cleft Lip 7 Cleft Palate	15
895	2018-11-06	2018-11-08	C-Section Delivery Day 4	7
898	2018-06-28	2018-07-01	Hysterectomy	17
899	2018-11-11	2018-11-14	Complete Unilateral Cleft Lip 7 Cleft Palate	19
900	2018-06-13	2018-06-17	Coronary Artery Disease	18
900	2018-07-25	2018-07-25	Asthma	5
901	2018-08-13	2018-08-16	Ineffective Breathin Pattern R/T Fluid Accumulatio	8
902	2018-09-02	2018-09-05	Breast Cancer	16
902	2019-02-28	2019-02-28	Fractured Left Hip Due To Slip And Fall On Ice	10
904	2018-07-07	2018-07-14	Bronchitis	21
906	2019-01-23	2019-01-23	Lumbar Disc Protrusion	25
906	2018-07-26	2018-08-04	Fracture Right Distal Radius (Colles Fracture)	16
907	2018-11-05	2018-11-06	Severe Rlq Pain	4
908	2018-06-16	2018-06-17	Dehydration	22
908	2018-11-06	2018-11-08	Osteoarthritis	20
910	2019-06-03	1971-01-05	Unstable Angina	10
910	2018-09-14	2018-09-20	Left Creebral Vascular Accident	4
911	2018-10-30	2018-11-02	Femoral Shaft Fracture	24
912	2018-09-29	2018-10-02	Fracture To Left Femur	25
913	2019-04-11	2019-04-15	M.I.	15
914	2018-11-13	2018-11-16	1St Stage Labour	10
915	2019-03-24	2019-03-24	Prostatectomy	15
917	2019-05-26	2019-06-04	Headache	26
918	2018-07-30	2018-08-04	Cardiac Arrest	9
918	2018-09-05	2018-09-10	Laceration On Right Leg	11
919	2018-12-23	2019-01-01	Complete Unilateral Cleft Lip 7 Cleft Palate	20
922	2018-08-26	2018-09-04	Cerebral Aneurysm Rupture	21
924	2018-10-04	2018-10-10	M.I.	24
924	2019-05-06	2019-05-10	Dementia	25
926	2018-07-25	2018-07-28	Sepis	26
926	2018-12-30	2019-01-08	Prostatectomy	7
927	2018-11-27	2018-12-03	Cholenithiasis	3
929	2018-07-30	2018-08-06	Hypertension	17
929	2018-12-22	2018-12-22	Tonsilectomy	17
931	2018-09-13	2018-09-16	Chronic Schizophrenia,Psychosis,Paranoia	10
933	2018-09-28	2018-09-30	Congestive Heart Failure	3
934	2019-02-14	2019-02-14	Myocardial Infarction	27
934	2018-06-30	2018-07-08	Appendicitis	9
935	2018-08-08	2018-08-15	Hiatal Hernia	10
936	2018-07-22	2018-07-27	Left Lobar Pneumonia	1
936	2018-06-08	2018-06-16	Ulcerative Colitis	17
937	2018-10-16	2018-10-16	Acute Bronchitis	5
938	2019-01-02	2019-01-04	Gastoric Ulcer	1
939	2019-04-08	2019-04-15	Hypertension	25
940	2018-11-12	2018-11-12	Melanoma, Cancer	2
941	2018-10-08	2018-10-16	Asthma	22
942	2018-10-24	2018-10-24	Tonsilectomy	17
943	2019-05-15	2019-05-17	Right Knee Replacement	26
944	2018-12-22	2018-12-22	Pyclonephritis	24
944	2018-10-09	2018-10-12	Uterine Fibroid	14
945	2018-09-10	2018-09-15	Ovarian Cancer	13
945	2019-02-01	2019-02-09	Anterior Myocardial Infraction	23
946	2019-02-09	2019-02-12	Alzheimers	12
947	2019-01-13	2019-01-15	Unstable Angina	17
948	2019-05-31	1971-01-05	Cerebral Aneurysm Rupture	16
949	2019-01-11	2019-01-20	Major Burn To The Anterior Thoracic Region	12
949	2019-01-28	2019-02-06	Congestive Heart Failure	15
951	2018-09-06	2018-09-10	Sepis	14
951	2018-11-27	2018-12-05	Chest Pain	8
953	2018-09-24	2018-09-30	Parkinsons Disease	6
953	2019-03-01	2019-03-05	Hysterectomy	18
954	2018-07-17	2018-07-18	Chestpain Not Yet Diagnosed	25
955	2019-01-21	2019-01-30	Open Reduction Fracture Rt Humerus	2
955	2018-07-29	2018-08-01	Hysterectomy	9
956	2018-09-01	2018-09-03	Pregnancy	15
956	2018-09-19	2018-09-28	Chest Pain	10
957	2019-02-03	2019-02-11	Cva-Right-Sided-Weakness	23
957	2018-08-09	2018-08-17	Dehydration	6
958	2018-10-15	2018-10-15	Myocardial Infarction	14
958	2018-08-16	2018-08-18	Fractured Left Hip Due To Slip And Fall On Ice	10
959	2018-12-23	2018-12-29	Fractured Left Leg	10
959	2018-12-01	2018-12-06	Severe Substernal Pain Radiating To Left Shoulder	13
960	2018-08-15	2018-08-18	Asthma	12
961	2018-11-21	2018-11-25	Sinus Tachcardia,	12
963	2019-05-29	1971-01-05	Malnutrition	1
963	2018-11-11	2018-11-15	Head Injury - Closed	5
964	2018-09-20	2018-09-23	Pneumonia	27
964	2019-03-23	2019-03-25	Fracture Of Left Femur	8
965	2019-02-24	2019-02-25	Stress Incotinence	23
965	2019-05-10	2019-05-16	Pulmonary Edema	18
966	2018-08-25	2018-08-26	Fractured Fib And Tib	5
966	2019-04-26	2019-05-03	Hypertrophy Of Prostate Gland	24
967	2018-11-29	2018-12-04	Hysterectomy	25
967	2018-12-01	2018-12-03	Congestive Heart Failure	21
969	2018-09-22	2018-09-22	Myasthen Gravis	26
970	2019-01-09	2019-01-11	Myocardial Infarction	1
971	2019-02-19	2019-02-24	Left Creebral Vascular Accident	3
971	2019-04-17	2019-04-21	Hallecinations	27
972	2018-06-25	2018-07-04	Abdominal Pain	24
973	2018-08-27	2018-08-27	Fracture Right Distal Radius (Colles Fracture)	11
974	2018-07-09	2018-07-12	Complete Unilateral Cleft Lip & Cleft Palate	12
975	2018-10-18	2018-10-24	Post Partum Hemmorage	27
975	2019-02-12	2019-02-20	Hypertension	4
976	2018-08-07	2018-08-16	Cva Right Side	17
976	2019-06-04	1971-01-05	Fractured Fib And Tib	23
977	2018-12-27	2019-01-01	Myocardial Infarction (MI)	8
977	2018-10-10	2018-10-19	Stress Incotinence	21
978	2018-10-27	2018-10-28	Osteomyslitis - Right Hip	3
979	2019-03-25	2019-03-28	Myocardial Infarction	13
979	2018-09-13	2018-09-16	Gallbladder Removed	12
980	2018-09-17	2018-09-19	Osteo Arthtitis Knee	3
981	2018-10-18	2018-10-26	Acute Appendicitis, Diabetes Type II	13
982	2018-10-25	2018-10-29	Biliary Colic	25
983	2019-04-21	2019-04-30	Chest Pain	20
985	2019-02-15	2019-02-20	Obsessive - Compulsive Disorder	4
985	2018-08-12	2018-08-17	Chest Infection	22
986	2018-09-02	2018-09-09	Orthopnea	10
986	2019-02-27	2019-03-06	Cancer Of The Colon	11
987	2018-06-07	2018-06-12	Severed Spine At C3	3
988	2018-08-10	2018-08-11	Rll Pneumonia	11
989	2019-05-28	2019-06-04	Stress Incotinence	16
992	2019-01-02	2019-01-08	Pregnant	1
993	2019-05-03	2019-05-03	Fracture Of Fibula And Tibia	2
994	2018-11-22	2018-11-27	Tonsilectomy	22
996	2018-11-26	2018-11-28	Atrial Arrhythmias	27
996	2019-02-18	2019-02-25	Bronchitis	16
998	2018-06-18	2018-06-18	Prostate Cancer	4
998	2018-09-27	2018-10-05	Lwr Right Quad Pain That Radiates Through Abdomen	18
999	2019-01-06	2019-01-07	Fractured Femur	2
1000	2019-04-14	2019-04-16	Cerebrovascular Accident (Stroke)	6
1000	2018-08-11	2018-08-20	Pregnancy	8
1001	2018-11-24	2018-11-24	Sinus Tachcardia,	13
1002	2019-04-22	2019-04-30	Cancer Of The Descending Colon	1
1002	2018-06-11	2018-06-11	C-Section Delivery Day 4	7
1004	2018-07-07	2018-07-09	Full Term Delivery	26
1005	2019-06-01	1971-01-05	Chestpain Not Yet Diagnosed	9
1007	2018-10-22	2018-10-23	Stomache Pain	17
1008	2019-01-09	2019-01-10	Pre-Eclampsia	2
1009	2019-06-03	2019-06-04	Abdominal Perineal Resection	24
1010	2018-10-09	2018-10-16	Pregnancy	8
1012	2018-06-14	2018-06-19	Pregnancy	22
1012	2018-11-07	2018-11-14	CHF (Congestive Heart Failure)	25
1013	2018-11-07	2018-11-15	Hallecinations	5
1013	2018-11-04	2018-11-09	Pregnancy	6
1014	2018-08-28	2018-08-29	Chest Pain	11
1015	2019-02-01	2019-02-07	Decubitus Ulcer	9
1017	2019-05-28	2019-06-03	Uterine Fibroid	22
1017	2018-07-05	2018-07-12	Migraine	8
1021	2019-05-19	2019-05-23	Cystocele/Stress Incontinence	12
1021	2019-04-06	2019-04-15	Major Depression B.Polar	18
1024	2018-07-26	2018-08-03	Ca. Of Blatter	3
1025	2018-11-01	2018-11-05	Broken Rt Femur	7
1026	2018-10-30	2018-11-08	Hypertrophy Of Prostate Gland	11
1026	2019-01-17	2019-01-19	Pregnant	11
1027	2019-05-07	2019-05-16	Congestive Heart Failure	21
1027	2018-09-28	2018-10-07	Prostatectomy	22
1028	2018-06-11	2018-06-20	Rul Pneumonia	4
1028	2018-06-19	2018-06-22	Fracture Of Left Femur	5
1029	2018-11-09	2018-11-10	L4-Lf Spinal Fusion	16
1029	2018-07-05	2018-07-07	Emphysema	10
1030	2019-02-02	2019-02-03	Abdominal Pain	14
1031	2019-02-12	2019-02-17	Undiagnosed Chest Pain	9
1031	2019-05-21	2019-05-28	Angina	17
1033	2019-03-25	2019-03-28	Fractured Hip	27
1033	2018-09-17	2018-09-24	Open Reduction Fracture Rt Humerus	4
1034	2018-07-11	2018-07-17	Parkinsons Disease	10
1034	2018-12-21	2018-12-28	Depression	6
1035	2018-10-31	2018-11-08	Total Left Hip Replacement	1
1036	2018-07-03	2018-07-04	Osteoarthritis	1
1037	2019-04-03	2019-04-09	Fracture Right Distal Radius (Colles Fracture)	23
1038	2018-12-01	2018-12-09	Bipolar Affective Disorder	12
1038	2018-10-28	2018-10-28	Pneumonia	10
1039	2019-02-08	2019-02-15	Possible Appendicitis	18
1039	2019-04-21	2019-04-26	Congestive Heart Failure	22
1040	2019-04-29	2019-05-06	Fractured Femur	11
1040	2018-07-02	2018-07-07	Bronchiolitis	1
1042	2019-03-06	2019-03-11	Myocardial Infarction	10
1043	2019-04-27	2019-04-30	Fractured Right Humeral Head	17
1045	2018-10-10	2018-10-19	Multiple Fractures Of R Scapula. Insertion Of Pins	11
1046	2018-09-03	2018-09-12	Breast Cancer	1
1046	2019-03-30	2019-03-30	Abdominal Perineal Resection	20
1047	2019-05-22	2019-05-31	Chronic Schizophrenia,Psychosis,Paranoia	19
1047	2019-02-10	2019-02-14	Coronary Artary Disease / Lt Sided Weakness	16
1048	2019-05-29	2019-06-04	Infertility, Secondary	15
1048	2018-10-08	2018-10-10	Myocardial Infarction	11
1049	2018-12-13	2018-12-20	Pregnancy	13
1050	2019-04-20	2019-04-29	Fractured Left Hip	20
1050	2018-12-24	2018-12-24	Congestive Heart Failure	12
1051	2018-07-10	2018-07-10	Decubitus Ulcer	20
1051	2019-03-18	2019-03-26	Broken Left Femur Compound Fracture	22
1053	2019-05-24	2019-05-28	Bipolar Disorder	11
1054	2019-05-13	2019-05-22	Ovarian Dermoid-Cyct	25
1055	2019-05-11	2019-05-14	Uterine Fibroid	20
1055	2019-05-12	2019-05-21	Cancer Of The Descending Colon	15
1056	2018-10-26	2018-10-27	Appendicitis	1
1056	2018-08-01	2018-08-07	Cerebral Aneurysm Rupture	26
1057	2019-02-25	2019-03-01	Chest Pain	22
1057	2018-09-23	2018-09-24	Myocardial Infarction	25
1058	2018-08-21	2018-08-30	Fracture Rt Radius	18
1059	2018-11-14	2018-11-20	Deep Vein Thrombosis	20
1059	2019-04-21	2019-04-29	Ulcerative Colitis	7
1060	2019-02-02	2019-02-06	Bowel Obstruction	23
1061	2018-07-07	2018-07-12	Latent Phase Of First Stage Labour	15
1062	2019-01-28	2019-02-04	Vsa Cardiac Arrest	5
1062	2018-06-18	2018-06-27	Congestive Heart Failure	23
1063	2018-06-09	2018-06-12	Stroke	15
1064	2018-07-17	2018-07-18	Total Lt Hip Replacement Because Of Osteoarthritis	5
1064	2018-09-23	2018-09-30	Hypertrophy Of Prostate Gland	19
1065	2019-02-06	2019-02-15	Lymphona	22
1065	2019-01-31	2019-02-04	Gunshot Wound To Head	10
1066	2019-03-24	2019-03-27	Obsessive - Compulsive Order	17
1067	2019-05-31	2019-06-03	Stomach Ulcer	10
1069	2018-07-04	2018-07-10	Emphysema	11
1070	2018-10-06	2018-10-06	Respiratory Failure	12
1071	2019-03-14	2019-03-19	Unstable Angina	27
1072	2019-03-13	2019-03-20	Multiple Sclerosis	8
1072	2019-02-04	2019-02-13	Cardiac Arrest	23
1073	2018-08-16	2018-08-23	Full Term Delivery	18
1073	2019-05-24	2019-05-24	Cerebrovascular Accident (Stroke)	21
1074	2019-04-01	2019-04-07	Fractured Tibia	20
1074	2019-05-23	2019-05-30	Pregnancy	18
1075	2018-07-26	2018-08-03	Ovarian Cancer	26
1076	2019-06-04	1971-01-05	Osteomyslitis - Right Hip	22
1077	2018-06-16	2018-06-25	MI	7
1078	2018-07-16	2018-07-17	Congestive Heart Failure	21
1079	2018-06-08	2018-06-11	Congestive Heart Failure	19
1079	2019-05-26	2019-05-30	Ovarian Cyst	20
1080	2018-10-12	2018-10-15	Bipolar Affective Disorder	27
1081	2018-08-24	2018-08-24	Unstable Angina	14
1081	2019-03-03	2019-03-10	Left Lobar Pneumonia	24
1082	2019-04-30	2019-05-08	Hunting Disease	1
1082	2018-07-13	2018-07-17	Chest Pain	15
1083	2018-07-11	2018-07-13	Congestive Heart Failure	5
1085	2018-12-11	2018-12-17	Appendicitis	27
1086	2019-05-01	2019-05-02	Congestive Heart Failure	15
1086	2019-01-20	2019-01-22	Cerebral Aneurysm Rupture	12
1088	2019-04-14	2019-04-22	Pregnancy	10
1089	2019-03-02	2019-03-09	Turp	7
1090	2019-02-19	2019-02-26	Pregnancy	16
1094	2018-11-29	2018-12-01	MI	3
1094	2019-04-03	2019-04-09	Lumbar Disc Protrusion	25
1095	2018-08-10	2018-08-10	Depression	1
1097	2018-06-17	2018-06-23	Chlymidia	4
1097	2018-09-02	2018-09-06	Congestive Heart Failure	1
1098	2018-07-21	2018-07-28	Acute Lower Abdominal Right-Sided Pain	21
1098	2019-05-19	2019-05-28	Cardiac Arrest	14
1101	2018-07-30	2018-07-31	Pregnancy	4
1101	2019-05-28	2019-06-05	Major Depression B.Polar	9
1103	2019-02-10	2019-02-14	Cystic Fibrosis	13
1103	2019-02-22	2019-03-03	Impaired Gas Exchange	15
1104	2019-01-06	2019-01-06	Multiple Myeloma	8
1105	2019-04-22	2019-04-26	Quarian Cyst	3
1105	2018-07-15	2018-07-23	Pregnancy	7
1106	2019-04-09	2019-04-12	Severe Pain + Tenderness In Left Calf	23
1106	2018-12-26	2019-01-01	Stomach Ulcer	18
1108	2019-05-21	2019-05-21	Unstable Angina	20
1108	2018-09-05	2018-09-08	Abdominal Pain	9
1109	2018-09-09	2018-09-15	Severed Spine At C3	18
1109	2018-11-15	2018-11-20	Cholelithiasis	27
1110	2018-09-09	2018-09-09	Left Side CVA	9
1111	2018-07-15	2018-07-17	Urinary Tract Infection	3
1111	2018-10-15	2018-10-21	Crohns Disease	16
1112	2018-11-15	2018-11-17	Back Injury	13
1113	2018-10-06	2018-10-11	Pregnancy	12
1113	2019-04-28	2019-04-28	Gallbladder Removed	27
1115	2018-10-05	2018-10-09	Lwr Right Quad Pain That Radiates Through Abdomen	14
1115	2019-02-14	2019-02-14	Angina	13
1117	2018-09-21	2018-09-27	Possible Appendicitis	12
1119	2018-10-24	2018-10-30	Rul Pneumonia	26
1122	2018-10-08	2018-10-10	Congestive Heart Failure	13
1123	2018-08-25	2018-09-01	Pulmonay Embolism	22
1123	2018-11-05	2018-11-07	CHF	19
1125	2018-08-11	2018-08-17	2nd Degree Burn Of Face	22
1125	2019-04-18	2019-04-27	Fracture Right Distal Radius	6
1126	2018-12-02	2018-12-06	Multiple Fractures Of R Scapula. Insertion Of Pins	8
1127	2019-05-27	2019-05-30	Exploratory, Orthoscopic - Knee	19
1127	2018-09-20	2018-09-26	Spinal Compresion	18
1129	2018-09-09	2018-09-13	Cancer	19
1129	2019-04-13	2019-04-14	Congestive Heart Failure	11
1130	2018-12-16	2018-12-16	Asthma	13
1131	2018-06-17	2018-06-24	Cva Right Side	23
1134	2018-10-08	2018-10-09	Anterior Myocardial Infraction	15
1136	2018-06-28	2018-06-29	Tonsillitis	6
1138	2018-06-18	2018-06-21	Chest Pain	19
1139	2019-04-08	2019-04-14	Cva (Left) - Cerebral Vascular Accident (Stroke)	8
1139	2018-06-29	2018-06-30	Pregnancy	7
1140	2019-01-15	2019-01-23	Diabetes Mellitus	4
1140	2019-06-04	1971-01-05	Ruptured Appendicitis	9
1141	2018-09-24	2018-09-26	Pregnancy	5
1142	2018-10-17	2018-10-25	Left Side CVA	9
1143	2019-02-11	2019-02-17	Injury Lt Patella Inferior	23
1145	2019-04-27	2019-05-06	2nd & 3rd Degree Burns To Right Arm / Both Legs	5
1145	2019-06-04	1971-01-05	Rul Pneumonia	10
1147	2019-03-17	2019-03-19	Bladder Cancer	1
1147	2018-12-23	2018-12-28	Uterine Fibroid	11
1148	2018-12-30	2018-12-31	Angina	23
1151	2018-07-17	2018-07-26	Possible Renal Calculi	19
1151	2018-08-07	2018-08-12	Cystic Fibrosis	2
1152	2018-10-29	2018-11-05	Really Sick	6
1153	2019-05-22	2019-05-28	Myasthen Gravis	6
1153	2018-07-03	2018-07-03	Congestive Heart Failure	20
1155	2018-10-18	2018-10-22	Myocardial Infarction	19
1156	2019-04-16	2019-04-19	Pneumothorax	7
1157	2019-05-07	2019-05-08	Chest Pain	8
1157	2018-12-10	2018-12-11	Diabetes Mellitus	13
1158	2018-08-07	2018-08-16	Peripheral Edema	4
1158	2019-04-28	2019-05-05	Impaired Gas Exchange	12
1161	2018-08-26	2018-08-31	Stomache Pain	17
1162	2019-02-16	2019-02-18	Congestive Heart Failure	2
1163	2019-04-29	2019-05-06	Ca R Breast	21
1163	2019-01-05	2019-01-07	Parkinsons Disease	20
1164	2018-08-03	2018-08-10	Appendicitis	19
1165	2019-02-13	2019-02-17	Hysterectomy	13
1165	2018-08-26	2018-08-30	Emphysema	20
1166	2019-01-09	2019-01-11	Ca R Breast	8
1166	2018-07-29	2018-08-07	Subarachroid Hemorrhage	13
1168	2019-04-25	2019-04-30	Fractured Skull	11
1168	2018-07-12	2018-07-14	Epilepsy	11
1169	2019-01-15	2019-01-16	Ruptured Appendicitis	17
1171	2019-03-18	2019-03-18	Basal Skull Fracture	6
1171	2018-11-22	2018-11-28	Fracture Rt Radius	12
1172	2018-08-07	2018-08-11	Ca R Breast	27
1173	2018-07-16	2018-07-20	Pyloric Obstruction	4
1173	2018-12-18	2018-12-18	Latent Phase Of First Stage Labour	16
1174	2019-01-08	2019-01-11	Crohns Disease	21
1174	2018-10-20	2018-10-23	Emphysema	11
1176	2018-12-23	2019-01-01	Latent Phase Of First Stage Labour	18
1177	2019-05-16	2019-05-21	Atrial Arrhythmias	24
1177	2019-05-31	2019-06-03	Acute Bronchitis	11
1178	2018-12-11	2018-12-13	Cardiac Catheterization	1
1178	2018-09-05	2018-09-06	Hypertension	13
1179	2018-08-14	2018-08-21	Second & Third Degree Burns To Right Arm/Both Legs	1
1180	2018-07-25	2018-07-27	Fracture Right Distal Radius (Colles Fracture)	17
1181	2018-09-12	2018-09-14	Breast Cancer	7
1181	2019-04-28	2019-05-02	Pregnancy	6
1185	2018-08-21	2018-08-23	Cholelithiasis	27
1186	2018-11-02	2018-11-04	C. O. P. D.	26
1187	2019-01-26	2019-01-26	Crohns	2
1187	2018-09-14	2018-09-22	Congestive Heart Failure	16
1189	2019-01-31	2019-02-08	Cerebral Vascular Aneurys,	13
1189	2018-11-12	2018-11-17	Congestive Heart Failure	26
1190	2019-03-04	2019-03-10	Multiple Myeloma	6
1191	2019-03-13	2019-03-18	Impaired Gas Exchange	25
1192	2018-09-21	2018-09-25	Abdominal Pain	23
1192	2018-10-15	2018-10-24	Osteomyslitis - Right Hip	12
1193	2018-11-27	2018-12-02	Lower Quadrant Pain	15
1194	2019-01-27	2019-02-04	Congestive Heart Failure	8
1194	2018-12-15	2018-12-18	Emphysema	9
1195	2018-08-29	2018-08-29	Severe Pain + Tenderness In Left Calf	22
1195	2019-03-13	2019-03-20	Cancer	26
1196	2018-08-28	2018-08-31	Pyloric Obstruction	10
1196	2018-09-14	2018-09-14	Hypertrophy Of Prostate Gland	11
1197	2019-03-21	2019-03-21	L4-Lf Spinal Fusion	2
1197	2019-04-18	2019-04-24	Bipolar Affective Disorder	25
1198	2019-03-31	2019-03-31	Left Shoulder Rotator Cuff Repair	9
1198	2018-07-21	2018-07-24	Myocardial Infarction	1
1199	2019-05-24	2019-05-26	Emphysema	19
1200	2019-02-13	2019-02-17	Broken Rt Femur	17
1201	2019-04-18	2019-04-18	Dementia	23
1201	2018-12-29	2019-01-01	Lymphona	7
1202	2019-06-03	1971-01-05	Infertility, Secondary	27
1203	2019-05-12	2019-05-15	Gall Stones	11
1203	2018-08-07	2018-08-11	Dilation + Evacuation	27
1204	2018-11-01	2018-11-06	Spinal Infection	12
1205	2019-04-06	2019-04-10	3rd Degree Burn	2
1207	2019-02-18	2019-02-25	Colorectal Cancer	15
1207	2018-06-10	2018-06-15	CHF (Congestive Heart Failure)	11
1208	2019-02-25	2019-02-27	Pregnancy	22
1210	2018-10-12	2018-10-14	Pulmonay Embolism	22
1210	2018-07-04	2018-07-08	Congestive Heart Failure	25
1211	2018-09-07	2018-09-14	Manic Depression	6
1211	2019-01-02	2019-01-10	Anemia	11
1212	2018-10-14	2018-10-21	C-Section Delivery Day 4	22
1212	2018-11-26	2018-12-01	Active Labour	10
1213	2018-11-09	2018-11-12	CHF (Congestive Heart Failure)	15
1214	2019-02-08	2019-02-12	Congestive Heart Failure	22
1215	2018-10-30	2018-11-06	Pre-Eclampsia	7
1217	2018-10-19	2018-10-25	Crohns	9
1219	2018-06-28	2018-06-29	Ankylkosing Spondylitis	22
1223	2018-12-13	2018-12-18	Ectopic Pregnancy	22
1223	2018-06-13	2018-06-15	Breast Cancer	26
1226	2018-06-17	2018-06-26	Infertility, Secondary	15
1228	2019-04-16	2019-04-23	Cerebral Aneurysm Rupture	15
1229	2019-04-11	2019-04-12	Congestive Heart Failure	1
1230	2018-07-21	2018-07-22	Child Birth	8
1231	2019-02-23	2019-03-03	Fractured L. Tibia	20
1231	2018-12-28	2019-01-05	Multiple Fractures Of R Scapula. Insertion Of Pins	16
1232	2019-05-10	2019-05-15	Latent Phase Of First Stage Labour	4
1233	2019-01-29	2019-02-05	Coronary Artery Disease	11
1233	2018-10-08	2018-10-08	Pregnancy	15
1236	2019-03-12	2019-03-21	C. O. P. D.	20
1236	2019-03-10	2019-03-19	Anterior Myocardial Infraction	11
1237	2019-03-12	2019-03-20	Essential Hypertension	22
1238	2019-02-04	2019-02-12	Congestive Heart Failure	19
1238	2019-01-26	2019-02-02	Chest Pain	3
1239	2018-07-25	2018-07-25	Abdominal Pain	27
1239	2018-11-21	2018-11-28	Turp(Transurethro Resection Of The Prostate Gland)	5
1240	2018-12-21	2018-12-22	Congestive Heart Failure	9
1242	2018-07-16	2018-07-19	Fractured Left Hip Due To Slip And Fall On Ice	1
1243	2018-08-19	2018-08-23	Congestive Heart Failure	7
1244	2019-01-02	2019-01-02	M.I.	16
1246	2018-08-16	2018-08-22	Anorexia Nervosa	26
1247	2018-12-30	2019-01-02	Pregnancy	4
1247	2018-12-29	2019-01-02	Uterine Fibroid	18
1248	2018-08-16	2018-08-18	Ulcerative Colitis	2
1249	2019-01-07	2019-01-08	Appendicitis	19
1249	2018-12-02	2018-12-05	Fractured Tibia	13
1250	2018-07-16	2018-07-20	Ineffective Breathin Pattern R/T Fluid Accumulatio	23
1251	2019-05-22	2019-05-27	Pregnancy	25
1251	2018-09-12	2018-09-18	Cva (Left) - Cerebral Vascular Accident (Stroke)	26
1252	2019-06-04	1971-01-05	Hysterectomy	13
1253	2018-08-22	2018-08-24	Unstable Angina	22
1254	2018-08-28	2018-08-29	Renal Failure	26
1254	2018-12-19	2018-12-22	Anterior MI	5
1255	2019-04-23	2019-04-28	Pregnancy	13
1255	2018-12-05	2018-12-13	Rheumataoid Arthritis	25
1256	2019-05-26	2019-06-01	Osteomyslitis - Right Hip	6
1257	2019-02-04	2019-02-04	Glomerulonephritis	26
1257	2019-04-18	2019-04-22	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	5
1258	2018-06-11	2018-06-18	Schizophrenia	23
1259	2019-05-04	2019-05-10	Congestive Heart Failure	19
1260	2018-10-28	2018-11-02	CHF	15
1260	2019-04-28	2019-04-29	Congestive Heart Failure	27
1262	2019-03-04	2019-03-10	Bladder Cancer	18
1263	2019-05-28	2019-05-30	Hysterectomy	7
1263	2019-03-30	2019-04-01	Left Lobar Pneumonia	9
1264	2019-05-30	2019-06-04	Dementia	11
1264	2018-07-02	2018-07-09	Alzheimers	14
1265	2019-01-18	2019-01-26	Pneumonia	8
1266	2018-09-05	2018-09-06	Pregnancy	12
1266	2018-08-22	2018-08-23	Emphysema	19
1267	2019-02-04	2019-02-08	Epilepsy	15
1267	2019-04-07	2019-04-12	Fracture Right Distal Radius (Colles Fracture)	16
1268	2019-04-11	2019-04-19	Breast Cancer	8
1269	2018-09-02	2018-09-04	Cerebral Vascular Aneurys,	8
1269	2019-02-16	2019-02-16	Pregnancy	1
1272	2019-06-05	2019-06-05	Cholecystectomy	5
1274	2018-09-03	2018-09-11	Pneumonia	16
1275	2018-10-04	2018-10-07	Lung Cancer	27
1275	2019-05-03	2019-05-05	Scatica	23
1276	2018-06-20	2018-06-23	C-Section Delivery Day 4	11
1276	2019-01-12	2019-01-15	Pregnant	2
1277	2018-10-31	2018-11-06	Unstable Angina	26
1277	2018-06-27	2018-06-29	Renal Failure	2
1278	2019-01-13	2019-01-21	Acute Lower Abdominal Right-Sided Pain	17
1278	2019-03-09	2019-03-13	Congestive Heart Failure	21
1279	2019-01-05	2019-01-10	Head Injury - Closed	17
1280	2018-09-30	2018-10-03	Pregnancy	22
1280	2018-06-12	2018-06-12	Headache	10
1281	2018-09-25	2018-09-29	Chestpain Not Yet Diagnosed	18
1281	2018-10-08	2018-10-12	Crohns Disease	16
1282	2018-09-28	2018-10-03	Pneumothorax	21
1282	2019-03-03	2019-03-07	Depression, Dementia	7
1283	2019-02-04	2019-02-12	Repair Stab Wound	26
1283	2018-07-29	2018-08-05	Myasthen Gravis	15
1285	2018-12-21	2018-12-24	Ovarian Cancer	19
1285	2018-12-24	2019-01-02	Spinal Cord Injury	26
1287	2019-03-26	2019-04-02	Upper Respetory Infection	3
1287	2018-09-30	2018-10-01	Ovarian Cyst	22
1288	2019-02-28	2019-02-28	Appendicitis	9
1288	2018-08-30	2018-08-30	Lung Cancer	11
1289	2018-10-04	2018-10-13	Decubitus Ulcer	19
1291	2019-01-27	2019-01-30	Emphysema	20
1291	2018-12-16	2018-12-23	Pyloric Obstruction	17
1292	2018-09-02	2018-09-05	Undiagnosed Chest Pain	3
1294	2018-10-19	2018-10-23	Hypertension	10
1296	2019-01-06	2019-01-14	Pulmonary Edema	11
1298	2018-12-24	2018-12-29	COPD	9
1300	2018-10-06	2018-10-10	Simple Fracture Of The Tibia	22
1301	2018-07-22	2018-07-27	Appendicitis	22
1301	2018-11-25	2018-11-28	Fractured Skull	16
1304	2018-11-09	2018-11-10	Angina	6
1305	2019-04-14	2019-04-22	Turp(Transurethro Resection Of The Prostate Gland)	25
1305	2019-05-19	2019-05-19	Fractured \\"L\\" Femur	7
1307	2019-02-20	2019-02-25	Atrial Fibrillation R/O MI	15
1308	2019-03-04	2019-03-08	Fractured \\"L\\" Femur	1
1309	2019-03-10	2019-03-12	Congestive Heart Failure	3
1309	2018-10-28	2018-11-03	Respiratory Failure	17
1310	2018-11-08	2018-11-11	Profound Depression	25
1310	2018-07-29	2018-08-04	Abdominal Pain	27
1311	2019-04-29	2019-05-01	Chest Pain	22
1311	2018-08-02	2018-08-11	Hypertension	19
1313	2019-01-21	2019-01-29	Appendicitis	8
1313	2019-01-09	2019-01-09	Severe Narrowing Of Pyloric Channel	9
1314	2018-09-11	2018-09-17	Decubitus Ulcer	6
1314	2018-06-15	2018-06-24	Dehydradion, Vomiting	21
1315	2019-01-07	2019-01-12	Diabetes	12
1317	2018-09-14	2018-09-16	Biliary Colic	14
1317	2018-11-29	2018-12-08	Possible Renal Calculi	8
1318	2018-10-14	2018-10-21	Renal Calculi	14
1319	2018-11-11	2018-11-20	Coronary Artery Disease	12
1320	2019-04-15	2019-04-24	Chronic Obstructive Pulmonary Disease	4
1321	2019-02-25	2019-02-28	Unstable Angina	6
1322	2018-07-29	2018-08-04	Fibroids	12
1322	2018-07-19	2018-07-26	Pre-Eclampsia	18
1323	2018-10-24	2018-10-27	Severe Substernal Pain Radiating To Left Shoulder	17
1325	2019-03-06	2019-03-10	Congestive Heart Failure	19
1326	2019-04-14	2019-04-15	Obsessive - Compulsive Order	11
1326	2018-09-10	2018-09-13	Left Lobar Pneumonia	1
1327	2019-01-04	2019-01-06	Atrial Fibrillation R/O MI	7
1327	2019-04-30	2019-05-06	Impaired Gas Exchange	8
1328	2019-05-01	2019-05-09	Labour	2
1329	2018-07-03	2018-07-12	Fracture To Left Femur	16
1329	2019-05-03	2019-05-06	Spinal Compresion	8
1330	2018-11-22	2018-12-01	Cholelithiasis	10
1330	2018-11-12	2018-11-14	Cancer	17
1331	2018-07-18	2018-07-21	Depression, Dementia	12
1333	2018-07-08	2018-07-11	Alt. In Emotional Integrity - Anxiety	7
1334	2018-10-05	2018-10-07	Myocardial Infarction	11
1334	2019-01-12	2019-01-21	Rt. Nephrectomy	11
1335	2019-04-20	2019-04-20	Lung Cancer	5
1335	2018-12-11	2018-12-19	Appendicitis	26
1337	2018-07-11	2018-07-11	M.V.A	5
1339	2018-08-04	2018-08-04	Really Sick	8
1339	2018-12-25	2018-12-25	CHF (Congestive Heart Failure)	2
1340	2018-08-07	2018-08-07	Peptic Ulcer	4
1340	2019-03-24	2019-03-25	Fractured Hip	5
1345	2019-03-05	2019-03-05	Rt. Nephrectomy	7
1345	2019-03-14	2019-03-15	Uterine Fibroid	6
1346	2019-02-25	2019-03-06	C. O. P. D.	19
1346	2018-07-21	2018-07-24	Laceration On Right Leg	17
1347	2018-06-20	2018-06-28	Intracerebral Bleed	24
1348	2018-12-20	2018-12-22	Pregnant	5
1349	2019-03-20	2019-03-25	Appendicitis	13
1349	2019-01-25	2019-02-02	Birth By Caeserian Section	19
1351	2018-12-29	2019-01-07	Diabetes Mellitus	2
1352	2019-04-13	2019-04-21	Bronchiolitis	16
1354	2019-05-07	2019-05-11	Renal Failure	7
1354	2018-09-29	2018-10-02	Asthma	3
1355	2018-06-15	2018-06-17	Infertility, Secondary	12
1355	2018-12-06	2018-12-13	Chronic Obstructive Pulmonary Disease	24
1356	2018-08-27	2018-09-03	Head Injury - Closed	8
1356	2018-11-07	2018-11-07	Rll Pneumonia	10
1358	2019-01-07	2019-01-14	Fracture Right Distal Radius (Colles Fracture)	16
1358	2018-08-16	2018-08-24	Laceration On Right Leg	4
1359	2018-12-06	2018-12-07	Severed Spine At C3	16
1360	2018-07-10	2018-07-11	Cerebral Aneurysm	21
1360	2018-09-04	2018-09-08	Fracture Of Fibula And Tibia	15
1361	2018-08-01	2018-08-10	Lwr Right Quad Pain That Radiates Through Abdomen	9
1361	2019-04-25	2019-05-01	Cerebrovascular Accident (Stroke)	1
1362	2019-03-23	2019-03-27	Congestive Heart Failure	6
1362	2018-08-27	2018-08-29	Chronic Obtrusive Pulmonary Disease	24
1363	2018-11-22	2018-11-23	Second & Third Degree Burns To Right Arm/Both Legs	15
1363	2019-04-03	2019-04-03	Depression	5
1365	2018-11-16	2018-11-21	CHF	13
1365	2018-09-04	2018-09-07	Emphysema	1
1367	2019-05-01	2019-05-04	Second & Third Degree Burns To Right Arm/Both Legs	4
1367	2018-07-19	2018-07-25	Broken Rt Femur	1
1368	2019-01-21	2019-01-23	Peptic Ulcer	21
1369	2018-12-21	2018-12-22	Pregnant	5
1370	2018-12-27	2019-01-03	C. O. P. D.	21
1370	2018-07-02	2018-07-05	Upper Respetory Infection	16
1371	2018-07-04	2018-07-07	Alzheimers	7
1371	2019-04-11	2019-04-17	Abdominal Pain	2
1372	2019-02-18	2019-02-22	Appendicitis	10
1372	2019-01-16	2019-01-18	Hysterectomy	22
1377	2018-07-10	2018-07-18	Flanking Abdominal Pain	4
1378	2019-04-25	2019-04-26	Bronchitis	12
1378	2018-09-28	2018-09-29	Stomache Pain	4
1379	2019-05-30	2019-06-05	Pain In Abdomen Left Side	18
1379	2018-07-15	2018-07-18	Hiatal Hernia	12
1381	2018-06-26	2018-07-03	Angina	17
1383	2018-07-12	2018-07-21	Ruptured Appendicitis	18
1384	2019-02-23	2019-02-26	Angina	15
1384	2019-03-08	2019-03-12	Appendicitis	23
1386	2018-08-30	2018-09-05	Hypoglycemia	16
1386	2019-05-12	2019-05-21	Exploratory, Orthoscopic - Knee	24
1389	2019-03-22	2019-03-23	Broken Left Femur Compound Fracture	1
1389	2018-06-15	2018-06-21	Pregnancy	22
1390	2019-04-08	2019-04-11	Breast Cancer	13
1390	2018-08-20	2018-08-26	Abdominal Pain	4
1391	2019-01-31	2019-02-09	Fractured Right Tibia	12
1393	2019-04-21	2019-04-24	Severe Pain + Tenderness In Left Calf	18
1393	2018-07-22	2018-07-22	Fractured Right Femur (Compound)	2
1395	2019-02-20	2019-02-28	Cancer Of The Stomach	25
1396	2019-05-24	2019-05-29	Appendicitis	23
1398	2019-02-11	2019-02-15	Anterior Myocardial Infraction	27
1399	2018-09-05	2018-09-12	Abdominal Pain	16
1399	2019-01-17	2019-01-20	Cerebellar Brain Tumor Metastasis	9
1400	2018-10-24	2018-10-25	Appendicitis	24
1401	2019-05-08	2019-05-11	Stomach Ulcer	16
1402	2018-09-24	2018-09-27	Dementia	22
1402	2018-11-09	2018-11-13	Fever N.Y.D.	10
1403	2018-11-06	2018-11-12	Stomach Ulcer	23
1403	2019-02-27	2019-03-08	Ruptured Fallopian Tube	7
1405	2019-03-29	2019-04-03	Interstitial, Pulmonary Edema	10
1405	2018-11-09	2018-11-11	Cardiac Arrest	14
1406	2019-04-26	2019-04-29	Zenkers Diverticulitis	10
1407	2018-12-14	2018-12-14	Pregnancy	25
1407	2018-11-05	2018-11-05	Cva-Right-Sided-Weakness	21
1408	2018-11-04	2018-11-13	Fractured L. Tibia	8
1409	2019-06-02	2019-06-04	Fractured Left Leg	10
1410	2018-09-26	2018-09-28	Manic Depression	17
1411	2018-06-07	2018-06-07	Melanoma, Cancer	27
1411	2018-08-11	2018-08-13	Congestive Heart Failure	21
1412	2019-03-06	2019-03-10	Fractured Femur	1
1413	2019-03-13	2019-03-19	Chest Pain	23
1413	2018-11-01	2018-11-01	Fractured L. Tibia	22
1414	2019-01-05	2019-01-07	Pregnancy	24
1415	2018-06-27	2018-07-05	Cholecystectomy	20
1415	2019-05-28	2019-06-05	Coronary Artery Disease	27
1417	2018-08-29	2018-09-02	Chronic Caugh Disease	18
1417	2019-05-06	2019-05-07	Caeserian Section	12
1418	2018-10-17	2018-10-19	Broken Hip	12
1419	2019-01-23	2019-01-25	Fracture Rt Radius	13
1419	2018-10-16	2018-10-20	Hunting Disease	12
1421	2018-11-16	2018-11-21	Congestive Heart Failure	3
1422	2018-07-24	2018-07-25	Ovarian Dermoid-Cyct	21
1422	2019-01-24	2019-01-31	Bipolar Affective Disorder	4
1423	2019-02-26	2019-03-07	Coronary Artery Disease	20
1423	2018-08-30	2018-09-04	Rul Pneumonia	19
1424	2019-01-21	2019-01-28	Peripheral Edema	21
1425	2019-04-03	2019-04-07	Rll Pneumonia	7
1425	2019-04-13	2019-04-18	Breast Cancer	5
1426	2019-02-15	2019-02-19	Appendicitis	5
1428	2018-11-20	2018-11-22	Spinal Cord Injury	14
1429	2018-11-12	2018-11-17	Appendicitis	3
1430	2018-08-08	2018-08-08	Abdominal Pain	1
1431	2019-03-08	2019-03-14	Chest Pain	10
1431	2019-04-19	2019-04-22	Spinal Infection	12
1432	2018-11-07	2018-11-12	Chronic Obstructive Pulmonary Disease	19
1432	2018-06-30	2018-06-30	Turp	9
1433	2018-11-18	2018-11-19	Tonsillitis	26
1434	2018-12-18	2018-12-18	Peptic Ulcer Disease	23
1434	2018-06-11	2018-06-20	Myocardial Infarction	19
1435	2019-03-11	2019-03-12	Rt. Knee Replacement	24
1437	2018-09-23	2018-09-28	Angina	3
1438	2019-02-09	2019-02-09	Pulmonay Embolism	19
1438	2019-05-24	2019-05-29	Congestive Heart Failure	15
1439	2019-03-29	2019-04-05	Hysterectomy	14
1439	2018-06-19	2018-06-25	Congestive Heart Failure	22
1440	2018-09-06	2018-09-14	Fractured Right Femur (Compound)	22
1441	2019-05-28	2019-06-02	Abdominal Pain	25
1442	2019-05-09	2019-05-14	Decubitus Ulcer	2
1442	2019-05-06	2019-05-10	Hypertension	17
1443	2019-02-02	2019-02-02	Congestive Heart Failure	8
1443	2018-08-07	2018-08-12	Asthma	8
1444	2019-03-14	2019-03-21	Pregnancy	6
1444	2018-08-09	2018-08-12	Obstructive Nephropathy	17
1445	2019-04-02	2019-04-04	Dilation + Evacuation	8
1445	2018-07-17	2018-07-18	Spinal Compresion	17
1449	2019-02-11	2019-02-12	Pain In Abdomen Left Side	1
1450	2018-10-19	2018-10-28	Pregnancy	26
1451	2018-10-30	2018-11-01	Unstable Angina	17
1453	2018-08-07	2018-08-10	Acute Thrombophiebitis R Leg	2
1454	2018-11-04	2018-11-08	Chronic Obtrusive Pulmonary Disease	25
1455	2018-10-07	2018-10-07	Pneumonia	25
1455	2019-01-18	2019-01-20	Profound Depression	6
1456	2019-02-23	2019-02-23	Pyclonephritis	23
1458	2018-11-12	2018-11-20	Cva Right Side	13
1459	2018-09-27	2018-09-29	Unstable Angina	24
1460	2018-11-30	2018-12-09	Unstable Angina	18
1460	2018-09-08	2018-09-14	Congestive Heart Failure	8
1719	2018-08-21	2018-08-23	Asthma	17
1461	2018-09-18	2018-09-26	Complete Unilateral Cleft Lip & Cleft Palate	10
1462	2019-02-24	2019-02-26	Asthma	8
1462	2019-03-24	2019-03-30	CHF (Congestive Heart Failure)	6
1463	2018-07-28	2018-08-06	Unstable Angina	3
1464	2018-09-23	2018-09-24	Acute Lower Abdominal Right-Sided Pain	3
1465	2018-10-21	2018-10-29	Crohns Disease	21
1465	2019-05-07	2019-05-10	Congestive Heart Failure	1
1466	2018-11-17	2018-11-24	Subarachroid Hemorrhage	10
1466	2019-06-01	2019-06-02	Unstable Angina	17
1467	2018-09-25	2018-10-04	Total Left Hip Replacement	18
1469	2018-07-23	2018-07-27	Acute Renal Failure	24
1469	2019-03-30	2019-04-06	Multiple Sclerosis	3
1470	2019-04-08	2019-04-08	Impaired Gas Exchange	22
1470	2019-03-04	2019-03-05	Spinal Cord Injury	6
1471	2019-05-16	2019-05-19	Pregnancy	14
1472	2018-09-02	2018-09-10	Congestive Heart Failure	3
1473	2018-12-23	2018-12-28	Osteomyslitis - Right Hip	4
1473	2019-04-16	2019-04-23	Crohns	6
1474	2019-01-01	2019-01-08	Myocardial Infarction	14
1475	2018-08-28	2018-08-29	Emphysema	11
1475	2018-09-22	2018-09-22	Simple Fracture Of The Tibia	10
1477	2019-05-23	2019-05-27	Osteoarthritis	22
1477	2018-08-03	2018-08-09	Unstable Angina	19
1478	2019-05-14	2019-05-20	Bladder Cancer	1
1478	2018-11-05	2018-11-10	Essential Hypertension	13
1479	2018-08-29	2018-09-02	Active Labour	2
1480	2018-06-21	2018-06-27	Pain In Abdomen Left Side	17
1482	2019-04-18	2019-04-25	Dilation + Evacuation	10
1483	2018-09-08	2018-09-09	Chest Pain	2
1484	2018-12-21	2018-12-28	Stroke (CVA)	10
1485	2019-04-11	2019-04-11	Congestive Heart Failure	26
1486	2018-09-03	2018-09-10	Schizophrenic Disorder	14
1486	2019-01-19	2019-01-28	Congestive Heart Failure	5
1488	2018-08-27	2018-09-04	Appendicitis	10
1489	2018-07-18	2018-07-27	Diabetes	19
1490	2018-12-12	2018-12-18	Fractured Hip	13
1491	2018-12-08	2018-12-10	Dementia	18
1491	2019-05-19	2019-05-24	Cerebral Aneurysm	20
1493	2018-08-29	2018-09-01	Bowel Obstruction	9
1493	2019-01-03	2019-01-05	Alt. In Emotional Integrity - Anxiety	27
1495	2018-09-26	2018-10-02	Hyperemesis	18
1496	2018-11-26	2018-11-29	Chest Pain	4
1496	2018-11-02	2018-11-08	Chlymidia	4
1499	2019-02-17	2019-02-20	Gastoric Ulcer	9
1499	2019-01-19	2019-01-22	Asthma	25
1501	2018-12-22	2018-12-29	2nd & 3rd Degree Burns To Right Arm / Both Legs	11
1502	2019-04-07	2019-04-09	Pregnancy	23
1504	2018-09-05	2018-09-08	Pyclonephritis	12
1504	2018-08-01	2018-08-01	CHF	14
1507	2018-09-03	2018-09-12	M.V.A	3
1507	2018-10-08	2018-10-09	C-Section Delivery Day 4	1
1508	2018-10-16	2018-10-21	Fracture Right Distal Radius (Colles Fracture)	9
1508	2018-10-15	2018-10-16	Depression	8
1509	2019-01-25	2019-01-31	Labour	14
1510	2018-10-14	2018-10-19	Cerebrovascular Accident (Stroke)	4
1511	2018-10-07	2018-10-14	Fractured Femur	16
1513	2018-09-25	2018-09-25	Congestive Heart Failure	16
1513	2019-02-26	2019-03-02	CHF	12
1514	2018-07-03	2018-07-05	Paranoid Schizophrenia	23
1515	2019-05-23	2019-05-29	Renal Failure	7
1516	2018-07-02	2018-07-06	Cancer Of The Descending Colon	27
1517	2018-08-25	2018-09-03	Syncope NYD	16
1517	2018-07-13	2018-07-14	Pregnant	15
1518	2019-03-21	2019-03-25	Cva Right Side	10
1519	2019-03-16	2019-03-17	Fracture Right Distal Radius	27
1519	2018-12-21	2018-12-29	Asthma	13
1521	2018-06-12	2018-06-20	Depression, Dementia	9
1521	2018-12-26	2018-12-30	Depression	3
1522	2018-10-08	2018-10-12	Bipolar Affective Disorder	10
1522	2018-07-25	2018-07-25	Pregnancy	22
1524	2019-04-30	2019-05-07	Cva Right Side	6
1524	2018-11-28	2018-12-06	Hypertrophy Of Prostate Gland	9
1525	2018-10-25	2018-10-29	MI	23
1525	2018-10-08	2018-10-14	Appendicitis	5
1527	2018-11-26	2018-12-04	Pyloric Obstruction	24
1528	2018-12-04	2018-12-12	Osteomyslitis - Right Hip	16
1528	2018-07-19	2018-07-27	Melanoma, Cancer	24
1529	2019-06-01	1971-01-05	Pyloric Obstruction	5
1530	2018-10-15	2018-10-21	Upper Respetory Infection	13
1531	2018-06-19	2018-06-27	Pregnancy	10
1532	2018-08-06	2018-08-13	Pulmonary Edema	5
1532	2019-01-31	2019-02-09	Pregnancy	21
1533	2018-06-09	2018-06-11	Appendicitis	18
1533	2018-10-23	2018-11-01	Gall Stones	7
1534	2019-06-05	1971-01-05	Migraine	12
1536	2018-10-23	2018-11-01	Asthma	17
1536	2019-03-16	2019-03-16	Chest Pain	19
1538	2018-08-03	2018-08-08	Pregnant	18
1538	2019-06-04	1971-01-05	Orthopnea	27
1539	2018-07-01	2018-07-06	Asthma	10
1540	2019-01-16	2019-01-21	Flanking Abdominal Pain	1
1540	2018-10-26	2018-10-29	Appendicitis	7
1541	2018-07-18	2018-07-25	Cva-Leftside	27
1541	2018-11-25	2018-11-25	Epilepsy	26
1542	2018-06-11	2018-06-15	Atrial Fibrillation R/O MI	3
1542	2018-11-07	2018-11-15	MI	7
1543	2018-10-19	2018-10-27	Alzheimers	25
1545	2019-02-11	2019-02-17	Flanking Abdominal Pain	15
1546	2019-03-02	2019-03-09	Congestive Heart Failure	13
1547	2018-07-05	2018-07-12	Pain In Abdomen Left Side	16
1548	2019-05-28	2019-05-29	Intestinal Obstruction Hirschsprungs Disease	4
1548	2018-09-25	2018-09-29	Poisoning	20
1549	2019-05-28	2019-05-28	Dehydration	21
1550	2018-11-04	2018-11-05	Hallecinations	10
1550	2018-11-18	2018-11-22	Choledocholithiasis	25
1552	2019-05-12	2019-05-16	Rul Pneumonia	20
1552	2018-07-12	2018-07-14	CHF Congestive Heart Failure	7
1553	2019-05-21	2019-05-22	Pregnancy	22
1553	2019-04-20	2019-04-22	Cerebral Aneurysm Rupture	2
1554	2018-08-09	2018-08-18	Osteomyslitis - Right Hip	7
1554	2019-03-25	2019-03-30	Impaired Gas Exchange	3
1555	2018-12-29	2019-01-06	Chest Pain	14
1556	2018-11-15	2018-11-21	Pregnant	11
1557	2019-01-27	2019-01-29	Bowel Obstruction	14
1558	2018-07-08	2018-07-16	Acute Leukemia	23
1559	2019-03-08	2019-03-17	Myocardial Infarction (MI)	16
1559	2018-09-17	2018-09-23	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	20
1560	2018-07-29	2018-07-29	Myocardial Infarction	10
1560	2018-08-06	2018-08-10	Crohns	4
1561	2018-10-06	2018-10-06	Pregnancy	25
1561	2019-01-26	2019-02-02	Increased Intr-Cranial Pressure	12
1562	2018-12-02	2018-12-08	Pulmonary Edema	21
1562	2018-10-15	2018-10-21	Hiatal Hernia	8
1563	2018-12-18	2018-12-21	CHF	20
1564	2018-06-12	2018-06-16	Fractured Femur	2
1566	2018-08-23	2018-08-24	Appendicitis	18
1567	2018-06-06	2018-06-09	Congestive Heart Failure	27
1567	2019-03-02	2019-03-07	Unstable Angina	4
1568	2019-03-26	2019-03-31	Manic Depression	3
1568	2018-09-29	2018-10-08	Ankylkosing Spondylitis	3
1569	2019-04-05	2019-04-14	Renal Failure	13
1569	2018-08-06	2018-08-15	Acute Bronchitis	10
1572	2018-06-20	2018-06-23	Acute Renal Failure	8
1573	2019-03-28	2019-03-31	Congestive Heart Failure	19
1574	2018-08-07	2018-08-14	Pregnancy	11
1575	2018-08-09	2018-08-15	Back Injury	20
1577	2018-06-29	2018-07-03	Congestive Heart Failure	14
1577	2018-06-28	2018-07-04	Congestive Heart Failure	3
1578	2018-06-29	2018-07-06	Dilation + Evacuation	16
1578	2019-02-08	2019-02-15	Angina	7
1579	2018-09-23	2018-09-24	Pregnancy	15
1582	2019-04-12	2019-04-16	Congestive Heart Failure	14
1582	2019-01-26	2019-01-26	L CVA	13
1584	2018-07-20	2018-07-24	Congestive Heart Failure	6
1585	2019-03-16	2019-03-24	Dementia	17
1586	2018-12-14	2018-12-20	Endometriosis	23
1587	2019-04-07	2019-04-08	Dilation + Evacuation	27
1588	2018-09-15	2018-09-22	Acute Appendicitis, Diabetes Type II	15
1588	2018-07-31	2018-08-09	CHF	26
1589	2019-05-10	2019-05-16	Thrombocytopenia	16
1589	2019-05-15	2019-05-17	Exploratory, Orthoscopic - Knee	12
1590	2018-09-08	2018-09-11	Lung Cancer (Rt. Lung)	25
1591	2019-02-04	2019-02-06	Cleft Palate And Complete Unilateral Cleft Up	13
1591	2019-02-06	2019-02-07	Unable To Void.	13
1592	2019-05-21	2019-05-23	Intracerebral Bleed	8
1593	2018-12-23	2018-12-25	Cardiac Arrest	27
1594	2019-03-16	2019-03-16	Peripheral Edema	22
1594	2019-01-02	2019-01-09	Melanoma, Cancer	25
1595	2019-01-15	2019-01-18	Cervical Spinal Tumor	17
1596	2018-10-09	2018-10-18	Myasthen Gravis	11
1596	2018-12-13	2018-12-22	Atrial Fibrillation R/O MI	4
1598	2018-08-22	2018-08-24	Cancer	1
1598	2018-07-24	2018-08-01	Complete Unilateral Cleft Lip & Cleft Palate	8
1599	2018-11-23	2018-11-27	Congestive Heart Failure	26
1600	2018-07-02	2018-07-05	Complete Unilateral Cleft Lip 7 Cleft Palate	5
1601	2019-03-17	2019-03-18	Cerebral Vascular Aneurys,	8
1601	2018-11-06	2018-11-10	Right Hip Replacement	5
1604	2018-10-06	2018-10-10	Cancer Of The Stomach	18
1604	2019-03-09	2019-03-17	Alzheimers	13
1605	2019-01-10	2019-01-19	Abdominal Pain	6
1606	2019-02-09	2019-02-16	Urinary Tract Infection	11
1606	2019-04-16	2019-04-25	Fractured Femur	1
1608	2018-10-25	2018-11-03	Hunting Disease	6
1609	2018-10-15	2018-10-17	Cervical Spinal Tumor	8
1610	2018-06-15	2018-06-23	Birth By Caeserian Section	26
1612	2019-02-14	2019-02-20	Unstable Angina	25
1612	2018-06-09	2018-06-14	Pregnant	25
1613	2018-07-27	2018-07-30	Fractured Right Femur (Compound)	3
1613	2018-10-23	2018-10-29	Renal Calculi	13
1614	2019-03-05	2019-03-09	Fractured Fib And Tib	7
1614	2018-07-10	2018-07-11	Left Shoulder Rotator Cuff Repair	18
1615	2019-05-20	2019-05-25	Basal Skull Fracture	12
1616	2019-06-01	1971-01-05	Diabetes Mellitus	16
1616	2019-05-26	2019-05-26	Dehydration	2
1617	2018-10-10	2018-10-16	Asthma	17
1618	2018-10-19	2018-10-26	Congestive Heart Failure	25
1618	2019-05-31	2019-06-02	Hunting Disease	5
1619	2018-07-04	2018-07-08	Fractured Hip	8
1621	2018-09-23	2018-09-28	Fractured Hip	9
1621	2019-04-13	2019-04-17	Fractured Femur	22
1622	2018-06-14	2018-06-19	Fractured Right Tibia	21
1623	2018-08-08	2018-08-08	Ankylkosing Spondylitis	19
1623	2018-06-13	2018-06-17	CHF	9
1624	2019-05-07	2019-05-11	Congestive Heart Failure	13
1624	2018-06-26	2018-07-01	Total Left Hip Replacement	15
1626	2019-02-13	2019-02-16	Acute Appendicitis, Diabetes Type II	18
1627	2019-02-15	2019-02-16	Parkinsons Disease	20
1628	2018-06-27	2018-06-29	Pneumonia	15
1629	2018-07-30	2018-07-30	Exploratory, Orthoscopic - Knee	14
1630	2018-10-06	2018-10-11	Severe Rlq Pain	11
1630	2018-08-01	2018-08-10	Renal Failure	12
1631	2018-11-29	2018-12-01	Renal Failure	1
1632	2018-10-05	2018-10-12	Osteo Arthtitis Knee	14
1632	2018-11-30	2018-11-30	Congestive Heart Failure	1
1634	2019-05-06	2019-05-10	Pneumonia	18
1634	2018-08-13	2018-08-20	Hysterectomy	14
1636	2019-02-11	2019-02-18	Chest Pain	4
2271	2019-02-15	2019-02-24	Pneumonia	16
1637	2018-12-30	2019-01-05	Major Depression B.Polar	17
1638	2019-01-18	2019-01-25	Fracture Of Left Femur	12
1641	2019-05-16	2019-05-18	Abdominal Pain	12
1641	2019-03-10	2019-03-13	Gall Stones	1
1642	2018-12-26	2019-01-04	Appendicitis	20
1643	2019-01-14	2019-01-21	Angina	20
1644	2018-11-29	2018-12-05	L CVA	4
1645	2018-10-03	2018-10-11	Cerebral Aneurysm Rupture	20
1645	2018-10-06	2018-10-15	Coronary Artery Disease	22
1646	2019-05-08	2019-05-12	Spinal Compresion	4
1646	2019-04-30	2019-05-03	Orthopnea	12
1647	2019-04-25	2019-05-04	Decubitus Ulcer	13
1647	2018-12-30	2018-12-31	Congestive Heart Failure	14
1648	2018-11-10	2018-11-10	Rul Pneumonia	14
1648	2018-11-25	2018-12-02	Pregnancy	20
1649	2018-12-16	2018-12-22	Enlarged Bunion On Left Primary Metaarsal	8
1649	2018-12-06	2018-12-14	Congestive Heart Failure	27
1650	2019-04-26	2019-05-03	Pregnancy	4
1650	2018-09-21	2018-09-23	Cancer Of The Descending Colon	14
1651	2019-05-28	1971-01-05	Cystocele/Stress Incontinence	17
1651	2018-08-31	2018-08-31	Undiagnosed Chest Pain	19
1652	2018-06-09	2018-06-16	Diverticulitis	14
1652	2018-11-21	2018-11-29	Pregnancy	8
1653	2019-05-19	2019-05-19	Congestive Heart Failure	23
1653	2019-04-15	2019-04-17	Angina Pectoris	6
1654	2018-12-10	2018-12-10	Chronic Bronchitis	26
1656	2018-10-14	2018-10-15	Pneumonia	20
1656	2019-04-02	2019-04-04	Chronic Bronchitis	23
1657	2019-05-23	2019-05-27	Acute Leukemia	19
1661	2018-10-20	2018-10-28	Unable To Void.	5
1661	2018-12-02	2018-12-10	Stroke	18
1662	2018-11-13	2018-11-21	Glomerulonephritis	26
1664	2018-12-23	2018-12-29	Full Term Delivery	23
1665	2018-10-10	2018-10-11	Pregnancy	2
1669	2018-08-09	2018-08-16	2nd Degree Burn Of Face	6
1671	2019-01-20	2019-01-24	Cardiac Catheterization	20
1671	2018-12-17	2018-12-22	Congestive Heart Failure	5
1673	2018-11-20	2018-11-29	Fractured Left Hip Due To Slip And Fall On Ice	26
1673	2018-07-22	2018-07-30	Severe Rlq Pain	21
1674	2019-03-04	2019-03-10	Myocardial Infarction	27
1674	2019-02-24	2019-02-28	Cancer	7
1675	2019-04-06	2019-04-11	Unstable Angina	21
1675	2019-01-13	2019-01-21	Pyloric Obstruction	6
1676	2019-05-17	2019-05-20	Appendicitis	2
1676	2019-05-07	2019-05-13	Congestive Heart Failure	10
1678	2018-07-04	2018-07-11	Abdominal Perineal Resection	11
1678	2018-12-01	2018-12-07	Appendicitis	6
1679	2019-01-10	2019-01-10	Myocardial Infarction	27
1680	2019-03-29	2019-04-01	Fractured Left Leg	11
1680	2019-03-27	2019-04-05	Congestive Heart Failure	11
1681	2018-11-26	2018-11-30	Abdominal Perineal Resection	6
1681	2018-06-27	2018-07-03	Pregnancy	5
1682	2019-02-13	2019-02-19	Decubitus Ulcer	10
1682	2018-11-21	2018-11-23	Upper Respetory Infection	6
1683	2018-12-12	2018-12-21	Fever N.Y.D.	13
1683	2019-04-19	2019-04-24	Alzheimers	15
1684	2019-03-12	2019-03-19	Coronary Artery Disease	9
1684	2019-04-25	2019-04-26	Knee Replacement	16
1687	2018-11-30	2018-11-30	Diabetes Mellitus	24
1687	2018-07-13	2018-07-21	Pulmonary Edema	14
1688	2018-12-24	2019-01-01	Fever N.Y.D.	7
1689	2019-05-07	2019-05-14	Multiple Myeloma	20
1690	2018-09-22	2018-09-23	Hypertension	3
1690	2019-05-24	2019-05-26	Coronary Artary Disease / Lt Sided Weakness	13
1691	2019-05-28	1971-01-05	Osteoarthritis Right Knee	16
1691	2019-05-02	2019-05-10	Crohns	17
1692	2018-07-21	2018-07-26	Myocardial Infarction	5
1692	2018-12-18	2018-12-19	Cholelithiasis	13
1694	2018-08-08	2018-08-16	Scatica	13
1695	2018-08-25	2018-08-28	Fractured Tibia	2
1696	2018-11-27	2018-12-03	Bowel Obstruction	14
1696	2019-01-06	2019-01-07	Gall Stones	23
1697	2018-08-10	2018-08-18	Left Creebral Vascular Accident	13
1697	2018-11-21	2018-11-24	Fractured Left Leg	7
1698	2019-02-13	2019-02-13	Essential Hypertension	14
1698	2018-11-11	2018-11-17	Major Burn To The Anterior Thoracic Region	6
1699	2018-07-19	2018-07-24	Abdominal Perineal Resection	12
1699	2019-04-10	2019-04-10	Unstable Angina	27
1701	2018-07-16	2018-07-16	Poisoning	10
1701	2018-08-12	2018-08-16	Rll Pneumonia	12
1703	2018-07-15	2018-07-21	Cancer Of The Stomach	2
1703	2018-07-02	2018-07-08	Migraine	23
1705	2018-07-15	2018-07-15	Pregnancy	19
1705	2019-03-10	2019-03-13	Broken Hip	16
1706	2018-07-03	2018-07-10	Chest Pain With Sob	16
1706	2018-08-31	2018-09-03	Laceration On Right Leg	6
1707	2018-07-30	2018-08-05	Myocardial Infarction	9
1708	2019-02-21	2019-02-22	Fibroids	23
1709	2019-02-12	2019-02-16	Bladder Cancer	19
1709	2018-09-10	2018-09-11	COPD	21
1710	2018-10-03	2018-10-12	Right Knee Replacement	14
1710	2018-10-01	2018-10-03	Congestive Heart Failure	15
1711	2019-02-03	2019-02-11	Total Hysterectomy	17
1711	2018-09-24	2018-10-01	Congestive Heart Failure	12
1712	2019-04-01	2019-04-05	Uterine Fibroid	8
1713	2018-09-19	2018-09-19	Stroke (CVA)	19
1713	2019-02-04	2019-02-08	Chest Pain	1
1714	2019-03-16	2019-03-16	Angina	26
1714	2019-04-02	2019-04-09	Dehydration	16
1716	2018-10-16	2018-10-18	Dilation + Evacuation	18
1717	2019-05-31	2019-06-04	Congestive Heart Failure	14
1717	2018-06-16	2018-06-16	Appendicitis	1
1718	2018-11-07	2018-11-12	Acute Bronchitis	20
1719	2018-07-14	2018-07-20	Acute Appendicitis, Diabetes Type II	25
1720	2018-06-14	2018-06-19	Peptic Ulcer	27
1720	2019-01-03	2019-01-06	Ovarian Cancer	11
1721	2018-12-30	2019-01-04	Paranoid Schizophrenic	14
1722	2019-06-05	1971-01-05	Asthma Exacerbation	8
1722	2018-08-08	2018-08-08	Full Term Delivery	3
1723	2018-09-13	2018-09-20	Fever N.Y.D.	11
1725	2018-08-19	2018-08-25	CHF	21
1725	2019-05-24	2019-06-01	Pneumonia	18
1726	2018-08-30	2018-09-05	Hysterectomy	26
1727	2018-11-16	2018-11-20	Amigima	12
1727	2018-12-15	2018-12-15	Severe Pain + Tenderness In Left Calf	12
1732	2018-07-29	2018-08-07	Chest Pain	17
1733	2018-08-10	2018-08-16	Amyotopic Lateral Scletosis	13
1734	2019-04-07	2019-04-08	Congestive Heart Failure	27
1735	2018-07-30	2018-08-01	Fractured L. Tibia	24
1735	2018-07-23	2018-07-26	Pulmonary Edema	15
1736	2018-07-31	2018-08-02	Osteomyslitis - Right Hip	4
1736	2018-08-09	2018-08-14	Unstable Angina	9
1739	2018-07-26	2018-07-27	Chest Pain	6
1739	2018-12-10	2018-12-16	Total Hysterectomy	22
1743	2018-08-29	2018-09-05	Open Reduction Fracture Rt Humerus	9
1743	2019-02-10	2019-02-18	Scatica	14
1744	2018-09-26	2018-10-03	Bronchitis	27
1746	2019-02-22	2019-02-24	Depression	6
1747	2019-05-22	2019-05-24	Birth By Caeserian Section	13
1747	2018-10-24	2018-10-24	Fractured Right Tibia	16
1748	2019-03-22	2019-03-25	Malnutrition	8
1749	2018-11-06	2018-11-15	Dementia	7
1749	2018-12-31	2019-01-07	Major Depression B.Polar	19
1750	2018-10-17	2018-10-19	Unstable Angina	4
1750	2018-07-06	2018-07-15	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	5
1751	2018-07-25	2018-07-27	CHF	20
1752	2018-12-27	2018-12-30	Congestive Heart Failure	27
1752	2018-11-27	2018-11-29	Peripheral Edema	5
1754	2019-05-19	2019-05-27	Cancer Of The Colon	23
1754	2018-08-20	2018-08-23	Second & Third Degree Burns To Right Arm/Both Legs	3
1755	2018-11-17	2018-11-18	Abdominal Pain	23
1755	2018-11-02	2018-11-03	Cystocele/Stress Incontinence	6
1756	2019-03-18	2019-03-25	Congestive Heart Failure	7
1756	2018-10-19	2018-10-20	Fractured Femur	15
1757	2018-09-17	2018-09-23	Asthma	7
1758	2019-04-19	2019-04-25	Renal Calculi	16
1758	2018-06-23	2018-06-25	Fractured Right Femur (Compound)	7
1759	2018-08-31	2018-09-03	Amyotopic Lateral Scletosis	1
1759	2019-05-06	2019-05-14	Undiagnosed Chest Pain	25
1761	2018-10-15	2018-10-18	Exploratory, Orthoscopic - Knee	20
1762	2019-03-18	2019-03-25	Severe Pain + Tenderness In Left Calf	27
1764	2019-04-10	2019-04-14	Turp(Transurethro Resection Of The Prostate Gland)	26
1764	2019-01-20	2019-01-21	Simple Fracture Of The Tibia	14
1765	2018-09-30	2018-10-01	Poisoning	7
1765	2019-01-17	2019-01-21	Subdural Hematoma	21
1766	2019-03-06	2019-03-08	Parkinsons Disease	15
1768	2019-04-16	2019-04-20	Appendicitis	14
1769	2019-02-04	2019-02-09	Atrial Fibrillation R/O MI	22
1769	2018-10-02	2018-10-07	Broken Hip	23
1770	2019-03-18	2019-03-26	Appendicitis	21
1770	2018-10-30	2018-11-04	Fractured Left Leg	12
1771	2019-04-21	2019-04-29	Unstable Angina	5
1772	2018-12-30	2018-12-31	Rheumataoid Arthritis	26
1772	2019-03-21	2019-03-22	Pneumonia	18
1774	2019-05-13	2019-05-13	Cancer	20
1775	2019-04-05	2019-04-08	Anterior Myocardial Infraction	15
1775	2018-12-17	2018-12-19	Parkinsons Disease	18
1779	2018-10-29	2018-11-04	Osteomyslitis - Right Hip	11
1779	2019-02-09	2019-02-15	Congestive Heart Failure	25
1780	2018-10-11	2018-10-19	Pregnancy	19
1781	2018-06-09	2018-06-11	Pregnant	17
1781	2018-12-23	2018-12-23	Cardiovascular Disease	7
1783	2018-12-30	2019-01-02	Syncope NYD	18
1783	2019-01-28	2019-01-28	Obsessive - Compulsive Disorder	4
1784	2018-06-21	2018-06-23	Kock Pouch Urinary Diversion	24
1784	2018-06-30	2018-07-05	Diabetes	14
1785	2018-08-23	2018-09-01	Rt. Knee Replacement	25
1786	2019-03-03	2019-03-08	Pregnancy	16
1786	2019-05-11	2019-05-12	Bipolar Disorder	13
1787	2019-05-15	2019-05-17	Pregnancy	19
1789	2018-09-12	2018-09-12	Lung Cancer	1
1789	2019-01-26	2019-02-04	Acute Appendicitis, Diabetes Type II	3
1790	2018-08-10	2018-08-13	Acute Lower Abdominal Right-Sided Pain	5
1790	2019-04-12	2019-04-12	Bipolar Affective Disorder	10
1792	2019-01-26	2019-01-27	Latent Phase Of First Stage Labour	24
1794	2018-07-16	2018-07-18	Uterine Fibroid	22
1795	2019-05-14	2019-05-14	Cerebral Vascular Aneurys,	2
1797	2018-12-02	2018-12-08	Cva-Right-Sided-Weakness	11
1797	2019-05-22	2019-05-24	Tonsillitis	26
1798	2019-03-01	2019-03-02	Dementia	12
1798	2018-09-03	2018-09-08	Right Knee Replacement	26
1800	2019-02-10	2019-02-12	Depression	12
1800	2018-12-07	2018-12-11	Breast Cancer	27
1801	2018-07-07	2018-07-09	Osteoarthritis	7
1802	2018-11-12	2018-11-18	Pneumonia	1
1804	2018-10-29	2018-11-05	Turp	2
1806	2018-07-04	2018-07-06	Pneumonia	16
1806	2018-06-29	2018-07-08	Abdominal Pain	9
1807	2018-06-18	2018-06-27	Myocardial Infarction	11
1807	2018-10-19	2018-10-26	M.V.A	15
1808	2018-09-04	2018-09-06	Appendicitis	2
1809	2019-01-18	2019-01-25	Multiple Sclerosis	17
1809	2018-12-04	2018-12-08	1St Stage Labour	16
1813	2019-04-10	2019-04-19	40 Weeks Pregnant	21
1813	2019-03-12	2019-03-19	Pyelonephritis	12
1814	2018-11-09	2018-11-17	Melanoma, Cancer	24
1815	2019-01-11	2019-01-19	Cleft Palate And Complete Unilateral Cleft Up	23
1816	2018-11-23	2018-11-25	Congestive Heart Failure	15
1816	2019-01-13	2019-01-22	Intestinal Obstruction Hirschsprungs Disease	17
1819	2019-01-21	2019-01-28	Congestive Heart Failure	25
1819	2019-01-17	2019-01-20	Chlymidia	23
1822	2019-05-29	2019-06-01	Stroke	1
1823	2019-01-04	2019-01-12	Congestive Heart Failure	20
1824	2018-06-29	2018-06-30	Chest Pain	10
1824	2018-11-13	2018-11-22	Asthma	5
1825	2018-09-13	2018-09-22	Upper Respetory Infection	13
1826	2019-05-09	2019-05-17	Acute Lower Abdominal Right-Sided Pain	14
1826	2019-02-28	2019-03-03	Decubitus Ulcer	9
1827	2019-04-04	2019-04-12	Osteoarthritis Right Knee	6
1827	2018-08-03	2018-08-07	Zenkers Diverticulitis	6
1828	2018-10-14	2018-10-15	COPD	24
1828	2018-06-12	2018-06-19	Intestinal Obstruction Hirschsprungs Disease	20
1829	2019-05-31	2019-06-04	Hypertrophy Of Prostate Gland	12
1830	2018-12-18	2018-12-24	Diabetes Mellitus	1
1830	2019-05-16	2019-05-18	Turp	4
1831	2018-08-12	2018-08-21	Congestive Heart Failure	11
1833	2018-12-20	2018-12-21	Upper Respetory Infection	1
1833	2019-05-08	2019-05-16	Left Lobar Pneumonia	8
1834	2019-04-27	2019-04-27	Chest Pain With Sob	12
1835	2018-11-02	2018-11-08	Acute Leukemia	17
1836	2018-12-26	2019-01-02	Acute Lower Abdominal Right-Sided Pain	27
1836	2019-02-24	2019-03-03	Crohns Disease	16
1838	2018-07-22	2018-07-27	Broken Hip	4
1839	2019-03-02	2019-03-11	Acute Bronchitis	17
1839	2018-07-15	2018-07-19	Lung Cancer	25
1840	2018-07-05	2018-07-05	Chest Infection	2
1840	2019-04-02	2019-04-03	Hypertrophy Of Prostate Gland	21
1842	2019-02-01	2019-02-02	Chest Pain	27
1842	2018-09-09	2018-09-16	Acute Appendicitis, Diabetes Type II	5
1843	2018-10-09	2018-10-18	Uterine Fibroid	7
1844	2019-02-20	2019-02-22	Right Hip Replacement	13
1844	2019-03-26	2019-03-27	Dementia	5
1846	2019-01-31	2019-02-09	Deep Vein Thrombosis	15
1846	2018-12-03	2018-12-09	Pain In Abdomen Left Side	5
1847	2019-01-02	2019-01-07	Pulmonary Edema	3
1849	2019-01-19	2019-01-19	Diabetes	12
1850	2018-08-31	2018-08-31	Pregnancy	18
1851	2019-05-28	2019-06-05	Major Burn To The Anterior Thoracic Region	1
1852	2018-07-30	2018-08-07	Choledocholithiasis	14
1852	2019-03-23	2019-03-31	Prostatectomy	27
1853	2019-05-22	2019-05-31	Cerebrovascular Accident (Stroke)	2
1853	2018-08-15	2018-08-16	Pneumothorax	21
1854	2019-04-08	2019-04-12	M.V.A	26
1855	2018-11-10	2018-11-19	Fracture Rt Radius	26
1855	2018-07-13	2018-07-18	Flanking Abdominal Pain	16
1856	2018-06-06	2018-06-11	Congestive Heart Failure	27
1857	2019-03-25	2019-03-29	Cancer Of The Stomach	27
1859	2018-11-16	2018-11-21	Appendicitis	17
1860	2019-05-28	2019-05-28	Pregnancy	9
1863	2018-12-07	2018-12-10	Unstable Angina	22
1864	2019-04-26	2019-05-05	Appendicitis	1
1865	2018-08-20	2018-08-25	Angina Pectoris	17
1866	2019-01-02	2019-01-11	Congestive Heart Failure	11
1867	2019-01-16	2019-01-19	Multiple Sclerosis	12
1867	2018-06-24	2018-06-27	Angina	1
1868	2018-11-06	2018-11-09	Osteoarthritis Right Knee	17
1869	2018-09-17	2018-09-24	Fever N.Y.D.	27
1869	2019-03-15	2019-03-18	Major Burn To The Anterior Thoracic Region	27
1870	2018-09-08	2018-09-08	Parkinsons Disease	16
1870	2019-02-05	2019-02-07	Lumbar Disc Protrusion	14
1871	2019-05-19	2019-05-24	CHF	7
1871	2019-04-14	2019-04-16	Hysterectomy	7
1872	2018-06-06	2018-06-08	Fractured Left Hip Due To Slip And Fall On Ice	6
1872	2019-04-04	2019-04-04	Asthma Exacerbation	19
1874	2019-04-04	2019-04-13	Abdominal Pain	22
1875	2019-01-12	2019-01-17	Multiple Fractures Of R Scapula. Insertion Of Pins	9
1875	2018-08-13	2018-08-14	Turp(Transurethro Resection Of The Prostate Gland)	14
1876	2019-02-13	2019-02-20	Congestive Heart Failure	9
1876	2018-08-13	2018-08-13	Pregnancy	12
1879	2019-01-02	2019-01-05	Aortic Stenosis	13
1879	2018-12-17	2018-12-17	Ovarian Cyst	2
1880	2018-08-04	2018-08-11	Fracture Of Left Femur	16
1880	2018-12-17	2018-12-26	Fractured Skull	6
1882	2019-03-20	2019-03-28	Fractured Left Hip	3
1883	2019-01-11	2019-01-16	Fractured Right Tibia	4
1883	2018-12-10	2018-12-16	Lower Quadrant Pain	20
1885	2019-03-27	2019-03-31	Syncope NYD	17
1886	2018-07-10	2018-07-18	Fibroids	16
1887	2018-08-15	2018-08-19	Cytutus	13
1888	2018-10-06	2018-10-15	Dehydration	9
1888	2018-06-29	2018-07-06	Appendicitis	1
1889	2019-02-24	2019-02-26	C. O. P. D.	7
1889	2019-03-18	2019-03-22	Right Knee Replacement	9
1890	2018-08-23	2018-08-27	Rheumataoid Arthritis	9
1892	2019-02-21	2019-02-24	Congestive Heart Failure	18
1893	2018-07-18	2018-07-19	C. O. P. D.	18
1894	2019-02-12	2019-02-17	Cervical Spinal Tumor	16
1894	2019-02-15	2019-02-22	Acute Thrombophiebitis R Leg	7
1896	2018-11-10	2018-11-15	Cerebrovascular Accident (Stroke)	26
1897	2019-03-04	2019-03-05	Immobility R/T Pain And Swelling R Ankle	7
1898	2018-08-19	2018-08-23	Pneumonia	19
1898	2018-08-02	2018-08-08	Angina	14
1901	2018-10-28	2018-10-31	Pregnancy	10
1904	2019-05-16	2019-05-18	Fractured Hip	18
1904	2018-06-24	2018-06-28	CHF	16
1906	2018-08-12	2018-08-16	Chest Pain With Sob	16
1906	2018-09-09	2018-09-16	Bladder Tomour	19
1908	2018-08-31	2018-09-06	Acute Leukemia	18
1909	2019-03-17	2019-03-18	Left Creebral Vascular Accident	15
1909	2019-01-03	2019-01-07	40 Weeks Pregnant	10
1910	2019-03-29	2019-03-29	Cholenithiasis	8
1910	2018-07-07	2018-07-10	Ruptured Fallopian Tube	19
1913	2019-04-20	2019-04-21	Chestpain Not Yet Diagnosed	22
1913	2019-05-16	2019-05-24	Fracture Right Distal Radius	11
1915	2018-10-12	2018-10-18	Bladder Tomour	17
1916	2019-01-07	2019-01-11	Intestinal Obstruction Hirschsprungs Disease	1
1917	2019-03-15	2019-03-19	Chest Infection	13
1918	2019-05-19	2019-05-23	Dehydration	17
1918	2018-10-26	2018-10-29	Turp(Transurethro Resection Of The Prostate Gland)	27
1919	2018-07-26	2018-08-02	Pyclonephritis	19
1922	2018-10-28	2018-11-05	Fractured Femur	17
1923	2019-05-11	2019-05-15	Atrial Fibrillation R/O MI	1
1924	2018-12-17	2018-12-21	Renal Failure	25
1925	2018-10-27	2018-10-31	Schizophrenic Disorder	25
1925	2019-03-24	2019-03-24	Ulcerative Colitis	27
1927	2018-07-05	2018-07-07	Abdominal Pain	21
1928	2019-01-17	2019-01-18	Pneumothorax	1
1928	2019-04-18	2019-04-18	Hypoglycemia	7
1930	2018-10-07	2018-10-13	Hypertension	8
1931	2018-07-06	2018-07-10	Knee Replacement	26
1931	2019-05-11	2019-05-18	Chest Pain	10
1932	2019-06-01	1971-01-05	Acute Thrombophiebitis R Leg	9
1934	2019-05-16	2019-05-22	Hysterectomy	25
1934	2019-01-08	2019-01-16	Myocardial Infarction (MI)	16
1935	2018-06-07	2018-06-10	Fractured Hip	26
1937	2018-09-25	2018-09-27	Congestive Heart Failure	22
1937	2018-10-20	2018-10-22	Cerebral Vascular Aneurys,	23
1938	2019-04-01	2019-04-07	Tonsillitis	6
1938	2019-03-21	2019-03-30	Dementia	8
1939	2018-11-28	2018-12-04	Fibroids	26
1940	2018-07-29	2018-07-31	Fractured Hip	22
1940	2018-12-17	2018-12-18	Spinal Cord Injury	19
1941	2018-12-08	2018-12-10	Congestive Heart Failure	11
1942	2018-09-25	2018-09-28	Total Left Hip Replacement	18
1945	2018-08-02	2018-08-08	Pneumonia	13
1945	2019-04-20	2019-04-23	Congestive Heart Failure	9
1949	2019-03-05	2019-03-13	Stroke	5
1950	2018-06-13	2018-06-21	Decubitus Ulcer	16
1950	2019-04-02	2019-04-09	Pyloric Obstruction	11
1953	2019-05-10	2019-05-12	Ovarian Cancer	21
1953	2019-05-30	2019-06-04	Cerebral Aneurysm	2
1955	2019-06-01	2019-06-03	Fractured Hip	15
1957	2019-03-13	2019-03-19	Chlymidia	23
1957	2018-11-08	2018-11-08	Diabetes Mellitus	27
1958	2018-10-16	2018-10-24	Congestive Heart Failure	15
1958	2019-02-22	2019-02-28	Cardiac Arrest	26
1959	2018-06-26	2018-06-28	Major Depression B.Polar	24
1959	2019-02-19	2019-02-22	Tonsillitis	15
1960	2019-06-05	1971-01-05	Fractured Left Hip	24
1960	2018-08-28	2018-09-04	Intracerebral Bleed	2
1962	2019-01-24	2019-01-31	Birth By Caeserian Section	27
1962	2018-11-30	2018-12-06	Congestive Heart Failure	17
1963	2018-08-21	2018-08-24	Enlarged Bunion On Left Primary Metaarsal	4
1964	2018-06-06	2018-06-11	Cystic Fibrosis	23
1964	2018-10-10	2018-10-11	Anterior Myocardial Infraction	19
1965	2019-03-18	2019-03-21	Renal Failure	1
1965	2019-01-05	2019-01-13	COPD	8
1967	2019-03-09	2019-03-10	Cerebellar Brain Tumor Metastasis	24
1967	2019-03-05	2019-03-07	Multiple Myeloma	18
1968	2018-10-04	2018-10-10	Spinal Infection	15
1969	2018-12-18	2018-12-20	Stress Incotinence	26
1969	2019-01-12	2019-01-14	Hypoglycemia	23
1971	2018-10-11	2018-10-12	Bronchiolitis	12
1971	2018-09-13	2018-09-19	L4-Lf Spinal Fusion	19
1972	2019-03-29	2019-04-03	Head Injury M.V.A.	26
1973	2019-04-24	2019-05-03	Abdominal Pain	14
1973	2018-07-23	2018-07-26	Pregnant	14
1974	2018-08-04	2018-08-05	Cerebral Aneurysm	6
1974	2018-10-04	2018-10-09	Cancer Of The Stomach	22
1975	2018-10-10	2018-10-16	Second & Third Degree Burns To Right Arm/Both Legs	17
1975	2018-08-14	2018-08-20	Cerebrovascular Accident (Stroke)	24
1976	2019-05-30	1971-01-05	Vsa Cardiac Arrest	10
1976	2018-08-31	2018-09-09	Chronic Obstructive Pulmonary Disease	24
1977	2018-10-15	2018-10-16	Lung Cancer	9
1977	2019-03-05	2019-03-10	CHF	10
1978	2018-12-14	2018-12-16	Parkinsons Disease	18
1979	2018-12-06	2018-12-06	Intracerebral Bleed	24
1980	2018-11-03	2018-11-11	Pneumothorax	6
1980	2018-06-30	2018-07-09	Subdural Hematoma	11
1983	2019-01-22	2019-01-30	Pregnancy	25
1984	2018-06-09	2018-06-14	Acute Leukemia	17
1986	2018-08-27	2018-08-31	Cytutus	15
1987	2018-07-27	2018-07-27	Stress Incotinence	2
1987	2018-11-22	2018-11-24	Fractured Fib And Tib	12
1988	2018-07-22	2018-07-26	2nd Degree Burn Of Face	15
1989	2018-11-11	2018-11-20	Fractured Left Hip	24
1989	2019-05-03	2019-05-10	Total Lt Hip Replacement Because Of Osteoarthritis	18
1992	2018-09-09	2018-09-12	Congestive Heart Failure	1
1993	2018-12-19	2018-12-28	Spinal Infection	19
1994	2019-01-31	2019-02-02	Chlymidia	7
1994	2019-05-09	2019-05-13	Ruptured Fallopian Tube	21
1995	2018-11-21	2018-11-28	Emphysema	9
1996	2019-01-20	2019-01-23	Head Injury M.V.A.	22
1996	2018-09-12	2018-09-17	Ovarian Cancer	26
1998	2018-06-26	2018-07-04	Chest Pain	14
1998	2019-05-27	2019-06-05	Total Hysterectomy	24
1999	2019-03-13	2019-03-20	Peripheral Edema	18
1999	2018-10-12	2018-10-21	COPD	2
2000	2019-03-25	2019-03-30	Congestive Heart Failure	11
2001	2019-02-11	2019-02-16	MVA HI	13
2002	2018-07-02	2018-07-09	Decubitus Ulcer	8
2003	2018-10-04	2018-10-06	Fibroids	24
2004	2018-11-02	2018-11-09	Left Shoulder Rotator Cuff Repair	23
2004	2018-11-09	2018-11-16	Left Shoulder Rotator Cuff Repair	12
2005	2018-08-26	2018-08-29	Ruptured Fallopian Tube	18
2007	2018-09-04	2018-09-07	Infection	14
2007	2018-10-03	2018-10-03	Appendicitis	27
2008	2018-11-17	2018-11-24	Diabetes	2
2008	2018-09-15	2018-09-21	Angina	16
2009	2018-09-05	2018-09-06	Chest Pain	4
2009	2018-11-01	2018-11-03	Gunshot Wound To Head	4
2011	2019-04-19	2019-04-21	Cerebral Vascular Aneurys,	8
2011	2018-08-16	2018-08-21	Congestive Heart Failure	23
2012	2019-02-13	2019-02-19	Ovarian Cancer	10
2013	2018-08-20	2018-08-29	1St Stage Labour	18
2013	2018-10-26	2018-11-02	Possible Renal Calculi	21
2014	2019-01-30	2019-02-05	Schizophrenia Paranoid Delusions	1
2015	2018-07-08	2018-07-14	Bronchitis	22
2017	2019-06-01	1971-01-05	Cerebral Aneurysm Rupture	8
2017	2018-10-19	2018-10-21	Left Side CVA	24
2018	2019-02-17	2019-02-23	Atrial Arrhythmias	19
2018	2019-01-14	2019-01-17	Congestive Heart Failure	19
2019	2018-09-16	2018-09-19	Peptic Ulcer Disease	2
2019	2018-06-24	2018-06-27	Migraine	11
2020	2019-01-14	2019-01-16	Fractured Femur	11
2021	2018-07-02	2018-07-02	3rd Degree Burn To Face	15
2021	2018-10-03	2018-10-06	Complete Unilateral Cleft Lip & Cleft Palate	23
2022	2018-11-18	2018-11-18	Dehydration	24
2023	2018-09-26	2018-10-04	Bipolar Affective Disorder	26
2023	2019-05-01	2019-05-02	Chest Pain	27
2025	2019-04-08	2019-04-09	Congestive Heart Failure	13
2026	2018-07-01	2018-07-06	Congestive Heart Failure	13
2026	2018-10-13	2018-10-18	Gastoric Ulcer	3
2027	2019-05-28	2019-05-31	Unstable Angina	27
2027	2018-11-26	2018-12-05	Dehydradion, Vomiting	15
2028	2018-08-14	2018-08-15	Fractured Tibia	15
2028	2019-03-11	2019-03-13	Abdominal Pain	25
2029	2019-05-05	2019-05-10	Cardiovascular Disease	14
2030	2018-08-14	2018-08-19	Biliary Colic	12
2032	2018-11-17	2018-11-25	Pregnancy	11
2032	2018-06-24	2018-06-27	Congestive Heart Failure	12
2034	2019-04-22	2019-04-25	Fracture Of Left Femur	15
2034	2019-04-06	2019-04-14	Left Creebral Vascular Accident	17
2035	2018-11-26	2018-12-02	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	1
2035	2019-02-22	2019-02-28	Fractured Left Hip	1
2037	2019-04-20	2019-04-28	Osteomyslitis - Right Hip	1
2037	2018-09-26	2018-09-28	Complete Unilateral Cleft Lip 7 Cleft Palate	14
2038	2019-02-17	2019-02-19	Angina	10
2039	2019-04-12	2019-04-21	2nd Degree Burn Of Face	10
2040	2019-04-05	2019-04-07	L CVA	11
2040	2018-12-28	2018-12-29	Hypertension	17
2041	2018-12-24	2018-12-27	Cerebral Aneurysm Rupture	1
2043	2019-03-05	2019-03-13	Total Left Hip Replacement	14
2043	2018-11-05	2018-11-08	Cerebellar Brain Tumor Metastasis	25
2044	2019-04-28	2019-05-07	Appendicitis	16
2044	2019-04-16	2019-04-16	Head Injury - Closed	25
2045	2019-02-26	2019-03-06	Left Creebral Vascular Accident	3
2045	2018-12-28	2019-01-02	Pregnancy	15
2046	2019-04-30	2019-05-05	Second & Third Degree Burns To Right Arm/Both Legs	17
2046	2019-04-11	2019-04-19	Obstructive Nephropathy	16
2047	2019-03-28	2019-03-31	Colorectal Cancer	2
2048	2018-06-19	2018-06-28	Intestinal Obstruction Hirschsprungs Disease	2
2049	2019-03-27	2019-04-01	Major Burn To The Anterior Thoracic Region	10
2049	2018-09-20	2018-09-29	Cancer Of The Stomach	18
2051	2019-01-23	2019-01-28	2nd Degree Burn Of Face	6
2051	2019-04-28	2019-04-30	Anterior Myocardial Infraction	13
2052	2019-03-26	2019-03-29	Cancer Of The Colon	9
2052	2019-04-13	2019-04-13	Depression, Dementia	7
2053	2018-07-17	2018-07-23	Pregnancy	27
2053	2019-05-07	2019-05-11	Bladder Tomour	9
2054	2018-11-20	2018-11-21	Gunshot Wound To Head	6
2055	2018-11-17	2018-11-25	Congestive Heart Failure	6
2055	2018-11-24	2018-11-30	Multiple Fractures Of R Scapula. Insertion Of Pins	4
2057	2019-04-05	2019-04-12	Pain In Abdomen Left Side	23
2058	2019-03-17	2019-03-22	Unstable Angina	22
2059	2018-09-06	2018-09-11	Cerebral Vascular Aneurys,	8
2059	2019-04-04	2019-04-11	Anterior Myocardial Infraction	27
2060	2019-05-11	2019-05-11	M.I.	12
2060	2018-07-07	2018-07-14	Flanking Abdominal Pain	5
2062	2018-10-10	2018-10-19	Coronary Artary Disease / Lt Sided Weakness	23
2062	2019-03-18	2019-03-26	Cerebral Aneurysm Rupture	5
2063	2018-11-15	2018-11-16	Cerebral Aneurysm Rupture	19
2064	2019-06-05	1971-01-05	Prostatectomy	19
2064	2019-01-15	2019-01-19	Enlarged Bunion On Left Primary Metaarsal	8
2065	2019-05-10	2019-05-17	Schizophrenic Disorder	16
2065	2019-06-05	1971-01-05	Biliary Colic	21
2066	2018-06-29	2018-06-30	Simple Fracture Of The Tibia	5
2067	2018-10-19	2018-10-23	Cholelithiasis	25
2068	2019-03-12	2019-03-12	Sepis	15
2070	2018-09-27	2018-09-29	Congestive Heart Failure	1
2072	2018-09-16	2018-09-23	Urinary Tract Infection	12
2072	2018-06-19	2018-06-24	Pregnant	24
2073	2019-02-04	2019-02-13	Cancer Of The Descending Colon	7
2073	2018-06-21	2018-06-24	Urinary Tract Infection	20
2075	2018-06-27	2018-07-02	Renal Calculi	22
2075	2018-07-02	2018-07-03	Hypertrophy Of Prostate Gland	6
2077	2018-08-31	2018-09-01	Pregnancy	23
2080	2018-10-16	2018-10-25	Myocardial Infarction	6
2081	2018-11-03	2018-11-03	1St Stage Labour	13
2081	2019-01-23	2019-01-28	Right Knee Replacement	6
2082	2019-06-02	1971-01-05	Hypertension	16
2082	2019-04-25	2019-05-03	Myasthen Gravis	18
2085	2019-05-04	2019-05-12	Cystocele/Stress Incontinence	13
2087	2019-05-23	2019-05-26	Hunting Disease	5
2088	2018-10-24	2018-11-02	Appendicitis	18
2089	2018-12-02	2018-12-07	Hunting Disease	18
2089	2019-03-07	2019-03-11	Orthopnea	18
2090	2019-02-05	2019-02-12	Cystic Fibrosis	4
2090	2018-10-27	2018-10-28	Gallbladder Removed	13
2092	2018-09-07	2018-09-08	Injury Lt Patella Inferior	13
2093	2018-11-26	2018-11-29	Labour	6
2093	2018-10-04	2018-10-13	Multiple Sclerosis	8
2094	2018-12-20	2018-12-21	Myocardial Infarction	7
2096	2018-07-29	2018-07-31	Ankylkosing Spondylitis	9
2096	2019-03-11	2019-03-17	Right Hip Replacement	13
2098	2018-06-07	2018-06-14	Appendicitis	21
2099	2019-01-09	2019-01-17	Gallbladder Removed	11
2100	2018-10-04	2018-10-08	Choledocholithiasis	20
2103	2019-01-11	2019-01-14	Unstable Angina	10
2103	2019-05-24	2019-05-30	Osteomyslitis - Right Hip	21
2104	2018-08-05	2018-08-07	Epigastric Pain	5
2105	2019-04-22	2019-04-28	Paranoid Schizophrenic	2
2106	2019-04-04	2019-04-09	Fractured Hip	16
2108	2019-05-21	2019-05-27	Pregnancy	4
2108	2019-01-30	2019-02-07	COPD-Chronicdostructive Pulmonary Disease	13
2110	2018-06-16	2018-06-22	Unstable Angina	23
2110	2018-12-12	2018-12-19	Anterior Myocardial Infraction	3
2111	2018-07-27	2018-07-31	Appendicitis	12
2111	2019-03-03	2019-03-06	Active Labour	9
2112	2018-06-11	2018-06-20	Pregnancy	1
2112	2018-08-17	2018-08-18	Angina Pectoris	4
2113	2019-03-13	2019-03-16	Osteoarthritis Right Knee	23
2117	2019-06-03	1971-01-05	Fracture Right Distal Radius (Colles Fracture)	16
2118	2018-07-15	2018-07-17	Anemia	1
2119	2019-05-24	2019-05-27	Paranoid Schizophrenic	23
2119	2018-07-17	2018-07-19	Pregnancy	20
2122	2019-03-18	2019-03-26	C. O. P. D.	6
2122	2018-06-09	2018-06-11	Congestive Heart Failure	17
2123	2018-09-14	2018-09-20	Unstable Angina	19
2123	2018-08-08	2018-08-08	Cancer	10
2124	2018-12-06	2018-12-07	Intestinal Obstruction Hirschsprungs Disease	14
2125	2018-12-26	2019-01-01	Cerebrovascular Accident (Stroke)	7
2125	2018-07-08	2018-07-17	Pulmonary Edema	12
2126	2018-12-19	2018-12-23	Ca R Breast	9
2126	2018-10-31	2018-11-02	Total Hysterectomy	13
2130	2019-03-09	2019-03-11	Chronic Obstructive Pulmonary Disease	15
2132	2019-05-05	2019-05-13	Fracture Of Left Femur	6
2133	2019-02-24	2019-03-01	Bipolar Affective Disorder	21
2133	2018-07-12	2018-07-21	Bipolar Disorder	4
2134	2018-06-10	2018-06-13	Birth By Caeserian Section	26
2134	2018-12-31	2019-01-08	Appendicitis	19
2136	2019-01-22	2019-01-26	Turp	1
2138	2019-04-30	2019-04-30	Severe Substernal Pain Radiating To Left Shoulder	13
2139	2018-09-08	2018-09-15	Cerebral Aneurysm	21
2140	2019-01-21	2019-01-21	Fractured Skull	21
2143	2018-12-21	2018-12-23	Cerebellar Brain Tumor Metastasis	1
2145	2019-02-07	2019-02-07	Increased Intr-Cranial Pressure	27
2146	2018-09-10	2018-09-19	Angina	15
2146	2018-09-22	2018-09-25	Broken Rt Femur	19
2147	2018-10-28	2018-11-06	Fever N.Y.D.	21
2147	2018-07-30	2018-08-03	Complete Unilateral Cleft Lip 7 Cleft Palate	10
2148	2019-04-12	2019-04-19	Myocardial Infarction	18
2148	2019-01-17	2019-01-21	Appendicitis	9
2149	2019-04-10	2019-04-18	Fracture Of Left Femur	26
2150	2019-05-13	2019-05-16	Angina	18
2150	2018-10-07	2018-10-10	Uterine Fibroid	21
2151	2019-04-16	2019-04-19	Chest Pain	24
2153	2019-01-18	2019-01-25	Myocardial Infarction	8
2154	2018-08-12	2018-08-19	Appendicitis	6
2154	2019-02-04	2019-02-09	Broken Left Femur Compound Fracture	22
2155	2019-01-06	2019-01-09	Atrial Fibrillation R/O MI	7
2156	2018-10-08	2018-10-08	Congestive Heart Failure	4
2158	2019-02-25	2019-02-26	Simple Fracture Of The Tibia	13
2159	2018-06-27	2018-06-28	Tonsillitis	19
2160	2018-12-09	2018-12-13	Congestive Heart Failure	11
2162	2019-04-03	2019-04-09	Choledocholithiasis	3
2162	2019-04-10	2019-04-13	Crohns	18
2163	2019-02-05	2019-02-11	Alt. In Emotional Integrity - Anxiety	6
2164	2018-10-11	2018-10-20	Pain In Abdomen Left Side	9
2165	2018-07-07	2018-07-16	Possible Renal Calculi	10
2165	2018-07-12	2018-07-12	Crohns	12
2166	2019-04-19	2019-04-23	Severe Substernal Pain Radiating To Left Shoulder	5
2166	2018-10-28	2018-11-03	Atrial Arrhythmias	4
2167	2018-09-09	2018-09-13	3rd Degree Burn To Face	16
2168	2018-11-09	2018-11-10	Pregnancy	7
2168	2018-08-09	2018-08-15	L4-Lf Spinal Fusion	11
2169	2019-05-14	2019-05-15	Hyperemesis	15
2170	2018-10-20	2018-10-26	Pneumonia	16
2170	2018-07-06	2018-07-10	Congestive Heart Failure	13
2172	2018-11-25	2018-12-04	2nd Degree Burn Of Face	14
2173	2019-03-08	2019-03-10	Chronic Obstructive Pulmonary Disease	8
2173	2018-09-25	2018-10-03	Acute Lower Abdominal Right-Sided Pain	16
2174	2019-01-07	2019-01-15	Myocardial Infarction	20
2176	2018-07-14	2018-07-17	Basal Skull Fracture	20
2177	2019-03-15	2019-03-22	Myocardial Infarction	15
2178	2018-08-22	2018-08-25	Congestive Heart Failure	3
2179	2018-06-06	2018-06-15	CHF	21
2180	2018-10-19	2018-10-22	Cva Right Side	9
2181	2019-03-19	2019-03-28	Myocardial Infarction	6
2182	2019-05-22	2019-05-31	Hysterectomy	2
2183	2018-09-30	2018-10-05	Severe Narrowing Of Pyloric Channel	23
2183	2018-10-06	2018-10-06	Left Shoulder Rotator Cuff Repair	1
2184	2018-09-28	2018-10-07	Stroke (CVA)	12
2184	2019-05-22	2019-05-26	Full Term Delivery	25
2185	2018-09-25	2018-10-01	Emphysema	13
2186	2018-11-27	2018-12-01	Rul Pneumonia	2
2187	2018-09-29	2018-10-07	Latent Phase Of First Stage Labour	1
2188	2018-07-06	2018-07-12	Cancer Of The Stomach	2
2188	2019-05-28	2019-06-05	Uterine Fibroid	19
2189	2019-01-19	2019-01-28	Spinal Infection	2
2189	2019-02-22	2019-03-03	Total Left Hip Replacement	12
2190	2018-09-18	2018-09-20	Hypertrophy Of Prostate Gland	19
2190	2018-11-11	2018-11-18	Spinal Compresion	17
2192	2018-07-13	2018-07-14	Appendicitis	17
2192	2019-02-15	2019-02-18	Gallbladder Removed	7
2193	2018-08-21	2018-08-24	Paranoid Schizophrenia	10
2193	2018-09-03	2018-09-04	Congestive Heart Failure	4
2194	2018-07-16	2018-07-18	Crohns	26
2194	2018-11-03	2018-11-06	Fractured Femur	27
2195	2018-12-24	2018-12-24	1St Stage Labour	16
2196	2018-08-15	2018-08-22	Hysterectomy	19
2196	2018-06-15	2018-06-17	Malnutrition	17
2197	2019-01-09	2019-01-14	Congestive Heart Failure	26
2197	2019-03-19	2019-03-25	Cerebral Aneurysm	19
2198	2018-07-23	2018-07-30	C-Section Delivery Day 4	10
2198	2019-04-01	2019-04-03	Appendicitis	19
2199	2019-02-08	2019-02-08	Cva (Left) - Cerebral Vascular Accident (Stroke)	24
2199	2019-04-23	2019-04-24	Open Reduction Fracture Rt Humerus	22
2201	2018-12-23	2018-12-23	Pneumonia	2
2202	2019-01-14	2019-01-19	40 Weeks Pregnant	21
2204	2019-02-13	2019-02-22	Quarian Cyst	6
2205	2018-10-27	2018-11-04	Really Sick	13
2206	2018-09-23	2018-09-23	L4-Lf Spinal Fusion	21
2207	2018-12-14	2018-12-23	Stomach Ulcer	2
2209	2019-04-16	2019-04-23	Laceration On Right Leg	14
2211	2018-11-27	2018-11-28	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	9
2212	2018-09-04	2018-09-07	Chest Pain	5
2212	2018-12-21	2018-12-26	Uterine Fibroid	27
2215	2018-09-30	2018-09-30	Rt. Knee Replacement	13
2216	2018-07-30	2018-07-30	Vsa Cardiac Arrest	19
2217	2018-12-19	2018-12-23	Labour	10
2218	2018-10-14	2018-10-20	CHF	23
2218	2019-04-23	2019-04-30	Left Side CVA	13
2220	2019-06-01	1971-01-05	Flanking Abdominal Pain	18
2221	2018-09-14	2018-09-22	Immobility R/T Pain And Swelling R Ankle	13
2222	2018-11-07	2018-11-16	Congestive Heart Failure	7
2223	2019-02-11	2019-02-17	Fractured Femur	5
2223	2019-04-08	2019-04-08	Cancer	13
2224	2018-12-21	2018-12-28	Impaired Gas Exchange	4
2225	2018-08-13	2018-08-15	Stroke	18
2227	2018-12-20	2018-12-26	Headache	15
2229	2019-05-23	2019-05-26	Fractured Femur	5
2229	2019-05-13	2019-05-18	Appendicitis	25
2230	2018-06-06	2018-06-10	Enlarged Bunion On Left Primary Metaarsal	14
2231	2019-02-21	2019-02-28	Hypertrophy Of Prostate Gland	2
2232	2019-05-12	2019-05-21	Pulmonary Edema	14
2234	2018-07-20	2018-07-26	Anterior Myocardial Infraction	25
2234	2018-07-02	2018-07-03	Complete Unilateral Cleft Lip 7 Cleft Palate	5
2235	2019-03-26	2019-04-01	Gall Stones	25
2235	2018-06-20	2018-06-28	Cerebral Aneurysm Rupture	10
2236	2018-10-30	2018-11-07	Cerebral Aneurysm Rupture	21
2236	2019-04-11	2019-04-19	Appendicitis	8
2237	2018-10-03	2018-10-09	Cardiac Catheterization	19
2237	2018-11-01	2018-11-10	Subdural Hematoma	9
2238	2019-03-08	2019-03-12	Right Knee Replacement	8
2238	2018-10-16	2018-10-16	Chest Pain	3
2239	2019-01-09	2019-01-10	Schizophrenia	9
2241	2018-12-25	2019-01-02	Dehydradion, Vomiting	7
2242	2018-08-12	2018-08-18	Hypertrophy Of Prostate Gland	25
2242	2018-12-03	2018-12-12	Stomach Ulcer	21
2243	2019-05-14	2019-05-15	CHF	5
2244	2018-11-25	2018-11-26	Anterior MI	14
2244	2018-10-31	2018-11-07	Asthma Exacerbation	16
2245	2018-07-14	2018-07-23	Gunshot Wound To Head	20
2245	2019-03-24	2019-04-01	Pregnant	27
2249	2019-03-06	2019-03-09	Cervical Spinal Tumor	26
2249	2018-12-31	2019-01-04	Headache	8
2250	2018-10-21	2018-10-28	Pneumonia	11
2250	2019-03-16	2019-03-20	Cva (Left) - Cerebral Vascular Accident (Stroke)	18
2251	2018-11-18	2018-11-20	Myocardial Infarction	25
2254	2018-12-09	2018-12-13	Hysterectomy	24
2254	2018-12-11	2018-12-12	Choledocholithiasis	1
2255	2018-10-14	2018-10-19	Congestive Heart Failure	19
2256	2019-02-19	2019-02-24	Immobility R/T Pain And Swelling R Ankle	12
2257	2019-02-18	2019-02-24	Dehydration	17
2257	2018-08-11	2018-08-19	Post Partum Hemmorage	17
2258	2019-01-07	2019-01-08	Tonsillitis	27
2258	2018-07-08	2018-07-09	Cancer	10
2259	2019-01-03	2019-01-07	Coronary Artery Disease	7
2260	2018-07-08	2018-07-13	L4-Lf Spinal Fusion	19
2261	2019-05-22	2019-05-28	Stomach Ulcer	12
2263	2018-12-28	2019-01-04	Subdural Hematoma	24
2263	2018-10-05	2018-10-13	Child Birth	5
2264	2018-11-20	2018-11-21	Caeserian Section	3
2264	2019-05-30	2019-06-04	Appendicitis	17
2265	2018-06-17	2018-06-19	Myocardial Infarction	21
2265	2018-10-01	2018-10-03	Pregnancy	20
2267	2019-03-02	2019-03-10	Cervical Spinal Tumor	18
2267	2019-04-25	2019-04-26	Hyperemesis	24
2268	2018-07-16	2018-07-21	Asthma Exacerbation	27
2268	2018-08-16	2018-08-18	Acute Bronchitis	26
2269	2018-06-08	2018-06-09	Unstable Angina	23
2269	2019-04-17	2019-04-18	Fracture To Left Femur	23
2270	2018-09-21	2018-09-23	Rul Pneumonia	20
2270	2019-03-28	2019-03-31	Infertility, Secondary	11
2271	2019-01-09	2019-01-16	Anterior MI	13
2272	2018-09-17	2018-09-23	Acute Renal Failure	2
2273	2018-08-04	2018-08-11	Left Creebral Vascular Accident	3
2274	2018-08-12	2018-08-19	Spinal Compresion	26
2275	2018-09-07	2018-09-13	Pregnancy	6
2277	2019-03-11	2019-03-12	Malnutrition	24
2277	2018-08-18	2018-08-20	Melanoma, Cancer	2
2279	2018-11-03	2018-11-10	Cardiovascular Disease	14
2279	2019-03-06	2019-03-07	Congestive Heart Failure	12
2281	2018-08-08	2018-08-12	Osteoarthritis	12
2281	2019-02-02	2019-02-02	Increased Intr-Cranial Pressure	19
2282	2019-03-07	2019-03-11	Fibroids	11
2282	2019-02-01	2019-02-10	Myocardial Infarction	22
2284	2018-06-21	2018-06-21	Acute Lower Abdominal Right-Sided Pain	9
2285	2019-04-08	2019-04-15	2nd Degree Burn Of Face	8
2287	2019-05-04	2019-05-07	Possible Appendicitis	14
2288	2018-10-16	2018-10-16	Bronchitis	11
2288	2018-06-20	2018-06-25	Syncope NYD	16
2289	2018-08-29	2018-09-03	Exploratory, Orthoscopic - Knee	9
2290	2019-05-19	2019-05-23	Appendicitis	21
2290	2019-05-03	2019-05-10	Pregnancy	13
2292	2018-11-18	2018-11-21	Dementia	8
2293	2019-04-15	2019-04-19	Active Labour	11
2295	2018-10-14	2018-10-20	Crohns	10
2295	2019-02-12	2019-02-20	CHF	4
2296	2018-09-20	2018-09-27	Fracture Right Distal Radius	11
2296	2018-08-05	2018-08-13	Asthma	12
2297	2019-05-07	2019-05-16	Fracture Of Fibula And Tibia	25
2297	2018-08-14	2018-08-22	Renal Failure	26
2298	2018-10-21	2018-10-27	Fibroids	16
2298	2019-03-09	2019-03-16	Back Injury	17
2300	2018-10-15	2018-10-15	Diverticulitis	21
2303	2018-11-19	2018-11-20	Angina Pectoris	20
2304	2018-09-09	2018-09-15	Appendicitis	15
2304	2018-10-14	2018-10-16	Decubitus Ulcer	18
2305	2018-11-26	2018-11-30	Cancer Of The Colon	20
2306	2018-06-23	2018-06-29	Appendicitis	7
2306	2019-03-30	2019-04-03	Hypertension	8
2308	2019-02-18	2019-02-23	Cva-Right-Sided-Weakness	20
2308	2019-04-06	2019-04-14	Parkinsons Disease	13
2310	2019-03-11	2019-03-15	Immobility R/T Pain And Swelling R Ankle	25
2310	2019-04-18	2019-04-25	Total Hysterectomy	14
2311	2019-04-20	2019-04-25	Dehydration	1
2314	2019-04-21	2019-04-27	Myocardial Infarction	2
2317	2018-10-17	2018-10-17	Obstructive Nephropathy	13
2317	2018-09-16	2018-09-18	L CVA	7
2320	2019-05-01	2019-05-01	Renal Failure	6
2321	2018-06-26	2018-07-03	Subarachroid Hemorrhage	7
2321	2018-08-21	2018-08-21	Severe Narrowing Of Pyloric Channel	14
2322	2019-01-05	2019-01-06	Rll Pneumonia	2
2322	2018-08-19	2018-08-20	Pulmonary Edema	1
2323	2018-07-24	2018-07-27	Fracture Of Fibula And Tibia	10
2323	2019-04-29	2019-05-02	Chest Pain	2
2324	2018-06-21	2018-06-26	Myocardial Infarction	8
2324	2018-06-23	2018-06-23	L. Calf Pain	4
2325	2018-10-29	2018-11-06	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	9
2327	2019-04-15	2019-04-24	Renal Calculi	8
2327	2018-08-06	2018-08-13	Appendicitis	25
2328	2019-04-30	2019-05-06	Stomache Pain	6
2329	2018-12-11	2018-12-14	Ruptured Appendicitis	11
2329	2019-02-02	2019-02-10	Anterior MI	3
2330	2018-09-02	2018-09-05	Caeserian Section	12
2331	2018-11-17	2018-11-23	Diabetes Mellitus	13
2331	2019-02-13	2019-02-19	Pyloric Obstruction	21
2332	2019-05-09	2019-05-16	Pulmonary Edema	20
2334	2019-05-01	2019-05-03	Pneumonia	10
2335	2018-07-04	2018-07-08	Hyperemesis	27
2336	2018-11-27	2018-11-28	2nd Degree Burn Of Face	6
2336	2019-04-08	2019-04-12	Appendicitis	8
2337	2018-06-14	2018-06-20	Multiple Sclerosis	9
2339	2019-04-01	2019-04-06	Total Hysterectomy	5
2339	2019-04-17	2019-04-25	Pneumonia	16
2340	2019-04-17	2019-04-22	Stomach Ulcer	13
2341	2019-01-10	2019-01-14	Deep Vein Thrombosis	25
2341	2018-08-04	2018-08-11	Myocardial Infarction	3
2342	2019-03-04	2019-03-10	Chronic Obstructive Pulmonary Disease	14
2342	2019-03-16	2019-03-17	Ruptured Fallopian Tube	18
2343	2019-02-18	2019-02-21	Fractured Left Leg	21
2343	2018-12-09	2018-12-10	Congestive Heart Failure	26
2344	2019-05-10	2019-05-19	Depression	22
2345	2018-11-05	2018-11-05	Pyelonephritis	3
2345	2019-01-15	2019-01-15	Angina	27
2346	2018-06-19	2018-06-22	Fracture Right Distal Radius (Colles Fracture)	18
2347	2018-08-14	2018-08-23	Really Sick	6
2348	2018-08-05	2018-08-10	Pain In Abdomen Left Side	17
2349	2018-07-31	2018-08-04	Fracture Rt Radius	25
2349	2018-08-27	2018-08-30	Cardiac Catheterization	19
2350	2018-08-23	2018-09-01	Cerebral Aneurysm	5
2351	2018-10-14	2018-10-20	Birth By Caeserian Section	22
2351	2018-11-30	2018-12-01	Hunting Disease	20
2352	2019-02-01	2019-02-03	Ovarian Cancer	16
2352	2019-04-12	2019-04-18	Chest Pain	14
2353	2018-09-28	2018-10-06	Left Side CVA	26
2354	2018-11-07	2018-11-13	Ruptured Appendicitis	21
2355	2019-05-25	2019-05-29	Turp	9
2355	2019-02-27	2019-03-05	Hysterectomy	24
2356	2019-04-08	2019-04-16	Sinus Tachcardia,	12
2357	2018-08-19	2018-08-28	Depression, Dementia	12
2358	2018-07-01	2018-07-02	Rheumataoid Arthritis	21
2360	2019-03-13	2019-03-19	Severe Pain + Tenderness In Left Calf	14
2361	2019-01-14	2019-01-15	Upper Respetory Infection	1
2361	2018-07-12	2018-07-19	Tonsillitis	11
2362	2018-08-01	2018-08-06	Chest Pain	23
2363	2018-09-21	2018-09-24	Crohns Disease	24
2735	2018-07-31	2018-08-06	Cancer	13
2367	2018-10-12	2018-10-21	Multiple Fractures Of R Scapula. Insertion Of Pins	10
2369	2019-04-30	2019-05-09	Cva (Left) - Cerebral Vascular Accident (Stroke)	1
2369	2019-01-25	2019-02-02	Appendicitis	8
2370	2019-02-26	2019-02-27	Abdominal Pain	7
2370	2018-08-04	2018-08-13	Parkinsons Disease	14
2372	2019-05-25	2019-06-02	Fractured Right Femur (Compound)	26
2373	2018-06-28	2018-07-03	Unstable Angina	2
2373	2018-10-24	2018-10-26	Renal Failure	20
2374	2018-10-05	2018-10-13	Chest Pain	9
2374	2018-06-19	2018-06-23	Fractured Femur	14
2375	2018-06-20	2018-06-23	3rd Degree Burn To Face	7
2375	2018-12-27	2018-12-29	Scatica	15
2377	2019-02-22	2019-03-03	Asthma	16
2379	2018-11-14	2018-11-14	Congestive Heart Failure	8
2380	2019-05-01	2019-05-01	Fracture Right Distal Radius	14
2380	2019-02-05	2019-02-10	Possible Renal Calculi	6
2382	2019-01-30	2019-02-06	Pneumonia	17
2383	2019-05-25	2019-06-01	Left Side CVA	26
2385	2019-03-04	2019-03-08	Rll Pneumonia	20
2385	2018-07-08	2018-07-11	Osteoarthritis	27
2386	2018-07-26	2018-08-04	L4-Lf Spinal Fusion	13
2386	2018-07-16	2018-07-16	Epigastric Pain	21
2387	2018-07-29	2018-07-29	Congestive Heart Failure	19
2387	2018-09-23	2018-09-25	Bipolar Disorder	20
2389	2018-07-11	2018-07-19	Multiple Sclerosis	16
2389	2019-01-29	2019-01-29	Ca R Breast	17
2392	2018-11-10	2018-11-17	Enlarged Bunion On Left Primary Metaarsal	1
2393	2018-10-26	2018-10-28	Abdominal Pain	7
2393	2019-01-29	2019-02-03	Pregnancy	16
2394	2018-07-31	2018-08-02	Prostatectomy	27
2396	2018-08-19	2018-08-26	Ovarian Dermoid-Cyct	20
2397	2019-01-31	2019-02-04	Abdominal Perineal Resection	4
2399	2018-07-24	2018-07-30	MVA HI	1
2399	2019-01-16	2019-01-18	Thrombocytopenia	24
2403	2019-01-19	2019-01-28	Latent Phase Of First Stage Labour	19
2404	2019-03-08	2019-03-11	Simple Fracture Of The Tibia	1
2404	2019-02-09	2019-02-10	Fractured Right Femur (Compound)	3
2405	2019-04-11	2019-04-13	Cystic Fibrosis	27
2406	2018-10-25	2018-10-25	Cancer Of The Colon	12
2406	2018-12-30	2019-01-05	Amigima	3
2407	2018-10-29	2018-10-29	Basal Skull Fracture	12
2407	2018-07-06	2018-07-06	Fracture Of Fibula And Tibia	24
2408	2018-12-02	2018-12-07	CHF	1
2409	2018-11-12	2018-11-12	Pregnancy	4
2410	2018-12-27	2018-12-27	Post Partum Hemmorage	18
2411	2018-12-01	2018-12-08	Fractured Femur	2
2411	2018-11-24	2018-11-28	Cleft Palate And Complete Unilateral Cleft Up	11
2413	2018-12-16	2018-12-19	Fractured Left Leg	12
2413	2018-12-02	2018-12-04	Cancer Of The Descending Colon	16
2414	2019-06-03	2019-06-05	Fractured Tibia	2
2414	2018-08-24	2018-08-29	Chest Pain	1
2416	2018-08-29	2018-09-05	Chestpain Not Yet Diagnosed	24
2417	2018-10-27	2018-10-29	Congestive Heart Failure	15
2417	2018-07-23	2018-08-01	Pulmonary Edema	27
2418	2018-08-23	2018-08-27	Left Creebral Vascular Accident	27
2421	2019-02-23	2019-02-28	Pregnancy	22
2421	2019-01-14	2019-01-20	Osteoarthritis	23
2422	2019-05-12	2019-05-17	Decubitus Ulcer	20
2423	2018-12-11	2018-12-11	Fractured Left Leg	7
2424	2019-01-28	2019-02-04	Decubitus Ulcer	27
2424	2018-12-08	2018-12-10	Peptic Ulcer	23
2425	2018-07-12	2018-07-13	Congestive Heart Failure	13
2425	2018-09-08	2018-09-10	Total Lt Hip Replacement Because Of Osteoarthritis	3
2426	2018-06-27	2018-06-30	Tonsillitis	27
2426	2019-03-28	2019-03-30	Malnutrition	6
2427	2019-03-13	2019-03-13	Chronic Schizophrenia,Psychosis,Paranoia	7
2428	2018-11-02	2018-11-07	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	15
2428	2018-08-26	2018-08-30	Zenkers Diverticulitis	2
2431	2019-01-30	2019-02-07	Unstable Angina	23
2431	2018-09-26	2018-10-02	Malnutrition	23
2432	2018-11-11	2018-11-15	2nd & 3rd Degree Burns To Right Arm / Both Legs	24
2432	2018-08-06	2018-08-09	Congestive Heart Failure	26
2433	2018-09-18	2018-09-27	Diabetes	1
2433	2018-06-13	2018-06-21	Renal Failure	19
2434	2018-11-13	2018-11-20	Cardiovascular Disease	12
2435	2018-09-04	2018-09-06	Congestive Heart Failure	5
2436	2018-12-20	2018-12-26	Schizophrenia	26
2438	2018-08-22	2018-08-28	Osteoarthritis Right Knee	19
2439	2019-05-07	2019-05-14	Congestive Heart Failure	9
2439	2019-02-23	2019-03-04	Ovarian Cancer	3
2440	2018-12-02	2018-12-07	Severe Narrowing Of Pyloric Channel	12
2442	2019-05-25	2019-05-25	Rt. Nephrectomy	6
2442	2018-07-13	2018-07-21	Myocardial Infarction	18
2443	2019-04-21	2019-04-28	Congestive Heart Failure	16
2443	2018-07-10	2018-07-15	Orthopnea	25
2444	2019-02-16	2019-02-25	Parkinsons Disease	19
2445	2019-05-13	2019-05-21	Pneumonia	13
2445	2018-09-16	2018-09-18	Tonsillitis	5
2446	2019-05-19	2019-05-24	Dehydradion, Vomiting	3
2448	2019-06-01	1971-01-05	CHF	20
2448	2019-03-01	2019-03-02	Pulmonay Embolism	8
2449	2019-01-30	2019-02-07	Fracture Right Distal Radius	19
2450	2018-12-28	2019-01-02	Pregnant	26
2450	2018-10-25	2018-10-29	Appendicitis	5
2451	2018-11-06	2018-11-09	Congestive Heart Failure	27
2452	2018-06-11	2018-06-20	Really Sick	15
2453	2019-04-05	2019-04-06	Coronary Artery Disease	19
2453	2018-12-04	2018-12-05	Pain In Abdomen Left Side	1
2455	2019-01-02	2019-01-09	Rll Pneumonia	25
2455	2018-08-12	2018-08-13	Fractured Hip	8
2456	2019-02-13	2019-02-16	Scatica	24
2456	2018-11-03	2018-11-07	Malnutrition	25
2457	2019-01-20	2019-01-24	Myocardial Infarction	18
2458	2019-02-05	2019-02-11	Fractured Hip	24
2458	2018-12-11	2018-12-16	Intestinal Obstruction Hirschsprungs Disease	27
2459	2019-05-29	2019-06-01	Congestive Heart Failure	26
2460	2018-06-17	2018-06-24	Rll Pneumonia	12
2461	2018-11-13	2018-11-21	Cytutus	2
2462	2018-08-03	2018-08-04	Alzheimers	7
2463	2018-11-09	2018-11-12	Congestive Heart Failure	13
2466	2018-09-21	2018-09-29	Knee Replacement	2
2466	2018-06-28	2018-07-01	Cardiac Catheterization	9
2468	2019-02-15	2019-02-21	Labour	13
2468	2019-01-15	2019-01-21	Appendicitis	4
2470	2018-12-16	2018-12-18	Infertility, Secondary	13
2472	2018-10-17	2018-10-17	Chest Pain	11
2473	2018-06-26	2018-06-28	Chestpain Not Yet Diagnosed	13
2474	2018-07-30	2018-08-06	Unable To Void.	9
2474	2018-08-24	2018-08-29	Pain In Abdomen Left Side	27
2475	2019-03-04	2019-03-13	Unstable Angina	4
2475	2018-08-04	2018-08-13	Congestive Heart Failure	16
2477	2019-02-20	2019-02-22	Congestive Heart Failure	15
2478	2018-10-26	2018-10-30	Severe Pain + Tenderness In Left Calf	25
2478	2019-03-08	2019-03-14	Cerebrovascular Accident (Stroke)	9
2479	2018-10-04	2018-10-06	Pregnancy	4
2479	2018-11-06	2018-11-09	Fractured Tibia	13
2480	2018-10-18	2018-10-23	Migraine	19
2481	2018-09-21	2018-09-29	Pregnancy	27
2482	2018-10-31	2018-11-05	Angina	2
2482	2019-03-11	2019-03-16	Congestive Heart Failure	14
2485	2018-08-05	2018-08-13	Spinal Compresion	3
2485	2019-01-03	2019-01-07	Turp	1
2486	2018-09-04	2018-09-11	Cva Right Side	13
2486	2018-07-31	2018-08-08	Coronary Artery Disease	10
2487	2019-03-19	2019-03-20	Hysterectomy	21
2487	2018-07-03	2018-07-07	Acute Thrombophiebitis R Leg	14
2489	2019-01-01	2019-01-10	Acute Thrombophiebitis R Leg	27
2491	2019-02-20	2019-02-21	Osteoarthritis	13
2492	2018-10-26	2018-10-31	Cerebral Aneurysm	16
2493	2019-04-06	2019-04-07	Acute Thrombophiebitis R Leg	25
2493	2019-02-01	2019-02-01	Obstructive Nephropathy	27
2494	2019-05-29	2019-06-04	Pneumonia	23
2494	2019-04-10	2019-04-12	Appendicitis	23
2495	2019-04-04	2019-04-05	Enlarged Bunion On Left Primary Metaarsal	18
2496	2018-11-13	2018-11-19	Epigastric Pain	1
2496	2018-11-24	2018-12-01	Asthma Exacerbation	24
2497	2019-01-21	2019-01-24	Lung Cancer (Rt. Lung)	4
2498	2019-05-05	2019-05-05	Upper Respetory Infection	3
2499	2018-08-16	2018-08-17	Renal Failure	6
2499	2018-12-27	2018-12-29	Abdominal Pain	2
2500	2019-04-18	2019-04-27	Endometriosis	27
2500	2018-07-27	2018-08-01	Turp	22
2501	2018-11-27	2018-12-03	Uterine Fibroid	22
2501	2018-11-25	2018-11-29	Congestive Heart Failure	6
2502	2018-11-26	2018-12-01	Uterine Fibroid	21
2502	2018-07-16	2018-07-21	Prostatectomy	8
2503	2018-06-27	2018-06-30	Cerebral Aneurysm	7
2503	2018-10-16	2018-10-23	Fractured Femur	12
2504	2018-08-11	2018-08-18	Congestive Heart Failure	25
2505	2018-12-14	2018-12-15	Pyclonephritis	3
2506	2018-08-03	2018-08-08	Thrombocytopenia	16
2506	2019-05-02	2019-05-05	Pneumonia	3
2507	2019-01-05	2019-01-09	Congestive Heart Failure	27
2508	2018-10-29	2018-11-03	Congestive Heart Failure	26
2509	2018-11-12	2018-11-16	Myocardial Infarction	2
2509	2018-09-24	2018-09-28	Pneumonia	18
2510	2018-10-14	2018-10-20	Fractured Hip	23
2511	2018-08-25	2018-08-26	Rll Pneumonia	13
2513	2019-01-01	2019-01-10	Fractured Hip	4
2516	2019-03-06	2019-03-15	Melanoma, Cancer	4
2519	2018-10-21	2018-10-23	1St Stage Labour	20
2520	2019-04-14	2019-04-23	Congestive Heart Failure	8
2520	2018-11-03	2018-11-06	Respiratory Failure	5
2522	2018-11-26	2018-12-01	Pneumonia	26
2523	2018-09-09	2018-09-11	Repair Stab Wound	16
2524	2018-11-14	2018-11-21	Basal Skull Fracture	3
2525	2019-05-08	2019-05-12	Cystocele/Stress Incontinence	13
2526	2018-06-15	2018-06-22	Prostatectomy	16
2526	2019-04-12	2019-04-20	L4-Lf Spinal Fusion	5
2527	2018-07-26	2018-08-03	Unstable Angina	11
2528	2018-12-05	2018-12-13	Chronic Obstructive Pulmonary Disease	27
2528	2018-06-09	2018-06-13	Pregnancy	5
2529	2018-06-20	2018-06-25	Congestive Heart Failure	20
2531	2019-03-10	2019-03-13	Diabetes Mellitus	18
2531	2019-03-20	2019-03-28	Congestive Heart Failure	25
2532	2019-02-28	2019-03-01	Dementia	24
2533	2019-04-10	2019-04-15	Appendicitis	26
2533	2019-04-13	2019-04-22	Bipolar Affective Disorder	8
2534	2018-12-11	2018-12-15	Appendicitis	23
2535	2019-03-23	2019-03-23	Injury Lt Patella Inferior	12
2536	2018-11-10	2018-11-14	Fractured Femur	6
2536	2019-04-23	2019-04-27	Peripheral Edema	14
2537	2019-01-23	2019-02-01	Paranoid Schizophrenic	10
2539	2019-03-13	2019-03-19	Undiagnosed Chest Pain	3
2539	2018-10-21	2018-10-25	Ca. Of Blatter	8
2540	2019-03-29	2019-04-04	Child Birth	9
2541	2018-10-05	2018-10-05	Myocardial Infarction	22
2541	2019-03-02	2019-03-07	Pregnancy	22
2542	2018-11-16	2018-11-25	Fractured Hip (Right)	9
2542	2018-11-05	2018-11-05	Repair Stab Wound	1
2544	2018-09-24	2018-10-01	Fractured Femur	11
2545	2018-08-26	2018-08-28	Fractured Hip	20
2545	2019-01-07	2019-01-13	Pyclonephritis	18
2546	2019-05-09	2019-05-14	Emphysema	24
2547	2018-08-24	2018-09-01	Fibroids	14
2547	2019-03-27	2019-03-27	Injury Lt Patella Inferior	4
2548	2019-04-24	2019-04-30	Diabetes Mellitus	9
2549	2019-05-25	2019-05-30	CHF Congestive Heart Failure	10
2550	2019-05-20	2019-05-27	Total Hysterectomy	5
2550	2018-11-16	2018-11-18	Stroke	16
2551	2019-01-15	2019-01-18	Congestive Heart Failure	27
2553	2019-05-06	2019-05-13	Schizophrenic Disorder	26
2554	2018-10-09	2018-10-18	Severe Narrowing Of Pyloric Channel	14
2555	2018-08-22	2018-08-28	CHF Congestive Heart Failure	22
2557	2019-04-23	2019-04-29	Endometriosis	5
2557	2018-10-19	2018-10-26	Cerebral Vascular Aneurys,	2
2558	2019-03-05	2019-03-11	Anterior Myocardial Infraction	25
2558	2018-08-29	2018-09-06	Schizophrenia Paranoid Delusions	14
2559	2018-08-04	2018-08-11	Amyotopic Lateral Scletosis	24
2560	2018-09-18	2018-09-26	Unstable Angina	16
2561	2019-03-07	2019-03-16	Coronary Artery Disease	22
2562	2018-07-11	2018-07-20	Pregnancy	8
2563	2019-02-04	2019-02-10	Turp	23
2566	2019-02-01	2019-02-05	Crohns Disease	22
2568	2018-11-02	2018-11-11	Fracture Of Left Femur	7
2568	2019-03-01	2019-03-09	Anemia	19
2569	2019-05-05	2019-05-13	Pneumonia	20
2569	2018-06-14	2018-06-14	Hypertrophy Of Prostate Gland	12
2570	2019-03-16	2019-03-24	Knee Replacement	15
2570	2019-05-22	2019-05-27	Fibromyalgia	3
2572	2019-05-19	2019-05-25	Coronary Artery Disease	15
2573	2019-01-06	2019-01-12	Prostatectomy	7
2573	2018-07-25	2018-07-27	M.I.	8
2574	2019-03-10	2019-03-19	Ovarian Dermoid-Cyct	13
2574	2018-07-20	2018-07-26	Myocardial Infarction	3
2575	2019-02-11	2019-02-15	Lwr Right Quad Pain That Radiates Through Abdomen	18
2576	2018-09-21	2018-09-27	Hypertension	12
2577	2019-04-29	2019-05-07	Hiatal Hernia	15
2579	2019-04-29	2019-05-02	Enlarged Bunion On Left Primary Metaarsal	3
2579	2018-12-11	2018-12-20	Pneumothorax	17
2582	2019-04-03	2019-04-03	Congestive Heart Failure	5
2582	2019-02-11	2019-02-11	Myocardial Infarction (MI)	10
2583	2019-05-01	2019-05-08	Myocardial Infarction	10
2583	2018-07-13	2018-07-17	Scatica	16
2584	2018-10-05	2018-10-07	Appendicitis	8
2586	2018-07-13	2018-07-13	Pain In Abdomen Left Side	26
2586	2019-03-06	2019-03-14	Orthopnea	1
2587	2018-12-04	2018-12-08	Bladder Cancer	21
2587	2019-04-02	2019-04-05	40 Weeks Pregnant	2
2588	2018-09-09	2018-09-18	Left Creebral Vascular Accident	9
2589	2019-04-18	2019-04-18	Appendicitis	22
2589	2019-03-19	2019-03-27	Cardiac Catheterization	1
2591	2018-08-31	2018-09-02	Hysterectomy	5
2591	2018-12-06	2018-12-13	Schizophrenia	10
2593	2019-03-20	2019-03-21	Pregnancy	26
2594	2018-12-12	2018-12-17	Myocardial Infarction	15
2594	2018-10-09	2018-10-09	Appendicitis	20
2595	2019-06-02	1971-01-05	Myocardial Infarction	12
2596	2018-10-13	2018-10-15	Colorectal Cancer	16
2597	2018-08-10	2018-08-19	Crohns Disease	6
2597	2019-02-02	2019-02-08	Major Depression	6
2598	2019-04-13	2019-04-14	Unstable Angina	12
2599	2019-02-06	2019-02-06	Unstable Angina	16
2599	2018-09-27	2018-09-30	Pregnancy	26
2600	2019-05-30	2019-06-02	Severe Narrowing Of Pyloric Channel	5
2601	2018-09-21	2018-09-24	Anterior Myocardial Infraction	7
2601	2019-05-02	2019-05-10	Peptic Ulcer	19
2603	2018-12-08	2018-12-16	Schizophrenia	20
2603	2019-01-29	2019-01-30	Multiple Sclerosis	11
2604	2019-02-20	2019-02-27	Fracture Right Distal Radius (Colles Fracture)	10
2604	2018-06-13	2018-06-14	Congestive Heart Failure	23
2606	2018-12-29	2019-01-03	Fractured Hip (Right)	17
2608	2019-03-18	2019-03-24	Impaired Gas Exchange	1
2608	2018-06-24	2018-06-25	Acute Leukemia	27
2609	2018-09-04	2018-09-08	Appendicitis	26
2609	2019-03-12	2019-03-18	Congestive Heart Failure	11
2610	2018-09-25	2018-09-26	Abdominal Pain	16
2611	2019-05-08	2019-05-16	Stomache Pain	21
2611	2019-03-18	2019-03-19	Manic Depression	4
2613	2019-05-25	2019-06-02	Open Reduction Fracture Rt Humerus	10
2613	2019-03-20	2019-03-20	Rt. Nephrectomy	16
2615	2018-10-09	2018-10-11	Intracerebral Bleed	12
2615	2018-08-17	2018-08-20	Angina Pectoris	26
2616	2019-02-24	2019-03-05	Schizophrenia Paranoid Delusions	7
2616	2018-10-16	2018-10-24	Turp	18
2618	2018-10-24	2018-10-24	Open Reduction Fracture Rt Humerus	27
2619	2018-11-10	2018-11-18	Right Hip Replacement	22
2619	2018-09-16	2018-09-18	Diabetes Mellitus	23
2620	2019-02-12	2019-02-21	Appendicitis	9
2620	2018-08-06	2018-08-10	Glomerulonephritis	5
2621	2018-10-15	2018-10-17	Stress Incotinence	26
2623	2018-10-12	2018-10-16	Anterior MI	16
2623	2019-01-21	2019-01-23	Emphysema	5
2625	2019-06-05	1971-01-05	Renal Calculi	19
2626	2019-02-14	2019-02-17	Fractured L. Tibia	3
2626	2018-06-30	2018-06-30	Anterior Myocardial Infraction	12
2629	2019-02-16	2019-02-19	Subarachroid Hemorrhage	26
2630	2019-05-19	2019-05-21	Ovarian Cancer	26
2632	2018-11-17	2018-11-25	Possible Renal Calculi	10
2633	2018-11-28	2018-12-03	Intestinal Obstruction Hirschsprungs Disease	21
2634	2019-03-13	2019-03-13	Schizophrenia Paranoid Delusions	9
2635	2018-11-03	2018-11-05	Chest Pain	23
2636	2019-02-09	2019-02-09	Fibromyalgia	24
2636	2018-06-26	2018-06-29	Chestpain Not Yet Diagnosed	3
2637	2018-07-22	2018-07-26	Diabetes Mellitus	5
2637	2018-06-28	2018-07-02	Pregnancy	4
2638	2019-05-25	2019-06-01	C. O. P. D.	10
2639	2019-01-16	2019-01-16	Appendicitis	20
2639	2019-01-19	2019-01-28	Congestive Heart Failure	21
2640	2018-06-18	2018-06-20	Post Partum Hemmorage	21
2641	2018-09-03	2018-09-11	Obsessive - Compulsive Order	14
2641	2019-05-27	2019-05-29	Osteoarthritis	7
2642	2018-10-06	2018-10-10	Kock Pouch Urinary Diversion	11
2642	2018-06-24	2018-06-24	Crohns	25
2643	2019-05-08	2019-05-14	Latent Phase Of First Stage Labour	9
2643	2019-01-24	2019-01-30	Cholenithiasis	22
2645	2018-10-11	2018-10-14	Fractured \\"L\\" Femur	8
2646	2019-04-08	2019-04-09	CHF	8
2646	2019-05-31	1971-01-05	Abdominal Pain	1
2647	2018-11-18	2018-11-18	Bipolar Disorder	21
2648	2019-04-06	2019-04-12	Multiple Sclerosis	21
2649	2019-05-31	2019-06-04	Unstable Angina	13
2650	2018-07-30	2018-08-04	Congestive Heart Failure	16
2651	2019-04-18	2019-04-26	Scatica	11
2651	2019-05-11	2019-05-11	Spinal Compresion	23
2652	2018-11-04	2018-11-12	Back Injury	16
2653	2018-08-05	2018-08-14	Chronic Obstructive Pulmonary Disease	9
2655	2018-11-21	2018-11-23	Anemia	21
2655	2018-10-29	2018-11-03	Ovarian Cancer	24
2656	2019-02-04	2019-02-05	Full Term Delivery	16
2656	2019-05-20	2019-05-21	Injury Lt Patella Inferior	9
2657	2019-03-12	2019-03-16	Pain In Abdomen Left Side	9
2658	2018-10-24	2018-10-27	Severe Pain + Tenderness In Left Calf	8
2660	2018-11-21	2018-11-26	C-Section Delivery Day 4	15
2661	2018-12-13	2018-12-18	Depression	25
2661	2019-05-17	2019-05-26	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	9
2662	2018-10-16	2018-10-21	Hallecinations	14
2662	2018-07-09	2018-07-13	Coronary Artery Disease	19
2663	2019-03-12	2019-03-21	Osteoarthritis Right Knee	5
2663	2019-01-10	2019-01-10	Unstable Angina	12
2664	2018-06-09	2018-06-16	C. O. P. D.	12
2665	2018-11-11	2018-11-18	Intestinal Obstruction Hirschsprungs Disease	9
2668	2018-12-20	2018-12-23	Ovarian Cyst	21
2669	2018-09-24	2018-09-26	Major Depression	4
2670	2018-06-06	2018-06-10	Parkinsons Disease	24
2671	2019-05-08	2019-05-10	Anterior Myocardial Infraction	14
2672	2018-08-31	2018-09-02	Anterior Myocardial Infraction	7
2672	2018-12-05	2018-12-13	Gastoric Ulcer	8
2673	2019-02-06	2019-02-08	COPD-Chronicdostructive Pulmonary Disease	12
2674	2019-02-14	2019-02-22	Schizophrenia	24
2674	2018-07-22	2018-07-23	Chest Pain With Sob	3
2677	2019-02-14	2019-02-17	Appendicitis	15
2678	2019-01-25	2019-01-29	Fractured L. Tibia	22
2679	2019-04-20	2019-04-28	Bronchiolitis	15
2679	2019-01-28	2019-01-29	Lymphona	23
2682	2019-06-02	2019-06-03	Emphysema	19
2683	2019-05-23	2019-05-30	Chest Pain With Sob	22
2683	2018-12-26	2018-12-31	Myocardial Infarction	26
2684	2019-04-12	2019-04-18	Congestive Heart Failure	23
2684	2019-02-07	2019-02-14	MI	22
2686	2018-12-21	2018-12-30	Cancer Of The Colon	14
2686	2018-10-03	2018-10-12	Angina	11
2687	2019-04-29	2019-05-04	Congestive Heart Failure	5
2687	2018-08-15	2018-08-23	C-Section Delivery Day 4	19
2689	2019-05-04	2019-05-13	Dementia	2
2689	2019-04-09	2019-04-17	Glomerulonephritis	22
2690	2018-12-18	2018-12-25	Chestpain Not Yet Diagnosed	13
2691	2018-10-11	2018-10-14	Upper Respetory Infection	8
2693	2018-08-24	2018-08-26	Crohns Disease	12
2693	2019-03-19	2019-03-26	Fractured Femur	3
2694	2019-01-30	2019-01-31	Crohns	19
2695	2019-02-20	2019-02-28	Fracture Rt Radius	5
2699	2019-02-24	2019-02-27	Malnutrition	18
2699	2019-04-06	2019-04-11	Myocardial Infarction	2
2701	2018-09-01	2018-09-04	Zenkers Diverticulitis	25
2702	2019-04-04	2019-04-07	Colorectal Cancer	16
2703	2019-03-29	2019-04-02	Peripheral Edema	16
2706	2018-06-20	2018-06-23	Myocardial Infarction	20
2706	2018-11-08	2018-11-11	Chest Pain	14
2707	2018-12-21	2018-12-25	Uterine Fibroid	21
2709	2019-05-19	2019-05-27	Severe Rlq Pain	24
2710	2019-03-30	2019-04-03	Emphysema	3
2712	2019-01-31	2019-02-09	Epilepsy	20
2712	2018-11-10	2018-11-17	Colorectal Cancer	5
2713	2019-03-15	2019-03-18	Complete Unilateral Cleft Lip & Cleft Palate	25
2713	2018-11-28	2018-12-02	Fractured Left Hip	8
2714	2019-04-03	2019-04-04	Hypertrophy Of Prostate Gland	15
2715	2018-10-22	2018-10-30	Zenkers Diverticulitis	15
2716	2018-08-01	2018-08-05	Depression, Dementia	18
2716	2019-05-08	2019-05-08	Caeserian Section	7
2717	2019-01-23	2019-01-30	CHF	24
2718	2018-08-27	2018-08-27	Chronic Schizophrenia,Psychosis,Paranoia	24
2719	2018-07-23	2018-07-30	Endometriosis	26
2719	2019-02-14	2019-02-15	Cancer Of The Descending Colon	13
2720	2018-07-24	2018-07-30	Crohns Disease	11
2722	2018-11-28	2018-11-30	Congestive Heart Failure	14
2723	2018-07-11	2018-07-17	Cerebral Aneurysm Rupture	10
2723	2019-02-09	2019-02-10	Fractured Left Hip Due To Slip And Fall On Ice	24
2724	2019-01-07	2019-01-11	Poisoning	2
2724	2019-02-02	2019-02-05	Congestive Heart Failure	4
2725	2019-05-14	2019-05-18	Ovarian Cancer	20
2726	2018-06-29	2018-07-01	Pneumonia	13
2726	2019-02-26	2019-03-05	Rheumataoid Arthritis	7
2727	2018-09-15	2018-09-20	Stress Incotinence	4
2728	2019-01-17	2019-01-25	Fractured Right Femur (Compound)	22
2730	2018-06-21	2018-06-27	Cerebrovascular Accident (Stroke)	23
2732	2019-02-13	2019-02-13	Zenkers Diverticulitis	13
2732	2019-01-26	2019-01-28	Congestive Heart Failure	3
2733	2018-06-20	2018-06-22	Ca R Breast	13
2734	2019-01-02	2019-01-08	Severe Pain + Tenderness In Left Calf	17
2735	2019-05-30	2019-06-04	Spinal Cord Injury	6
2736	2018-06-25	2018-06-26	Laceration On Right Leg	5
2737	2018-11-17	2018-11-20	Acute Renal Failure	24
2737	2018-09-09	2018-09-13	Chest Pain With Sob	4
2738	2019-02-22	2019-02-27	Cholenithiasis	19
2739	2019-05-10	2019-05-10	Fractured \\"L\\" Femur	7
2740	2018-06-14	2018-06-21	Pain In Abdomen Left Side	18
2741	2018-06-24	2018-07-01	Chest Pain	21
2742	2018-12-27	2019-01-05	Major Burn To The Anterior Thoracic Region	11
2742	2018-11-09	2018-11-12	Appendicitis	27
2743	2018-12-24	2018-12-28	Rll Pneumonia	8
2743	2018-12-13	2018-12-21	Headache	10
2745	2018-06-06	2018-06-10	Paranoid Schizophrenic	3
2745	2018-12-17	2018-12-24	Cholelithiasis	25
2747	2018-08-16	2018-08-21	Pregnancy	24
2747	2018-12-12	2018-12-15	Pulmonary Edema	8
2748	2018-10-04	2018-10-05	Anemia	16
2750	2019-03-13	2019-03-22	Diverticulitis	19
2750	2018-09-06	2018-09-14	Pneumonia	7
2751	2018-07-26	2018-08-04	Myocardial Infarction	23
2752	2018-10-03	2018-10-05	Lung Cancer	14
2752	2018-06-27	2018-06-27	Appendicitis	1
2753	2018-12-09	2018-12-15	Chronic Obstructive Pulmonary Disease	22
2753	2018-12-10	2018-12-14	Ovarian Dermoid-Cyct	20
2754	2019-04-13	2019-04-22	Immobility R/T Pain And Swelling R Ankle	20
2754	2018-08-27	2018-08-28	Cva Right Side	19
2755	2018-12-17	2018-12-21	Left Creebral Vascular Accident	7
2755	2019-02-09	2019-02-14	Full Term Delivery	23
2756	2018-11-30	2018-12-01	Emphysema	17
2758	2019-01-01	2019-01-05	Appendicitis	11
2758	2019-05-14	2019-05-20	Right Hip Replacement	27
2762	2019-04-07	2019-04-14	Bipolar Affective Disorder	9
2762	2018-09-09	2018-09-09	Appendicitis	13
2764	2019-01-22	2019-01-25	Congestive Heart Failure	23
2764	2019-03-18	2019-03-19	Multiple Sclerosis	25
2765	2019-05-10	2019-05-16	Atrial Fibrillation R/O MI	2
2766	2019-01-16	2019-01-19	Myocardial Infarction	26
2767	2019-04-20	2019-04-22	Pain In Abdomen Left Side	10
2768	2019-05-30	2019-06-05	Congestive Heart Failure	27
2769	2019-01-07	2019-01-14	Simple Fracture Of The Tibia	14
2769	2019-03-22	2019-03-28	Migraine	1
2771	2019-03-20	2019-03-20	Post Partum Hemmorage	5
2772	2018-09-04	2018-09-09	Rt. Knee Replacement	3
2773	2019-02-07	2019-02-15	Active Labour	1
2774	2019-01-30	2019-02-01	Pregnancy	5
2774	2019-05-27	2019-05-31	Pyclonephritis	22
2775	2019-02-11	2019-02-14	L CVA	1
2775	2019-03-24	2019-03-26	Chest Pain	27
2776	2019-03-11	2019-03-19	Cerebral Aneurysm	13
2777	2019-03-25	2019-03-30	Aortic Stenosis	11
2777	2019-03-30	2019-04-04	Pregnancy	20
2778	2019-05-13	2019-05-20	Cholelithiasis	22
2779	2018-12-12	2018-12-14	Lung Cancer (Rt. Lung)	2
2779	2018-11-02	2018-11-11	Spinal Compresion	2
2780	2018-06-19	2018-06-25	Hallecinations	13
2781	2019-04-27	2019-05-03	Impaired Gas Exchange	9
2782	2019-04-29	2019-05-06	Diverticulitis	4
2784	2018-09-01	2018-09-05	Spinal Cord Injury	20
2786	2019-05-21	2019-05-27	Dehydration	6
2786	2019-04-09	2019-04-10	Epigastric Pain	23
2787	2019-04-05	2019-04-10	2nd & 3rd Degree Burns To Right Arm / Both Legs	3
2787	2018-08-05	2018-08-10	Myocardial Infarction	12
2789	2018-08-19	2018-08-23	Coronary Artery Disease	8
2789	2018-11-10	2018-11-12	Scatica	17
2790	2018-06-12	2018-06-13	Abdominal Pain	24
2790	2019-05-01	2019-05-08	Total Lt Hip Replacement Because Of Osteoarthritis	18
2791	2019-05-15	2019-05-16	Hyperemesis	3
2791	2018-12-06	2018-12-15	3rd Degree Burn	18
2792	2019-03-23	2019-03-23	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	6
2793	2019-02-23	2019-02-25	Choledocholithiasis	18
2795	2018-10-14	2018-10-15	Pneumonia	7
2796	2019-05-06	2019-05-15	Osteoarthritis	8
2797	2018-10-18	2018-10-25	Fractured Hip	1
2798	2019-02-19	2019-02-20	Ovarian Cancer	11
2798	2019-02-10	2019-02-11	Subarachroid Hemorrhage	15
2799	2018-07-09	2018-07-09	Asthma	13
2800	2019-04-14	2019-04-21	Prostate Cancer	18
2800	2019-02-11	2019-02-11	L CVA	14
2803	2018-11-22	2018-11-28	Enlarged Bunion On Left Primary Metaarsal	21
2805	2018-10-27	2018-11-02	Abdominal Pain	4
2805	2018-08-09	2018-08-17	Atrial Arrhythmias	5
2806	2018-07-25	2018-07-25	CHF	12
2807	2019-04-04	2019-04-08	Severe Pain + Tenderness In Left Calf	7
2808	2018-10-11	2018-10-20	Amigima	9
2809	2018-07-03	2018-07-03	Fractured Fib And Tib	16
2809	2018-09-06	2018-09-06	Unstable Angina	9
2810	2019-05-18	2019-05-25	Choledocholithiasis	3
2810	2019-01-22	2019-01-25	C-Section Delivery Day 4	2
2811	2018-08-07	2018-08-08	Osteoarthritis	4
2812	2018-09-26	2018-10-01	Lung Cancer (Rt. Lung)	25
2812	2019-02-24	2019-02-24	Chest Pain	7
2813	2018-06-19	2018-06-21	Child Birth	2
2813	2018-10-04	2018-10-10	Pregnant	2
2815	2018-11-24	2018-11-25	Abdominal Pain	26
2815	2019-01-02	2019-01-09	Broken Rt Femur	15
2817	2018-10-21	2018-10-23	Appendicitis	20
2819	2019-05-06	2019-05-07	Cystic Fibrosis	19
2821	2018-07-12	2018-07-21	Endometriosis	4
2821	2018-09-02	2018-09-07	CHF	13
2822	2019-02-25	2019-03-05	M.I.	16
2823	2019-05-20	2019-05-26	Hysterectomy	21
2823	2018-07-09	2018-07-15	Appendicitis	27
2824	2018-12-12	2018-12-14	Dehydradion, Vomiting	25
2824	2019-03-20	2019-03-23	CHF	9
2827	2018-11-14	2018-11-18	Chronic Caugh Disease	7
2827	2019-04-12	2019-04-19	1St Stage Labour	24
2828	2018-07-11	2018-07-16	Myocardial Infarction	2
2829	2019-03-25	2019-03-27	Epigastric Pain	10
2829	2019-02-12	2019-02-17	Cytutus	22
2830	2018-10-28	2018-11-06	Appendicitis	2
2830	2018-11-04	2018-11-13	Acute Renal Failure	23
2831	2018-09-09	2018-09-10	40 Weeks Pregnant	27
2831	2018-08-26	2018-09-01	Fractured Skull	22
2832	2019-05-07	2019-05-13	Lower Quadrant Pain	10
2833	2019-03-10	2019-03-15	Anemia	14
2833	2019-01-30	2019-01-31	Multiple Fractures Of R Scapula. Insertion Of Pins	17
2834	2019-02-21	2019-02-23	Pregnancy	27
2834	2018-12-01	2018-12-09	Dementia	15
2835	2019-05-07	2019-05-09	Ankylkosing Spondylitis	11
2835	2018-08-18	2018-08-26	Cva-Right-Sided-Weakness	4
2836	2019-05-06	2019-05-08	Biliary Colic	11
2837	2018-12-24	2018-12-29	Cva-Right-Sided-Weakness	1
2837	2018-06-06	2018-06-06	Acute Bronchitis	26
2841	2018-08-06	2018-08-06	Ovarian Cyst	14
2841	2019-04-07	2019-04-15	Severe Pain + Tenderness In Left Calf	22
2842	2019-03-03	2019-03-07	Hypertrophy Of Prostate Gland	5
2842	2018-12-16	2018-12-19	Acute Lower Abdominal Right-Sided Pain	6
2843	2019-03-21	2019-03-28	Myocardial Infarction	24
2843	2018-11-25	2018-11-28	Amigima	9
2845	2018-09-26	2018-10-05	Asthma	19
2845	2019-04-09	2019-04-10	Ca. Of Blatter	2
2847	2019-05-15	2019-05-17	Pre-Eclampsia	15
2847	2019-03-15	2019-03-20	Stomache Pain	9
2849	2018-07-27	2018-08-03	Injury Lt Patella Inferior	18
2850	2018-06-30	2018-07-06	Appendicitis	26
2850	2018-12-28	2019-01-05	Chest Pain	23
2852	2019-06-03	2019-06-05	Ca R Breast	17
2853	2018-08-29	2018-09-04	Dehydradion, Vomiting	16
2853	2019-01-11	2019-01-17	COPD-Chronicdostructive Pulmonary Disease	13
2856	2018-09-07	2018-09-07	Unstable Angina	26
2858	2019-03-11	2019-03-14	Choledocholithiasis	4
2859	2019-05-17	2019-05-24	Severed Spine At C3	13
2859	2019-06-03	2019-06-05	Severed Spine At C3	13
2860	2018-06-29	2018-07-05	Multiple Sclerosis	4
2860	2018-08-14	2018-08-16	L4-Lf Spinal Fusion	18
2861	2019-02-13	2019-02-21	L CVA	15
2862	2018-09-07	2018-09-15	Congestive Heart Failure	9
2862	2019-04-14	2019-04-18	Acute Thrombophiebitis R Leg	11
2864	2019-01-04	2019-01-04	Diverticulitis	9
2864	2018-08-11	2018-08-17	Appendicitis	17
2865	2018-06-09	2018-06-13	Congestive Heart Failure	17
2866	2018-09-06	2018-09-08	Chest Pain	26
2867	2018-07-20	2018-07-24	Pregnancy	22
2869	2018-12-21	2018-12-23	Fracture Rt Radius	20
2870	2019-05-07	2019-05-10	Pregnancy	9
2871	2019-01-19	2019-01-28	Renal Calculi	7
2871	2018-10-02	2018-10-09	Knee Replacement	15
2872	2018-07-22	2018-07-22	Syncope NYD	26
2875	2019-02-02	2019-02-02	Dehydration	27
2875	2018-12-23	2018-12-25	Ruptured Fallopian Tube	18
2876	2019-04-02	2019-04-07	Migraine	11
2876	2019-03-02	2019-03-09	Active Labour	4
2877	2019-01-14	2019-01-23	Peptic Ulcer	8
2877	2018-12-12	2018-12-16	Left Creebral Vascular Accident	2
2878	2018-06-17	2018-06-21	Atrial Arrhythmias	27
2879	2018-11-24	2018-11-28	Ca Prostate	14
2880	2018-12-11	2018-12-12	Crohns Disease	10
2881	2019-03-30	2019-04-04	Cancer Of The Stomach	6
2882	2018-08-02	2018-08-07	Cerebellar Brain Tumor Metastasis	4
2883	2018-12-16	2018-12-19	Pneumothorax	15
2884	2018-12-12	2018-12-19	Rt. Knee Replacement	18
2885	2019-05-26	2019-05-30	Deep Vein Thrombosis	25
2885	2018-08-09	2018-08-13	Fractured Femur	21
2889	2018-07-13	2018-07-18	Pulmonary Edema	12
2889	2019-01-24	2019-01-26	Really Sick	5
2891	2018-07-30	2018-08-06	Possible Appendicitis	3
2892	2018-06-13	2018-06-22	Myocardial Infarction	3
2893	2019-03-14	2019-03-15	Peptic Ulcer Disease	22
2893	2018-09-10	2018-09-17	Diabetes	6
2895	2019-04-25	2019-04-25	Acute Bronchitis	2
2895	2019-03-25	2019-03-29	Latent Phase Of First Stage Labour	12
2896	2018-11-06	2018-11-07	Severe Pain + Tenderness In Left Calf	21
2896	2019-04-26	2019-04-29	Tonsillitis	1
2898	2019-01-08	2019-01-12	Tonsillitis	1
2898	2018-09-24	2018-09-28	Hypertension	5
2899	2019-05-10	2019-05-15	Parkinsons Disease	5
2902	2019-04-13	2019-04-16	Emphysema	16
2902	2018-10-13	2018-10-18	Abdominal Pain	14
2903	2019-01-08	2019-01-11	Pregnancy	4
2903	2019-05-20	2019-05-22	Congestive Heart Failure	9
2905	2018-07-31	2018-08-02	Pneumonia	7
2906	2018-11-07	2018-11-07	Peripheral Edema	17
2908	2018-08-28	2018-09-03	Sinus Tachcardia,	3
2908	2018-08-03	2018-08-08	Birth By Caeserian Section	10
2909	2018-08-16	2018-08-25	Major Depression	22
2910	2019-02-12	2019-02-17	Prostatectomy	1
2911	2018-11-12	2018-11-16	Spinal Compresion	10
2912	2018-10-02	2018-10-08	Pre-Eclampsia	7
2912	2019-01-01	2019-01-02	Intestinal Obstruction Hirschsprungs Disease	17
2915	2019-04-13	2019-04-16	Anterior MI	13
2915	2019-01-09	2019-01-18	Alt. In Emotional Integrity - Anxiety	1
2916	2018-08-05	2018-08-12	C. O. P. D.	23
2916	2019-04-14	2019-04-16	Depression, Dementia	23
2920	2018-07-07	2018-07-10	Depression	7
2920	2018-12-18	2018-12-21	Cva-Leftside	10
2922	2019-03-09	2019-03-09	Congestive Heart Failure	9
2923	2018-12-28	2019-01-02	Congestive Heart Failure	17
2923	2018-07-04	2018-07-13	Broken Rt Femur	15
2926	2018-12-19	2018-12-21	Cholenithiasis	14
2926	2018-08-18	2018-08-22	Exploratory, Orthoscopic - Knee	21
2927	2019-02-26	2019-02-28	Cystocele/Stress Incontinence	22
2928	2018-10-31	2018-11-06	Chronic Bronchitis	12
2929	2018-08-23	2018-08-31	Appendicitis	13
2930	2018-10-30	2018-11-04	CHF Pulmonary Edema	26
2930	2018-09-08	2018-09-11	Hysterectomy	12
2931	2018-11-07	2018-11-14	Parkinsons Disease	27
2931	2019-04-18	2019-04-21	Abdominal Pain	14
2933	2018-08-13	2018-08-15	Bipolar Affective Disorder	16
2934	2019-04-25	2019-05-03	Spinal Cord Injury	3
2935	2018-06-11	2018-06-15	Laceration On Right Leg	19
2937	2019-02-28	2019-03-01	Diabetes Mellitus	26
2937	2018-10-27	2018-10-27	Fracture Of Left Femur	8
2938	2018-07-17	2018-07-19	Uterine Fibroid	20
2938	2018-10-29	2018-11-03	Pregnant	1
2939	2019-03-23	2019-03-28	Laceration On Right Leg	5
2939	2019-04-29	2019-04-29	Angina	8
2940	2018-09-16	2018-09-21	Possible Appendicitis	19
2940	2019-05-12	2019-05-19	Asthma	4
2941	2019-03-29	2019-03-29	Acute Appendicitis, Diabetes Type II	25
2942	2018-12-26	2018-12-26	Hypoglycemia	2
2942	2018-10-26	2018-11-04	Lung Cancer	22
2943	2019-05-23	2019-05-30	Ectopic Pregnancy	25
2944	2018-12-26	2018-12-29	Unable To Void.	8
2944	2018-08-26	2018-08-26	Respiratory Failure	16
2945	2018-10-11	2018-10-12	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	8
2946	2018-08-04	2018-08-08	Ruptured Fallopian Tube	7
2947	2018-10-20	2018-10-20	Congestive Heart Failure	24
2947	2019-04-20	2019-04-22	Fractured Femur	13
2948	2018-08-24	2018-08-31	Chronic Caugh Disease	20
2949	2018-09-17	2018-09-22	Congestive Heart Failure	20
2949	2018-06-11	2018-06-17	Decubitus Ulcer	20
2950	2019-03-16	2019-03-17	Possible Renal Calculi	26
2950	2019-05-18	2019-05-19	Ankylkosing Spondylitis	24
2951	2018-11-09	2018-11-12	Turp	5
2951	2019-05-20	2019-05-22	Fracture Of Fibula And Tibia	9
2952	2018-09-29	2018-10-01	Congestive Heart Failure	11
2953	2019-05-13	2019-05-18	CHF	1
2953	2018-09-08	2018-09-12	Peptic Ulcer	24
2954	2019-02-21	2019-02-24	Spinal Cord Injury	27
2954	2019-04-06	2019-04-11	Appendicitis	2
2955	2019-02-17	2019-02-21	Child Birth	18
2956	2018-07-01	2018-07-08	Chronic Schizophrenia,Psychosis,Paranoia	12
2956	2018-09-25	2018-09-28	Asthma Exacerbation	22
2957	2018-09-02	2018-09-11	Chest Pain	16
2957	2019-02-07	2019-02-09	Pregnancy	17
2958	2018-11-28	2018-12-07	Fractured Left Hip	19
2958	2019-02-22	2019-02-22	Hypertrophy Of Prostate Gland	12
2961	2018-07-01	2018-07-03	Crohns Disease	4
2962	2019-05-13	2019-05-21	Uterine Fibroid	6
2962	2019-04-30	2019-05-01	Unstable Angina	26
2963	2018-09-17	2018-09-24	Left Side CVA	22
2963	2018-11-26	2018-11-28	Appendicitis	16
2964	2018-10-10	2018-10-16	Left Lobar Pneumonia	20
2965	2018-10-26	2018-10-31	Ovarian Cancer	4
2965	2018-08-25	2018-09-01	Unable To Void.	12
2966	2018-11-30	2018-12-06	Asthma Exacerbation	27
2966	2019-03-04	2019-03-10	Congestive Heart Failure	16
2968	2018-06-22	2018-07-01	Exploratory, Orthoscopic - Knee	1
2968	2019-06-02	1971-01-05	Diverticulitis	4
2969	2018-08-05	2018-08-09	Pregnancy	10
2969	2018-06-24	2018-06-26	Labour	27
2970	2018-08-09	2018-08-18	Malnutrition	4
2970	2018-09-20	2018-09-27	CHF (Congestive Heart Failure)	27
2971	2018-09-09	2018-09-09	CHF	10
2975	2018-08-18	2018-08-19	Gastoric Ulcer	10
2976	2019-01-04	2019-01-04	Diabetes	4
2976	2019-01-30	2019-02-01	2nd & 3rd Degree Burns To Right Arm / Both Legs	10
2977	2018-09-05	2018-09-14	Pregnancy	18
2978	2019-03-01	2019-03-06	Pregnancy	16
2978	2018-06-26	2018-06-29	Congestive Heart Failure	14
2980	2018-12-31	2019-01-07	Appendicitis	9
2981	2019-03-19	2019-03-24	Ca Prostate	9
2981	2018-11-19	2018-11-21	Congestive Heart Failure	5
2982	2019-01-01	2019-01-05	Gastoric Ulcer	26
2988	2019-02-01	2019-02-01	Osteoarthritis Right Knee	7
2989	2019-01-08	2019-01-09	Multiple Sclerosis	10
2989	2018-09-03	2018-09-03	Acute Thrombophiebitis R Leg	13
2992	2019-05-01	2019-05-02	Second & Third Degree Burns To Right Arm/Both Legs	19
2992	2018-08-24	2018-08-31	COPD	25
2993	2018-06-16	2018-06-23	Undiagnosed Chest Pain	15
2996	2018-12-03	2018-12-08	Lung Cancer (Rt. Lung)	6
2996	2018-09-30	2018-10-06	Quarian Cyst	15
2997	2018-07-01	2018-07-09	Myocardial Infarction	13
2998	2018-10-03	2018-10-07	Chronic Caugh Disease	17
2999	2019-01-17	2019-01-22	Fractured Fib And Tib	22
2999	2019-03-12	2019-03-15	1St Stage Labour	21
3000	2019-02-17	2019-02-26	Pneumonia	18
3001	2019-05-25	2019-06-03	Cancer	1
3001	2018-09-20	2018-09-27	C. O. P. D.	27
3002	2019-01-15	2019-01-16	Severed Spine At C3	19
3002	2018-07-11	2018-07-20	Cholelithiasis	4
3003	2018-07-22	2018-07-26	Rt. Knee Replacement	1
3003	2019-01-05	2019-01-05	Myasthen Gravis	17
3004	2019-06-03	1971-01-05	Acute Bronchitis	1
3004	2019-05-25	2019-06-01	Severe Substernal Pain Radiating To Left Shoulder	7
3006	2018-10-08	2018-10-08	Ca R Breast	15
3006	2018-09-20	2018-09-25	Congestive Heart Failure	11
3007	2019-04-05	2019-04-05	Pregnancy	22
3007	2019-03-05	2019-03-11	Congestive Heart Failure	7
3008	2019-04-23	2019-04-23	Fracture To Left Femur	17
3009	2018-08-21	2018-08-21	Hypertension	24
3009	2018-06-24	2018-07-01	Rt. Nephrectomy	3
3011	2019-02-05	2019-02-09	Pregnant	13
3012	2018-11-30	2018-12-06	Appendicitis	18
3012	2018-06-11	2018-06-14	Appendicitis	16
3013	2018-12-01	2018-12-09	Fractured Skull	10
3013	2019-05-01	2019-05-07	Myocardial Infarction	10
3014	2018-07-11	2018-07-15	Hiatal Hernia	19
3014	2019-06-02	2019-06-05	Renal Failure	9
3015	2018-08-30	2018-09-01	Fractured L. Tibia	11
3016	2018-08-15	2018-08-19	Congestive Heart Failure	25
3016	2018-12-28	2018-12-29	Lung Cancer (Rt. Lung)	15
3018	2018-09-07	2018-09-10	Tonsilectomy	18
3019	2019-01-26	2019-02-04	Cerebral Aneurysm	17
3019	2018-10-13	2018-10-14	Acute Lower Abdominal Right-Sided Pain	1
3020	2018-12-31	2019-01-01	Pregnant	6
3020	2018-09-09	2018-09-13	Spinal Infection	22
3021	2018-11-25	2018-11-25	Fractured Femur	3
3023	2018-10-09	2018-10-12	Fractured Tibia	16
3024	2019-03-04	2019-03-07	Depression	10
3025	2018-11-17	2018-11-17	Diverticulitis	17
3025	2019-05-23	2019-05-29	Pregnancy	24
3026	2019-03-09	2019-03-13	Knee Replacement	2
3028	2018-08-30	2018-08-30	Right Knee Replacement	10
3029	2019-02-06	2019-02-12	Pneumonia	3
3029	2018-12-27	2018-12-28	Congestive Heart Failure	7
3030	2019-01-18	2019-01-21	Lymphona	7
3030	2018-12-02	2018-12-04	Impaired Gas Exchange	25
3031	2018-12-20	2018-12-21	Back Injury	11
3034	2019-02-16	2019-02-25	Left Creebral Vascular Accident	8
3034	2018-09-30	2018-10-03	Hypertension	13
3035	2019-03-03	2019-03-05	Acute Otitis Media	7
3035	2018-09-27	2018-09-29	Parkinsons Disease	6
3036	2018-07-29	2018-08-07	Rt. Knee Replacement	13
3037	2019-02-16	2019-02-24	Cleft Palate And Complete Unilateral Cleft Up	2
3038	2018-12-28	2019-01-02	Acute Lower Abdominal Right-Sided Pain	15
3040	2019-02-16	2019-02-19	Osteoarthritis Right Knee	18
3041	2019-05-09	2019-05-09	Pyelonephritis	15
3043	2019-03-24	2019-03-25	Chestpain Not Yet Diagnosed	26
3043	2018-09-17	2018-09-19	Fractured Right Humeral Head	7
3045	2019-04-07	2019-04-07	Hypertension	21
3045	2019-03-30	2019-04-05	Anterior Myocardial Infraction	13
3046	2019-05-16	2019-05-20	Congestive Heart Failure	5
3047	2018-11-01	2018-11-02	Unstable Angina	13
3049	2019-04-17	2019-04-18	Myocardial Infarction	26
3049	2019-03-31	2019-04-08	Pneumonia	7
3050	2018-09-19	2018-09-19	Labour	6
3051	2018-12-02	2018-12-09	1St Stage Labour	14
3051	2019-03-13	2019-03-19	Full Term Delivery	4
3052	2019-01-18	2019-01-20	Myocardial Infarction	19
3052	2019-02-23	2019-02-25	Fractured Skull	26
3054	2019-05-12	2019-05-13	Child Birth	17
3054	2019-02-16	2019-02-18	Infection	9
3055	2018-07-27	2018-08-01	Ulcerative Colitis	9
3056	2018-10-03	2018-10-06	Pregnancy	8
3056	2018-12-15	2018-12-20	Hypertension	13
3057	2019-01-03	2019-01-06	Diabetes Mellitus	7
3057	2019-05-27	2019-06-04	Pneumonia	27
3058	2018-09-17	2018-09-22	Infection	11
3058	2018-07-19	2018-07-22	Emphysema	2
3059	2019-04-30	2019-05-02	Cerebellar Brain Tumor Metastasis	5
3059	2018-10-12	2018-10-12	Interstitial, Pulmonary Edema	4
3060	2019-01-29	2019-01-31	Exploratory, Orthoscopic - Knee	12
3061	2018-09-22	2018-10-01	Total Left Hip Replacement	4
3061	2018-12-04	2018-12-06	Uterine Fibroid	6
3062	2018-12-16	2018-12-19	Cerebrovascular Accident (Stroke)	4
3064	2018-08-06	2018-08-13	Ineffective Breathin Pattern R/T Fluid Accumulatio	19
3064	2018-10-23	2018-11-01	Fibroids	9
3065	2018-08-07	2018-08-16	Renal Failure	16
3065	2019-04-13	2019-04-20	3rd Degree Burn	19
3066	2019-06-05	1971-01-05	Pregnancy	9
3068	2018-08-03	2018-08-09	COPD-Chronicdostructive Pulmonary Disease	13
3069	2018-07-28	2018-07-28	Prostatectomy	25
3070	2018-07-26	2018-07-31	Hypertension	8
3070	2019-01-30	2019-01-31	Malnutrition	22
3071	2019-02-15	2019-02-15	Appendicitis	18
3071	2018-12-28	2018-12-29	Pregnancy	11
3073	2019-05-18	2019-05-20	Injury Lt Patella Inferior	17
3076	2019-02-23	2019-03-04	Labour	1
3076	2018-11-29	2018-12-06	Fractured Hip	8
3077	2018-06-24	2018-06-30	Cleft Palate And Complete Unilateral Cleft Up	4
3077	2018-06-27	2018-07-03	Fractured Right Humeral Head	2
3079	2018-06-21	2018-06-29	Cytutus	24
3080	2018-10-13	2018-10-20	Lower Quadrant Pain	18
3081	2019-04-03	2019-04-08	Head Injury - Closed	12
3081	2018-07-28	2018-07-28	Fractured Fib And Tib	20
3082	2018-07-05	2018-07-11	Pregnancy	14
3082	2018-08-12	2018-08-12	Chestpain Not Yet Diagnosed	7
3084	2019-04-25	2019-04-26	Obstructive Nephropathy	26
3084	2018-07-25	2018-07-31	L4-Lf Spinal Fusion	11
3085	2018-12-07	2018-12-10	Parkinsons Disease	12
3086	2018-10-24	2018-11-02	Head Injury - Closed	20
3087	2018-08-27	2018-08-27	COPD-Chronicdostructive Pulmonary Disease	18
3087	2018-10-31	2018-11-04	Cholelithiasis	16
3088	2018-07-15	2018-07-22	Acute Bronchitis	22
3089	2019-06-04	1971-01-05	Congestive Heart Failure	4
3090	2019-03-13	2019-03-16	Rheumataoid Arthritis	5
3090	2018-12-18	2018-12-24	Crohns	12
3091	2018-09-16	2018-09-21	Pneumonia	27
3091	2019-05-15	2019-05-22	Severe Rlq Pain	1
3092	2018-09-04	2018-09-09	Alzheimers	6
3093	2019-03-12	2019-03-21	Tonsilectomy	20
3093	2018-08-22	2018-08-23	Unstable Angina	15
3095	2018-12-25	2018-12-28	Cva (Left) - Cerebral Vascular Accident (Stroke)	1
3096	2018-07-23	2018-07-31	Cystic Fibrosis	23
3096	2018-06-13	2018-06-15	Labour	4
3098	2018-10-22	2018-10-25	Fever N.Y.D.	27
3100	2018-06-11	2018-06-16	Congestive Heart Failure	10
3100	2019-02-28	2019-03-06	2nd & 3rd Degree Burns To Right Arm / Both Legs	20
3102	2019-04-08	2019-04-16	Essential Hypertension	9
3102	2019-01-05	2019-01-08	Breast Cancer	26
3103	2018-10-08	2018-10-13	Anorexia Nervosa	3
3104	2019-02-23	2019-02-27	Asthma	21
3105	2019-04-24	2019-04-28	Manic Depression	7
3106	2018-07-10	2018-07-11	Hysterectomy	22
3107	2019-01-11	2019-01-12	Hyperemesis	24
3110	2018-12-06	2018-12-10	Crohns	24
3110	2019-05-03	2019-05-11	Pain In Abdomen Left Side	3
3111	2019-01-12	2019-01-18	Intestinal Obstruction Hirschsprungs Disease	27
3112	2018-08-03	2018-08-09	Broken Hip	26
3113	2018-10-12	2018-10-18	Hypertension	26
3113	2018-07-10	2018-07-10	Fracture Of Left Femur	3
3115	2019-01-17	2019-01-26	Congestive Heart Failure	24
3116	2018-06-24	2018-06-25	Stress Incotinence	15
3116	2018-10-05	2018-10-12	Pneumonia	13
3117	2018-09-22	2018-09-23	Ruptured Fallopian Tube	6
3117	2018-12-31	2019-01-03	Bipolar Affective Disorder	17
3118	2018-07-27	2018-08-05	Lumbar Disc Protrusion	18
3120	2018-08-20	2018-08-29	Spinal Cord Injury	12
3120	2019-01-11	2019-01-16	Fractured Skull	23
3122	2019-02-07	2019-02-14	Emphysema	1
3122	2018-06-18	2018-06-22	Cerebrovascular Accident (Stroke)	10
3123	2018-09-11	2018-09-17	Intracerebral Bleed	16
3123	2019-02-05	2019-02-10	Lung Cancer	16
3124	2019-01-25	2019-01-25	Congestive Heart Failure	16
3124	2019-05-22	2019-05-24	Fractured Femur	20
3125	2018-10-12	2018-10-21	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	4
3126	2018-12-11	2018-12-15	Appendicitis	21
3126	2019-02-19	2019-02-28	Anterior Myocardial Infraction	15
3127	2018-06-16	2018-06-21	CHF Congestive Heart Failure	13
3127	2019-03-13	2019-03-17	Asthma	13
3129	2019-05-07	2019-05-09	Tuberculosis	4
3131	2018-09-03	2018-09-10	Obstructive Nephropathy	26
3131	2019-05-31	2019-06-05	Post Partum Hemmorage	2
3133	2018-08-19	2018-08-24	Colorectal Cancer	24
3133	2018-12-28	2019-01-03	Total Lt Hip Replacement Because Of Osteoarthritis	13
3134	2018-07-29	2018-07-31	Myocardial Infarction	26
3136	2018-08-28	2018-09-02	Lung Cancer	16
3137	2019-03-10	2019-03-10	Headache	12
3138	2018-06-19	2018-06-28	Fractured Right Tibia	2
3138	2018-10-24	2018-11-02	Syncope NYD	26
3139	2018-09-21	2018-09-22	Congestive Heart Failure	11
3140	2018-09-14	2018-09-17	Paranoid Schizophrenic	25
3140	2019-04-29	2019-05-03	Depression	19
3141	2018-12-25	2018-12-25	Appendicitis	9
3141	2019-02-03	2019-02-06	Ovarian Cyst	5
3142	2018-12-30	2019-01-06	Knee Replacement	11
3142	2018-08-08	2018-08-13	Crohns Disease	10
3144	2019-01-13	2019-01-17	Fractured Left Hip Due To Slip And Fall On Ice	6
3149	2018-11-12	2018-11-21	CHF Congestive Heart Failure	7
3149	2019-04-16	2019-04-21	Pregnancy	25
3150	2018-12-12	2018-12-12	Bowel Obstruction	19
3150	2019-04-07	2019-04-11	Congestive Heart Failure	21
3151	2019-03-31	2019-04-01	Abdominal Perineal Resection	14
3152	2018-10-14	2018-10-17	Rt. Nephrectomy	24
3152	2018-12-12	2018-12-20	Bladder Cancer	16
3153	2018-11-11	2018-11-16	Undiagnosed Chest Pain	24
3153	2018-12-25	2019-01-01	Abdominal Pain	5
3154	2018-11-17	2018-11-22	Crohns Disease	22
3154	2019-01-15	2019-01-15	Pneumonia	20
3156	2018-06-14	2018-06-16	Prostate Cancer	18
3156	2019-05-17	2019-05-19	Broken Rt Femur	20
3158	2018-12-30	2019-01-07	Peptic Ulcer Disease	5
3159	2019-02-06	2019-02-07	Alzheimers	6
3159	2019-03-03	2019-03-05	Cerebral Aneurysm	11
3160	2019-06-02	2019-06-02	Fractured Hip	24
3161	2019-03-03	2019-03-04	L. Calf Pain	2
3162	2019-01-04	2019-01-12	Broken Rt Femur	9
3163	2018-09-09	2018-09-12	Birth By Caeserian Section	1
3163	2019-03-15	2019-03-19	Rt. Knee Replacement	4
3164	2019-05-28	2019-06-05	Pregnancy	4
3164	2018-10-28	2018-10-28	Ruptured Appendicitis	14
3165	2018-08-31	2018-09-05	Schizophrenia	4
3165	2018-06-20	2018-06-26	MVA HI	9
3166	2018-07-29	2018-08-05	Cervical Spinal Tumor	23
3166	2018-06-21	2018-06-21	Paranoid Schizophrenia	22
3167	2018-12-28	2019-01-06	Tonsilectomy	12
3168	2019-05-31	2019-06-03	Cancer	23
3168	2018-07-08	2018-07-09	Gall Stones	5
3171	2018-09-03	2018-09-04	Congestive Heart Failure	27
3171	2018-09-01	2018-09-07	Pre-Eclampsia	8
3172	2018-10-12	2018-10-13	Appendicitis	11
3172	2018-12-12	2018-12-20	Lwr Right Quad Pain That Radiates Through Abdomen	27
3173	2019-05-14	2019-05-18	Prostate Cancer	23
3175	2019-02-14	2019-02-21	Acute Lower Abdominal Right-Sided Pain	20
3175	2018-08-18	2018-08-21	Prostatectomy	7
3176	2019-01-22	2019-01-22	Bronchiolitis	25
3176	2019-02-02	2019-02-05	Amyotopic Lateral Scletosis	12
3177	2018-11-14	2018-11-17	Ruptured Fallopian Tube	4
3178	2019-03-19	2019-03-19	Pregnancy	2
3179	2018-09-16	2018-09-19	Ca. Of Blatter	10
3179	2019-06-04	1971-01-05	Fractured Femur	10
3180	2018-12-28	2019-01-06	Fractured Femur	22
3181	2018-11-14	2018-11-14	Ruptured Appendicitis	20
3182	2018-09-22	2018-09-25	Unstable Angina	18
3183	2018-09-17	2018-09-26	Fractured L. Tibia	25
3184	2018-10-29	2018-10-29	Dehydration	5
3185	2019-05-10	2019-05-11	Ovarian Cyst	12
3185	2019-04-09	2019-04-12	Unable To Void.	4
3186	2019-05-25	2019-05-25	Right Knee Replacement	16
3186	2018-09-09	2018-09-13	Congestive Heart Failure	14
3189	2019-05-31	1971-01-05	Ovarian Cancer	8
3189	2018-12-17	2018-12-26	Basal Skull Fracture	14
3191	2018-09-27	2018-10-03	Fractured \\"L\\" Femur	22
3191	2018-11-15	2018-11-20	Appendicitis	12
3192	2018-09-17	2018-09-17	Acute Bronchitis	14
3192	2018-12-05	2018-12-14	MVA HI	27
3193	2018-07-28	2018-08-05	Left Shoulder Rotator Cuff Repair	3
3193	2019-02-21	2019-03-02	Cerebral Aneurysm	14
3194	2019-02-27	2019-03-05	Glomerulonephritis	7
3194	2018-10-10	2018-10-11	Broken Rt Femur	1
3196	2019-03-16	2019-03-22	Headache	17
3198	2018-10-06	2018-10-11	Ovarian Cancer	25
3198	2018-10-25	2018-10-26	Spinal Cord Injury	13
3199	2018-11-15	2018-11-17	C. O. P. D.	18
3199	2018-06-27	2018-07-02	Fracture Rt Radius	14
3200	2018-11-02	2018-11-07	Hysterectomy	6
3201	2018-08-01	2018-08-01	Obstructive Nephropathy	12
3201	2018-11-09	2018-11-10	Crohns Disease	26
3203	2019-01-14	2019-01-22	Infection	6
3205	2018-09-27	2018-10-06	Colorectal Cancer	2
3205	2019-02-02	2019-02-10	Emphysema	5
3208	2019-03-05	2019-03-14	Cva Right Side	16
3208	2019-01-18	2019-01-21	Total Hysterectomy	26
3210	2018-07-06	2018-07-07	Decubitus Ulcer	13
3210	2018-12-03	2018-12-08	Pregnancy	9
3211	2018-09-17	2018-09-26	Tonsillitis	12
3212	2019-04-06	2019-04-13	Chronic Obtrusive Pulmonary Disease	7
3212	2019-03-01	2019-03-09	Prostatectomy	17
3213	2018-10-19	2018-10-21	Ovarian Cancer	3
3213	2018-09-04	2018-09-06	Chest Pain	24
3214	2018-10-14	2018-10-15	Chronic Bronchitis	21
3214	2018-10-22	2018-10-30	Congestive Heart Failure	8
3216	2019-06-05	1971-01-05	Depression, Dementia	21
3217	2019-04-07	2019-04-09	Subdural Hematoma	27
3217	2018-09-02	2018-09-03	Peptic Ulcer	4
3218	2019-04-27	2019-05-03	Spinal Infection	5
3219	2018-07-28	2018-08-03	Anterior Myocardial Infraction	6
3219	2018-06-27	2018-07-06	3rd Degree Burn	13
3220	2019-03-31	2019-04-08	Pulmonary Edema	15
3224	2018-07-31	2018-08-07	Glomerulonephritis	17
3224	2018-06-14	2018-06-20	Appendicitis	21
3226	2018-10-25	2018-10-25	Chest Infection	5
3227	2019-03-03	2019-03-11	Ineffective Breathin Pattern R/T Fluid Accumulatio	10
3229	2019-02-02	2019-02-11	2nd & 3rd Degree Burns To Right Arm / Both Legs	11
3230	2018-12-05	2018-12-06	Rheumataoid Arthritis	17
3230	2019-01-17	2019-01-20	Pneumonia	4
3231	2018-12-02	2018-12-08	Ovarian Dermoid-Cyct	15
3231	2018-10-02	2018-10-04	Thrombocytopenia	16
3233	2018-08-09	2018-08-11	Bipolar Affective Disorder	26
3235	2019-04-16	2019-04-19	Congestive Heart Failure	5
3235	2019-04-01	2019-04-06	CHF Pulmonary Edema	22
3236	2018-08-05	2018-08-13	Pneumonia	3
3236	2018-09-09	2018-09-18	Chestpain Not Yet Diagnosed	21
3237	2018-09-21	2018-09-22	Ovarian Cancer	18
3238	2018-12-22	2018-12-26	Congestive Heart Failure	19
3238	2018-12-24	2018-12-25	Tonsillitis	5
3239	2018-06-06	2018-06-11	Cva-Right-Sided-Weakness	19
3239	2019-06-05	2019-06-05	Obstructive Nephropathy	7
3240	2019-01-28	2019-01-31	Fracture Right Distal Radius (Colles Fracture)	12
3241	2019-01-28	2019-02-03	Appendicitis	21
3242	2019-04-28	2019-04-28	Acute Lower Abdominal Right-Sided Pain	7
3243	2018-08-01	2018-08-02	Fractured \\"L\\" Femur	25
3243	2019-05-03	2019-05-03	Myocardial Infarction	1
3244	2018-12-19	2018-12-21	Diabetes Mellitus	21
3245	2018-08-30	2018-08-30	Cva-Right-Sided-Weakness	25
3245	2018-11-26	2018-11-28	Appendicitis	2
3246	2018-09-07	2018-09-11	Fever N.Y.D.	11
3246	2018-11-22	2018-11-30	Cva Right Side	5
3247	2019-02-24	2019-02-25	Cva Right Side	16
3248	2018-10-31	2018-11-07	Head Injury - Closed	24
3248	2019-03-14	2019-03-20	Pulmonary Edema	5
3249	2019-03-25	2019-04-01	Hysterectomy	9
3250	2018-11-16	2018-11-16	Total Left Hip Replacement	5
3250	2018-11-11	2018-11-13	Fever N.Y.D.	1
3251	2018-07-07	2018-07-12	Urinary Tract Infection	4
3252	2019-04-23	2019-04-27	Osteoarthritis	14
3252	2018-12-16	2018-12-25	Ankylkosing Spondylitis	27
3254	2018-12-20	2018-12-21	Dilation + Evacuation	20
3254	2019-05-01	2019-05-06	Pneumonia	16
3256	2018-08-22	2018-08-22	Enlarged Bunion On Left Primary Metaarsal	27
3257	2018-11-12	2018-11-12	Respiratory Failure	5
3257	2018-09-10	2018-09-13	Interstitial, Pulmonary Edema	15
3259	2018-09-08	2018-09-08	Acute Otitis Media	22
3260	2018-10-28	2018-11-06	Cva (Left) - Cerebral Vascular Accident (Stroke)	3
3260	2019-03-19	2019-03-28	Cardiovascular Disease	10
3262	2018-09-21	2018-09-29	Fractured Femur	17
3262	2019-05-20	2019-05-20	Severe Pain + Tenderness In Left Calf	9
3263	2019-03-19	2019-03-24	Infertility, Secondary	14
3263	2018-12-25	2019-01-02	Acute Otitis Media	22
3264	2019-01-16	2019-01-25	Spinal Compresion	14
3265	2019-05-26	2019-06-01	Fracture Of Fibula And Tibia	25
3266	2019-05-11	2019-05-13	Unstable Angina	7
3266	2018-11-15	2018-11-24	Congestive Heart Failure	19
3267	2019-01-11	2019-01-19	Ulcerative Colitis	20
3267	2018-10-01	2018-10-01	Severe Pain + Tenderness In Left Calf	13
3268	2018-07-25	2018-07-27	Pneumonia	25
3268	2018-11-17	2018-11-21	Coronary Artary Disease / Lt Sided Weakness	10
3269	2018-10-08	2018-10-17	Migraine	17
3270	2018-12-19	2018-12-25	Knee Replacement	10
3271	2018-07-26	2018-08-04	Congestive Heart Failure	22
3271	2018-08-29	2018-09-07	Pneumothorax	14
3272	2018-09-30	2018-10-01	Simple Fracture Of The Tibia	6
3274	2018-10-06	2018-10-07	CHF	21
3274	2018-07-22	2018-07-31	Multiple Sclerosis	15
3275	2018-09-28	2018-09-30	Emphysema	16
3275	2018-06-21	2018-06-28	Osteoarthritis	23
3277	2018-10-18	2018-10-23	Abdominal Pain	22
3277	2018-08-17	2018-08-19	Cerebrovascular Accident (Stroke)	27
3278	2019-03-13	2019-03-16	Intracerebral Bleed	16
3279	2019-01-15	2019-01-16	Birth By Caeserian Section	1
3279	2019-04-20	2019-04-23	Pregnancy	2
3280	2018-06-10	2018-06-11	Endometriosis	6
3280	2018-09-28	2018-10-02	Rt. Knee Replacement	11
3281	2019-05-03	2019-05-07	Myocardial Infarction	19
3281	2018-11-29	2018-12-06	3rd Degree Burn To Face	1
3284	2018-07-06	2018-07-08	Anorexia Nervosa	11
3284	2018-06-15	2018-06-21	Cancer Of The Colon	2
3285	2018-08-12	2018-08-21	Fractured Right Tibia	25
3285	2019-02-23	2019-02-25	Gall Stones	21
3286	2019-02-01	2019-02-01	Multiple Myeloma	26
3286	2018-09-12	2018-09-21	40 Weeks Pregnant	21
3287	2019-02-13	2019-02-15	Labour	15
3289	2019-05-28	2019-05-31	Acute Bronchitis	9
3290	2018-08-15	2018-08-22	Hysterectomy	4
3290	2018-09-10	2018-09-16	Fractured Fib And Tib	25
3292	2018-07-21	2018-07-21	Second & Third Degree Burns To Right Arm/Both Legs	11
3294	2018-12-26	2019-01-01	Total Hysterectomy	22
3295	2019-04-20	2019-04-25	Myasthen Gravis	19
3295	2018-07-27	2018-08-01	Spinal Cord Injury	10
3296	2019-05-01	2019-05-05	Cerebral Aneurysm Rupture	18
3296	2018-07-31	2018-08-05	Cerebral Aneurysm	12
3297	2019-05-08	2019-05-17	Abdominal Pain	13
3297	2018-12-26	2018-12-31	L CVA	2
3298	2019-05-03	2019-05-11	Severed Spine At C3	16
3300	2018-12-02	2018-12-09	Gunshot Wound To Head	10
3300	2018-12-14	2018-12-18	Cerebral Vascular Aneurys,	7
3301	2019-01-25	2019-01-30	Asthma	24
3302	2018-06-17	2018-06-24	L4-Lf Spinal Fusion	23
3303	2019-02-18	2019-02-26	Pregnancy	25
3303	2019-01-03	2019-01-06	Subdural Hematoma	25
3304	2018-10-26	2018-11-03	Unstable Angina	12
3304	2018-11-01	2018-11-06	Pneumonia	15
3305	2018-12-18	2018-12-25	Right Knee Replacement	17
3305	2019-03-21	2019-03-23	Abdominal Pain	4
3306	2018-08-12	2018-08-20	Enlarged Bunion On Left Primary Metaarsal	16
3306	2019-03-10	2019-03-15	Turp	13
3307	2018-07-23	2018-07-26	Scatica	21
3307	2018-07-10	2018-07-17	Syncope NYD	15
3308	2019-05-06	2019-05-14	Complete Unilateral Cleft Lip & Cleft Palate	23
3309	2019-05-30	2019-06-04	Congestive Heart Failure	8
3310	2018-09-29	2018-10-05	MVA HI	12
3311	2019-02-23	2019-02-26	Pneumonia	26
3313	2018-08-06	2018-08-13	Paranoid Schizophrenia	21
3315	2019-03-21	2019-03-21	Bronchitis	21
3316	2018-07-25	2018-08-03	Ovarian Cancer	1
3317	2019-01-25	2019-02-01	Acute Lower Abdominal Right-Sided Pain	3
3318	2018-08-14	2018-08-18	Child Birth	5
3318	2018-11-22	2018-11-23	Asthma	2
3320	2019-03-14	2019-03-16	Cva (Left) - Cerebral Vascular Accident (Stroke)	1
3320	2018-11-20	2018-11-20	Myocardial Infarction (MI)	8
3321	2019-04-11	2019-04-15	Dehydration	24
3321	2018-08-26	2018-09-02	Fracture Right Distal Radius (Colles Fracture)	6
3322	2019-03-08	2019-03-16	Cholecystectomy	2
3324	2018-10-15	2018-10-15	Major Burn To The Anterior Thoracic Region	12
3324	2018-08-05	2018-08-11	Hypertension	23
3325	2018-08-15	2018-08-23	Right Hip Replacement	24
3326	2018-06-17	2018-06-18	Child Birth	10
3327	2019-03-04	2019-03-07	Cardiac Catheterization	26
3327	2019-05-25	2019-05-29	Urinary Tract Infection	23
3328	2018-06-27	2018-06-29	Fractured Hip	22
3329	2018-09-19	2018-09-23	Schizophrenic Disorder	12
3329	2018-07-09	2018-07-10	Tonsillitis	27
3330	2019-02-01	2019-02-02	Obsessive - Compulsive Order	19
3330	2018-07-20	2018-07-27	2nd & 3rd Degree Burns To Right Arm / Both Legs	26
3331	2018-08-25	2018-09-02	Anterior MI	9
3333	2018-12-12	2018-12-12	Cytutus	7
3334	2018-09-14	2018-09-20	Pregnancy	16
3334	2018-11-18	2018-11-26	Congestive Heart Failure	2
3335	2018-11-09	2018-11-11	Renal Failure	12
3335	2019-01-15	2019-01-17	Cerebral Aneurysm	18
3336	2018-08-31	2018-09-06	40 Weeks Pregnant	22
3336	2018-12-08	2018-12-17	Crohns	23
3337	2018-12-18	2018-12-21	Hypertrophy Of Prostate Gland	12
3337	2018-10-31	2018-11-07	Aortic Stenosis	17
3340	2018-06-11	2018-06-13	Head Injury M.V.A.	14
3341	2018-08-21	2018-08-24	Cholecystectomy	5
3342	2019-05-31	2019-05-31	Laceration On Right Leg	1
3345	2019-02-04	2019-02-13	Myocardial Infarction	27
3345	2018-06-15	2018-06-15	Acute Otitis Media	15
3346	2018-06-08	2018-06-10	Profound Depression	19
3348	2018-07-12	2018-07-14	Angina Pectoris	2
3348	2018-09-27	2018-10-05	3rd Degree Burn To Face	5
3349	2018-07-13	2018-07-22	CHF Congestive Heart Failure	1
3349	2018-08-18	2018-08-19	Fractured Hip	11
3350	2018-10-09	2018-10-18	Congestive Heart Failure	19
3351	2018-09-18	2018-09-23	Acute Leukemia	26
3352	2019-02-01	2019-02-04	Fractured L. Tibia	5
3353	2018-09-06	2018-09-10	Left Creebral Vascular Accident	17
3354	2018-12-19	2018-12-21	Chest Infection	22
3354	2018-10-06	2018-10-12	Angina	6
3355	2018-09-22	2018-09-26	Pregnancy	11
3356	2019-03-01	2019-03-10	Fractured Hip	26
3357	2019-04-04	2019-04-11	Lwr Right Quad Pain That Radiates Through Abdomen	2
3357	2018-08-04	2018-08-06	CHF	11
3358	2019-01-29	2019-01-29	Crohns Disease	10
3359	2018-11-04	2018-11-11	Kock Pouch Urinary Diversion	19
3360	2019-04-19	2019-04-26	Schizophrenic Disorder	7
3360	2019-02-17	2019-02-25	Parkinsons Disease	18
3361	2018-12-30	2019-01-02	Basal Skull Fracture	4
3362	2018-12-25	2018-12-29	Ca Prostate	7
3362	2018-08-12	2018-08-14	Ruptured Appendicitis	26
3363	2018-09-20	2018-09-26	MVA HI	23
3366	2018-08-03	2018-08-05	Chest Pain	17
3366	2018-11-22	2018-11-22	Anorexia Nervosa	24
3367	2018-11-14	2018-11-22	Pyelonephritis	20
3367	2019-01-22	2019-01-26	Pyelonephritis	6
3369	2019-04-28	2019-05-05	Fractured Femur	25
3370	2018-11-29	2018-12-08	Pregnancy	15
3370	2018-10-09	2018-10-15	Unable To Void.	13
3371	2018-12-19	2018-12-23	Impaired Gas Exchange	18
3371	2019-03-17	2019-03-25	Cholenithiasis	1
3372	2018-07-17	2018-07-22	Broken Rt Femur	12
3372	2018-08-15	2018-08-17	Sinus Tachcardia,	15
3374	2018-06-18	2018-06-27	Ovarian Cancer	1
3374	2019-03-16	2019-03-24	Tuberculosis	7
3375	2018-11-19	2018-11-26	Dementia	14
3375	2019-04-15	2019-04-21	Fractured Skull	26
3376	2018-12-14	2018-12-16	Stomach Ulcer	11
3378	2018-08-03	2018-08-08	Congestive Heart Failure	24
3379	2018-09-25	2018-09-30	Abdominal Pain	5
3380	2018-10-13	2018-10-18	Pneumothorax	26
3381	2018-12-28	2019-01-03	Amyotopic Lateral Scletosis	22
3385	2019-03-16	2019-03-20	Pregnant	23
3385	2019-01-15	2019-01-21	Renal Failure	12
3386	2018-06-21	2018-06-26	Congestive Heart Failure	17
3386	2018-11-27	2018-12-04	Peripheral Edema	2
3387	2018-08-18	2018-08-27	Subdural Hematoma	20
3387	2019-03-13	2019-03-21	Multiple Sclerosis	2
3388	2018-08-31	2018-09-05	Pregnancy	18
3388	2018-08-16	2018-08-18	Emphysema	21
3389	2019-04-21	2019-04-26	Congestive Heart Failure	2
3389	2018-08-28	2018-08-30	Pulmonay Embolism	20
3390	2019-01-10	2019-01-13	Pain In Abdomen Left Side	27
3392	2018-09-27	2018-09-29	Cerebral Aneurysm	7
3392	2018-10-29	2018-10-30	Pain In Abdomen Left Side	27
3396	2018-08-23	2018-09-01	Head Injury - Closed	1
3400	2018-08-13	2018-08-15	Fibromyalgia	19
3400	2018-10-07	2018-10-14	Infertility, Secondary	6
3401	2019-04-28	2019-05-04	Fibroids	6
3403	2018-08-12	2018-08-18	Unstable Angina	18
3403	2018-09-03	2018-09-09	Fracture Right Distal Radius (Colles Fracture)	5
3404	2018-11-20	2018-11-21	Abdominal Pain	17
3404	2018-09-28	2018-09-29	Cardiovascular Disease	4
3405	2018-07-31	2018-08-07	Head Injury M.V.A.	23
3405	2018-09-18	2018-09-22	Unable To Void.	9
3406	2018-12-21	2018-12-22	Chronic Bronchitis	24
3406	2019-01-17	2019-01-25	Unstable Angina	21
3407	2019-02-02	2019-02-08	Fractured Femur	13
3407	2018-12-07	2018-12-16	Myocardial Infarction	25
3408	2018-09-16	2018-09-20	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	16
3408	2019-04-29	2019-05-06	Hallecinations	11
3410	2019-03-31	2019-04-08	Fractured Hip (Right)	24
3411	2019-05-14	2019-05-19	Anorexia Nervosa	18
3412	2018-11-25	2018-11-28	Essential Hypertension	11
3412	2019-05-15	2019-05-18	Chest Pain	12
3415	2019-02-14	2019-02-21	Decubitus Ulcer	17
3415	2019-02-07	2019-02-13	Tonsillitis	26
3416	2018-12-24	2018-12-29	Pregnancy	3
3416	2018-12-03	2018-12-05	Turp	20
3419	2018-07-31	2018-08-01	Uterine Fibroid	1
3420	2019-01-11	2019-01-12	Possible Appendicitis	26
3420	2018-12-07	2018-12-08	Unstable Angina	17
3421	2018-12-09	2018-12-13	Rul Pneumonia	11
3421	2018-06-09	2018-06-15	Total Lt Hip Replacement Because Of Osteoarthritis	26
3423	2018-08-13	2018-08-22	Really Sick	8
3423	2018-11-24	2018-12-03	Active Labour	19
3426	2018-09-09	2018-09-18	Possible Appendicitis	14
3426	2018-12-18	2018-12-27	Fractured Femur	4
3428	2019-03-09	2019-03-11	Zenkers Diverticulitis	10
3429	2018-08-11	2018-08-14	Emphysema	17
3429	2018-07-11	2018-07-13	Pregnancy	7
3430	2019-05-14	2019-05-14	Hypertension	9
3432	2018-09-01	2018-09-03	Rll Pneumonia	1
3432	2018-12-17	2018-12-17	Fractured Femur	7
3434	2019-01-25	2019-02-02	Emphysema	9
3435	2019-01-04	2019-01-04	Hunting Disease	22
3435	2019-04-05	2019-04-06	Osteoarthritis	25
3436	2018-07-15	2018-07-17	Unable To Void.	23
3437	2019-02-28	2019-03-05	Pyelonephritis	26
3439	2018-06-20	2018-06-20	Schizophrenia	17
3439	2019-01-02	2019-01-11	Hunting Disease	19
3442	2019-02-25	2019-03-03	Cystocele/Stress Incontinence	21
3443	2018-10-10	2018-10-15	Labour	3
3443	2018-12-18	2018-12-26	Osteoarthritis	15
3444	2018-07-31	2018-08-02	Hyperemesis	13
3444	2018-08-28	2018-08-28	Second & Third Degree Burns To Right Arm/Both Legs	16
3445	2019-03-07	2019-03-09	Birth By Caeserian Section	1
3446	2018-11-11	2018-11-14	Pregnancy	15
3447	2019-04-06	2019-04-15	Major Depression	5
3449	2018-10-03	2018-10-09	Myocardial Infarction	23
3451	2018-06-23	2018-07-01	Profound Depression	23
3453	2018-10-02	2018-10-03	Fibromyalgia	13
3453	2019-03-05	2019-03-05	Rt. Nephrectomy	9
3454	2019-04-12	2019-04-14	Turp	21
3454	2018-07-14	2018-07-21	Pregnancy	16
3455	2019-03-23	2019-03-30	Turp	27
3455	2019-02-15	2019-02-20	Pregnancy	15
3458	2018-09-06	2018-09-12	Pregnant	24
3460	2018-06-20	2018-06-27	Congestive Heart Failure	1
3461	2018-12-14	2018-12-16	Chest Pain	14
3461	2018-10-05	2018-10-14	Intracerebral Bleed	5
3462	2019-05-17	2019-05-20	Pregnancy	17
3462	2019-01-08	2019-01-09	Pneumonia	4
3463	2018-07-13	2018-07-16	Fracture Right Distal Radius (Colles Fracture)	12
3463	2018-11-20	2018-11-22	Pneumonia	4
3464	2018-11-18	2018-11-25	Chronic Schizophrenia,Psychosis,Paranoia	14
3464	2018-09-29	2018-10-03	Ovarian Cancer	17
3466	2019-02-20	2019-02-20	Multiple Myeloma	7
3466	2019-05-29	2019-06-02	Angina	6
3468	2018-10-03	2018-10-11	Congestive Heart Failure	16
3468	2019-02-13	2019-02-22	Congestive Heart Failure	15
3469	2018-10-30	2018-11-04	Appendicitis	3
3471	2019-02-24	2019-02-25	Ca Prostate	23
3471	2019-03-08	2019-03-10	Pregnancy	4
3473	2018-07-14	2018-07-22	Parkinsons Disease	2
3473	2018-09-26	2018-09-30	Essential Hypertension	13
3475	2018-09-25	2018-09-28	Intestinal Obstruction Hirschsprungs Disease	16
3477	2018-11-13	2018-11-19	Bowel Obstruction	16
3477	2019-02-27	2019-02-27	Acute Otitis Media	10
3478	2018-12-21	2018-12-29	Epigastric Pain	27
3478	2018-12-03	2018-12-06	Obsessive - Compulsive Order	1
3480	2019-05-21	2019-05-30	Head Injury M.V.A.	3
3480	2018-11-19	2018-11-27	Pregnancy	25
3481	2018-08-13	2018-08-21	Syncope NYD	26
3481	2018-10-11	2018-10-11	Sepis	26
3482	2019-03-17	2019-03-20	Anterior Myocardial Infraction	18
3482	2018-06-25	2018-06-30	Fractured Left Leg	23
3483	2018-11-20	2018-11-26	Prostate Cancer	26
3483	2018-06-17	2018-06-23	L CVA	3
3484	2019-02-20	2019-02-23	Appendicitis	23
3484	2018-12-05	2018-12-14	Basal Skull Fracture	15
3485	2019-03-10	2019-03-18	Appendicitis	14
3485	2018-11-08	2018-11-13	Fractured Tibia	6
3487	2019-01-28	2019-01-30	Severe Rlq Pain	14
3488	2019-01-09	2019-01-12	Congestive Heart Failure	6
3491	2019-04-20	2019-04-22	Congestive Heart Failure	26
3493	2018-10-09	2018-10-16	Chestpain Not Yet Diagnosed	7
3494	2018-07-15	2018-07-24	Osteoarthritis	25
3495	2019-01-23	2019-01-25	Chestpain Not Yet Diagnosed	6
3496	2018-06-26	2018-06-27	Dementia	8
3498	2018-08-30	2018-09-03	Osteoarthritis	23
3500	2019-02-17	2019-02-19	Exploratory, Orthoscopic - Knee	21
3500	2019-05-04	2019-05-11	Fractured Hip (Right)	3
3501	2019-01-16	2019-01-23	Pneumonia	12
3503	2018-07-03	2018-07-03	Ankylkosing Spondylitis	22
3503	2018-12-05	2018-12-13	Pyloric Obstruction	19
3504	2019-05-02	2019-05-09	Colorectal Cancer	17
3504	2019-05-31	2019-06-04	Fractured Femur	12
3505	2018-09-06	2018-09-11	Fibroids	18
3506	2019-01-06	2019-01-12	Flanking Abdominal Pain	2
3506	2019-02-27	2019-03-01	Chest Pain	9
3507	2018-09-19	2018-09-27	Congestive Heart Failure	24
3508	2018-12-07	2018-12-08	Cerebral Vascular Aneurys,	26
3510	2018-10-19	2018-10-27	L. Calf Pain	1
3510	2019-05-20	2019-05-24	Aortic Stenosis	1
3511	2018-07-23	2018-07-26	Fractured Fib And Tib	4
3511	2019-05-06	2019-05-15	Pregnant	19
3514	2019-01-11	2019-01-16	Gastoric Ulcer	22
3515	2018-10-16	2018-10-23	Paranoid Schizophrenia	10
3516	2019-02-17	2019-02-19	Fractured Femur	7
3516	2019-02-08	2019-02-13	Hysterectomy	2
3518	2018-08-17	2018-08-22	Rll Pneumonia	20
3520	2019-01-22	2019-01-24	Hypertension	13
3521	2018-07-27	2018-07-31	Fractured Femur	24
3522	2019-01-08	2019-01-08	Atrial Arrhythmias	21
3523	2019-02-27	2019-03-07	Pregnancy	1
3524	2018-07-10	2018-07-18	Appendicitis	10
3525	2018-11-30	2018-12-02	Pneumonia	22
3528	2019-03-21	2019-03-23	Myocardial Infarction	19
3529	2018-11-10	2018-11-17	Myocardial Infarction	13
3530	2019-06-02	1971-01-05	Pulmonay Embolism	17
3530	2019-04-01	2019-04-08	Birth By Caeserian Section	6
3531	2019-03-20	2019-03-26	Rul Pneumonia	24
3532	2019-05-07	2019-05-09	Acute Thrombophiebitis R Leg	17
3533	2018-10-03	2018-10-10	Congestive Heart Failure	3
3534	2018-10-03	2018-10-04	1St Stage Labour	26
3534	2019-02-23	2019-02-28	Congestive Heart Failure	20
3535	2018-08-05	2018-08-10	Hiatal Hernia	24
3535	2018-11-07	2018-11-11	Fractured Hip	4
3536	2019-02-17	2019-02-17	Unable To Void.	12
3536	2019-06-03	1971-01-05	3rd Degree Burn	13
3537	2018-07-27	2018-07-30	Ovarian Cyst	26
3537	2019-03-04	2019-03-05	Pneumonia	1
3538	2018-11-08	2018-11-10	Osteoarthritis Right Knee	2
3538	2019-02-27	2019-03-07	Intestinal Obstruction Hirschsprungs Disease	11
3539	2018-09-09	2018-09-18	Fractured Tibia	18
3540	2019-04-19	2019-04-22	Stroke (CVA)	3
3542	2018-08-02	2018-08-07	Lower Quadrant Pain	9
3543	2019-01-08	2019-01-17	Gallbladder Removed	1
3544	2018-07-01	2018-07-10	Aortic Stenosis	23
3544	2018-07-28	2018-08-06	Pulmonary Edema	2
3546	2018-12-13	2018-12-18	Fractured Hip	14
3546	2018-06-06	2018-06-09	Chest Pain	19
3547	2019-05-03	2019-05-05	Post Partum Hemmorage	18
3547	2018-11-30	2018-12-01	Alzheimers	11
3548	2019-02-02	2019-02-08	Dehydration	24
3548	2019-02-15	2019-02-15	Appendicitis	16
3549	2018-06-10	2018-06-13	Gastoric Ulcer	12
3550	2018-09-04	2018-09-07	Rul Pneumonia	16
3550	2019-05-15	2019-05-18	Pneumonia	20
3551	2019-05-23	2019-06-01	M.V.A	12
3554	2018-07-24	2018-07-27	Head Injury - Closed	25
3554	2019-05-13	2019-05-18	Bipolar Affective Disorder	14
3555	2019-02-01	2019-02-09	Abdominal Pain	18
3555	2019-04-26	2019-04-27	Dementia	12
3556	2018-11-25	2018-12-02	Chronic Bronchitis	10
3556	2018-12-29	2019-01-06	Chronic Obstructive Pulmonary Disease	20
3558	2019-03-01	2019-03-06	Fractured L. Tibia	10
3559	2018-09-07	2018-09-14	Biliary Colic	9
3560	2018-06-10	2018-06-11	Open Reduction Fracture Rt Humerus	25
3560	2019-04-22	2019-04-28	Injury Lt Patella Inferior	24
3561	2019-03-08	2019-03-08	Colorectal Cancer	27
3562	2018-11-25	2018-11-28	Emphysema	2
3562	2019-05-03	2019-05-03	Prostatectomy	1
3563	2018-09-30	2018-10-05	Renal Failure	18
3565	2019-02-01	2019-02-05	Endometriosis	8
3567	2018-09-22	2018-09-28	Latent Phase Of First Stage Labour	26
3567	2019-03-12	2019-03-12	Thrombocytopenia	5
3569	2018-11-12	2018-11-15	Osteoarthritis	24
3570	2019-03-02	2019-03-06	Fractured Left Hip	15
3572	2018-06-22	2018-06-25	Cva Right Side	10
3572	2018-08-07	2018-08-09	Pulmonary Edema	25
3573	2019-02-22	2019-02-28	Congestive Heart Failure	16
3573	2019-02-18	2019-02-21	Lumbar Disc Protrusion	13
3574	2019-02-28	2019-03-05	Basal Skull Fracture	9
3575	2018-08-24	2018-08-25	Congestive Heart Failure	23
3576	2019-05-03	2019-05-04	Right Hip Replacement	26
3577	2018-09-01	2018-09-05	Acute Otitis Media	27
3577	2018-10-02	2018-10-11	Parkinsons Disease	3
3582	2018-07-11	2018-07-19	Rll Pneumonia	26
3583	2019-05-07	2019-05-09	Fractured Femur	2
3584	2019-04-29	2019-05-03	Major Burn To The Anterior Thoracic Region	15
3585	2018-11-19	2018-11-21	MVA HI	14
3585	2018-06-18	2018-06-27	Flanking Abdominal Pain	16
3586	2018-08-15	2018-08-22	Fractured Femur	20
3586	2018-11-07	2018-11-11	Alt. In Emotional Integrity - Anxiety	25
3588	2019-05-15	2019-05-24	Migraine	14
3588	2018-08-25	2018-08-25	Congestive Heart Failure	7
3589	2018-08-19	2018-08-26	Tonsillitis	15
3589	2019-02-15	2019-02-19	Fractured Tibia	15
3591	2018-09-16	2018-09-20	Broken Hip	24
3591	2018-07-11	2018-07-11	Ruptured Appendicitis	27
3592	2018-08-13	2018-08-19	Injury Lt Patella Inferior	7
3593	2018-08-24	2018-08-28	Congestive Heart Failure	11
3594	2019-01-13	2019-01-20	Pulmonary Edema	9
3595	2019-02-06	2019-02-07	Undiagnosed Chest Pain	25
3596	2018-10-30	2018-11-08	Cervical Spinal Tumor	21
3596	2019-01-18	2019-01-24	Myasthen Gravis	18
3598	2019-05-03	2019-05-09	Active Labour	1
3599	2018-07-17	2018-07-18	Hunting Disease	20
3599	2019-04-10	2019-04-11	Fibroids	17
3600	2018-07-09	2018-07-15	Chest Pain	24
3600	2018-07-25	2018-07-28	CHF Pulmonary Edema	26
3601	2019-03-22	2019-03-27	Atrial Arrhythmias	27
3601	2019-03-31	2019-04-02	Open Reduction Fracture Rt Humerus	3
3602	2018-11-22	2018-11-28	Fractured Hip	20
3603	2018-12-05	2018-12-10	Ca. Of Blatter	17
3605	2018-06-24	2018-06-29	Cva-Right-Sided-Weakness	27
3605	2018-08-01	2018-08-03	Congestive Heart Failure	20
3607	2019-01-16	2019-01-22	Cervical Spinal Tumor	3
3607	2018-12-12	2018-12-14	Open Reduction Fracture Rt Humerus	21
3608	2018-10-05	2018-10-11	C. O. P. D.	11
3608	2018-11-22	2018-11-26	Coronary Artary Disease / Lt Sided Weakness	25
3609	2018-12-27	2018-12-30	Pre-Eclampsia	23
3610	2018-09-17	2018-09-25	Schizophrenia	15
3611	2019-05-04	2019-05-12	Angina	25
3612	2018-08-26	2018-09-03	Fracture To Left Femur	2
3613	2018-09-16	2018-09-19	2nd & 3rd Degree Burns To Right Arm / Both Legs	18
3614	2019-01-07	2019-01-07	Sinus Tachcardia,	4
3614	2019-03-13	2019-03-21	Unstable Angina	8
3615	2018-07-12	2018-07-18	Epigastric Pain	15
3617	2019-05-22	2019-05-23	Malnutrition	5
3617	2018-06-10	2018-06-19	Congestive Heart Failure	7
3618	2019-05-27	2019-06-05	Uterine Fibroid	10
3619	2018-10-13	2018-10-21	Interstitial, Pulmonary Edema	16
3620	2019-02-03	2019-02-12	Pregnancy	2
3620	2018-09-13	2018-09-21	Endometriosis	22
3622	2018-07-11	2018-07-15	Fractured Left Hip	18
3623	2018-08-16	2018-08-20	Pregnancy	13
3624	2018-10-21	2018-10-26	Active Labour	4
3625	2018-08-04	2018-08-07	Peripheral Edema	5
3626	2019-04-01	2019-04-01	Multiple Fractures Of R Scapula. Insertion Of Pins	24
3627	2019-03-30	2019-04-04	Possible Renal Calculi	17
3627	2018-11-13	2018-11-16	Orthopnea	5
3628	2018-08-17	2018-08-25	Congestive Heart Failure	23
3630	2019-01-04	2019-01-12	Chest Pain	24
3630	2018-10-15	2018-10-18	Renal Calculi	16
3631	2018-10-08	2018-10-14	Fractured Right Humeral Head	8
3631	2018-07-04	2018-07-12	Chest Pain	6
3632	2019-03-26	2019-04-01	Thrombocytopenia	10
3634	2019-04-30	2019-04-30	Hypertension	9
3634	2019-03-20	2019-03-21	Essential Hypertension	22
3635	2019-02-14	2019-02-17	Latent Phase Of First Stage Labour	10
3635	2018-07-28	2018-08-06	Hypertrophy Of Prostate Gland	14
3637	2019-04-01	2019-04-08	Fractured \\"L\\" Femur	9
3639	2018-10-30	2018-10-30	Congestive Heart Failure	16
3640	2018-11-07	2018-11-12	Right Hip Replacement	5
3640	2018-11-20	2018-11-22	Alt. In Emotional Integrity - Anxiety	20
3641	2019-02-28	2019-03-07	Major Depression B.Polar	7
3641	2019-04-02	2019-04-03	Myasthen Gravis	2
3642	2019-05-22	2019-05-25	Pregnancy	10
3644	2018-12-03	2018-12-03	Ovarian Dermoid-Cyct	17
3644	2018-11-11	2018-11-11	Pulmonary Edema	21
3645	2019-03-21	2019-03-25	2nd Degree Burn Of Face	11
3647	2018-10-02	2018-10-02	Poisoning	17
3649	2019-05-28	2019-05-28	CHF	11
3650	2018-10-18	2018-10-18	Severe Substernal Pain Radiating To Left Shoulder	11
3651	2018-11-06	2018-11-15	Subarachroid Hemorrhage	15
3653	2018-12-22	2018-12-30	Obsessive - Compulsive Order	6
3656	2018-07-22	2018-07-26	CHF	9
3656	2018-10-20	2018-10-20	Lwr Right Quad Pain That Radiates Through Abdomen	13
3657	2018-07-23	2018-07-29	Manic Depression	23
3657	2019-03-10	2019-03-12	Pregnancy	13
3658	2018-09-09	2018-09-14	CHF Congestive Heart Failure	7
3658	2018-10-08	2018-10-13	Chest Pain	1
3660	2018-07-01	2018-07-04	Appendicitis	7
3660	2019-04-24	2019-04-30	Chest Pain	20
3661	2019-05-26	2019-06-02	Chest Pain With Sob	8
3661	2019-05-15	2019-05-21	Infertility, Secondary	21
3662	2019-04-07	2019-04-08	Hypertension	2
3662	2018-07-05	2018-07-05	CHF Congestive Heart Failure	13
3664	2018-11-02	2018-11-10	Pain In Abdomen Left Side	15
3664	2018-07-17	2018-07-25	Cancer Of The Stomach	17
3665	2018-11-03	2018-11-05	Syncope NYD	9
3667	2019-04-11	2019-04-15	Interstitial, Pulmonary Edema	14
3667	2018-08-11	2018-08-15	Osteoarthritis	1
3668	2019-03-31	2019-03-31	Fracture Of Left Femur	25
3670	2018-12-01	2018-12-05	Appendicitis	5
3670	2019-05-28	2019-06-02	Myasthen Gravis	2
3671	2019-04-21	2019-04-23	Major Depression B.Polar	15
3671	2019-04-05	2019-04-05	Undiagnosed Chest Pain	23
3672	2019-05-09	2019-05-17	Diabetes	18
3672	2018-11-24	2018-11-24	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	15
3673	2018-08-02	2018-08-09	Anterior Myocardial Infraction	21
3673	2019-01-09	2019-01-14	Cva (Left) - Cerebral Vascular Accident (Stroke)	1
3674	2019-04-14	2019-04-23	Fractured Tibia	9
3675	2019-05-06	2019-05-09	Alt. In Emotional Integrity - Anxiety	8
3675	2018-06-22	2018-06-25	Increased Intr-Cranial Pressure	2
3676	2018-07-11	2018-07-11	L CVA	8
3676	2018-12-06	2018-12-10	Fractured Left Hip Due To Slip And Fall On Ice	1
3679	2019-04-28	2019-05-05	Pyloric Obstruction	5
3679	2019-02-20	2019-02-23	Crohns Disease	13
3681	2018-11-18	2018-11-24	Pulmonary Edema	8
3681	2018-09-25	2018-10-03	Fibromyalgia	5
3682	2018-07-07	2018-07-15	Gall Stones	12
3683	2019-05-15	2019-05-18	Major Depression B.Polar	10
3683	2019-03-13	2019-03-22	Cerebellar Brain Tumor Metastasis	24
3684	2018-11-10	2018-11-17	M.I.	6
3685	2019-03-29	2019-04-05	Chronic Obstructive Pulmonary Disease	4
3686	2018-11-27	2018-11-30	Severe Pain + Tenderness In Left Calf	6
3686	2018-08-26	2018-09-01	CHF	24
3690	2018-10-29	2018-10-29	Tonsilectomy	19
3691	2018-10-28	2018-11-04	Open Reduction Fracture Rt Humerus	9
3692	2018-06-28	2018-07-02	Hallecinations	1
3692	2018-09-30	2018-10-04	Acute Bronchitis	23
3694	2018-09-24	2018-09-24	Pneumonia	21
3694	2019-04-11	2019-04-16	Second & Third Degree Burns To Right Arm/Both Legs	22
3695	2018-08-13	2018-08-20	Asthma	24
3695	2018-12-19	2018-12-24	Pregnancy	13
3698	2019-06-03	1971-01-05	Severe Narrowing Of Pyloric Channel	22
3698	2019-03-11	2019-03-12	Atrial Fibrillation R/O MI	7
3700	2019-02-02	2019-02-07	Lumbar Disc Protrusion	14
3702	2018-10-27	2018-10-27	Abdominal Pain	17
3703	2018-10-09	2018-10-18	Congestive Heart Failure	24
3704	2018-11-08	2018-11-15	Unable To Void.	26
3704	2019-05-06	2019-05-15	C. O. P. D.	27
3706	2018-08-16	2018-08-19	Depression, Dementia	22
3706	2019-06-04	1971-01-05	Myocardial Infarction	9
3708	2018-12-07	2018-12-15	Angina	14
3708	2019-03-29	2019-03-31	L. Calf Pain	1
3709	2019-06-02	2019-06-05	Fibromyalgia	4
3710	2018-06-29	2018-07-02	Osteomyslitis - Right Hip	20
3711	2019-01-18	2019-01-19	Emphysema	4
3713	2018-11-11	2018-11-14	Dehydration	15
3713	2018-12-03	2018-12-12	Fractured Hip	16
3714	2018-08-21	2018-08-25	Head Injury - Closed	22
3715	2019-01-21	2019-01-22	Labour	1
3715	2019-05-29	1971-01-05	Fractured Skull	10
3716	2018-12-31	2019-01-07	2nd Degree Burn Of Face	1
3716	2019-04-18	2019-04-27	Fractured \\"L\\" Femur	14
3718	2018-08-27	2018-09-02	Simple Fracture Of The Tibia	3
3718	2019-03-04	2019-03-12	Emphysema	22
3719	2019-04-22	2019-04-23	Atrial Arrhythmias	25
3719	2018-09-09	2018-09-11	Vsa Cardiac Arrest	14
3720	2018-08-18	2018-08-21	Myocardial Infarction	24
3720	2018-12-15	2018-12-24	Lumbar Disc Protrusion	5
3721	2019-05-06	2019-05-11	Lung Cancer	8
3726	2018-09-28	2018-10-03	Major Depression B.Polar	14
3727	2019-03-15	2019-03-18	Multiple Sclerosis	16
3728	2019-03-03	2019-03-11	Cerebral Aneurysm Rupture	8
3729	2018-12-28	2019-01-04	Fractured Tibia	2
3732	2019-05-31	1971-01-05	Schizophrenic Disorder	11
3732	2018-08-02	2018-08-03	Unable To Void.	22
3733	2018-08-02	2018-08-05	Renal Calculi	21
3736	2018-07-10	2018-07-19	Acute Renal Failure	27
3737	2018-07-22	2018-07-25	Fractured \\"L\\" Femur	22
3738	2019-03-18	2019-03-19	Fracture Of Fibula And Tibia	1
3738	2019-01-02	2019-01-06	Head Injury - Closed	26
3739	2019-05-01	2019-05-09	Congestive Heart Failure	10
3740	2019-04-08	2019-04-17	Parkinsons Disease	14
3742	2018-10-18	2018-10-25	Amyotopic Lateral Scletosis	17
3743	2019-05-20	2019-05-29	Basal Skull Fracture	27
3745	2019-01-16	2019-01-24	Fractured Left Hip	26
3745	2019-05-20	2019-05-21	Sepis	7
3746	2018-09-04	2018-09-08	Acute Otitis Media	4
3746	2019-01-20	2019-01-21	Peptic Ulcer Disease	22
3747	2018-09-12	2018-09-19	Coronary Artery Disease	27
3747	2019-03-11	2019-03-15	Dilation + Evacuation	25
3748	2018-11-04	2018-11-13	Decubitus Ulcer	9
3749	2018-10-12	2018-10-13	Fractured Femur	3
3751	2019-05-22	2019-05-25	Birth By Caeserian Section	16
3751	2019-03-20	2019-03-23	Unstable Angina	16
3752	2019-01-07	2019-01-11	Fractured Hip	19
3753	2019-04-15	2019-04-24	Intestinal Obstruction Hirschsprungs Disease	1
3755	2018-09-19	2018-09-23	Simple Fracture Of The Tibia	16
3756	2019-02-07	2019-02-16	Appendicitis	6
3757	2019-01-11	2019-01-13	Cerebral Aneurysm Rupture	18
3758	2019-04-01	2019-04-01	Cancer Of The Colon	5
3758	2018-06-21	2018-06-25	Osteoarthritis	15
3759	2018-06-17	2018-06-18	Schizophrenic Disorder	5
3759	2018-09-09	2018-09-14	Pneumonia	16
3761	2018-08-28	2018-08-29	Breast Cancer	18
3762	2018-08-26	2018-08-26	C. O. P. D.	21
3762	2019-01-24	2019-02-02	Congestive Heart Failure	4
3765	2018-07-25	2018-07-31	Fractured Left Hip Due To Slip And Fall On Ice	3
3766	2019-05-25	2019-05-31	Abdominal Perineal Resection	2
3767	2019-04-26	2019-05-01	Pregnancy	10
3768	2018-08-30	2018-09-07	Bipolar Disorder	11
3768	2019-01-12	2019-01-15	Stress Incotinence	23
3770	2018-07-08	2018-07-12	Fractured Left Leg	25
3770	2018-08-11	2018-08-17	Depression	25
3771	2018-06-14	2018-06-21	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	8
3771	2019-01-16	2019-01-17	COPD-Chronicdostructive Pulmonary Disease	14
3773	2019-04-20	2019-04-23	Appendicitis	1
3774	2018-07-19	2018-07-25	CHF	4
3775	2018-12-21	2018-12-25	Ca R Breast	2
3775	2018-11-16	2018-11-20	Cancer Of The Stomach	9
3776	2018-12-13	2018-12-22	Pain In Abdomen Left Side	21
3777	2018-09-22	2018-09-25	Fracture Rt Radius	14
3777	2019-02-14	2019-02-19	Abdominal Pain	23
3779	2018-07-29	2018-07-31	Appendicitis	25
3780	2018-09-19	2018-09-28	Bipolar Affective Disorder	21
3783	2019-01-10	2019-01-19	Chest Pain	26
3784	2019-03-04	2019-03-08	Appendicitis	22
3785	2018-06-20	2018-06-22	Abdominal Pain	18
3786	2018-06-16	2018-06-25	Cerebral Aneurysm Rupture	8
3786	2018-11-02	2018-11-08	Ovarian Cancer	22
3787	2018-08-14	2018-08-14	Lwr Right Quad Pain That Radiates Through Abdomen	22
3788	2018-10-20	2018-10-28	Full Term Delivery	18
3788	2019-05-05	2019-05-06	Hypertension	23
3790	2018-12-09	2018-12-09	2nd & 3rd Degree Burns To Right Arm / Both Legs	21
3792	2019-04-01	2019-04-07	Dehydradion, Vomiting	22
3792	2019-03-13	2019-03-18	Severed Spine At C3	10
3793	2019-01-26	2019-01-30	Abdominal Pain	16
3794	2018-10-05	2018-10-13	Fibromyalgia	10
3795	2019-02-27	2019-02-27	Pregnant	27
3796	2018-08-06	2018-08-09	Biliary Colic	10
3797	2018-12-26	2019-01-03	Peripheral Edema	20
3798	2018-12-13	2018-12-20	Cancer Of The Descending Colon	17
3798	2019-01-20	2019-01-29	Congestive Heart Failure	20
3799	2019-02-06	2019-02-14	Hypoglycemia	4
3801	2019-03-24	2019-03-25	Ineffective Breathin Pattern R/T Fluid Accumulatio	23
3802	2019-02-23	2019-02-25	Melanoma, Cancer	23
3802	2019-04-13	2019-04-20	Congestive Heart Failure	10
3803	2019-04-07	2019-04-09	Chestpain Not Yet Diagnosed	18
3803	2018-08-11	2018-08-16	Gastoric Ulcer	21
3804	2019-04-13	2019-04-13	Unstable Angina	14
3804	2018-09-16	2018-09-25	Hysterectomy	10
3805	2018-08-03	2018-08-10	MI	24
3806	2018-06-17	2018-06-25	Profound Depression	3
3806	2019-04-27	2019-05-05	Fractured Tibia	11
3807	2018-10-17	2018-10-18	Abdominal Pain	9
3807	2019-05-14	2019-05-23	Fractured Hip	2
3808	2018-10-30	2018-11-02	Hypertension	11
3809	2018-10-14	2018-10-14	Osteomyslitis - Right Hip	10
3809	2019-01-11	2019-01-19	Obstructive Nephropathy	25
3810	2019-02-27	2019-03-06	Congestive Heart Failure	22
3810	2018-08-12	2018-08-14	Chest Pain	17
3812	2018-07-02	2018-07-02	Congestive Heart Failure	10
3813	2018-10-20	2018-10-24	CHF (Congestive Heart Failure)	6
3814	2018-10-10	2018-10-19	Alt. In Emotional Integrity - Anxiety	13
3815	2019-05-05	2019-05-10	Cardiac Arrest	26
3815	2019-03-11	2019-03-13	Cancer	11
3818	2019-05-09	2019-05-17	Bladder Cancer	22
3819	2019-04-19	2019-04-21	Alzheimers	16
3819	2019-05-31	2019-06-04	Pregnancy	19
3821	2018-07-11	2018-07-19	Obstructive Nephropathy	16
3822	2019-03-20	2019-03-23	Cva-Leftside	22
3823	2019-05-08	2019-05-10	Lung Cancer	10
3823	2018-11-02	2018-11-07	Fracture To Left Femur	14
3825	2018-12-08	2018-12-12	Rt. Nephrectomy	3
3825	2019-03-10	2019-03-11	2nd & 3rd Degree Burns To Right Arm / Both Legs	17
3826	2018-07-14	2018-07-21	Myocardial Infarction	17
3827	2019-02-25	2019-03-03	Cancer Of The Descending Colon	20
3828	2019-02-26	2019-03-04	Cholelithiasis	19
3828	2019-03-06	2019-03-10	Appendicitis	15
3830	2018-11-02	2018-11-05	Chest Pain	4
3831	2019-05-12	2019-05-20	Hypertension	22
3832	2019-04-25	2019-04-28	Congestive Heart Failure	5
3832	2019-04-10	2019-04-10	Fractured Right Humeral Head	19
3835	2018-11-17	2018-11-26	Abdominal Pain	25
3835	2019-01-06	2019-01-15	Severed Spine At C3	22
3836	2019-04-22	2019-04-27	Appendicitis	12
3836	2018-10-08	2018-10-17	Essential Hypertension	9
3837	2018-07-21	2018-07-28	Severed Spine At C3	21
3837	2018-10-30	2018-10-31	Acute Bronchitis	18
3838	2018-12-10	2018-12-13	Diabetes	17
3839	2019-02-01	2019-02-10	Gastoric Ulcer	8
3841	2019-05-11	2019-05-15	Decubitus Ulcer	26
3842	2018-09-03	2018-09-11	Dementia	16
3842	2019-02-04	2019-02-13	Fracture Rt Radius	22
3843	2019-05-12	2019-05-13	Latent Phase Of First Stage Labour	2
3846	2019-01-29	2019-01-30	Pregnancy	10
3847	2018-09-01	2018-09-10	Bipolar Affective Disorder	16
3847	2018-09-08	2018-09-13	Sepis	16
3848	2018-11-20	2018-11-24	Congestive Heart Failure	9
3848	2018-06-14	2018-06-21	Chestpain Not Yet Diagnosed	15
3849	2018-12-12	2018-12-16	Fracture Of Left Femur	12
3849	2018-10-23	2018-10-23	Cva (Left) - Cerebral Vascular Accident (Stroke)	27
3850	2019-06-02	1971-01-05	Coronary Artary Disease / Lt Sided Weakness	9
3850	2018-12-12	2018-12-21	Paranoid Schizophrenic	23
3851	2018-08-17	2018-08-20	Turp(Transurethro Resection Of The Prostate Gland)	23
3852	2018-09-18	2018-09-20	Pregnant	26
3854	2018-06-21	2018-06-27	Fractured Right Femur (Compound)	3
3854	2018-07-29	2018-07-30	Ovarian Dermoid-Cyct	14
3855	2018-07-05	2018-07-10	Ruptured Fallopian Tube	18
3856	2019-05-18	2019-05-23	Open Reduction Fracture Rt Humerus	10
3856	2019-03-12	2019-03-18	Abdominal Perineal Resection	1
3857	2019-02-13	2019-02-18	Pregnancy	13
3858	2018-08-19	2018-08-28	Multiple Fractures Of R Scapula. Insertion Of Pins	2
3858	2018-08-31	2018-08-31	Rt. Nephrectomy	24
3859	2018-12-21	2018-12-22	Fractured Femur	12
3859	2018-11-23	2018-11-29	Increased Intr-Cranial Pressure	15
3860	2018-11-20	2018-11-20	Chest Pain	8
3862	2018-10-10	2018-10-19	Severe Pain + Tenderness In Left Calf	18
3862	2018-08-25	2018-09-02	Stomache Pain	9
3863	2018-10-15	2018-10-16	Acute Thrombophiebitis R Leg	25
3864	2018-06-20	2018-06-20	Unstable Angina	14
3864	2019-03-25	2019-04-03	Fractured \\"L\\" Femur	4
3866	2019-05-10	2019-05-15	Bipolar Affective Disorder	21
3866	2018-11-05	2018-11-14	Acute Bronchitis	6
3867	2018-11-02	2018-11-08	Ovarian Dermoid-Cyct	15
3868	2019-05-13	2019-05-18	Active Labour	22
3870	2018-11-14	2018-11-19	Fractured Right Femur (Compound)	27
3870	2018-06-27	2018-06-29	Gall Stones	26
3871	2018-09-27	2018-10-02	Tonsilectomy	20
3871	2018-11-28	2018-12-04	Alt. In Emotional Integrity - Anxiety	17
3872	2019-05-23	2019-06-01	Peptic Ulcer Disease	8
3872	2018-12-06	2018-12-08	Ovarian Dermoid-Cyct	27
3873	2018-06-18	2018-06-24	Bowel Obstruction	22
3874	2019-04-07	2019-04-11	Increased Intr-Cranial Pressure	24
3875	2018-08-24	2018-08-31	Chest Pain	19
3875	2019-04-05	2019-04-11	Cerebral Aneurysm	8
3876	2018-10-07	2018-10-14	Paranoid Schizophrenic	27
3876	2019-03-12	2019-03-16	Fractured Femur	27
3877	2018-09-18	2018-09-26	Spinal Compresion	23
3877	2018-10-14	2018-10-14	MVA HI	8
3878	2019-03-22	2019-03-23	Asthma	26
3878	2018-06-30	2018-07-08	Uterine Fibroid	21
3879	2018-10-06	2018-10-07	Cervical Spinal Tumor	8
3881	2019-03-28	2019-03-28	Renal Calculi	12
3882	2019-05-20	2019-05-21	Dehydration	5
3883	2018-10-05	2018-10-06	Myocardial Infarction	14
3883	2018-09-06	2018-09-06	Congestive Heart Failure	8
3884	2019-03-03	2019-03-04	Appendicitis	14
3885	2018-08-06	2018-08-14	Pregnancy	7
3885	2019-03-10	2019-03-15	Essential Hypertension	8
3886	2018-09-04	2018-09-11	Hiatal Hernia	14
3886	2018-08-13	2018-08-20	Pneumonia	6
3888	2018-07-19	2018-07-25	Congestive Heart Failure	14
3889	2018-06-17	2018-06-18	Myocardial Infarction	6
3889	2018-12-14	2018-12-14	Chronic Bronchitis	13
3890	2018-12-17	2018-12-26	Major Depression	1
3891	2018-06-28	2018-06-28	Total Lt Hip Replacement Because Of Osteoarthritis	1
3891	2018-07-24	2018-07-31	Epilepsy	15
3892	2019-03-08	2019-03-10	Turp	12
3893	2019-04-16	2019-04-22	Hunting Disease	27
3893	2019-01-04	2019-01-08	Ovarian Cyst	18
3894	2019-03-30	2019-04-04	Fractured Femur	5
3895	2019-03-17	2019-03-25	Myasthen Gravis	1
3896	2019-02-13	2019-02-22	Chest Pain	13
3896	2018-11-12	2018-11-14	Renal Failure	8
3898	2019-02-24	2019-03-04	Poisoning	10
3899	2019-01-18	2019-01-24	Ectopic Pregnancy	13
3900	2018-11-15	2018-11-16	Abdominal Perineal Resection	24
3902	2018-06-30	2018-07-03	Myocardial Infarction (MI)	12
3902	2018-07-18	2018-07-18	Cystocele/Stress Incontinence	13
3903	2019-04-10	2019-04-15	Asthma	24
3903	2019-05-19	2019-05-21	Pneumonia	11
3905	2019-01-19	2019-01-28	Myocardial Infarction	7
3905	2018-12-01	2018-12-09	Appendicitis	20
3906	2018-10-01	2018-10-03	Headache	18
3908	2018-06-21	2018-06-25	Pregnancy	2
3908	2018-08-27	2018-08-28	Myocardial Infarction	26
3909	2018-07-16	2018-07-16	Ectopic Pregnancy	26
3911	2018-10-23	2018-10-24	Pyclonephritis	9
3912	2018-09-04	2018-09-06	Zenkers Diverticulitis	23
3913	2018-09-09	2018-09-14	Bowel Obstruction	10
3914	2018-07-05	2018-07-12	Chest Pain	21
3914	2018-08-18	2018-08-26	Interstitial, Pulmonary Edema	19
3916	2019-01-23	2019-01-23	2nd Degree Burn Of Face	13
3916	2018-12-18	2018-12-23	Broken Left Femur Compound Fracture	6
3917	2018-08-25	2018-09-03	Appendicitis	13
3917	2018-09-28	2018-10-02	Anterior Myocardial Infraction	22
3918	2018-12-18	2018-12-21	Cardiac Catheterization	17
3919	2019-05-12	2019-05-21	Congestive Heart Failure	2
3920	2019-04-21	2019-04-22	CHF	10
3921	2019-05-21	2019-05-30	Myocardial Infarction	13
3924	2019-01-13	2019-01-21	Fractured Hip	13
3924	2018-06-22	2018-06-30	Congestive Heart Failure	9
3926	2018-10-31	2018-11-06	Back Injury	5
3926	2018-07-21	2018-07-24	Acute Lower Abdominal Right-Sided Pain	3
3927	2018-09-30	2018-10-08	Congestive Heart Failure	11
3927	2018-07-18	2018-07-22	Myocardial Infarction	23
3929	2018-09-04	2018-09-12	Abdominal Perineal Resection	8
3930	2019-01-21	2019-01-23	Cva (Left) - Cerebral Vascular Accident (Stroke)	8
3930	2019-05-22	2019-05-25	Ovarian Cancer	26
3931	2019-04-12	2019-04-12	Chronic Obstructive Pulmonary Disease	6
3932	2019-03-16	2019-03-18	Congestive Heart Failure	4
3932	2018-08-07	2018-08-08	Pyloric Obstruction	13
3933	2019-05-10	2019-05-15	Ovarian Dermoid-Cyct	10
3933	2019-02-01	2019-02-10	Severe Pain + Tenderness In Left Calf	27
3934	2019-05-09	2019-05-10	Angina	10
3936	2019-05-06	2019-05-06	Amigima	11
3938	2018-10-13	2018-10-21	Fractured Left Hip Due To Slip And Fall On Ice	22
3940	2019-03-23	2019-04-01	Pregnancy	11
3944	2019-03-27	2019-04-03	Chest Pain	7
3945	2018-09-18	2018-09-18	1St Stage Labour	26
3947	2018-08-11	2018-08-13	Hypertension	10
3951	2019-05-13	2019-05-17	Pneumothorax	21
3952	2018-11-03	2018-11-03	Broken Rt Femur	5
3953	2019-05-10	2019-05-10	Lung Cancer	9
3953	2019-02-19	2019-02-19	Spinal Infection	11
3954	2018-08-27	2018-08-27	L4-Lf Spinal Fusion	4
3955	2018-10-05	2018-10-13	Parkinsons Disease	21
3957	2018-07-14	2018-07-20	Second & Third Degree Burns To Right Arm/Both Legs	11
3957	2018-09-07	2018-09-16	Tonsilectomy	20
3959	2019-03-31	2019-04-07	Myocardial Infarction	25
3959	2018-09-27	2018-10-05	Multiple Sclerosis	2
3960	2019-01-18	2019-01-18	Alzheimers	9
3960	2018-06-24	2018-06-25	CHF (Congestive Heart Failure)	12
3961	2018-12-23	2018-12-25	Emphysema	8
3963	2018-11-23	2018-11-26	Alzheimers	19
3963	2018-06-15	2018-06-17	Colorectal Cancer	22
3964	2018-10-07	2018-10-14	Congestive Heart Failure	21
3965	2018-08-04	2018-08-08	Tuberculosis	27
3966	2019-06-03	2019-06-03	Abdominal Pain	3
3966	2018-12-07	2018-12-07	Chest Pain	1
3967	2018-09-30	2018-10-07	Myasthen Gravis	4
3967	2018-07-24	2018-07-26	Complete Unilateral Cleft Lip 7 Cleft Palate	19
3968	2019-06-05	1971-01-05	Pneumonia	25
3968	2018-10-24	2018-10-26	Acute Otitis Media	6
3971	2019-02-26	2019-03-02	Osteo Arthtitis Knee	22
3974	2018-10-03	2018-10-05	Turp(Transurethro Resection Of The Prostate Gland)	12
3974	2019-02-07	2019-02-08	Chest Pain	4
3975	2019-04-10	2019-04-14	Anorexia Nervosa	15
3975	2018-08-01	2018-08-06	Epigastric Pain	13
3976	2018-11-30	2018-12-03	Pneumonia	11
3977	2018-07-12	2018-07-15	Fracture Right Distal Radius (Colles Fracture)	21
3978	2019-01-31	2019-02-01	Lymphona	7
3979	2019-01-16	2019-01-24	Appendicitis	24
3979	2019-05-14	2019-05-15	Profound Depression	19
3980	2018-07-28	2018-07-30	Spinal Compresion	8
3981	2019-04-30	2019-05-09	Congestive Heart Failure	4
3981	2019-04-12	2019-04-19	Scatica	17
3982	2018-09-22	2018-09-22	Cerebrovascular Accident (Stroke)	5
3982	2019-02-20	2019-02-23	Unstable Angina	10
3983	2019-05-28	2019-05-30	Abdominal Pain	6
3984	2019-03-09	2019-03-10	Decubitus Ulcer	23
3986	2019-03-08	2019-03-11	Congestive Heart Failure	19
3987	2018-12-25	2019-01-03	CHF	9
3988	2018-08-08	2018-08-14	Tonsillitis	11
3991	2018-09-17	2018-09-23	Cardiac Catheterization	9
3992	2019-03-25	2019-03-28	Lwr Right Quad Pain That Radiates Through Abdomen	18
3993	2018-08-09	2018-08-14	Spinal Compresion	16
3993	2019-05-10	2019-05-19	Acute Appendicitis, Diabetes Type II	1
3994	2018-10-15	2018-10-15	Angina	21
3994	2018-12-15	2018-12-24	Bipolar Disorder	22
3995	2018-07-17	2018-07-18	Melanoma, Cancer	5
3996	2018-11-29	2018-12-08	Biliary Colic	13
3996	2019-01-05	2019-01-06	Respiratory Failure	27
4000	2018-08-14	2018-08-17	Fibromyalgia	17
4001	2018-06-26	2018-06-27	Fractured Femur	12
4002	2019-01-01	2019-01-10	Gunshot Wound To Head	13
4002	2018-06-26	2018-07-03	Upper Respetory Infection	14
4003	2018-11-22	2018-11-29	Thrombocytopenia	27
4007	2018-11-28	2018-11-28	Chest Infection	4
4008	2018-07-05	2018-07-12	Paranoid Schizophrenic	20
4009	2019-03-05	2019-03-12	Breast Cancer	15
4010	2018-07-27	2018-08-03	Sepis	21
4011	2018-11-20	2018-11-25	Anterior Myocardial Infraction	15
4011	2019-04-13	2019-04-21	Tuberculosis	24
4012	2019-04-14	2019-04-15	Severe Pain + Tenderness In Left Calf	14
4015	2019-02-22	2019-02-23	Fractured Hip	15
4016	2018-06-16	2018-06-25	Pregnancy	10
4016	2019-04-15	2019-04-22	Parkinsons Disease	4
4017	2019-02-21	2019-03-01	Stroke (CVA)	1
4017	2018-10-31	2018-11-09	Fractured Left Leg	27
4018	2018-09-09	2018-09-13	Exploratory, Orthoscopic - Knee	18
4019	2019-01-15	2019-01-18	Stroke	7
4020	2019-04-21	2019-04-23	Bronchitis	12
4020	2019-01-13	2019-01-19	Emphysema	11
4021	2018-12-31	2018-12-31	Appendicitis	11
4021	2018-12-24	2018-12-30	Chronic Caugh Disease	4
4022	2019-01-31	2019-02-06	Anterior Myocardial Infraction	1
4022	2018-07-11	2018-07-13	Hysterectomy	3
4023	2018-06-23	2018-06-30	Complete Unilateral Cleft Lip & Cleft Palate	5
4023	2019-01-29	2019-02-05	Abdominal Pain	3
4024	2018-11-04	2018-11-06	Breast Cancer	22
4024	2018-10-15	2018-10-19	Interstitial, Pulmonary Edema	9
4025	2018-08-08	2018-08-13	Stomach Ulcer	7
4025	2018-07-22	2018-07-23	Latent Phase Of First Stage Labour	3
4026	2018-12-03	2018-12-03	Diabetes	1
4027	2018-11-22	2018-11-22	Appendicitis	1
4027	2018-09-21	2018-09-26	Chest Pain	25
4029	2018-06-17	2018-06-17	Abdominal Pain	25
4029	2019-05-04	2019-05-13	Asthma	13
4030	2019-05-12	2019-05-21	Diabetes Mellitus	14
4033	2018-08-14	2018-08-21	Fracture Of Fibula And Tibia	23
4034	2019-02-03	2019-02-06	Breast Cancer	12
4035	2019-05-19	2019-05-27	Coronary Artery Disease	11
4036	2019-04-28	2019-05-02	Fractured Left Hip Due To Slip And Fall On Ice	4
4036	2018-06-16	2018-06-19	Congestive Heart Failure	3
4037	2018-07-15	2018-07-15	Complete Unilateral Cleft Lip & Cleft Palate	5
4037	2018-11-29	2018-12-07	Emphysema	24
4039	2019-01-11	2019-01-14	Myocardial Infarction	11
4039	2018-06-28	2018-07-01	Depression	19
4042	2018-12-15	2018-12-16	Chest Pain	3
4044	2019-01-08	2019-01-14	Acute Leukemia	2
4045	2018-07-01	2018-07-07	Caeserian Section	17
4046	2018-07-24	2018-07-30	Fractured L. Tibia	27
4047	2018-06-17	2018-06-18	Fractured Skull	3
4047	2018-09-28	2018-10-06	Appendicitis	12
4049	2018-06-08	2018-06-17	Bronchiolitis	17
4049	2019-01-08	2019-01-17	Congestive Heart Failure	1
4050	2018-09-27	2018-09-29	Pneumonia	12
4052	2019-05-25	2019-05-30	Fracture To Left Femur	25
4052	2019-02-22	2019-02-25	Cleft Palate And Complete Unilateral Cleft Up	2
4053	2018-06-25	2018-06-30	Manic Depression	22
4053	2018-06-12	2018-06-20	Cerebellar Brain Tumor Metastasis	5
4054	2019-05-18	2019-05-19	Broken Hip	11
4055	2019-05-15	2019-05-15	Turp(Transurethro Resection Of The Prostate Gland)	9
4055	2018-07-16	2018-07-21	Hypoglycemia	20
4056	2019-05-24	2019-05-31	Gunshot Wound To Head	23
4057	2018-07-13	2018-07-15	Infection	8
4058	2019-04-23	2019-04-27	Total Hysterectomy	26
4058	2019-02-19	2019-02-23	Chronic Schizophrenia,Psychosis,Paranoia	6
4059	2018-11-18	2018-11-22	Cancer	11
4060	2019-03-09	2019-03-11	Cva Right Side	6
4062	2019-05-25	2019-06-03	Ovarian Cyst	10
4062	2018-11-05	2018-11-07	Diabetes	8
4063	2018-11-29	2018-12-05	Cardiovascular Disease	27
4063	2018-11-04	2018-11-04	Hypertension	12
4064	2018-09-07	2018-09-13	Multiple Fractures Of R Scapula. Insertion Of Pins	22
4066	2019-03-03	2019-03-10	Acute Leukemia	8
4066	2018-10-27	2018-10-28	Myocardial Infarction	18
4067	2019-04-04	2019-04-12	Congestive Heart Failure	24
4068	2018-10-24	2018-10-25	Appendicitis	15
4068	2018-08-02	2018-08-10	Acute Appendicitis, Diabetes Type II	15
4069	2018-11-09	2018-11-17	Myocardial Infarction	5
4070	2018-09-08	2018-09-11	Cva-Leftside	8
4070	2018-10-29	2018-10-30	Glomerulonephritis	17
4071	2019-02-23	2019-02-27	Appendicitis	23
4073	2019-02-21	2019-02-25	Infertility, Secondary	23
4073	2019-01-01	2019-01-02	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	7
4074	2018-08-17	2018-08-23	Acute Lower Abdominal Right-Sided Pain	27
4074	2019-05-31	1971-01-05	Headache	20
4075	2019-05-30	1971-01-05	Congestive Heart Failure	26
4075	2019-03-19	2019-03-27	Bladder Cancer	2
4077	2018-08-23	2018-08-30	Myocardial Infarction	7
4078	2018-12-20	2018-12-21	Appendicitis	3
4079	2019-02-21	2019-02-22	Cancer	25
4079	2019-02-19	2019-02-28	Fractured Hip	11
4080	2019-02-11	2019-02-13	Congestive Heart Failure	3
4081	2018-06-25	2018-07-01	Major Depression B.Polar	21
4082	2019-02-03	2019-02-10	Headache	15
4083	2019-01-16	2019-01-17	Congestive Heart Failure	12
4083	2018-12-01	2018-12-05	Congestive Heart Failure	16
4084	2018-09-28	2018-09-30	Cardiac Catheterization	2
4084	2018-10-08	2018-10-09	Abdominal Pain	7
4085	2018-07-16	2018-07-18	Pregnancy	15
4087	2019-02-01	2019-02-07	Colorectal Cancer	27
4087	2018-12-08	2018-12-08	Undiagnosed Chest Pain	9
4088	2018-08-14	2018-08-20	Multiple Myeloma	14
4088	2018-11-08	2018-11-14	Osteomyslitis - Right Hip	4
4089	2018-07-14	2018-07-22	Chronic Caugh Disease	26
4089	2019-01-11	2019-01-13	Fracture Right Distal Radius (Colles Fracture)	8
4091	2018-07-31	2018-08-04	Hypertrophy Of Prostate Gland	22
4092	2019-02-06	2019-02-13	C. O. P. D.	22
4092	2019-02-05	2019-02-07	Fractured Left Hip Due To Slip And Fall On Ice	9
4093	2019-05-26	2019-05-28	Pain In Abdomen Left Side	27
4093	2019-01-21	2019-01-22	Paranoid Schizophrenia	18
4094	2019-01-10	2019-01-13	Left Side CVA	5
4095	2018-11-03	2018-11-04	Rheumataoid Arthritis	13
4096	2019-04-28	2019-04-29	Head Injury - Closed	15
4097	2018-07-09	2018-07-12	L4-Lf Spinal Fusion	5
4101	2018-06-21	2018-06-24	Turp	21
4103	2019-04-04	2019-04-08	Cholelithiasis	4
4104	2018-08-01	2018-08-06	Lwr Right Quad Pain That Radiates Through Abdomen	9
4107	2019-01-08	2019-01-17	Vsa Cardiac Arrest	11
4107	2018-10-26	2018-11-02	Myocardial Infarction	26
4108	2019-02-14	2019-02-19	Cystic Fibrosis	24
4109	2018-07-21	2018-07-30	Unable To Void.	21
4110	2018-08-17	2018-08-24	Myocardial Infarction	11
4110	2019-01-23	2019-01-29	Aortic Stenosis	2
4111	2018-11-02	2018-11-10	Congestive Heart Failure	1
4112	2018-12-30	2019-01-03	Renal Calculi	4
4112	2018-12-02	2018-12-06	Cervical Spinal Tumor	5
4113	2018-06-12	2018-06-12	Hypertension	4
4113	2019-05-05	2019-05-13	Appendicitis	10
4114	2019-04-10	2019-04-13	Pregnancy	18
4115	2019-01-06	2019-01-10	Congestive Heart Failure	26
4115	2018-09-19	2018-09-20	Fractured Right Humeral Head	24
4116	2019-01-17	2019-01-21	Fractured Left Hip	1
4116	2018-10-01	2018-10-03	MVA HI	9
4118	2018-10-19	2018-10-21	Fractured Femur	25
4120	2018-07-23	2018-07-23	Labour	13
4120	2018-09-19	2018-09-28	Turp(Transurethro Resection Of The Prostate Gland)	23
4121	2019-04-04	2019-04-11	Congestive Heart Failure	4
4121	2018-11-11	2018-11-19	Congestive Heart Failure	4
4122	2018-07-05	2018-07-11	Enlarged Bunion On Left Primary Metaarsal	26
4123	2019-05-22	2019-05-30	Pyloric Obstruction	21
4124	2019-01-28	2019-01-29	Cervical Spinal Tumor	22
4125	2018-07-01	2018-07-08	Obsessive - Compulsive Order	15
4125	2019-03-12	2019-03-14	Right Knee Replacement	6
4126	2018-12-02	2018-12-08	Chest Pain	20
4126	2019-03-15	2019-03-16	Bipolar Affective Disorder	8
4127	2019-04-03	2019-04-12	Cva-Leftside	13
4127	2019-02-09	2019-02-16	Atrial Arrhythmias	10
4128	2018-11-02	2018-11-10	Tuberculosis	24
4128	2018-09-04	2018-09-08	Renal Calculi	1
4130	2018-10-15	2018-10-19	CHF (Congestive Heart Failure)	8
4130	2018-09-21	2018-09-21	Hypertrophy Of Prostate Gland	19
4131	2018-09-06	2018-09-13	Flanking Abdominal Pain	21
4131	2019-02-02	2019-02-10	Hysterectomy	17
4133	2019-03-08	2019-03-15	Full Term Delivery	9
4133	2019-02-21	2019-02-28	Atrial Arrhythmias	16
4134	2018-07-24	2018-07-31	Upper Respetory Infection	8
4136	2019-05-13	2019-05-18	Acute Thrombophiebitis R Leg	23
4136	2018-07-06	2018-07-14	Full Term Delivery	20
4137	2018-07-08	2018-07-11	Quarian Cyst	15
4138	2019-06-02	1971-01-05	Knee Replacement	23
4140	2018-09-12	2018-09-16	Spinal Cord Injury	24
4141	2019-01-10	2019-01-18	Possible Renal Calculi	2
4142	2018-06-30	2018-07-03	Zenkers Diverticulitis	13
4142	2018-06-06	2018-06-10	Cerebral Aneurysm	21
4143	2019-01-05	2019-01-07	Chronic Obstructive Pulmonary Disease	25
4144	2019-04-16	2019-04-20	Chronic Schizophrenia,Psychosis,Paranoia	27
4145	2019-05-02	2019-05-10	Peptic Ulcer Disease	16
4145	2019-03-05	2019-03-09	Prostate Cancer	20
4147	2019-03-25	2019-04-03	Fractured Left Hip Due To Slip And Fall On Ice	14
4148	2018-10-20	2018-10-22	Asthma	2
4148	2019-02-27	2019-03-03	Hallecinations	2
4149	2018-10-24	2018-11-02	Anterior MI	6
4150	2018-07-10	2018-07-13	Crohns Disease	21
4153	2018-06-22	2018-06-25	Fractured Femur	20
4153	2018-11-09	2018-11-11	Tuberculosis	21
4154	2018-11-18	2018-11-25	Cystic Fibrosis	22
4154	2018-08-16	2018-08-19	Fractured Femur	4
4155	2018-09-28	2018-10-01	Head Injury M.V.A.	2
4156	2019-01-28	2019-02-01	Dilation + Evacuation	10
4157	2018-06-22	2018-07-01	Cholecystectomy	26
4157	2018-09-23	2018-09-30	Fractured Femur	4
4159	2019-03-27	2019-03-30	Lung Cancer	22
4160	2018-09-11	2018-09-12	Abdominal Perineal Resection	22
4162	2019-03-04	2019-03-12	Appendicitis	1
4163	2018-06-14	2018-06-23	Breast Cancer	15
4163	2019-04-29	2019-05-01	Orthopnea	4
4164	2019-02-21	2019-02-27	Pregnancy	17
4165	2018-10-06	2018-10-06	3rd Degree Burn	23
4166	2018-12-01	2018-12-06	Myocardial Infarction	10
4166	2019-05-04	2019-05-05	Diabetes Mellitus	1
4167	2018-11-08	2018-11-10	Bronchiolitis	24
4169	2019-02-04	2019-02-08	Cytutus	1
4169	2019-05-03	2019-05-08	Atrial Fibrillation R/O MI	5
4170	2019-04-01	2019-04-05	Stroke	21
4170	2018-12-02	2018-12-02	Chronic Obstructive Pulmonary Disease	3
4171	2019-04-08	2019-04-08	Multiple Sclerosis	17
4172	2019-04-24	2019-04-25	Exploratory, Orthoscopic - Knee	3
4172	2019-04-17	2019-04-24	Pneumonia	8
4173	2019-01-11	2019-01-14	Severe Substernal Pain Radiating To Left Shoulder	25
4174	2018-07-29	2018-08-04	Congestive Heart Failure	11
4175	2019-01-05	2019-01-07	Anterior Myocardial Infraction	7
4175	2019-01-28	2019-02-06	Fractured Hip (Right)	11
4176	2018-11-28	2018-12-05	Breast Cancer	10
4176	2019-03-08	2019-03-14	Myocardial Infarction	23
4179	2018-07-15	2018-07-17	Schizophrenia	1
4180	2019-03-22	2019-03-22	Hypertrophy Of Prostate Gland	13
4180	2018-09-02	2018-09-03	Pregnancy	19
4181	2018-10-10	2018-10-17	Paranoid Schizophrenia	7
4183	2018-09-02	2018-09-11	Bipolar Disorder	27
4184	2018-08-30	2018-09-03	Gastoric Ulcer	10
4186	2018-11-26	2018-11-28	CHF Congestive Heart Failure	16
4186	2019-04-23	2019-04-24	MI	25
4187	2019-01-13	2019-01-14	Crohns	13
4188	2018-07-02	2018-07-03	Schizophrenic Disorder	4
4188	2018-11-26	2018-12-01	40 Weeks Pregnant	18
4189	2018-12-08	2018-12-13	Appendicitis	27
4189	2019-04-26	2019-05-04	Congestive Heart Failure	1
4190	2018-11-13	2018-11-17	Broken Left Femur Compound Fracture	25
4191	2018-12-10	2018-12-15	Pain In Abdomen Left Side	8
4191	2018-07-01	2018-07-07	Acute Renal Failure	10
4192	2018-10-02	2018-10-08	Fracture Right Distal Radius (Colles Fracture)	21
4193	2019-03-06	2019-03-14	Gunshot Wound To Head	6
4193	2018-09-03	2018-09-12	Manic Depression	3
4194	2018-12-06	2018-12-10	Decubitus Ulcer	1
4194	2018-12-23	2018-12-24	Really Sick	22
4195	2019-03-15	2019-03-15	Obsessive - Compulsive Disorder	2
4195	2018-09-11	2018-09-15	Myocardial Infarction	16
4196	2018-10-14	2018-10-16	Paranoid Schizophrenia	20
4198	2018-12-21	2018-12-24	Child Birth	19
4199	2018-10-03	2018-10-09	Pneumothorax	4
4199	2018-10-09	2018-10-13	Pyelonephritis	23
4201	2018-08-01	2018-08-07	1St Stage Labour	16
4201	2019-03-27	2019-03-29	Diabetes Mellitus	22
4203	2019-03-18	2019-03-24	Acute Bronchitis	14
4203	2019-04-11	2019-04-17	Colorectal Cancer	8
4204	2018-07-17	2018-07-26	Cytutus	1
4205	2018-08-08	2018-08-17	Myocardial Infarction	8
4205	2018-10-24	2018-10-26	Really Sick	9
4206	2019-02-24	2019-02-28	Profound Depression	11
4207	2019-02-03	2019-02-05	Gunshot Wound To Head	9
4208	2018-09-30	2018-10-06	Pregnant	5
4209	2019-05-07	2019-05-11	Hypertension	6
4209	2019-05-20	2019-05-24	Poisoning	19
4211	2018-11-01	2018-11-05	Anorexia Nervosa	15
4211	2018-12-23	2018-12-24	Bipolar Affective Disorder	26
4215	2018-06-17	2018-06-21	Respiratory Failure	24
4216	2018-09-14	2018-09-23	Poisoning	14
4216	2018-09-16	2018-09-20	Pneumonia	1
4217	2018-11-12	2018-11-13	Chestpain Not Yet Diagnosed	26
4219	2019-05-06	2019-05-15	COPD	1
4220	2018-07-04	2018-07-05	Chronic Obtrusive Pulmonary Disease	26
4220	2019-03-15	2019-03-24	L. Calf Pain	3
4222	2019-04-05	2019-04-13	Pulmonay Embolism	8
4223	2018-06-06	2018-06-07	Respiratory Failure	20
4223	2019-01-24	2019-01-25	Fractured Left Hip Due To Slip And Fall On Ice	10
4224	2019-04-25	2019-04-30	Back Injury	27
4224	2019-01-27	2019-02-01	Asthma	27
4225	2019-04-14	2019-04-18	Osteomyslitis - Right Hip	26
4226	2018-11-02	2018-11-03	Broken Hip	27
4227	2019-03-19	2019-03-21	Appendicitis	4
4228	2018-07-20	2018-07-29	Diabetes Mellitus	11
4228	2018-06-24	2018-06-29	Ruptured Appendicitis	14
4229	2019-03-30	2019-03-31	Child Birth	16
4230	2018-08-13	2018-08-15	Abdominal Pain	26
4233	2019-03-16	2019-03-16	Appendicitis	7
4235	2018-06-11	2018-06-18	Abdominal Pain	23
4235	2018-09-06	2018-09-08	Broken Hip	11
4236	2019-02-06	2019-02-11	Breast Cancer	24
4236	2018-08-20	2018-08-20	M.V.A	14
4237	2019-05-01	2019-05-03	Pneumonia	5
4238	2018-07-04	2018-07-10	Osteoarthritis	11
4238	2019-05-03	2019-05-05	Prostatectomy	1
4240	2019-04-09	2019-04-14	Lower Quadrant Pain	1
4241	2019-05-02	2019-05-05	Fractured \\"L\\" Femur	11
4241	2018-11-02	2018-11-06	L4-Lf Spinal Fusion	1
4242	2019-02-24	2019-03-03	Subdural Hematoma	3
4242	2018-08-21	2018-08-27	2nd Degree Burn Of Face	12
4243	2018-09-24	2018-09-30	Basal Skull Fracture	27
4246	2018-12-11	2018-12-17	Congestive Heart Failure	22
4247	2018-07-06	2018-07-10	Cardiovascular Disease	2
4247	2019-02-27	2019-02-27	Obstructive Nephropathy	13
4248	2018-11-25	2018-12-01	Ulcerative Colitis	2
4248	2019-04-19	2019-04-25	Complete Unilateral Cleft Lip & Cleft Palate	9
4249	2018-06-11	2018-06-17	Bipolar Affective Disorder	18
4249	2018-12-20	2018-12-25	Hunting Disease	21
4251	2019-05-08	2019-05-17	Hypoglycemia	21
4251	2018-10-26	2018-11-02	Orthopnea	17
4252	2018-07-12	2018-07-16	MVA HI	4
4253	2018-06-13	2018-06-13	Appendicitis	10
4254	2019-05-12	2019-05-14	Choledocholithiasis	7
4255	2018-12-28	2019-01-05	Congestive Heart Failure	7
4256	2018-07-24	2018-07-31	Obsessive - Compulsive Order	17
4256	2019-01-29	2019-02-06	Dementia	8
4257	2018-08-16	2018-08-23	Fibromyalgia	7
4259	2019-01-14	2019-01-21	Dilation + Evacuation	7
4260	2019-03-29	2019-04-07	Asthma	16
4260	2018-10-16	2018-10-20	Hypoglycemia	15
4262	2019-04-14	2019-04-18	Atrial Fibrillation R/O MI	19
4263	2019-01-15	2019-01-16	Melanoma, Cancer	22
4264	2019-03-16	2019-03-25	Fractured Tibia	27
4264	2018-09-17	2018-09-24	Angina	22
4265	2018-07-17	2018-07-25	Cerebral Aneurysm	12
4267	2018-12-30	2018-12-30	3rd Degree Burn	5
4268	2018-11-01	2018-11-01	Atrial Fibrillation R/O MI	20
4268	2018-07-06	2018-07-14	Cancer Of The Descending Colon	4
4269	2019-01-23	2019-02-01	Pain In Abdomen Left Side	7
4270	2018-09-23	2018-09-28	Left Lobar Pneumonia	6
4270	2018-07-08	2018-07-11	Appendicitis	22
4271	2018-09-03	2018-09-08	Chest Pain	12
4272	2019-01-08	2019-01-11	Congestive Heart Failure	10
4273	2018-08-24	2018-08-27	Uterine Fibroid	2
4274	2019-06-01	1971-01-05	Pneumonia	25
4275	2019-02-16	2019-02-24	Emphysema	15
4276	2019-01-10	2019-01-19	Severe Narrowing Of Pyloric Channel	6
4276	2018-11-20	2018-11-29	Cva-Leftside	22
4277	2019-03-09	2019-03-14	Fracture Of Left Femur	3
4278	2019-01-21	2019-01-24	Head Injury M.V.A.	10
4278	2018-09-30	2018-10-07	Choledocholithiasis	8
4279	2019-05-05	2019-05-13	Dehydradion, Vomiting	20
4279	2018-06-16	2018-06-22	Myocardial Infarction	26
4280	2018-11-27	2018-11-30	Paranoid Schizophrenic	9
4281	2019-03-23	2019-03-27	Chest Pain With Sob	15
4281	2019-02-17	2019-02-25	Chronic Bronchitis	14
4282	2018-09-30	2018-10-05	Fractured Hip	27
4282	2019-02-27	2019-03-06	Chestpain Not Yet Diagnosed	27
4283	2019-02-18	2019-02-27	Second & Third Degree Burns To Right Arm/Both Legs	17
4283	2018-11-15	2018-11-23	Complete Unilateral Cleft Lip & Cleft Palate	20
4284	2019-02-05	2019-02-13	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	20
4285	2019-03-13	2019-03-22	Ovarian Dermoid-Cyct	6
4286	2019-05-13	2019-05-22	Intestinal Obstruction Hirschsprungs Disease	23
4286	2019-05-08	2019-05-17	Congestive Heart Failure	20
4287	2018-12-05	2018-12-14	Scatica	4
4289	2018-12-08	2018-12-12	Acute Lower Abdominal Right-Sided Pain	17
4289	2018-07-26	2018-08-01	Right Hip Replacement	10
4291	2019-05-06	2019-05-14	Unstable Angina	5
4292	2018-07-12	2018-07-13	Complete Unilateral Cleft Lip 7 Cleft Palate	26
4292	2019-04-13	2019-04-18	Fractured Left Hip Due To Slip And Fall On Ice	10
4294	2018-10-03	2018-10-07	Left Lobar Pneumonia	18
4294	2019-02-25	2019-03-01	Fractured Fib And Tib	19
4295	2019-02-09	2019-02-18	Hypertrophy Of Prostate Gland	13
4296	2018-07-09	2018-07-13	Chest Infection	10
4296	2019-03-31	2019-04-07	Ovarian Cancer	3
4297	2018-10-30	2018-11-08	Ca. Of Blatter	9
4297	2018-10-19	2018-10-28	Pregnancy	19
4298	2018-11-23	2018-11-28	Pyclonephritis	20
4298	2019-02-27	2019-03-04	Subdural Hematoma	19
4299	2018-12-09	2018-12-18	Repair Stab Wound	10
4301	2018-08-17	2018-08-23	Myocardial Infarction	23
4303	2018-08-01	2018-08-06	Pregnant	23
4304	2018-06-23	2018-06-28	Cholenithiasis	24
4305	2019-01-16	2019-01-18	Fracture Right Distal Radius (Colles Fracture)	7
4306	2019-04-19	2019-04-20	Right Hip Replacement	20
4310	2018-10-12	2018-10-15	Dilation + Evacuation	11
4311	2018-08-01	2018-08-05	Pulmonay Embolism	11
4312	2019-04-19	2019-04-24	Spinal Cord Injury	18
4312	2018-11-26	2018-12-05	Congestive Heart Failure	2
4314	2019-03-19	2019-03-25	Atrial Fibrillation R/O MI	26
4314	2018-06-21	2018-06-24	Left Shoulder Rotator Cuff Repair	11
4315	2018-08-26	2018-08-29	Unable To Void.	14
4315	2019-02-06	2019-02-11	Pregnancy	17
4317	2019-03-24	2019-03-31	Anterior Myocardial Infraction	8
4318	2019-06-05	1971-01-05	Sepis	17
4318	2019-02-04	2019-02-09	Angina	2
4320	2018-09-30	2018-10-02	Fractured L. Tibia	7
4322	2019-05-25	2019-05-30	Pulmonay Embolism	19
4322	2018-12-21	2018-12-28	Spinal Infection	12
4326	2018-08-04	2018-08-10	Congestive Heart Failure	15
4326	2018-09-27	2018-10-04	Really Sick	27
4330	2018-07-04	2018-07-05	Chronic Obstructive Pulmonary Disease	2
4331	2019-02-04	2019-02-10	Choledocholithiasis	21
4331	2019-03-22	2019-03-24	Chest Pain	24
4332	2018-10-21	2018-10-21	Headache	17
4332	2018-10-04	2018-10-08	Fractured Femur	3
4334	2018-10-14	2018-10-16	Ovarian Cyst	25
4335	2018-09-15	2018-09-15	Pregnancy	14
4336	2018-09-24	2018-10-02	Sepis	24
4336	2018-06-17	2018-06-19	Asthma	4
4337	2018-11-10	2018-11-11	Chronic Obstructive Pulmonary Disease	13
4337	2019-02-11	2019-02-20	Myocardial Infarction	4
4338	2018-07-30	2018-08-07	Injury Lt Patella Inferior	3
4338	2018-12-15	2018-12-15	Ruptured Appendicitis	1
4339	2018-12-03	2018-12-12	Diabetes Mellitus	25
4339	2019-01-02	2019-01-07	Rll Pneumonia	15
4340	2018-09-10	2018-09-19	Appendicitis	8
4340	2019-01-16	2019-01-24	Endometriosis	18
4341	2019-06-05	1971-01-05	Child Birth	26
4343	2018-11-07	2018-11-12	Asthma	15
4343	2019-04-25	2019-05-04	Appendicitis	15
4344	2018-08-02	2018-08-10	Cholelithiasis	10
4344	2019-02-03	2019-02-06	Turp(Transurethro Resection Of The Prostate Gland)	27
4345	2019-04-03	2019-04-12	Acute Otitis Media	4
4345	2019-01-10	2019-01-13	Chest Pain	1
4346	2018-11-15	2018-11-24	Fractured Femur	4
4348	2018-09-16	2018-09-19	Anterior Myocardial Infraction	19
4348	2019-04-11	2019-04-15	Fracture To Left Femur	23
4349	2019-02-09	2019-02-17	Pneumonia	11
4349	2019-05-08	2019-05-15	Fever N.Y.D.	17
4350	2019-01-28	2019-02-03	Prostate Cancer	19
4350	2018-11-30	2018-12-04	Decubitus Ulcer	17
4351	2018-11-05	2018-11-08	Post Partum Hemmorage	21
4352	2018-07-02	2018-07-10	Deep Vein Thrombosis	20
4353	2018-08-04	2018-08-04	Exploratory, Orthoscopic - Knee	18
4353	2018-09-03	2018-09-08	Enlarged Bunion On Left Primary Metaarsal	4
4355	2018-12-30	2019-01-02	Cytutus	22
4356	2018-07-23	2018-07-31	Rll Pneumonia	3
4357	2018-10-04	2018-10-06	Dementia	13
4357	2019-03-31	2019-04-03	Fibroids	15
4358	2019-01-26	2019-02-01	Pregnancy	26
4359	2019-01-11	2019-01-17	Gastoric Ulcer	4
4360	2019-02-14	2019-02-22	Chest Pain With Sob	15
4361	2018-09-03	2018-09-04	Pulmonay Embolism	24
4362	2019-04-21	2019-04-22	Infertility, Secondary	9
4362	2018-06-30	2018-07-09	Complete Unilateral Cleft Lip & Cleft Palate	20
4363	2019-01-07	2019-01-10	Congestive Heart Failure	26
4363	2018-12-18	2018-12-21	Congestive Heart Failure	5
4364	2019-03-04	2019-03-06	Gunshot Wound To Head	25
4365	2019-02-21	2019-02-27	Atrial Arrhythmias	6
4366	2019-06-01	1971-01-05	Choledocholithiasis	21
4369	2018-07-15	2018-07-22	Post Partum Hemmorage	4
4369	2018-12-23	2018-12-23	Appendicitis	18
4370	2018-10-07	2018-10-12	Fractured Femur	2
4370	2018-11-10	2018-11-10	Fractured Hip (Right)	8
4371	2019-02-18	2019-02-26	Pyloric Obstruction	9
4372	2018-10-09	2018-10-17	Spinal Cord Injury	20
4372	2019-05-25	2019-06-02	C-Section Delivery Day 4	12
4373	2018-08-21	2018-08-28	Osteomyslitis - Right Hip	12
4374	2019-01-07	2019-01-09	Cancer Of The Descending Colon	1
4376	2019-01-05	2019-01-10	Turp	2
4376	2018-07-14	2018-07-22	Pulmonay Embolism	11
4377	2018-10-10	2018-10-16	Chest Pain	13
4378	2019-06-05	1971-01-05	Congestive Heart Failure	8
4378	2019-02-16	2019-02-21	Fractured Tibia	13
4382	2018-07-18	2018-07-27	Parkinsons Disease	16
4383	2018-10-15	2018-10-20	Ca R Breast	22
4384	2019-04-12	2019-04-16	Fracture Of Left Femur	26
4384	2019-04-11	2019-04-13	Schizophrenia Paranoid Delusions	15
4386	2018-10-06	2018-10-08	Rt. Nephrectomy	7
4386	2018-12-22	2018-12-26	Fractured Hip	25
4389	2018-11-06	2018-11-08	Obsessive - Compulsive Disorder	21
4390	2019-04-01	2019-04-08	Severe Substernal Pain Radiating To Left Shoulder	18
4391	2018-11-04	2018-11-07	Pregnancy	13
4392	2019-01-04	2019-01-11	Gastoric Ulcer	18
4393	2018-08-26	2018-08-28	CHF	2
4395	2018-07-13	2018-07-19	Post Partum Hemmorage	16
4396	2019-05-30	2019-06-05	Cholecystectomy	3
4396	2018-10-07	2018-10-15	Depression	27
4399	2018-08-23	2018-08-29	Gallbladder Removed	8
4400	2019-01-22	2019-01-26	Exploratory, Orthoscopic - Knee	12
4401	2018-07-11	2018-07-13	Dementia	19
4401	2019-04-02	2019-04-08	Cholecystectomy	19
4402	2018-09-28	2018-09-28	Congestive Heart Failure	3
4404	2018-09-25	2018-09-30	Cholecystectomy	11
4405	2019-02-25	2019-02-28	Exploratory, Orthoscopic - Knee	21
4406	2018-09-08	2018-09-11	Aortic Stenosis	3
4406	2019-01-10	2019-01-11	Chronic Obtrusive Pulmonary Disease	15
4407	2018-12-26	2018-12-30	Rul Pneumonia	26
4410	2018-06-11	2018-06-20	Coronary Artery Disease	20
4414	2018-11-22	2018-11-30	CHF	17
4415	2019-02-14	2019-02-18	Right Hip Replacement	7
4416	2019-04-04	2019-04-12	Parkinsons Disease	7
4418	2019-04-04	2019-04-10	Hypertrophy Of Prostate Gland	27
4418	2018-12-08	2018-12-09	Pregnancy	7
4419	2018-09-08	2018-09-12	Intracerebral Bleed	15
4420	2019-03-12	2019-03-21	Fractured Left Hip	20
4421	2018-08-19	2018-08-23	Broken Left Femur Compound Fracture	8
4421	2019-04-23	2019-05-02	Bipolar Affective Disorder	19
4422	2018-06-11	2018-06-19	Bipolar Disorder	2
4424	2019-04-23	2019-04-24	Anterior Myocardial Infraction	19
4424	2018-07-30	2018-08-01	Infection	7
4425	2018-07-27	2018-08-03	Chest Pain With Sob	17
4426	2018-07-22	2018-07-31	Total Left Hip Replacement	21
4426	2018-06-18	2018-06-23	Appendicitis	1
4427	2018-12-07	2018-12-10	Tonsillitis	8
4429	2019-01-01	2019-01-10	Repair Stab Wound	18
4432	2019-01-23	2019-01-29	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	4
4433	2019-05-04	2019-05-07	Osteomyslitis - Right Hip	12
4435	2018-08-11	2018-08-14	Deep Vein Thrombosis	19
4435	2019-05-11	2019-05-11	Cleft Palate And Complete Unilateral Cleft Up	21
4437	2018-12-06	2018-12-13	Lower Quadrant Pain	10
4439	2018-12-10	2018-12-13	Cerebellar Brain Tumor Metastasis	5
4439	2018-10-12	2018-10-19	CHF (Congestive Heart Failure)	25
4440	2018-06-23	2018-06-24	Pregnancy	17
4441	2018-06-22	2018-06-24	Gall Stones	15
4442	2018-11-11	2018-11-17	Syncope NYD	14
4444	2018-12-26	2019-01-03	Fractured Right Femur (Compound)	17
4444	2018-08-03	2018-08-08	Hysterectomy	2
4445	2018-12-07	2018-12-11	Melanoma, Cancer	7
4446	2018-09-20	2018-09-25	Syncope NYD	7
4447	2019-06-01	1971-01-05	Severe Pain + Tenderness In Left Calf	12
4448	2018-06-23	2018-06-29	Total Left Hip Replacement	9
4449	2018-11-05	2018-11-07	Asthma	2
4450	2018-08-28	2018-09-06	Emphysema	7
4450	2018-11-18	2018-11-23	Broken Rt Femur	17
4453	2019-05-11	2019-05-18	Tuberculosis	4
4455	2018-07-13	2018-07-21	Congestive Heart Failure	17
4456	2018-10-07	2018-10-16	Appendicitis	12
4457	2019-05-10	2019-05-19	Respiratory Failure	2
4458	2018-11-21	2018-11-29	Peripheral Edema	9
4458	2019-05-10	2019-05-10	Pregnant	13
4460	2019-05-12	2019-05-17	3rd Degree Burn To Face	24
4460	2019-03-05	2019-03-06	Right Hip Replacement	14
4463	2018-06-09	2018-06-15	Cerebral Aneurysm Rupture	24
4464	2018-11-02	2018-11-10	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	26
4466	2019-02-14	2019-02-15	Chest Infection	4
4468	2019-03-12	2019-03-13	Anemia	16
4468	2019-04-02	2019-04-09	Bipolar Disorder	11
4470	2019-03-18	2019-03-19	Spinal Cord Injury	9
4471	2019-04-29	2019-05-08	Chestpain Not Yet Diagnosed	21
4472	2019-03-01	2019-03-03	Vsa Cardiac Arrest	27
4473	2018-12-07	2018-12-12	Severe Substernal Pain Radiating To Left Shoulder	26
4474	2018-09-19	2018-09-20	Severe Rlq Pain	18
4475	2018-11-09	2018-11-14	Myocardial Infarction	14
4476	2018-08-28	2018-09-06	Cerebral Vascular Aneurys,	27
4477	2019-02-13	2019-02-15	Pregnancy	17
4477	2018-10-02	2018-10-06	Acute Bronchitis	20
4478	2019-03-20	2019-03-26	Hypertrophy Of Prostate Gland	13
4479	2018-11-28	2018-11-30	Intracerebral Bleed	19
4479	2018-07-16	2018-07-17	Acute Lower Abdominal Right-Sided Pain	24
4480	2019-02-22	2019-02-26	Dehydration	19
4482	2019-02-23	2019-03-01	Pyclonephritis	11
4482	2018-11-27	2018-12-03	CHF (Congestive Heart Failure)	27
4483	2019-02-19	2019-02-19	Congestive Heart Failure	16
4483	2018-07-31	2018-08-08	Myocardial Infarction	6
4484	2018-08-15	2018-08-19	Pregnant	9
4485	2019-01-07	2019-01-11	Diabetes Mellitus	27
4487	2018-10-12	2018-10-15	Appendicitis	25
4487	2019-03-27	2019-03-31	Vsa Cardiac Arrest	7
4489	2018-12-26	2019-01-04	2nd Degree Burn Of Face	7
4489	2018-06-08	2018-06-12	Lower Quadrant Pain	20
4490	2018-10-04	2018-10-13	Cervical Spinal Tumor	20
4490	2019-01-24	2019-01-29	Angina Pectoris	23
4492	2018-10-15	2018-10-19	Ca. Of Blatter	10
4493	2018-07-29	2018-07-30	Dehydration	19
4494	2018-09-02	2018-09-10	Ineffective Breathin Pattern R/T Fluid Accumulatio	5
4494	2019-03-07	2019-03-07	Repair Stab Wound	27
4495	2019-01-11	2019-01-17	Tonsillitis	12
4497	2018-11-13	2018-11-22	Dislocated R/Shoulder Broke L/Leg R/T Car Acc	24
4499	2019-02-18	2019-02-24	3rd Degree Burn To Face	11
4499	2019-03-17	2019-03-25	Undiagnosed Chest Pain	18
4500	2018-07-19	2018-07-20	Bladder Tomour	11
4500	2019-01-31	2019-02-05	Crohns Disease	12
4501	2018-07-21	2018-07-22	Myocardial Infarction	7
4501	2018-07-09	2018-07-09	C-Section Delivery Day 4	27
4502	2019-03-05	2019-03-14	2nd & 3rd Degree Burns To Right Arm / Both Legs	18
4503	2018-07-16	2018-07-23	CHF Pulmonary Edema	19
4503	2019-03-10	2019-03-16	Diabetes Mellitus	17
4507	2018-12-07	2018-12-09	CHF	23
4507	2019-01-05	2019-01-10	Infertility, Secondary	16
4508	2018-11-18	2018-11-23	Right Hip Replacement	14
4509	2019-04-14	2019-04-22	Unstable Angina	4
4509	2019-06-01	2019-06-05	Melanoma, Cancer	26
4510	2018-10-30	2018-11-07	Pregnancy	8
4511	2019-03-11	2019-03-11	Prostatectomy	25
4511	2018-07-22	2018-07-31	Chest Pain With Sob	15
4512	2018-10-02	2018-10-02	Fibromyalgia	10
4513	2018-06-25	2018-07-04	Depression	15
4513	2018-08-22	2018-08-25	COPD	1
4514	2018-07-26	2018-08-03	Stroke	3
4515	2019-02-10	2019-02-19	Left Creebral Vascular Accident	26
4515	2019-01-01	2019-01-10	Parkinsons, Rheumatoid Arthritis, Total Hip Replac	24
4516	2019-04-05	2019-04-11	Lymphona	1
4516	2018-09-28	2018-10-07	Hyperemesis	13
4520	2018-07-29	2018-07-31	Congestive Heart Failure	21
4520	2018-08-19	2018-08-26	Tuberculosis	25
4521	2018-07-21	2018-07-22	Lower Quadrant Pain	5
4523	2019-05-14	2019-05-20	CHF Congestive Heart Failure	1
4524	2018-07-19	2018-07-28	Interstitial, Pulmonary Edema	7
4525	2018-12-19	2018-12-25	Congestive Heart Failure	9
4525	2019-03-09	2019-03-13	Intracerebral Bleed	1
4527	2018-11-24	2018-11-30	Active Labour	22
4527	2018-09-08	2018-09-15	Turp(Transurethro Resection Of The Prostate Gland)	14
4528	2019-01-17	2019-01-18	Cholecystectomy	14
4528	2019-03-03	2019-03-06	Profound Depression	9
4529	2019-04-01	2019-04-07	Hyperemesis	16
4529	2018-08-06	2018-08-14	Deep Vein Thrombosis	10
\.


--
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctors (doctor_id, first_name, last_name, specialty) FROM stdin;
1	Claude	Walls	Internist
2	Joshua	Green	Cardiologist
3	Miriam	Tregre	General Surgeon
4	James	Russo	Obstetrician/Gynecologist
5	Scott	Hill	Gastroenterologist
6	Tasha	Phillips	Psychiatrist
7	Hazel	Patterson	Oncologist
8	Mickey	Duval	Pediatrician
9	Jon	Nelson	Neurologist
10	Monica	Singleton	Orthopaedic Surgeon
11	Douglas	Brooks	Respirologist
12	Flora	Moore	Cardiovascular Surgeon
13	Angelica	Noe	Nuclear Medicine
14	Tyrone	Smart	Gerontologist
15	Marie	Brinkman	Urologist
16	Irene	Brooks	Gastroenterologist
17	Mary	Walker	Nuclear Medicine
18	Bobbi	Estrada	Gerontologist
19	Stephanie	Cohen	Oncologist
20	Ralph	Wilson	General Surgeon
21	Lisa	Cuddy	Obstetrician/Gynecologist
22	Simon	Santiago	Cardiologist
23	Heather	Beck	Pediatrician
24	Jenny	Pulaski	Neurologist
25	Jeanette	Sites	Psychiatrist
26	Larry	Miller	Cardiovascular Surgeon
27	Donna	Greenwood	Respirologist
\.


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (patient_id, first_name, last_name, gender, birth_date, city, province_id, allergies, height, weight) FROM stdin;
2	Mickey	Baasha	M	1981-05-28	Dundas	ON	Sulfa	185	76
3	Jiji	Sharma	M	1957-09-05	Hamilton	ON	Penicillin	194	106
5	Charles	Wolfe	M	2017-11-19	Orillia	ON	Penicillin	47	10
6	Sue	Falcon	F	2017-09-30	Ajax	ON	Penicillin	43	5
9	Sister	Spitzer	F	1966-10-15	Toronto	ON	Penicillin	173	95
13	Daphne	Seabright	F	1954-11-18	Ancaster	ON	Codeine	146	77
14	Rick	Bennett	M	1977-01-27	Ancaster	ON	Penicillin	220	95
16	Woody	Bashir	M	1951-11-15	Barrie	ON	Penicillin	153	59
17	Tom	Halliwell	M	1987-08-01	Hamilton	ON	Ragweed	179	114
23	Beanie	Foster	F	1998-11-22	Ancaster	ON	Sulfa	154	75
24	Nino	Andrews	M	2001-04-21	Hamilton	ON	Peanuts	186	85
25	John	Farley	M	1956-09-12	Hamilton	ON	Gluten	213	104
29	Jim	Thomas	M	1986-02-17	Ottawa	ON	Penicillin	173	70
31	Sam	Threep	M	1982-06-16	Hamilton	ON	Sulpha	199	141
33	Roland	Edge	M	1967-09-25	Brantford	ON	Peanut Oil	199	134
36	James	Sullivan	M	1974-01-25	Delhi	ON	Topical Anaesthesia	139	68
38	Kelly	Hamilton	F	2010-09-29	Stoney Creek	ON	Penicillin	84	36
40	Temple	Russert	F	1953-05-11	Hamilton	ON	Hay Fever	166	102
42	Alice	Donovan	F	1949-06-27	Hamilton	ON	Penicillin	167	54
43	Stone	Cutting	M	2010-09-24	Hamilton	ON	Codeine	110	42
44	Neil	Allan	M	1975-02-02	Cambridge	ON	Penicillin	203	123
46	Phoebe	Bigelow	F	2002-03-17	Thunder Bay	ON	Penicillin	183	64
49	Phil	Chester	M	1990-09-25	Hamilton	ON	Penicillin	199	112
53	Bruno	Wolfe	M	1998-01-15	Ottawa	ON	Sulfa	145	70
57	Woody	Riviera	M	1990-07-10	Kingston	ON	Penicillin	192	109
58	Georgette	Gallagher	F	1975-12-06	Elmira	ON	Ragweed	170	93
60	Roland	Murphy	M	1974-05-19	Hamilton	ON	Sulfa Drugs	153	71
62	Shiro	Whale	M	1995-01-16	Hamilton	ON	Penicillin	195	117
63	Calleigh	Dean	F	2003-07-06	Hamilton	ON	Penicillin	175	56
65	Haiku	Alpert	M	2014-08-05	Paris	ON	Penicillin	69	22
66	Joseph	Justin	M	1953-10-21	Toronto	ON	Penicillin	140	71
67	Catherine	Minoru	F	1997-02-25	Victoria	BC	Sulphur	184	100
68	Danny	Hardbroom	M	1985-05-11	Niagara Falls	ON	Penicillin	183	105
72	Lily	Vargas	F	1923-05-02	Hamilton	ON	Codeine	195	102
73	Agatha	Sawyer	F	1991-02-21	Ancaster	ON	Penicillin	155	83
75	Kazuki	Ranall	M	1989-04-19	Hamilton	ON	Penicillin	139	63
77	Mike	Mars	M	2009-07-15	Hamilton	ON	Penicillin	123	46
78	Natsumi	Weasley	F	1950-08-19	Thunder Bay	ON	Valporic Acid	157	66
79	Reginald	Jackson	M	1966-08-06	Toronto	ON	Penicillin	182	101
82	Matt	Goergen	M	1990-03-26	Hamilton	ON	Penicillin	130	66
85	Phoebe	Bell	F	1975-05-06	Hepworth	ON	Micropore Tape	169	115
86	Ann	Blocksberg	F	1996-09-05	Hamilton	ON	Penicillin	162	101
90	Prue	Cleever	F	1983-09-19	Odessa	ON	Sulfa Drugs	149	119
91	Zoe	Miller	F	1951-12-12	Hamilton	ON	Honey	184	103
94	Hal	Riviera	M	1965-04-02	Kingston	ON	Tylenol	194	110
95	Gene	Edwards	M	1965-06-06	Hamilton	ON	Sulphate	199	96
97	Emmett	Erin	M	2011-04-27	Hamilton	ON	Penicillin	126	39
100	Olwyn	Chino	M	1978-09-03	Hamilton	ON	Tetracycline	146	70
103	Casanova	Dresden	M	1987-12-20	Milton	ON	Penicillin	150	74
107	Gillian	Dyson	F	2000-09-14	Hamilton	ON	Penicillin	164	86
108	Beanie	Nelson	M	1993-06-11	Beamsville	ON	Tylenol	162	69
110	Leyla	Dedede	F	1981-05-06	Hamilton	ON	Sulfa	166	99
114	Norman	Gregory	M	2009-06-15	Calgary	ON	Eggs	125	53
115	Briareos	Hayes	M	1918-12-12	Sarnia	ON	Morphine	189	138
118	Indiana	Kingsley	M	1978-04-17	Hamilton	ON	Penicillin	140	67
121	Salvatore	Neutron	M	1994-06-22	Burlington	ON	Codeine	186	106
122	Harry	Graf	M	1989-05-07	Hamilton	ON	Penicillin	134	68
124	Derek	Burbank	M	1988-02-14	Brantford	ON	Penicillin	203	125
125	Nea	Brocklehurst	F	2018-02-25	Hamilton	ON	Penicillin	38	5
126	King	Arden	M	1981-10-13	Cambridge	ON	Seafood	137	84
127	Lyan	Russo	M	2005-05-15	Toronto	ON	Tetracycline	180	65
128	Thomas	Fortune	M	1950-12-14	Carisle	ON	Cats	170	114
129	Priestley	DAmico	M	1961-11-05	Milton	ON	Penicillin	152	69
131	Thursday	Ernst	F	1962-11-02	Whitby	ON	Sulfa	172	53
134	Alexandra	Robins	F	1988-10-25	Burlington	ON	Sulfa	179	84
135	Vin	Smyth	M	1951-02-08	Hamilton	ON	Codeine	207	113
138	Fiz	Ozaki	F	1989-09-16	Hamilton	ON	Penicillin	180	91
140	Amy	Fuhrey	F	1979-11-11	Oshawa	ON	Penicillin	148	49
141	Lou	Vincent	M	2007-01-28	Selkirk	ON	Penicillin	143	56
142	Elvis	Maroni	M	1948-06-22	Hamilton	ON	Codeine	139	66
144	Reginald	Cavor	M	1986-07-24	Red Deer	AB	Penicillin	163	86
147	Agnes	Duckworth	F	1979-03-29	Ancaster	ON	Penicillin	178	76
148	Keziah	Brearly	F	1949-10-06	Hamilton	ON	Penicillin	163	102
149	David	Redfield	M	1982-01-20	Burlington	ON	Dairy Products	166	89
153	Jefferson	Hally	M	1954-10-22	Toronto	ON	Penicillin	155	89
154	Daneel	Carpenter	M	1977-06-13	Burlington	ON	Penicillin	185	101
155	Kazuki	Scarpetta	M	1989-07-13	Barrie	ON	Penicillin	170	78
158	Naoto	Clover	F	2009-08-29	Brantford	ON	Codeine	120	38
159	Noike	Maloney	F	1988-03-13	Hamilton	ON	Strawberries	147	60
160	Miranda	Delacour	F	1989-08-04	Stoney Creek	ON	Valporic Acid	163	88
161	Marty	Carrington	M	1950-03-25	Sarnia	ON	Feathers	145	68
166	Frank	Carrow	M	2016-08-16	Hamilton	ON	ASA	58	15
170	Wanda	Redfield	F	1989-04-12	Hamilton	ON	Eggs	169	111
171	Jack	Stewart	M	2010-10-10	Brantford	ON	Topical Anaesthesia	101	35
176	Brooke	Bowles	F	1968-06-17	Toronto	ON	Bee Stings	149	102
177	Irene	Casswell	F	2011-03-03	Burlington	ON	Codeine	117	25
178	David	Bustamonte	M	2010-02-24	Carisle	ON	Peanuts	103	37
179	Phil	Uzuki	M	1974-04-24	Saskatoon	SK	Penicillin	187	124
180	Michael	Henderson	M	2007-01-23	Paris	ON	Penicillin	131	57
181	Nancy	Costello	F	2000-04-13	Dundas	ON	Penicillin	183	93
184	Hoshi	Johnson	F	1978-03-27	Cambridge	ON	Penicillin	179	106
185	Didi	Del Lago	F	1975-09-09	Hargersville	ON	ASA	185	94
186	Doyle	Starr	M	1990-10-31	Burlington	ON	Wheat	191	121
187	Guido	Lonnegan	M	1950-12-07	Hamilton	ON	ASA	153	79
188	Cary	Henderson	M	1961-07-31	Hamilton	ON	Bee Stings	167	98
189	Joanna	Cooper	F	1972-01-15	Toronto	ON	Codeine	181	107
191	Freddy	Johnson	M	1990-02-22	Cambridge	ON	Peanuts	172	118
192	Christine	Lynch	F	1994-08-01	Brantford	ON	Sulphur	181	77
194	Manick	Fletcher	M	1997-01-08	Ancaster	ON	Strawberries	154	66
195	Elizabeth	Rivers	F	1950-11-23	Beamsville	ON	Penicillin	134	58
196	Elvis	Kennedy	M	1952-03-01	Hamilton	ON	Hay Fever	163	80
198	Janice	Renault	F	2004-12-10	Hamilton	ON	ASA	177	66
200	Sally	Smith	F	1951-03-18	Cambridge	ON	Penicillin	163	62
201	John	Pearle	M	1968-12-15	Bancroft	ON	Valporic Acid	200	138
202	Naoto	Stewart	F	1995-11-17	Sarnia	ON	Penicillin	189	93
208	Maleen	Bagshot	F	1993-06-01	Toronto	ON	Peanut Butter	135	53
209	Winnie	Hale	F	1994-04-19	Hamilton	ON	Penicillin	159	70
211	Carol	Wylie	F	1981-08-04	Toronto	ON	Penicillin	170	100
213	Henry	Kennedy	M	1990-07-12	Windsor	ON	Peanuts	136	59
214	Abi	Nesmith	F	1961-04-09	Hamilton	ON	Penicillin	146	59
215	Corrado	McGrew	M	1963-11-12	Fruitland	ON	Penicillin	139	79
217	Thomas	Duquesne	M	1992-04-26	Pickering	ON	Sulpha	158	69
219	Jon	Guarnaccia	M	1955-12-02	Burlington	ON	Morphine	189	123
220	Ben	Seldon	M	1953-08-28	Hamilton	ON	Almonds	143	58
221	Barbara	Dresden	F	2008-11-08	Brantford	ON	Codeine	113	41
222	Tom	Kowalski	M	1990-11-27	Dunton	ON	Tape	173	75
223	Andy	Kammerer	M	1992-02-20	Hamilton	ON	Penicillin	153	62
226	Silvio	Nayagan	M	1975-04-24	Barrie	ON	Penicillin	206	108
228	Daniel	Nelson	M	2000-11-06	Halifax	NS	Wheat	150	72
231	Lester	Maximoff	M	1972-07-24	Hamilton	ON	Penicillin	162	80
232	Maggie	Price	F	1958-02-14	Hamilton	ON	Penicillin	173	47
233	Kay	Baldwin	F	1951-12-25	Beamsville	ON	Codeine	164	64
234	Shion	Rivers	M	2018-02-15	Toronto	ON	Penicillin	38	5
236	Art	Fane	M	2012-03-31	Toronto	ON	Penicillin	88	26
238	Padma	Thomas	F	2008-06-29	Brockville	ON	Tylenol	132	39
240	Thomas	Matthews	M	1968-12-12	Highland	ON	Tetracycline	216	108
242	Fancy	Rush	F	1965-02-19	Hamilton	ON	Penicillin	156	68
243	Willie	Dingle	M	1955-01-31	Toronto	ON	ASA	154	84
244	Aniki	Leotardo	M	1986-11-04	Misty	AB	Penicillin	164	72
247	Pilar	Adler	F	1983-07-25	Hamilton	ON	Walnuts	181	95
251	Joseph	Halifax	M	2000-03-29	Hamilton	ON	Penicillin	180	103
252	Bruce	Brown	M	2015-09-19	Paris	ON	Codeine	74	18
254	Emil	McCrary	M	1965-04-04	Cambridge	ON	Sulfa Drugs	149	81
255	Dame	McCrary	F	2007-06-23	Hamilton	ON	Peanuts	135	43
257	Mitzy	Marquez	F	2001-05-01	Hamilton	ON	Codeine	195	71
258	Pilar	Languish	F	2000-08-02	Hamilton	ON	Codeine	155	49
259	Eloise	Evans	F	2005-05-06	Dundas	ON	Hay Fever	155	62
260	Mona	Brocklehurst	F	1964-11-12	Hamilton	ON	Codeine	175	112
264	Dante	Fuhrey	M	1986-08-31	Burlington	ON	Penicillin	184	104
265	Marvin	Dredd	M	1973-04-29	London	ON	Sulfa	199	91
268	Lora	Shannon	F	1998-11-12	Ancaster	ON	Salicylic Acid	163	105
269	Lindsay	Anderson	F	1963-04-07	Burlington	ON	Sulfa	164	73
270	Lily	Hinkley	F	1984-08-31	Stoney Creek	ON	Sulfa	181	103
272	Shirley	Cork	F	2008-01-01	Hamilton	ON	Walnuts	117	44
273	Lora	McNulty	F	1996-07-23	Hamilton	ON	Sulfa	133	73
274	Bruno	Kaiba	M	1956-01-26	Hamilton	ON	Codeine	177	117
276	Anna	Arroway	F	1993-02-16	Hamilton	ON	Penicillin	184	104
277	Vladimir	Hiatt	M	1960-03-04	Fruitland	ON	Penicillin	175	105
278	John	Papandrao	M	1989-08-03	Toronto	ON	Penicillin	182	108
279	Derek	Nappa	M	1965-09-02	Walnut Grove	AB	Bee Stings	163	66
280	Sandy	Crane	F	1990-05-17	North York	ON	Penicillin	148	72
266	Amy	Peth	F	1964-11-29	Whitby	ON	\N	171	70
287	Kima	Grissom	F	1972-09-17	Simcoe	ON	Penicillin	140	53
289	Roger	Sanders	M	1965-10-25	Dundas	ON	Peanuts	157	70
292	Serafina	Cooper	F	2013-07-25	Hamilton	ON	Sulfa	78	22
294	Malma	Burbage	F	2001-12-19	Burlington	ON	Codeine	185	68
295	Lyan	Heriot	M	1968-03-01	Hamilton	ON	Penicillin	143	80
296	Ted	Breaker	M	1959-07-11	Hamilton	ON	Tape	186	76
303	Agnes	Parkinson	F	1975-01-11	Hamilton	ON	Sulfa Drugs	158	47
304	Jeffrey	Pascoe	M	1957-05-12	Hamilton	ON	Sulfa	174	84
306	Matt	Franchetti	M	2007-09-25	Burlington	ON	Milk	157	60
307	Terence	Gaucho	M	1938-10-22	Hamilton	ON	Sulfa	192	102
310	Dirk	Lindley	M	1934-03-24	Burlington	ON	Sulfa	191	109
314	Otis	Munson	M	1949-12-05	Hamilton	ON	Sulfa	152	77
317	Stella	Downs	F	2014-05-11	Stoney Creek	ON	Micropore Tape	62	17
320	Morgan	Harkness	M	1968-08-17	Hamilton	ON	Penicillin	140	68
322	Phryne	Milbury	F	1998-03-13	Hamilton	ON	Penicillin	162	63
325	Ben	Stracci	M	1984-05-19	Port Hawkesbury	NS	Wheat	185	85
327	Jane	Mars	F	1984-10-11	Hamilton	ON	Sulfa	171	76
328	Bo	McCoy	M	2008-05-12	Hamilton	ON	Penicillin	126	47
329	Peter	Robert	M	1958-06-04	Hamilton	ON	Penicillin	162	85
332	Eva	Amanda	F	1997-05-02	Hamilton	ON	Sulfa	167	123
334	Lucky	Batt	M	1964-10-14	Hamilton	ON	Codeine	194	117
337	Frank	Johnson	M	1960-04-05	Hamilton	ON	Codeine	205	126
338	Jane	Trivino	F	1993-02-02	Fruitland	ON	Codeine	182	92
340	Temple	Starsmore	F	1957-07-29	Toronto	ON	Morphine	163	49
341	Tuppence	Russo	F	2005-04-09	Beamsville	ON	Codeine	152	57
342	Eloise	Craven	F	1973-01-10	Hamilton	ON	Codeine	161	57
346	Stephen	Hajime	M	1968-05-30	Burlington	ON	Sulfa Drugs	160	80
347	Andromeda	Steiger	F	2001-08-31	Burlington	ON	Penicillin Environmental	201	79
350	Elisa	Burbank	F	1978-03-29	Dunton	ON	Wheat	177	117
354	Belinda	Leone	F	1956-10-17	Hamilton	ON	Codeine	150	67
355	Mike	Hammer	M	1969-11-05	Kingston	ON	Penicillin	141	63
357	Vance	Weathers	M	2009-06-25	Hamilton	ON	Codeine	130	47
358	Mary	Knight	F	2013-06-03	Hamilton	ON	Penicillin	76	21
359	Joe	Snyder	M	1993-09-15	Hamilton	ON	Penicillin	224	130
360	Jadu	Principal	F	1970-03-28	Hamilton	ON	Iodine	167	94
364	Robin	McCabe	F	1999-02-09	Grimsby	ON	Codeine	173	65
369	Rocky	Kavanaugh	M	1948-10-25	Stoney Creek	ON	Sulfa Drugs	195	108
372	Don	Vallance	M	1966-08-26	Hamilton	ON	Penicillin	139	73
373	Valerie	Fraser	F	1951-11-18	Brantford	ON	Penicillin	139	74
375	Jack	Renault	M	1984-08-05	Hamilton	ON	Penicillin	142	69
376	Rose	Morris	F	1996-09-27	Grimsby	ON	Codeine	176	84
378	Henrieta	ORourke	F	1953-04-17	Carisle	ON	Sulfa	149	54
382	Truman	Lockwood	M	1980-10-24	Hamilton	ON	Almonds	168	72
383	Narcissa	Shore	F	1978-03-26	Hamilton	ON	Penicillin	133	72
386	Adam	Stillman	M	1951-01-03	Hamilton	ON	Shellfish	162	82
389	Abe	Osborne	M	1948-04-23	Hamilton	ON	Almonds	190	104
390	Violet	Arden	F	1982-03-02	Burlington	ON	ASA	146	50
392	Walter	Harkness	M	1980-03-19	Brampton	ON	Penicillin	179	65
393	Herr	Hinkley	M	1988-07-24	Hamilton	ON	ASA	194	98
395	James	Ichi	M	2002-04-08	Hamilton	ON	Sulfa	196	89
398	Goldie	Tennan	F	2004-12-17	Burlington	ON	Penicillin	160	59
399	Alice	Bennett	F	1989-02-06	Hamilton	ON	Codeine	162	91
401	Kate	Mason	F	1983-10-29	Bancroft	ON	Sulpha	175	67
402	Tony	Smith	M	1967-12-23	Sarnia	ON	Penicillin	214	95
403	Miles	McClure	M	1979-06-08	Hamilton	ON	Penicillin	210	116
406	Samantha	Dobbs	F	2016-10-27	Hamilton	ON	Penicillin	49	11
408	Victoire	Jonas	F	1973-08-22	Milton	ON	Penicillin	163	97
410	Lori	Warner	F	2003-06-24	Hamilton	ON	Penicillin	184	70
412	Simon	Dresden	M	1998-05-12	Stoney Creek	ON	Valporic Acid	220	125
413	Lonnie	Bulstrode	M	2013-08-25	Kingston	ON	Penicillin	80	27
414	Rob	Mackey	M	1958-09-05	Stoney Creek	ON	Tylenol	187	84
415	John	Hill	M	1987-11-30	Hamilton	ON	Sulfa	195	104
416	Janice	John	F	1954-10-08	Troy	ON	Sulfa	163	61
422	Penelope	Taggart	F	1951-06-18	Hamilton	ON	Penicillin	131	69
423	Vicki	Cenva	F	2000-06-24	Hamilton	ON	Penicillin	167	94
430	Grant	Halliwell	M	2004-07-30	Marcam	ON	Penicillin	175	73
431	Miles	Quince	M	1982-07-10	Hamilton	ON	Tylenol	166	127
432	Jeff	Powers	M	1984-10-02	Pickering	ON	ASA	150	83
433	Adam	Hecatonchires	M	1959-02-18	Hamilton	ON	Penicillin	162	75
435	Pamela	Belden	F	2011-11-06	Ancaster	ON	Hay Fever	108	31
438	Julie	Bonasera	F	1960-07-06	Burlington	ON	Penicillin	174	77
439	Licio	Lupertazzi	M	1999-11-14	Stoney Creek	ON	Penicillin	127	88
441	Winnie	Clock	F	2009-06-12	Barrie	ON	Penicillin	110	37
442	Mickey	Heath	M	1963-10-16	Brantford	ON	Penicillin	176	99
445	Wayne	Neutron	M	1987-04-11	Hamilton	ON	Penicillin	170	92
448	Wellington	Torres	M	1992-08-17	Guelph	ON	Penicillin	192	122
449	Claudia	Vimes	F	1954-06-14	Hamilton	ON	Seafood	140	65
450	Celestina	Bonasera	F	1965-04-29	Hamilton	ON	Acetaminophen	151	46
452	Vincent	Blackwood	M	1982-06-17	Hamilton	ON	Penicillin	165	71
453	Milo	Holliwell	M	1989-02-16	Red River	MB	Penicillin	166	74
454	Samantha	Dean	F	1980-03-29	Hamilton	ON	Sulfa	151	76
457	Nero	Archer	M	2004-07-12	Brantford	ON	Penicillin	186	75
459	Mickey	Drama	M	1967-07-17	Toronto	ON	Penicillin	190	110
461	Mary	Bigelow	F	1979-09-24	Toronto	ON	Codeine	174	103
462	Anna	Olemaun	F	2017-09-25	Brampton	ON	Almonds	42	5
463	Hayley	McArthur	F	2015-09-17	Hamilton	ON	Penicillin	62	14
464	Alice	Jones	F	1972-10-09	Dundas	ON	Sulfa Drugs	179	84
466	Trixie	Lockwood	F	1978-02-27	Hamilton	ON	Codeine	169	65
467	Louie	Wong	M	2011-09-16	Delhi	ON	Penicillin	122	46
468	Frank	Anderson	M	2009-06-16	Hamilton	ON	Penicillin	137	43
469	Tally	Nichols	F	1950-02-24	Stoney Creek	ON	Valporic Acid	172	85
472	Ethan	Maureen	M	1993-02-02	London	ON	Penicillin	179	120
473	Roderick	Eckhart	M	1966-06-19	Windsor	ON	Tylenol	178	103
475	Sharon	Grissom	F	1985-07-09	Fruitland	ON	Penicillin	137	72
477	Katie	Maigret	F	1960-07-10	Hamilton	ON	Penicillin	168	92
480	Melinda	Travis	F	1973-05-07	Dunton	ON	Penicillin	175	107
481	Tom	Lovegood	M	1971-11-27	Toronto	ON	Penicillin	148	80
483	Ana	Clancy	F	2008-05-06	Hamilton	ON	Penicillin	143	52
487	Kurt	Sanderson	M	1964-08-17	Toronto	ON	Sulfa	192	109
490	Jennifer	McKinnon	F	1977-08-20	Brantford	ON	Penicillin	159	63
492	David	White	M	1997-07-01	Hamilton	ON	Penicillin	156	87
493	Margaret	Nolan	F	1951-12-16	Calgary	ON	Codeine	138	57
494	Amy	McFly	F	2004-05-29	Burlington	ON	Penicillin	156	65
495	Cindy	Randall	F	1965-12-23	Oakville	ON	Honey	144	68
496	Spiros	Mangel	M	1998-12-13	Oakville	ON	Sulfa	177	131
498	Morgan	Brennan	M	1991-11-23	Hamilton	ON	Bee Stings	174	60
501	Otis	Forbin	M	1997-04-24	Hamilton	ON	Sulfa	170	113
503	Ashley	Owens	F	1991-01-27	Carlisle	ON	Codeine	148	71
504	Michael	Flood	M	1981-11-07	Hamilton	ON	Codeine	172	101
506	Deanna	Shepherd	F	1952-11-11	Cambridge	ON	Codeine	163	47
507	Ethel	McGillis	F	1999-07-21	Ancaster	ON	Penicillin	171	97
508	Mac	Noble	M	2001-08-30	Pickering	ON	Cheese	211	83
515	Annie	Cackle	F	2009-03-24	Toronto	ON	Milk	123	39
517	Genevieve	George	F	1965-05-16	Halifax	NS	Penicillin	164	121
518	Marid	Unser	M	1951-05-20	Halifax	NS	Penicillin Environmental	128	78
520	Cy	Kasen	M	1978-08-09	Grimsby	ON	Penicillin	188	128
522	Nancy	Devane	F	1967-08-13	Hamilton	ON	Tylenol	163	68
525	Kymani	Winters	M	1973-09-25	Hamilton	ON	Penicillin	186	113
528	Jean	Ackland	F	1969-12-12	Hamilton	ON	Penicillin	188	101
530	Kingo	Haruko	M	2012-11-20	Hamilton	ON	Penicillin	99	39
532	Lily	Cooper	F	1955-04-09	Toronto	ON	Codeine	157	74
535	Bill	Erin	M	1969-08-04	Sarnia	ON	Iodine	182	100
538	Thomas	Pike	M	1956-11-26	Ottawa	ON	Penicillin	152	91
541	Sean	Rivers	M	2004-04-28	Barrie	ON	Sulfa Drugs	178	64
542	Rosco	Brockman	M	1990-06-04	Hamilton	ON	Tetracycline	202	99
546	Robert	Daggett	M	1999-09-24	Hamilton	ON	Tetracycline	163	68
547	Avon	Travis	M	1983-07-05	Hamilton	ON	Penicillin	202	103
548	Tsunayoshi	Cammeniti	M	1992-11-24	Hamilton	ON	Wheat	157	81
549	Marcus	Jackson	M	1990-02-21	Toronto	ON	Codeine	190	108
550	Ashley	Buchanan	F	1997-07-18	Toronto	ON	Ragweed	150	59
551	Gregory	White	M	1969-12-11	Hamilton	ON	Penicillin	189	94
552	Genesis	Hill	F	2009-03-13	Troy	ON	Penicillin	124	47
553	Holi	Greggs	F	1958-12-30	Hamilton	ON	Hay Fever	164	108
554	Lina	Maine	F	1978-08-16	Hamilton	ON	Penicillin	174	97
555	Constance	Martin	F	1972-06-16	Burlington	ON	Penicillin	134	67
557	Noike	Maroney	F	1981-05-01	Hamilton	ON	Penicillin	160	94
561	Anthony	Robert	M	1965-07-02	Kelowna	BC	Codeine	170	69
563	Geordi	Kiriakis	M	1970-09-23	Montreal	QC	Penicillin	183	93
564	Lois	Garcia-Shapiro	F	1951-06-18	Misty	AB	Sulfa	139	63
567	Robin	Hightower	M	1968-08-25	Oakville	ON	Penicillin	146	67
568	Prue	Goth	F	1993-12-15	Hamilton	ON	Sulfa	142	68
569	Paige	Maximoff	F	1964-07-15	Hamilton	ON	Penicillin	170	90
570	Boris	Krueger	M	1953-03-10	Hamilton	ON	Penicillin	212	131
571	Jadu	MacKenzie	F	2014-09-18	Toronto	ON	Penicillin	69	18
575	Katie	Stillman	F	1988-11-26	Hamilton	ON	Penicillin	157	71
576	Suzanne	Malvern	F	1963-04-01	Windsor	ON	Penicillin	172	96
577	Christine	Argyros	F	1995-07-14	Hamilton	ON	Morphine	146	52
578	George	Magliozzi	M	2013-12-03	Burlington	ON	Seafood	86	31
579	Emil	Owens	M	2006-08-26	Ottawa	ON	Penicillin	167	57
580	Michael	Klump	M	1956-09-30	Burlington	ON	Salicylic Acid	163	122
584	Juan	Davies	M	1994-06-25	Cambridge	ON	Morphine	181	103
593	Troy	Stone	M	2013-05-14	Toronto	ON	Pet Hair	78	26
594	Annie	Carver	F	2017-10-22	Stoney Creek	ON	Penicillin	52	9
597	Annie	Sanderson	F	1982-05-13	Hamilton	ON	Penicillin	161	115
599	Art	Franklin	M	1997-08-25	Hamilton	ON	Penicillin	162	64
602	Samantha	Starsmore	F	2008-08-05	Hamilton	ON	Bee Stings	148	38
604	Brut	Burbank	M	1986-11-20	Calgary	ON	Penicillin	158	79
607	Vera	Brown	F	2017-01-19	Hamilton	ON	Pet Hair	43	6
608	Joey	White	M	2007-09-16	Oakville	ON	Penicillin	130	58
610	Jeffrey	McGrath	M	1964-09-16	Cambridge	ON	Codeine	177	112
613	Jaki	Granger	M	1984-08-07	Simcoe	ON	Erythromycin	134	74
614	Luanne	Holloway	F	1950-08-26	Hamilton	ON	Sulfa Drugs	138	47
615	Lina	Wrack	F	1996-07-27	Hamilton	ON	Penicillin	195	95
618	Sheila	Fraser	F	1962-07-05	Toronto	ON	Penicillin	172	113
627	Andy	Vale	M	1963-02-16	Guelph	ON	Sulfa	200	121
628	Morgan	Garibaldi	M	2012-05-25	Dunton	ON	Penicillin	75	40
631	Art	Appleton	M	1988-12-07	Brampton	ON	Penicillin	170	75
632	Paulie	Dieudonne	M	1988-05-08	Walnut Grove	AB	Penicillin	148	70
633	William	Allen	M	1986-11-07	Hamilton	ON	Penicillin	181	119
635	Rob	Barton	M	1991-06-17	Peterborough	ON	Penicillin	149	59
636	Monica	Overstreet	F	1988-10-04	Stoney Creek	ON	Wheat	145	62
637	Clark	Smyth	M	1957-07-26	Hamilton	ON	Penicillin	164	73
638	Jane	McKinley	F	1982-10-24	Hamilton	ON	Penicillin	180	99
639	Ottilio	Burrell	M	1984-07-18	Hamilton	ON	Penicillin	175	86
640	Raymond	Cherrytree	M	1991-06-10	Brantford	ON	Penicillin Sulpha Drugs	172	86
641	Nicole	Owens	F	2015-03-30	Hamilton	ON	Honey	66	17
642	Beatrice	Wells	F	1985-11-29	Hamilton	ON	Penicillin	149	70
644	Maggie	Costigan	F	1997-10-13	Carlisle	ON	ASA	157	70
645	Susan	Blake	F	2000-06-23	Hamilton	ON	Codeine	180	103
646	Frank	Dalma	M	1966-06-13	Port Dover	ON	Peanuts	191	101
647	Robin	Fansler	F	1985-01-19	Hamilton	ON	Penicillin	181	101
649	Montana	Peabody	F	1957-11-22	Hamilton	ON	Penicillin	166	55
650	Holt	Randall	M	2008-03-02	Pickering	ON	Strawberries	146	58
653	Andy	Weasley	M	1985-12-08	Hamilton	ON	Wheat	197	104
658	Nikki	Halliwell	F	1978-06-23	Ottawa	ON	Milk	164	66
660	Elisa	Peroni	F	1970-09-09	Hamilton	ON	Peanuts	173	56
662	Deirdre	Owens	F	1979-09-28	Burlington	ON	Penicillin	173	93
664	Sophie	Maxwell	F	1960-11-11	Peterborough	ON	Iodine	136	57
667	Danielle	Harkness	F	1998-02-11	Hamilton	ON	Bee Stings	142	57
670	Stanley	Hinkley	M	1987-11-12	Toronto	ON	Elastoplast	152	67
673	Knox	Rocco	M	1986-10-25	Burlington	ON	Penicillin	158	72
676	Bruce	Brockman	M	2007-09-19	Orillia	ON	Salicylic Acid	131	57
679	Joyce	Gallardo	F	2000-10-09	Beamsville	ON	Wheat	183	111
682	Carl	Sheldon	M	1967-02-15	Burlington	ON	Erythromycin	165	67
683	Amy	Space	F	2017-05-23	Toronto	ON	Sulfa Drugs	40	6
684	Uri	Falcon	M	1951-03-08	Paris	ON	Morphine	165	85
687	Phil	Sanchez	M	1971-09-15	Halifax	NS	Iodine	139	72
688	Donald	Arturo	M	1983-07-24	Hamilton	ON	Codeine	149	68
690	Jason	Baasha	M	2011-05-10	Hamilton	ON	Penicillin	98	35
695	Sabrina	Hettie	F	2000-11-25	Burlington	ON	Penicillin	160	51
696	Eve	Hughes	F	1974-07-10	Hamilton	ON	Penicillin	176	100
698	Don	Khan	M	1971-08-03	Hamilton	ON	Penicillin	182	118
699	Donald	Crowley	M	1983-03-26	Windsor	ON	Codeine	142	64
700	Giacomo	Waterfield	M	1992-04-10	Montreal	QC	Penicillin	166	78
703	Rita	Peroni	F	1947-02-22	Hamilton	ON	Penicillin	131	56
707	Dirk	Castang	M	1969-04-14	Hamilton	ON	Penicillin	129	65
711	Harold	Ichi	M	1979-06-26	Dundas	ON	Penicillin	193	111
712	Anna	Hill	F	1961-06-04	Port Dover	ON	Penicillin	173	66
714	Henry	Rebus	M	1956-07-24	Grimsby	ON	Penicillin	154	73
716	Maxwell	Schultz	F	2015-06-07	Ancaster	ON	Penicillin	68	16
717	Billie	Webber	F	2007-12-07	Hamilton	ON	Penicillin Sulpha Drugs	133	49
719	Hal	Cooper	M	2015-01-24	Red River	MB	Bee Stings	82	26
720	Ruby	Foreman	F	1977-04-24	Burlington	ON	Penicillin	144	53
721	Cresentmoon	Rizzoli	F	1971-04-27	Hamilton	ON	Iodine	180	95
722	Brut	Schorr	M	1992-08-08	Hamilton	ON	Penicillin	172	94
723	Henry	Fairweather	M	1978-05-13	Burlington	ON	Penicillin Sulpha Drugs	203	100
724	Alecto	Van	F	2016-03-10	Port Dover	ON	ASA	50	10
725	Grace	Callendar	F	1967-11-12	Ancaster	ON	Cheese	140	50
726	Richard	Appleton	M	1963-11-15	Toronto	ON	ASA	155	80
730	David	Milo	M	2016-03-14	Ottawa	ON	Penicillin	52	13
731	Will	Harvey	M	1993-09-15	Burlington	ON	Penicillin	170	100
733	Roderick	Landsman	M	1966-04-14	Hamilton	ON	Codeine	202	105
734	Juliet	Waturs	F	2004-03-25	Hamilton	ON	Penicillin	158	53
735	Carl	Drake	M	2010-04-20	Stoney Creek	ON	Sulfa	120	41
736	Paulie	OMalley	M	1984-11-05	Hamilton	ON	Penicillin	208	125
737	Claire	Summers	F	1999-12-04	Hamilton	ON	Sulfa	150	66
739	Temple	Brennan	F	1963-07-12	Burlington	ON	Strawberries	159	101
740	Bianca	Double	F	1957-01-23	Hamilton	ON	Sulfa	183	74
742	Paul	Smyth	M	1994-07-26	Hamilton	ON	Peanuts	168	116
745	Walburga	Macdonald	F	1960-07-01	Burlington	ON	Penicillin	142	54
751	Mary	Owens	F	1986-04-10	Hamilton	ON	Codeine	173	114
754	Carrie	Jacobs	F	1978-01-22	Hamilton	ON	Penicillin	175	97
757	Demelza	DeLoone	F	1968-07-24	Oakville	ON	Penicillin	172	57
758	Deborah	Caspar	F	2017-05-21	Hamilton	ON	Tylenol	39	7
759	Charlotte	Iosefa	F	1988-11-06	Grimsby	ON	Penicillin	178	83
762	Sister	Gilmore	F	1987-03-11	Toronto	ON	Penicillin	161	104
763	Don	Justice	M	1994-08-23	Toronto	ON	Penicillin	196	124
764	Billy	Vimes	M	1980-11-01	Delhi	ON	Penicillin	180	125
765	Linda	Stillman	F	2000-10-27	Hamilton	ON	Tetracycline	170	81
771	Axel	Norris	M	1952-12-20	Hamilton	ON	Iodine	144	77
773	Sam	Haruko	M	1982-12-12	Hamilton	ON	Peanut Oil	226	121
774	Anna	Erin	F	1980-08-07	Burlington	ON	Penicillin	187	121
777	Matt	Righetti	M	1982-07-21	Hamilton	ON	Penicillin Environmental	217	117
780	Deirdre	Cooper	F	1984-05-11	Hamilton	ON	Penicillin Environmental	141	65
781	Hank	Parker	M	1969-01-03	Hamilton	ON	Sulphur	171	112
784	Avon	Dalgliesh	M	2008-08-20	Hamilton	ON	Tetracycline	137	54
785	Laurel	Boyce	F	1952-03-04	Hamilton	ON	Penicillin	157	60
786	Mike	Hamilton	M	1971-05-22	Hamilton	ON	Sulfa	160	66
788	Kate	Waterfield	F	1986-10-06	Hamilton	ON	Penicillin	155	66
789	Lylah	Cage	F	1958-11-21	Oakville	ON	Sulphur	164	84
790	Harper	de Souza	F	2002-05-13	Hamilton	ON	Penicillin	174	63
793	Betty	Hightower	F	2001-02-15	Hamilton	ON	Codeine	193	69
794	Imogen	Wolfe	F	2000-11-12	Whitby	ON	Penicillin	147	58
795	Dale	Kuramitsu	M	1978-04-17	Oakville	ON	Penicillin	181	98
798	Claire	Dax	F	1986-12-29	Hamilton	ON	Codeine	184	115
801	Christopher	Bigelow	M	1984-02-12	Timmins	ON	Penicillin	189	113
802	Leo	Fowler	M	2001-03-22	Red River	MB	Peanuts	209	93
805	Charlotte	Bat	F	1974-05-20	Hamilton	ON	Micropore Tape	190	93
806	Grant	Cragge	M	1999-06-22	Paris	ON	Penicillin	198	106
807	Jane	Preston	F	1964-01-16	Hamilton	ON	Codeine	194	103
808	Sam	Sugden	M	2007-05-04	Barrie	ON	ASA	133	53
810	Lily	Space	F	1964-07-05	Milgrove	ON	Penicillin	133	64
814	Vijay	Stein	M	2006-01-20	Burlington	ON	ASA	172	70
817	Lily	Ichihara	F	1963-07-14	Whitby	ON	Seafood	167	65
819	Harry	Goodspeed	M	2012-03-03	Hamilton	ON	Penicillin	80	41
820	Holt	Reed	M	1994-07-13	Hamilton	ON	Penicillin	167	86
822	Mary	Strong	F	1964-12-04	Barrie	ON	Bee Stings	159	79
823	Pearl	Brown	F	1948-11-20	Milton	ON	Tylenol	174	63
824	Paul	MacLeod	M	1978-02-10	Hamilton	ON	Almonds	204	119
830	Ana	Randall	F	2000-05-19	Toronto	ON	Codeine	146	65
833	Charles	Banks	M	1967-10-14	Stoney Creek	ON	Hay Fever	163	81
834	Willow	Akimoto	F	1953-02-04	Vancouver	BC	Tape	158	115
838	Liz	Brown	F	1969-03-20	Delhi	ON	Codeine	161	109
840	Shiro	Lin	M	2005-11-24	Hamilton	ON	Codeine	155	65
842	Tracy	French	M	1954-01-26	Burlington	ON	Penicillin	199	118
843	Tem	Mangel	M	1981-05-12	Port Dover	ON	Codeine	176	73
844	Catherine	Kendall	F	1975-08-16	Hamilton	ON	Tylenol	156	67
846	Timmy	Steiger	M	1991-03-29	Burlington	ON	Penicillin	215	119
848	Oliver	Michaels	M	1994-07-16	Hepworth	ON	Penicillin	195	111
849	Jo	Kuramitsu	F	1989-07-27	Brantford	ON	Penicillin Diazepam	176	107
850	Barbara	Drill	F	1978-03-25	Hamilton	ON	Almonds	154	58
851	David	Kennedy	M	2011-01-10	Walnut Grove	AB	Iodine	113	37
854	Tugg	Sydnor	M	2003-12-11	Ancaster	ON	Codeine	201	86
859	Judy	Tanner	F	1969-05-05	Toronto	ON	Penicillin	152	52
860	Susan	Wheeler	F	1992-10-13	Hamilton	ON	Penicillin	160	86
861	Janice	Randall	F	1978-05-01	Hamilton	ON	Codeine	168	96
866	Gail	Pianta	F	2010-02-01	Toronto	ON	Wheat	99	35
868	Kazuki	Patil	M	1977-09-12	Toronto	ON	Sulfa Drugs	209	114
869	Jonathan	Prefect	M	1963-12-13	Waterford	ON	Penicillin	163	73
870	Olivia	Gordon	F	1952-09-03	Hamilton	ON	Iodine	156	59
871	Kyle	Sanderson	M	2011-06-20	Hamilton	ON	Penicillin	96	34
874	Ellen	Hally	F	2005-05-03	Hamilton	ON	Tylenol	167	57
875	Bryan	Calculus	M	2012-02-24	Kingston	ON	Wheat	91	30
879	Orla	Shawn	F	1967-09-24	Sarnia	ON	Penicillin	149	65
880	Liz	Threep	F	2002-02-02	Ancaster	ON	Codeine	171	64
881	Phil	Peabody	M	1975-08-25	Kingston	ON	Penicillin	159	76
883	Peter	Lane	M	1950-10-06	Hamilton	ON	Tape	208	113
885	Tex	Robert	M	1974-12-04	Victoria	BC	Iodine	181	77
886	Tony	Crusher	M	1992-07-06	Hepworth	ON	Almonds	175	81
887	Gregory	Lockwood	M	2018-05-07	Hamilton	ON	Penicillin	37	6
890	Mary	Rougemont	F	1955-04-19	Brantford	ON	Penicillin	165	82
892	Henry	Stewart	M	1975-06-23	Ajax	ON	Penicillin	167	81
896	Tugg	Travis	M	1983-07-09	Ancaster	ON	Morphine	156	78
899	Simon	Brown	M	1980-09-10	Hamilton	ON	Wheat	167	74
900	Marcus	Garrick	M	1994-08-17	Hamilton	ON	Penicillin	153	68
901	Santiago	Lake	M	2006-05-18	Oakville	ON	Penicillin	171	73
904	Marvin	Foyle	M	1949-08-27	Brantford	ON	Penicillin	185	96
905	Shane	Fraser	M	1958-12-23	Hamilton	ON	Penicillin	207	102
906	Sharon	Powers	F	1992-08-27	Timmins	ON	ASA	183	89
907	Luanne	Medlicott	F	1958-12-04	Hamilton	ON	Penicillin	171	117
908	Doris	Morgan	F	1960-05-31	Hamilton	ON	Honey	174	49
909	Richard	Real	M	2013-12-29	Hamilton	ON	Penicillin	73	21
910	Jake	Adebisi	M	1988-04-16	Hamilton	ON	ASA	203	101
911	Moira	Bigelow	F	1963-04-15	Brantford	ON	Penicillin	140	72
915	Eleanor	de Castro	F	1975-11-19	Hamilton	ON	Bee Stings	179	98
916	Jake	Schrader	M	1969-01-06	Hamilton	ON	Penicillin	167	91
918	Jay	Hastings	M	2011-03-23	Windsor	ON	Penicillin	99	38
919	Tru	West	F	1979-04-04	Paris	ON	Penicillin	169	100
920	Catherine	Masaki	F	1978-03-06	Toronto	ON	Latex	152	60
921	Ethel	Henderson	F	2017-05-17	Hamilton	ON	Penicillin	38	7
923	Billie	Beckett	F	1994-06-02	Oshawa	ON	Hay Fever	184	118
924	Simon	Spellman	M	2015-11-17	Hamilton	ON	Codeine	73	20
926	Bruno	Sugden	M	1979-01-28	Hamilton	ON	Penicillin	173	124
927	Matthew	Costigan	M	1973-05-25	Hamilton	ON	Sulfa	175	65
928	Charles	Gonzales	M	1997-12-29	Hamilton	ON	Penicillin	204	110
931	David	Heath	M	2011-03-07	Toronto	ON	Codeine	100	39
932	Sally	Balta	F	1981-09-23	Hamilton	ON	Penicillin	163	60
934	John	Daniels	M	1965-07-16	Hamilton	ON	Peanut Butter	143	79
937	Paige	Sparazza	F	1955-11-05	Hamilton	ON	Penicillin	140	67
941	Leslie	Nanny	F	1963-09-22	Hamilton	ON	ASA	165	61
946	Kay	MacAllister	F	1958-08-10	Oakville	ON	Penicillin	185	105
950	Imogen	Jimmy	F	1993-01-12	Ottawa	ON	Penicillin	150	63
951	Walter	Morgan	M	1956-02-23	Toronto	ON	Sulfa Drugs	194	101
952	Haley	Crusher	M	1966-05-20	Hamilton	ON	Sulphur	169	82
954	Susan	Kolchak	F	1990-03-11	Paris	ON	Codeine	191	112
955	Karen	James	F	1975-03-23	Hamilton	ON	Almonds	135	52
957	Nea	Brown	F	1996-08-26	Toronto	ON	Peanut Butter	162	69
958	Carl	Gordon	M	1998-08-27	Burlington	ON	Codeine	183	115
960	Ryoko	Heath	F	1961-02-11	Hamilton	ON	Penicillin	188	97
961	Eva	Groan	F	1998-06-17	Barrie	ON	Sulfa	187	109
966	Barbara	Lawson	F	1958-06-20	Hamilton	ON	Penicillin	156	61
968	Jadzia	Vincent	F	1963-11-03	Hamilton	ON	Codeine	166	116
969	Jack	Argyros	M	2009-01-07	Toronto	ON	Tape	126	60
971	Jocelyn	Tate	F	2009-08-23	Hamilton	ON	Tetracycline	124	36
973	Abraham	Crandall	M	2000-04-24	Beaverton	ON	Penicillin	212	102
974	Cash	Cunningham	M	1995-04-09	Bartonville	ON	Codeine	204	124
976	Eddie	Elgin	M	1956-02-16	Simcoe	ON	Milk	178	110
977	Othar	McDonald	F	1948-05-19	Hamilton	ON	Sulfa	152	51
979	Neil	Wildhack	M	1966-04-21	Toronto	ON	Penicillin	150	71
981	Kelly	Aguilar	F	2014-05-10	Sarnia	ON	Penicillin	76	21
982	Lina	Carling	F	1962-01-04	Toronto	ON	Valporic Acid	196	110
983	Alejandro	Greener	M	2012-05-03	Hamilton	ON	Penicillin	77	36
984	Jo	Reed	F	1958-01-15	Toronto	ON	Feathers	183	110
987	Chris	Carver	F	1983-04-30	Hamilton	ON	Sulfa Drugs	149	61
989	Nea	Gently	F	1955-05-20	Hamilton	ON	Penicillin	181	104
990	Brenda	Shoop	F	1984-10-03	Orangeville	ON	Penicillin	142	71
991	Kate	Skye	F	1997-09-03	Toronto	ON	Penicillin	174	102
994	John	Lang	M	1971-06-12	Hamilton	ON	Penicillin	163	121
999	Jo	Lovegood	F	1969-08-12	Hamilton	ON	Penicillin	194	92
1000	Rick	Williams	M	1975-04-13	Hamilton	ON	Penicillin	176	127
1001	Nessa	Flores	F	1969-07-29	Burlington	ON	Penicillin	146	57
1002	Nancy	Benson	F	1978-03-17	Hamilton	ON	Penicillin	198	91
1004	Willie	Wolf	M	2010-01-23	Hepworth	ON	Valporic Acid	108	44
1005	Alan	Xavier	M	1960-04-13	Cayuga	ON	Penicillin	173	81
1006	Gary	Harkness	M	2003-11-07	Brantford	ON	ASA	189	79
1008	Kay	Makibi	F	1971-03-01	Hamilton	ON	Sulfa	146	60
1009	Lana	Glicker	F	1949-05-23	Hamilton	ON	Tetracycline	165	112
1010	Jack	Colon	M	2003-06-05	Troy	ON	Codeine	192	77
1011	Marid	Vaughn	M	1987-08-13	Toronto	ON	Penicillin	158	61
1012	Obidiah	Maxime	M	1957-03-31	Delhi	ON	Codeine	174	121
1013	Montana	Farisi	F	1974-05-08	St. Catharines	ON	Codeine	161	85
1015	Loretta	Fraser	F	1987-09-29	Timmins	ON	Sulfa	156	65
1016	Harley	Thackeray	F	1993-10-30	Hamilton	ON	Penicillin	167	53
1017	Santino	Barillo	M	2017-04-23	Hamilton	ON	Codeine	49	10
1018	Anna	Clouseau	F	1978-09-09	Guelph	ON	Sulfa Drugs	145	80
1019	Robert	Mars	M	1998-06-20	Burlington	ON	Penicillin	189	108
1021	Julie	Madison	F	2017-10-16	Hamilton	ON	Penicillin	38	7
1022	Wendell	Hunt	M	1952-11-06	Hamilton	ON	Penicillin	157	68
1025	David	Gently	M	1969-01-26	Hamilton	ON	Tetracycline	197	126
1029	Joel	Orville	M	2003-11-16	Hamilton	ON	Penicillin	184	71
1032	Temperance	Potter	F	2012-05-02	Hamilton	ON	Codeine	86	23
1033	Sybil	de Passe	F	2011-11-27	Hamilton	ON	Penicillin	78	27
1037	Eddie	Cole	M	1952-01-23	Hamilton	ON	Penicillin	204	112
1039	Jane	Farley	F	2011-10-06	Hamilton	ON	Penicillin	85	21
1041	Rita	Wright	F	1962-12-03	Stoney Creek	ON	Penicillin	175	110
1044	Quinn	Dreadful	F	2014-08-12	Burlington	ON	Tylenol	77	21
1045	Lara	Vendrell	F	1950-11-01	Hamilton	ON	Tape	171	65
1049	Will	Holliwell	M	1938-10-06	Bancroft	ON	Codeine	160	74
1051	Tom	Jenkins	M	2017-05-11	Hamilton	ON	Penicillin	52	10
1052	Seto	Malvern	M	1949-10-01	Hamilton	ON	Codeine	171	124
1053	Lily	Boxer	F	2003-06-15	Toronto	ON	Penicillin	185	63
1054	Suzanne	Shimura	F	1980-04-24	Hamilton	ON	Penicillin	157	96
1056	Elisa	Stapleton	F	1966-05-16	Hamilton	ON	Codeine	164	110
1057	Charlie	Martin	M	1977-12-14	Hamilton	ON	Codeine	173	67
1060	Molly	Scott	F	1986-09-21	Ottawa	ON	Penicillin	179	81
1061	Norbert	Larsen	M	2010-04-11	Toronto	ON	Iodine	126	41
1063	Agnes	Meedhan	F	2007-11-06	Toronto	ON	Iodine	139	45
1064	Luke	Taylor	M	1966-11-20	Peterborough	ON	Penicillin	137	81
1070	Jackson	Kennedy	M	1956-01-17	Toronto	ON	Sulfa Drugs	151	69
1071	Linda	Harding	F	1981-08-23	Grimsby	ON	Penicillin	170	98
1076	Cash	Haruko	M	1950-03-15	Milton	ON	Iodine	200	124
1080	Jadu	Willows	F	2002-09-30	Waterford	ON	Penicillin	187	68
1082	Poppy	Bell	F	1956-06-10	Hamilton	ON	Codeine	181	80
1083	Madeline	Pargeter	F	2000-12-21	Hamilton	ON	Iodine	179	106
1085	Alphonse	Carver	M	1979-11-18	Burlington	ON	Sulfa	198	101
1086	Sara	Harrington	F	1957-01-16	Port Dover	ON	Penicillin	159	57
1089	Salvatore	Pond	M	1998-10-21	Burlington	ON	Milk	198	133
1093	John	Kojak	M	2009-06-07	Cambridge	ON	Sulfa	111	52
1094	Nick	Andrews	M	2010-05-02	Hamilton	ON	Penicillin	95	36
1095	James	Harrison	M	2000-05-30	Orangeville	ON	Sulfa	139	81
1096	Miyuki	Dayton	F	2018-06-03	Ajax	ON	Valporic Acid	39	5
1098	Olivia	Carver	F	1958-06-18	Hamilton	ON	Penicillin	171	61
1100	Roderick	Bottom	M	1995-06-15	Caledonia	ON	Cheese	186	126
1101	Jabba	Purbright	M	1964-11-22	Hamilton	ON	Penicillin	125	79
1102	Nancy	Akagi	F	1976-08-08	Cambridge	ON	Codeine	158	61
1103	Aniki	Arden	M	1970-06-18	Burlington	ON	Penicillin	180	68
1105	Frank	Maine	M	1958-11-01	Waterford	ON	Tetracycline	165	78
1106	Al	Hardy	M	1950-10-24	Port Hawkesbury	NS	Pork	179	109
1108	Andromeda	Thomas	F	2012-01-09	Hepworth	ON	Micropore Tape	94	30
1109	Raymond	Mallory	M	1985-08-01	Hamilton	ON	Tetracycline	169	68
1110	Katarina	Schultz	F	2016-07-13	Brantford	ON	Codeine	60	12
1111	Enos	Sanderson	M	1969-04-09	Hamilton	ON	Bee Stings	175	119
1116	Charlotte	Farrell	F	1958-01-24	Hamilton	ON	Penicillin	167	88
1117	Alice	Jacobs	F	1980-05-29	Grimsby	ON	Seafood	173	61
1118	Jefferson	Brockman	M	1967-07-18	Toronto	ON	Valporic Acid	201	114
1121	Sherlock	Sidle	M	1936-08-14	Hamilton	ON	Tylenol	179	101
1122	Maggie	Hudson	F	2017-11-16	Dundas	ON	Penicillin	36	5
1124	Jack	Garlick	M	1997-11-02	Brampton	ON	Penicillin	200	98
1125	Donna	Powers	F	1966-11-30	Montreal	QC	Penicillin	154	58
1127	Jay	Munroe	M	1994-03-26	Hamilton	ON	Penicillin	164	85
1130	Alex	Soze	M	2002-08-09	Mississauga	ON	Penicillin	196	86
1131	Celeste	Matthews	F	1961-11-12	Ancaster	ON	Penicillin	184	106
1132	Angelo	Rosenberg	M	2012-09-17	Hamilton	ON	Salicylic Acid	87	33
1134	Vivian	Makibi	F	1961-12-30	Hamilton	ON	Cats	180	128
1137	Sabrina	Brown	F	1996-06-28	Hamilton	ON	Penicillin	176	110
1138	Theo	Parkinson	M	2017-11-22	Oshawa	ON	Penicillin	44	7
1139	Peggy	Bigelow	F	1982-05-19	Calgary	ON	Sulfa Drugs	175	106
1142	Quinn	Lionel	F	1995-06-26	Dundas	ON	Sulfa	172	88
1143	Edward	Martin	M	1996-06-09	Milton	ON	Tylenol	133	63
1145	Endora	Lockwood	F	1950-06-15	Grimsby	ON	Codeine	187	80
1148	Tom	Martin	M	1973-07-21	Burlington	ON	Penicillin	151	75
1149	Valerie	Beaumann	F	2003-06-27	Grimsby	ON	Tylenol	165	62
1150	Celeste	Breaker	F	1964-07-05	Hepworth	ON	Penicillin	165	106
1151	Anthony	Carter	M	1956-06-13	Burlington	ON	Penicillin	175	111
1152	Nancy	Goren	F	1986-06-03	Grimsby	ON	Penicillin	167	104
1153	Moses	Thackeray	M	1968-12-20	Hamilton	ON	Tape	148	77
1156	Jiji	Guerrero	M	2007-07-03	Burlington	ON	Penicillin	148	59
1157	Sara	Alvin	F	1984-10-11	Hamilton	ON	ASA	167	119
1158	Mary	Vajda	F	2007-12-15	Hamilton	ON	Acetaminophen	137	43
1159	Carmine	Finskter	M	1967-05-14	Simcoe	ON	Tylenol	181	98
1164	David	Lonnegan	M	1973-05-21	Hamilton	ON	Sulphur	154	69
1165	Spenser	McKay	M	2011-10-08	Toronto	ON	Sulfa	105	37
1166	Elsa	McAllister	F	2007-06-24	Hamilton	ON	Iodine	118	48
1168	Parvati	Van Tassel	F	1994-11-14	Hamilton	ON	Penicillin	179	93
1169	Thomas	Falcone	M	2006-05-30	Hamilton	ON	Codeine	147	71
1170	Pat	Halliwell	M	1973-08-05	Hamilton	ON	Penicillin	165	68
1172	Ned	Thackeray	M	2012-07-18	Hepworth	ON	Penicillin	73	29
1176	Hannah	Smyth	F	1980-10-22	Hamilton	ON	Bee Stings	177	91
1178	Anna	Selwyn	F	1985-07-07	Brantford	ON	Codeine	188	113
1182	Vinnie	Fraser	M	1963-02-18	Brantford	ON	Penicillin Sulpha Drugs	152	85
1183	Lester	Nash	M	2008-03-01	Hamilton	ON	Catfood Rubber	131	51
1184	Endora	Trenton	F	2016-09-29	Hamilton	ON	Sulfa Drugs	54	13
1185	Peter	Mannheim	M	2002-01-13	Hamilton	ON	Catfood Rubber	169	88
1186	Lucky	Deakins	M	1974-01-02	Winona	ON	Sulfa	213	104
1189	Wellington	Canlaster	M	1963-01-05	Hamilton	ON	Penicillin	200	127
1190	Maia	Hanadarko	F	1983-05-11	Ottawa	ON	Penicillin	172	103
1194	Thomas	Morris	M	1981-04-28	Hamilton	ON	ASA	208	126
1195	Ervin	Aran	M	1985-09-23	Red River	MB	Penicillin	195	96
1196	James	Stillman	M	1993-03-25	Hamilton	ON	Penicillin	174	102
1199	Jaenelle	Sharpe	F	1988-12-07	Toronto	ON	Codeine	163	107
1200	Chris	Drama	F	2016-05-20	Guelph	ON	Penicillin	59	13
1202	Aya	Marshall	F	1952-08-06	Hamilton	ON	Sulphur	140	61
1204	Phyllis	Johnson	F	2005-04-12	Selkirk	ON	Penicillin	168	50
1207	Asuka	Gaucho	M	1997-10-04	Hamilton	ON	Penicillin	185	122
1208	Avon	Tony	M	1955-07-09	Elmira	ON	Penicillin	189	120
1209	Montana	Coltrane	F	1979-10-06	Milgrove	ON	Codeine	136	46
1210	Billie	Haruko	F	2015-02-25	Hamilton	ON	Penicillin	70	15
1211	Nino	Marley	M	2004-04-05	Red River	MB	Lactose Intolerant	169	81
1216	Nancy	Price	F	1988-02-12	Hamilton	ON	Penicillin	165	43
1218	Danny	Troy	M	1958-10-26	Hamilton	ON	Penicillin	168	71
1219	Les	Morgan	M	1962-12-05	Toronto	ON	Penicillin	167	78
1221	Sam	Carr	M	1960-05-29	Dundas	ON	Penicillin	201	110
1222	Donald	Sisco	M	2011-01-12	Beamsville	ON	Codeine	118	43
1223	Paloma	Pullman	F	1999-07-25	Hamilton	ON	Peanuts	148	65
1224	Anna	Baker	F	1951-04-09	Hamilton	ON	Sulfa	170	109
1226	Jilli	Anneke	F	1988-10-04	Hamilton	ON	Sulfa	148	75
1229	Barbara	Peretti	F	1997-05-30	Hamilton	ON	Penicillin	160	65
1230	Lizzie	Cropper	F	1950-04-09	Burlington	ON	Sulfa	186	91
1231	Danny	Nichols	M	1982-05-31	Timmins	ON	Sulfa	176	75
1232	Thomas	Lowe	M	1994-08-22	Pickering	ON	Sulfa Drugs	174	88
1233	James	Tanner	M	1968-05-04	Hamilton	ON	Almonds	165	106
1234	Steven	Kent	M	2018-05-02	Hepworth	ON	Lactose Intolerant	25	3
1235	Vic	Kegedi	M	1992-11-02	Burlington	ON	Penicillin	159	58
1237	Poppy	Vincent	F	1994-12-27	Toronto	ON	Penicillin	188	101
1239	Prue	Suresh	F	2001-05-18	Hamilton	ON	Codeine	189	62
1240	Al	Merry	M	1964-03-26	Ancaster	ON	Codeine	178	76
1241	Bill	Willows	M	2000-06-08	Brantford	ON	Nuts	185	110
1244	Baba	Brooke	F	1978-06-08	Elmwood	ON	Sulfa Drugs	159	106
1246	Tiffany	Cao	F	1979-05-24	Hamilton	ON	ASA	186	106
1249	Karima	Franklin	F	1998-04-24	Hamilton	ON	Penicillin	176	116
1251	Honey	Michalchuk	F	2010-11-01	Hamilton	ON	Acetaminophen	112	43
1253	Patty	Stone	F	1996-10-10	Stoney Creek	ON	Penicillin	165	60
1254	Bridget	Trivino	F	1999-07-03	Barrie	ON	Penicillin	164	78
1257	Anna	Lorrison	F	2004-09-26	Ancaster	ON	Peanut Butter	144	58
1258	Hal	Artisan	M	1974-10-29	Hamilton	ON	Penicillin	214	122
1259	Alice	Milbury	F	1967-08-25	Hamilton	ON	Penicillin	161	59
1260	Celeste	Grant	F	1953-08-24	Oakville	ON	Honey	154	74
1261	Rachel	Warner	F	1981-04-06	Hamilton	ON	Sulfa	173	94
1262	George	Iosefa	M	1959-11-04	Ancaster	ON	Penicillin	147	78
1263	Henrieta	Henderson	F	1962-07-04	Ancaster	ON	Penicillin	131	73
1264	Jillian	Valentine	F	1984-03-10	Hamilton	ON	Penicillin	169	107
1265	Joseph	Flinstone	M	1982-05-20	Halifax	NS	Iodine	133	76
1266	Linda	Hope	F	2012-07-30	Halifax	NS	Penicillin	93	26
1268	Rex	Lynley	M	1981-03-23	Windsor	ON	Codeine	199	95
1270	Jimmy	Lewis	M	2007-01-10	Hamilton	ON	Penicillin	150	67
1271	Anubis	Boxer	M	2010-10-05	Halifax	NS	Penicillin	122	40
1272	Chris	Michaels	M	2010-11-24	Guelph	ON	Penicillin	110	38
1273	Stanislaus	Cavanaugh	M	2015-01-20	Beaverton	ON	Penicillin	83	27
1276	Steven	Urameshi	M	1994-12-05	Hamilton	ON	Penicillin	151	77
1277	Rose	MacKenzie	F	1964-05-13	Ancaster	ON	ASA	176	50
1278	Claire	Dahl	F	2009-02-01	Hamilton	ON	Tetracycline	113	44
1280	Danielle	Summers	F	1939-08-08	London	ON	Codeine	170	84
1281	Maria	Duncan	F	1962-07-02	Orangeville	ON	Ragweed	152	59
1282	Eglantine	Bigelow	F	2015-09-15	Brockville	ON	Sulfa	61	14
1283	Harold	Maraschino	M	1960-09-17	Hamilton	ON	Penicillin	171	116
1284	Alex	Rosenberg	F	1955-08-14	Hamilton	ON	Penicillin	160	54
1289	Jane	Halliwell	F	1963-10-20	Red River	MB	Penicillin	157	50
1290	John	Cooper	M	1998-10-23	Hamilton	ON	Sulfa	214	108
1291	Mandy	Munroe	F	1959-04-09	Brantford	ON	Cheese	195	85
1292	Kay	Treskovna	F	1970-06-09	Hamilton	ON	Penicillin	145	64
1293	Lisa	Summers	F	1977-04-02	Hamilton	ON	Penicillin	173	44
1294	Cully	Billa	M	1977-06-02	Calgary	ON	Penicillin	185	90
1297	Temple	Shapandar	F	2013-06-24	Hamilton	ON	Topical Anaesthesia	73	22
1299	Alice	Provenza	F	1960-04-28	Hamilton	ON	Penicillin	158	57
1300	Tess	Frobisher	F	2016-03-14	Hamilton	ON	Wheat	61	12
1301	Joe	Waterman	M	2012-04-22	Brampton	ON	ASA	88	35
1302	Marid	Randall	M	1969-12-31	Hamilton	ON	Bee Stings	130	71
1304	Van	Davenport	M	1985-12-21	Toronto	ON	Penicillin	182	115
1305	Julie	Whitlock	F	2016-08-02	Hamilton	ON	Seafood	47	10
1308	Dol	Justice	F	1950-06-03	Hamilton	ON	Honey	147	51
1310	Septima	Davies	F	1983-03-02	Toronto	ON	Penicillin	180	78
1312	Emmett	DiGeorge	M	1960-07-27	Victoria	BC	Peanuts	181	126
1313	Meyer	Bell	M	2008-12-29	Hamilton	ON	Penicillin	145	45
1315	Tracy	Omovich	M	1970-10-09	Burlington	ON	Pet Hair	188	91
1319	Ri	DAmato	M	1984-05-02	Hamilton	ON	Eggs	147	80
1320	Temple	Davies	F	1973-01-04	Red River	MB	Penicillin	169	51
1321	Tom	Meacham	M	1968-11-22	Troy	ON	Hay Fever	181	117
1323	Manick	Bergman	M	2008-02-02	Hamilton	ON	Honey	163	52
1324	Roger	Sears	M	1956-03-22	Cambridge	ON	Penicillin	172	65
1326	Bathilda	Doggett	F	1977-05-05	Hamilton	ON	Penicillin	147	56
1327	Rhonda	Vane	F	2005-06-01	Hamilton	ON	Penicillin	165	53
1328	Penny	Eckhart	F	1988-02-17	Hamilton	ON	Penicillin	143	78
1332	Henry	Starr	M	2013-12-08	Hamilton	ON	Codeine	75	28
1334	Parvati	Cochrane	F	2006-04-29	Paris	ON	Tape	145	50
1335	Millicent	Deane	F	1995-10-16	Halifax	NS	Sulfa Drugs	143	65
1336	Darcy	Klump	F	2004-05-09	Hamilton	ON	Sulfa	168	58
1337	Don	Baily	M	1962-03-11	Hamilton	ON	Penicillin	163	77
1338	Honey	Tyler	F	2009-10-23	Hamilton	ON	Codeine	113	35
1340	Amy	Clock	F	2016-12-25	Hamilton	ON	Penicillin	59	14
1343	Harry	Dalton	M	2008-04-18	Hamilton	ON	Sulfa	143	55
1344	Mallory	Eckhart	F	1949-02-11	Burlington	ON	Cat Hair	166	57
1345	Jake	Gravelli	M	1961-08-10	Hamilton	ON	ASA	164	92
1346	Alex	Roland	F	1982-02-19	Brampton	ON	ASA	186	81
1347	Ronnie	Mace	M	1966-12-27	Toronto	ON	Codeine	158	73
1348	Johnny	Jackson	M	1951-09-10	Fruitland	ON	Penicillin	183	79
1349	Fleur	Becker	F	1961-01-30	Hamilton	ON	Valporic Acid	173	89
1350	Becky	Kiriakis	F	2004-01-12	Hamilton	ON	Penicillin	165	65
1352	Frank	Mason	M	2009-05-25	Oakville	ON	Sulphur	123	39
1355	Genevieve	Anderson	F	1973-10-09	Fruitland	ON	Penicillin	164	67
1356	Arnold	Tate	M	1997-07-15	Delhi	ON	Penicillin	184	120
1357	Ottilio	Smirnoff	M	2006-07-07	Stoney Creek	ON	Penicillin	166	57
1358	Hans	Yang	M	1967-05-12	Grimsby	ON	Penicillin	157	87
1359	Chris	Pargeter	F	1998-11-15	Dundas	ON	Tylenol	170	110
1360	Alberto	Bennett	M	1974-11-27	Milton	ON	Codeine	149	71
1363	Gillian	Pensky	F	1987-06-13	Delhi	ON	Penicillin	155	65
1365	Lucinda	Royle	F	1950-04-27	Toronto	ON	Penicillin	180	96
1366	Paul	Bluenight	M	1969-08-22	Hamilton	ON	Penicillin	160	72
1367	James	Gordon	M	1970-06-03	Hamilton	ON	Penicillin	166	130
1368	Tubby	Sacrimoni	M	1993-11-01	Ottawa	ON	Cat Hair	195	92
1372	Grant	Kelso	M	1999-06-24	Brampton	ON	Penicillin	184	87
1373	James	Reilly	M	1968-06-12	Hamilton	ON	Fish	223	124
1374	Neville	Porlock	M	1983-03-20	Carlisle	ON	Penicillin	185	128
1375	Norman	Scott	M	1987-05-23	Hamilton	ON	Morphine	176	104
1376	Mary	Sinistra	F	1993-12-07	Hamilton	ON	Salicylic Acid	154	63
1377	Harmony	Leigh	F	2015-05-03	Hamilton	ON	Codeine	70	18
1378	Darryl	Che	M	1962-07-22	Hamilton	ON	Peanuts	175	106
1380	Don	Vargas	M	1986-12-12	Hamilton	ON	Peanut Butter	163	89
1381	Harper	Ogawa	F	1981-03-23	Hamilton	ON	Penicillin	165	94
1383	Olympe	Shore	F	1960-10-28	Sarnia	ON	Codeine	153	102
1384	Paul	Sagdiyev	M	1994-05-16	Dunnville	ON	Penicillin	171	111
1385	Irene	Arden	F	1953-08-02	Hamilton	ON	Penicillin	147	52
1386	Don	Thorndyke	M	1948-06-06	Red River	MB	Codeine	191	102
1388	Fenella	Connolly	F	1962-03-20	Bancroft	ON	Cat Hair	177	91
1389	Judy	Harris	F	1962-01-18	Brockville	ON	Sulfa	147	62
1391	Willow	Boyle	F	2008-01-03	Guelph	ON	Penicillin	145	37
1392	Peggy	Marvin	F	1968-07-02	Halifax	NS	Codeine	154	63
1393	Vislor	Stape	M	1985-05-10	Hamilton	ON	Penicillin	189	113
1395	Alan	Skye	M	1952-09-07	Hamilton	ON	Codeine	147	81
1397	Eddie	Flynn	M	1955-03-13	Hamilton	ON	ASA	184	122
1398	Alejandro	Omovich	M	1948-07-31	Burlington	ON	Penicillin	147	65
1399	Alex	Carlyle	F	1977-08-08	Mississauga	ON	Cat Hair	134	48
1400	Walter	Jones	M	2018-01-06	Hamilton	ON	Penicillin Environmental	33	3
1401	Gil	Lowrey	M	2013-05-20	Timmins	ON	Penicillin	82	26
1402	Kathryn	Hallow	F	1984-01-20	Orangeville	ON	ASA	141	54
1403	Bill	Russo	M	1971-10-30	Calgary	ON	Seafood	192	100
1406	Miles	Chang	M	1997-07-01	Hamilton	ON	Wheat	162	82
1407	Violet	Webber	F	1984-08-18	Burlington	ON	Codeine	176	118
1413	Nico	Espinosa	F	1958-09-15	Carlisle	ON	Penicillin	175	92
1414	Will	Pancamo	M	2005-08-28	Dundas	ON	Tylenol	172	67
1416	David	Soprano	M	1993-03-10	Dundas	ON	Wheat	178	124
1417	Sally	McPherson	F	1963-07-22	Hamilton	ON	Penicillin	169	95
1418	Callum	Rosetta	M	1949-06-24	Oakville	ON	Codeine	198	119
1419	Massimo	Vincent	M	1979-07-06	Hamilton	ON	Tetracycline	147	71
1422	Nick	Serizawa	M	1955-03-24	Athens	ON	Sulfa	186	104
1424	Laszlo	Kaiba	M	1974-10-15	Hamilton	ON	Penicillin	167	74
1426	Escobar	Fansler	M	1966-09-10	Dundas	ON	Penicillin	188	112
1429	Howard	Warbeck	M	1966-12-03	Bancroft	ON	Penicillin	156	88
1432	Thomas	Moreland	M	1949-04-23	Toronto	ON	Penicillin	161	73
1436	Allan	Stewart	M	2013-05-18	Saskatoon	SK	Codeine	91	30
1437	Doris	Page	F	1997-05-19	Timmins	ON	Penicillin	168	99
1439	Laura	Soran	F	1996-08-16	Hamilton	ON	Codeine	159	86
1443	Irene	Cooper	F	2012-11-14	Hamilton	ON	Penicillin	75	26
1444	Helga	Strange	F	1992-08-11	Hamilton	ON	Strawberries	171	53
1446	Holland	Tam	M	1963-10-28	Ancaster	ON	Penicillin	215	96
1447	Bernard	Goren	M	1988-02-01	Toronto	ON	Penicillin	167	83
1448	Patty	Williams	F	1984-11-23	Hamilton	ON	Penicillin	151	67
1453	Achille	Ozaki	M	1957-06-14	Carlisle	ON	Codeine	161	79
1454	Beppe	Rajasthan	M	2009-12-09	Elmira	ON	Iodine	119	40
1455	Vance	Leigh	M	1952-07-21	Hamilton	ON	ASA	158	75
1458	Rory	Komov	F	1971-11-16	Burlington	ON	Hay Fever	178	110
1466	Jaki	Meacham	M	1999-09-04	Hamilton	ON	Tylenol	160	69
1467	Genesis	Ravenclaw	F	1963-05-29	Stoney Creek	ON	Salicylic Acid	190	84
1471	Kay	Falcone	F	2007-09-30	Hamilton	ON	Penicillin	120	43
1473	Andy	Rosewood	M	1964-01-12	Hamilton	ON	ASA	183	117
1474	David	Halliwell	M	2001-05-10	Hamilton	ON	ASA	193	82
1475	Nick	Corleone	M	1961-12-23	Edmonton	AB	Penicillin	180	126
1476	Evan	Clearwater	M	2000-03-28	Hamilton	ON	Cheese	168	73
1478	John	Thackeray	M	1984-10-24	Hamilton	ON	Sulfa	187	130
1479	Fiz	Shawn	F	1968-12-14	Red River	MB	Codeine	171	53
1481	Victoria	Grant	F	1991-08-24	Brantford	ON	Valporic Acid	156	84
1483	Jack	Soran	M	1961-09-24	Hamilton	ON	Iodine	171	81
1484	Tom	Rigazzi	M	1966-11-28	Hamilton	ON	Penicillin	162	80
1485	Christine	Tabootie	F	1952-09-23	Fruitland	ON	Penicillin	165	67
1487	Beanie	Frankenstein	F	2015-01-12	Toronto	ON	Penicillin	79	20
1488	Alan	Beckett	M	1948-04-06	Hamilton	ON	Codeine	153	57
1492	Artemus	Scott	M	2013-07-01	Smithville	ON	Penicillin Diazepam	85	29
1493	Adam	Ryan	M	1968-09-06	Grimsby	ON	Cheese	216	113
1495	Walter	Dean	M	1985-01-31	Dundas	ON	Penicillin Environmental	172	83
1498	Peggy	Fraser	F	2011-09-19	Dundas	ON	Sulfa	85	37
1499	Eva	Redfield	F	1986-01-19	Toronto	ON	Penicillin	134	74
1500	Alejandro	Hally	M	2003-12-23	Toronto	ON	Penicillin	180	83
1503	Rocco	Montford	M	1990-07-02	Ancaster	ON	Latex	161	78
1505	Jerry	Heath	M	1984-06-16	Hamilton	ON	Codeine	130	81
1506	Huma	Fansler	F	1974-06-14	Waterford	ON	Codeine	164	66
1509	Miyuki	Handley	F	1983-06-08	Brockville	ON	Penicillin	168	87
1512	Peter	Carter	M	1965-05-24	Hamilton	ON	Penicillin	171	82
1513	Jesse	Purebred	M	1984-05-24	Burlington	ON	Sulphur	176	80
1518	Philip	Fellowes	M	1965-03-26	Niagara Falls	ON	Penicillin	175	113
1519	Ivy	Evans	F	1992-05-07	Hamilton	ON	Penicillin	153	63
1522	Montgomery	Kasen	M	1950-01-23	Bancroft	ON	ASA	142	64
1524	Jack	Bain	M	2013-02-17	Hamilton	ON	Salicylic Acid	88	31
1525	Lindsay	Summers	F	1958-04-20	Hamilton	ON	Pet Hair	176	88
1527	Mona	Fox	F	1954-01-16	Walnut Grove	AB	Penicillin	151	74
1530	Reiko	Maximoff	F	1967-06-17	Burlington	ON	Hay Fever	163	66
1532	Kate	Dobbs	F	2013-09-11	Hamilton	ON	Penicillin	82	25
1535	Bernard	Brown	M	2002-11-29	Saskatoon	SK	Tylenol	194	89
1537	Dayne	Decker	M	1979-01-21	Hamilton	ON	Penicillin	139	76
1538	Steve	Alpert	M	1992-09-06	Dunnville	ON	Penicillin	161	70
1539	Maureen	Maximoff	F	1983-02-28	Orangeville	ON	Penicillin	179	96
1542	George	Vendrell	M	1961-12-26	Hamilton	ON	Penicillin	168	121
1543	Jennifer	Cruger	F	2006-11-10	Hamilton	ON	Iodine	153	55
1545	William	Pike	M	1950-02-20	Hamilton	ON	Penicillin	175	80
1547	Eddie	Winslow	M	1965-05-28	Peterborough	ON	Penicillin	154	58
1548	Kay	Brearly	F	1984-07-23	Scarborough	ON	Penicillin	171	80
1549	George	Vallance	M	1977-12-27	Brantford	ON	Penicillin	192	116
1551	Enrique	Trudeau	M	1993-05-16	Kingston	ON	Latex	210	88
1556	Elsie	Fier	F	1966-10-06	Hamilton	ON	Codeine	146	58
1558	Jim	Poppins	M	1951-02-16	Stoney Creek	ON	Penicillin	159	91
1560	Giacomo	Webber	M	1984-02-17	Hamilton	ON	Penicillin Diazepam	194	104
1561	Blanche	Barnes	F	1957-12-12	Hamilton	ON	Penicillin	169	103
1562	Melanie	Beaumann	F	1967-04-27	Timmins	ON	Sulfa	182	113
1563	Alicia	Nichols	F	1931-02-10	Hamilton	ON	Penicillin	160	53
1564	Justin	Caine	M	2011-03-31	Milton	ON	Penicillin	108	41
1566	Ellen	Corneo	F	1957-04-07	Hamilton	ON	Penicillin	158	62
1567	Kima	Woods	F	2013-04-26	Hamilton	ON	Penicillin	75	22
1570	Alexei	Reardon	M	1958-09-17	St. Catharines	ON	Penicillin	186	118
1571	Dol	Forelli	F	1976-07-27	Hamilton	ON	Penicillin	164	78
1572	Lucy	Granger	F	2011-12-14	Hamilton	ON	Penicillin	100	35
1573	Eva	Wong	F	1999-12-06	Brantford	ON	Penicillin	161	99
1576	Sherlock	Corneo	M	2018-05-16	Brantford	ON	Pork	29	3
1578	Axel	Trenton	M	2006-04-08	Hamilton	ON	Nuts	162	60
1579	Joel	Takata	M	1989-06-12	Hamilton	ON	Morphine	185	113
1580	Amy	Trapani	F	1983-05-25	Hamilton	ON	Penicillin	159	69
1581	Melvyn	Bergman	M	1952-04-26	Vancouver	BC	Peanuts	188	124
1582	Rory	Lopez-Fitzgerald	M	1952-04-04	Hamilton	ON	Penicillin	157	80
1583	Laura	Peroni	F	1969-07-21	Hamilton	ON	Codeine	159	103
1584	Arnold	McCrary	M	1967-06-15	Ottawa	ON	Penicillin	181	133
1586	Jimmy	Henderson	M	1968-02-08	Barrie	ON	Penicillin	186	119
1587	Victor	Peroni	M	1969-10-03	Ancaster	ON	Tylenol	148	71
1588	Barney	Scarett	M	1962-01-16	Burlington	ON	Penicillin	140	83
1590	Clarence	Decker	M	1959-10-30	Hamilton	ON	Feathers	133	64
1591	Sister	Taylor	F	1960-10-25	Hamilton	ON	Penicillin	191	92
1593	Billie	Anneke	F	2005-11-21	Calgary	ON	ASA	150	46
1595	Roderick	Dean	M	2010-10-25	Mississauga	ON	Penicillin	94	45
1596	Ray	Ravenclaw	M	1988-07-11	Hamilton	ON	Codeine	148	64
1597	Frank	Tai	M	1979-06-18	Stoney Creek	ON	Penicillin	149	69
1598	Victor	Corneo	M	1988-03-26	Dunton	ON	Penicillin	174	80
1599	Sandy	Lindley	F	2003-03-08	Brantford	ON	Penicillin	162	63
1600	Aki	OHara	F	2010-01-25	Hamilton	ON	Penicillin	120	35
1601	Dave	Launer	M	2016-07-02	Hamilton	ON	Tetracycline	50	13
1603	Jonathan	Cortez	M	1967-09-12	Montreal	QC	Penicillin	164	76
1613	Maggie	Kohran	F	1995-02-25	Hamilton	ON	Penicillin	155	71
1616	Fenella	Tribbiani	F	1975-10-08	Windsor	ON	Penicillin Diazepam	190	89
1617	Willow	Frye	F	1968-01-31	Hamilton	ON	Sulphur	177	106
1618	David	Morrow	M	1964-09-06	Timmins	ON	Penicillin	169	115
1620	Jean	Banzai	F	2003-12-02	Dundas	ON	Wheat	190	72
1622	Aya	Barclay	F	2007-07-11	Red River	MB	Penicillin	118	49
1623	Willow	Burdock	F	1940-02-23	Hamilton	ON	Bee Stings	178	87
1624	Kima	Mowbray	F	1967-04-20	Toronto	ON	ASA	147	61
1625	Blanche	Clancy	F	1969-06-10	Smithville	ON	Penicillin	160	72
1626	Georgina	Lynch	F	1969-02-14	Stoney Creek	ON	Almonds	163	95
1627	Kate	Calvin	F	1974-10-21	Halifax	NS	Micropore Tape	161	119
1628	Cooper	Powers	F	1981-09-18	Hamilton	ON	Codeine	173	72
1629	Ted	Barnfather	M	2012-01-21	Hamilton	ON	Penicillin	102	33
1634	Martin	Astin	M	1971-06-20	Walnut Grove	AB	Penicillin	154	57
1636	Travis	Harrison	M	1983-11-19	Burlington	ON	Penicillin	171	117
1637	Dale	Hardbroom	M	2001-07-04	Hamilton	ON	Sulpha	208	94
1638	Hilda	Green	F	1982-07-22	Hamilton	ON	Sulfa	153	65
1639	Jules	Xavier	F	2000-07-24	Hamilton	ON	Penicillin	178	112
1640	Jo	Robbins	F	1955-05-19	Brantford	ON	Bee Stings	146	53
1641	Dale	Brockman	M	1973-07-20	Hamilton	ON	Penicillin	210	131
1642	Mark	Bain	M	1960-09-24	Brantford	ON	Sulfa	173	85
1643	Miguel	Fabray	M	1971-04-28	Stoney Creek	ON	Wheat	172	100
1644	Wilfred	Lane	M	1954-06-16	Halifax	NS	Penicillin	169	78
1645	Signor	Pulaski	M	1977-02-12	Athens	ON	Penicillin	211	97
1650	Faye	Mephesto	F	1982-08-19	Toronto	ON	Penicillin	159	64
1652	Hilda	Halliwell	F	2009-06-14	Hamilton	ON	Penicillin	108	34
1653	Jo	St. Clare	F	1963-05-11	Halifax	NS	ASA	155	66
1655	Liz	Owens	F	1982-11-02	Hamilton	ON	Almonds	159	99
1656	Doris	Rambeau	F	2005-03-18	Hamilton	ON	Penicillin	172	55
1657	Vijay	Kennedy	M	1951-09-29	Burlington	ON	Penicillin	165	62
1658	Guido	Kirk	M	2014-08-31	Brantford	ON	Codeine	73	21
1659	Billie	Seaton	F	2004-04-21	Hamilton	ON	ASA	155	55
1663	Woody	Granger	M	1955-07-28	Stoney Creek	ON	ASA	207	133
1664	Angela	Indermill	F	1986-09-20	Cambridge	ON	Penicillin	136	58
1665	Sister	Lilly	F	1939-04-28	Hamilton	ON	Codeine	166	102
1666	Trevor	Richards	M	1999-04-29	Ancaster	ON	Penicillin	155	80
1667	Raoul	Guarnaccia	M	1965-07-15	Fruitland	ON	Peanut Butter	160	87
1668	Kevin	Vimes	M	1975-01-12	Barrie	ON	Penicillin	197	112
1669	Walter	Maxwell	M	1986-02-10	Carlisle	ON	Micropore Tape	163	73
1670	Andy	Sugden	M	1987-01-02	Toronto	ON	Codeine	141	72
1671	Patricia	Cooper	F	1951-07-24	Hamilton	ON	Penicillin	164	117
1673	Hestia	Quirk	F	1980-10-02	Burlington	ON	Penicillin	172	122
1674	Armando	Riggs	M	1988-03-28	Hamilton	ON	Sulfa	130	72
1675	Citan	Morgan	M	1964-12-08	Hamilton	ON	Valporic Acid	183	71
1677	Harper	Rabbit	F	2014-06-13	Hamilton	ON	Penicillin	71	18
1681	Charles	Trent	M	1981-05-17	Carlisle	ON	Penicillin	165	85
1683	Rajesh	Riggs	M	1958-12-04	Northbay	ON	Valporic Acid	195	108
1684	Don	Medlicott	M	1997-05-21	Hamilton	ON	Penicillin	200	113
1685	Boris	Tsuna	M	1966-09-03	Hamilton	ON	Penicillin	158	68
1687	Ezri	Patil	F	1999-02-24	Delhi	ON	Penicillin	153	47
1691	Peyton	McGraw	M	1987-09-03	Cambridge	ON	Codeine	166	63
1692	Citan	Seaton	M	1993-07-08	Hamilton	ON	Penicillin	202	122
1694	Carmine	Cropper	M	1939-01-05	Hamilton	ON	Penicillin	160	75
1695	Polly	Sakatsu	F	2013-02-16	Hamilton	ON	Penicillin	89	26
1696	Maggie	Hallow	F	1950-05-16	Carisle	ON	Sulfa	148	75
1697	Luanne	Matthews	F	1962-12-03	Stoney Creek	ON	Penicillin Environmental	166	50
1699	Violet	Bardo	F	1950-07-18	Hamilton	ON	Eggs	189	105
1701	Ray	Nagre	M	1955-08-14	Kingston	ON	Codeine	209	122
1702	Angelo	Turlough	M	1987-04-16	Hamilton	ON	Valporic Acid	221	118
1705	Celestina	Givens	F	1986-04-10	Hamilton	ON	Codeine	155	69
1706	Kate	Fowler	F	1981-01-13	Hamilton	ON	Penicillin	194	98
1707	Olivia	Sullivan	F	2006-11-20	Burlington	ON	Penicillin	141	54
1709	June	Rojas	F	1998-10-10	Toronto	ON	Penicillin	155	49
1714	Alec	Thomas	M	1968-10-17	Hamilton	ON	Sulfa Drugs	213	97
1715	Billie	Ichi	F	2006-04-26	Burlington	ON	Penicillin	128	57
1716	Woody	Franklin	M	1972-12-25	Barrie	ON	Penicillin	184	124
1718	Darcy	Windsor-Dingle	F	1983-12-06	London	ON	Fish	162	54
1719	Jo	Marple	F	1979-10-16	Hamilton	ON	Penicillin	190	107
1721	Jean	Frevisse	F	1957-05-14	Hamilton	ON	Penicillin	146	56
1722	Penelope	Cooper	F	2014-09-15	Brantford	ON	Penicillin	77	20
1723	Moe	Alexander	M	2008-08-11	Hamilton	ON	Penicillin	124	47
1724	Rance	Kynes	M	1987-06-09	Guelph	ON	Sulfa	175	112
1725	Beatrice	Brocklehurst	F	2002-06-07	Toronto	ON	ASA	191	68
1726	Daniel	Gallardo	M	1957-07-11	Barrie	ON	Penicillin	156	72
1728	Ruth	Buckton	F	1988-02-24	Cambridge	ON	Penicillin	137	45
1729	Martin	Huang	M	1961-07-19	Brockville	ON	Penicillin	146	81
1730	Deanna	Shirogane	F	1981-05-03	Toronto	ON	Micropore Tape	165	90
1732	Kurt	Halliwell	M	1958-09-18	Hamilton	ON	Peanuts	153	83
1733	Ronnie	Ravenclaw	M	1964-06-27	Hamilton	ON	Penicillin Sulpha Drugs	219	105
1736	Spenser	Tam	M	1941-06-21	Hamilton	ON	Codeine	130	70
1737	Tiola	Bluenight	F	1971-06-25	Toronto	ON	Penicillin	168	105
1738	Polly	Yurinov	F	2001-03-06	Burlington	ON	Wheat	177	71
1740	Willie	Moorehead	M	1951-12-07	Hamilton	ON	Iodine	174	90
1741	Jackie	Granger	F	2005-09-09	Hamilton	ON	Codeine	145	46
1744	Alex	Walker	F	1974-07-06	Guelph	ON	ASA	173	56
1747	Teresa	Maitland	F	1966-05-28	Hamilton	ON	Penicillin	167	46
1750	Gary	Rivers	M	1987-04-09	Dunton	ON	Penicillin	142	70
1753	Julie	Hallow	F	1953-09-05	Hamilton	ON	Sulfa	173	58
1754	Roger	Hale	M	1976-12-04	Brantford	ON	Penicillin	174	83
1757	Jack	Bennett	M	1955-06-12	Hamilton	ON	Penicillin	212	114
1758	Tania	Gorbovsky	F	2014-11-14	Burlington	ON	Penicillin	71	21
1761	Alejandro	Vecchio	M	2002-07-29	Tyndale	ON	Codeine	186	80
1765	Carlton	Ohayon	M	1999-12-09	Dundas	ON	Sulfa	197	131
1766	Yuri	Lazarus	M	1981-03-20	Burlington	ON	ASA	167	130
1768	Hal	Caliban	M	1986-11-10	Hamilton	ON	Sulfa	191	111
1769	Bonnie	McGrew	F	1983-04-05	Burlington	ON	Valporic Acid	167	95
1772	Curtis	Troy	M	1989-12-07	Burlington	ON	Codeine	171	81
1774	Barney	Littlefield	M	1964-11-15	Hamilton	ON	Sulfa	174	129
1775	Nessa	Garrett	F	1960-10-11	Burlington	ON	Codeine	185	109
1780	Vito	Boddicker	M	2016-04-21	Hamilton	ON	Walnuts	59	16
1784	Paul	Cork	M	1985-10-29	Burlington	ON	Sulfa	203	106
1785	Emmett	Guarnaccia	M	1961-06-12	Hamilton	ON	Penicillin Sulpha Drugs	203	104
1786	Bernard	Fortunato	M	2004-07-06	Burlington	ON	Sulfa Drugs	170	71
1787	Lisbeth	Kennedy	F	1960-10-22	Bancroft	ON	Sulfa	156	53
1788	John	Gently	M	1978-04-29	Hamilton	ON	Penicillin	183	114
1789	Seamus	Szalinski	M	1959-10-23	Hamilton	ON	Sulfa	198	121
1790	Tony	Lassiter	M	1976-08-06	Toronto	ON	Codeine	143	79
1791	Grace	Otley	F	1992-12-01	Hamilton	ON	Penicillin	160	65
1792	Ben	Seaton	M	2011-05-25	Paris	ON	Penicillin	89	33
1793	Oscar	Snyder	M	1983-03-04	Beamsville	ON	Sulfa	138	72
1795	Will	Sallis	M	2014-10-05	Hamilton	ON	Penicillin	77	26
1796	Fred	Caneili	M	1956-07-22	Hamilton	ON	Nuts	155	63
1799	Narcissa	Zapatti	F	2003-05-04	Hamilton	ON	Peanut Butter	171	61
1801	Rose	Kegedi	F	1995-06-18	Hamilton	ON	Penicillin	152	61
1802	Alan	Lionel	M	2004-08-12	Paris	ON	Penicillin	156	72
1804	Imogen	Bukater	F	1954-01-23	Toronto	ON	Penicillin	191	85
1807	Tom	Noble	M	1995-10-21	Burlington	ON	Penicillin	149	87
1810	Ward	Thorne	M	1959-02-12	Hamilton	ON	Penicillin	173	92
1811	Amanda	LoPresti	F	1976-03-06	Hamilton	ON	Penicillin	161	58
1814	Dodo	Maxime	F	1954-03-30	Toronto	ON	Codeine	143	63
1815	Adam	Chesterfield	M	2010-07-09	Hamilton	ON	Codeine	121	44
1816	Jeff	Kolchak	M	1984-11-27	Hamilton	ON	Codeine	149	70
1820	BElanna	Rivers	F	2003-03-25	Windsor	ON	Penicillin	179	60
1821	Tiola	Selden	F	2003-04-25	Ajax	ON	Penicillin	170	67
1824	Jason	Johnson	M	1984-12-08	Burlington	ON	Penicillin	197	89
1825	Eva	Green	F	2011-08-22	Toronto	ON	Penicillin Sulpha Drugs	110	36
1826	Haruhara	Akagi	F	1989-09-08	Hamilton	ON	Penicillin	143	64
1828	Will	Marlowe	M	2017-12-02	Milton	ON	Penicillin	41	8
1830	Chris	Saint	M	1975-09-06	Halifax	NS	Penicillin	184	122
1833	Maureen	Starr	F	2009-03-27	Saskatoon	SK	Codeine	123	42
1834	William	Dresden	M	2005-04-22	Brantford	ON	Sulfa Drugs	153	69
1840	Nisha	Donnelly	F	2009-10-22	Dundas	ON	Penicillin	102	40
1841	Claire	Van Buren	F	1994-06-14	Hamilton	ON	Penicillin	157	75
1847	Veronica	Diamond	F	1984-11-28	Hamilton	ON	Codeine	164	79
1849	Harry	Martin	M	1959-12-16	Beamsville	ON	Shellfish	144	69
1850	Angua	Maza	F	1989-02-05	Hamilton	ON	Penicillin	144	51
1854	Linda	Holloway	F	1984-02-23	Hamilton	ON	Penicillin	147	51
1855	Steve	Veeteren	M	2003-12-23	Halifax	NS	Penicillin	192	85
1856	Vladimir	Sternin	M	2018-07-09	Hamilton	ON	Penicillin	26	2
1858	Ottilio	Alleyn	M	1968-05-31	Burlington	ON	Peanuts	144	63
1859	Peter	Schibetta	M	1988-07-13	Caledonia	ON	Penicillin	186	118
1860	Tom	Fabray	M	1967-07-08	Burlington	ON	Sulfa	174	71
1862	Virginia	Next	F	1966-04-20	Carlisle	ON	Codeine	170	116
1863	Goldie	Pensky	F	2011-09-17	Barrie	ON	Penicillin	81	34
1864	Ellen	Willows	F	1964-08-08	Elmira	ON	Pet Hair	148	60
1866	Roman	Parker	M	1988-02-20	Hamilton	ON	Almonds	184	130
1867	Noonien	Kane	M	1988-05-11	Toronto	ON	Sulfa Drugs	134	78
1868	Doris	Vale	F	2012-12-30	Hamilton	ON	Iodine	99	31
1870	Dante	McKay	M	1979-12-04	Hamilton	ON	Valporic Acid	156	71
1874	Ted	Haruko	M	1967-10-28	Dunton	ON	Codeine	151	60
1875	Bill	Granite	M	1976-03-24	Dundas	ON	Peanut Butter	155	73
1876	Mercedes	Shotwell	F	2003-03-05	Walnut Grove	AB	Penicillin	163	60
1877	James	Hamilton	M	1954-02-24	St. Johns	NL	Penicillin Environmental	167	79
1879	Sonny	Adler	M	1961-11-11	Orillia	ON	Sulfa	187	118
1881	Norton	Sanders	M	1970-09-28	Oakville	ON	Bee Stings	185	107
1882	Constance	Luthor	F	1971-04-18	Windsor	ON	Penicillin	187	99
1885	Ana	Scully	F	1995-09-30	Burlington	ON	Penicillin	184	87
1886	Bobbie	Hudson	F	2017-05-09	Burlington	ON	Penicillin	45	10
1887	Mona	Melinda	F	2001-12-27	Hamilton	ON	Sulfa	163	70
1888	Vincenzzo	Khan	M	1958-03-23	Toronto	ON	Tylenol	177	115
1889	Lester	Hill	M	1949-10-31	Hamilton	ON	Peanuts	149	67
1890	Sara	Lerrol	F	1980-04-11	Burlington	ON	Penicillin	185	98
1891	Julian	Tam	M	1993-04-15	Caledonia	ON	Peanut Butter	144	76
1893	Rodney	Guarnaccia	M	1990-10-06	Hamilton	ON	Penicillin	187	125
1895	Leona	Gray	F	1961-06-11	Cayuga	ON	Penicillin	157	62
1896	Tom	Allen	M	1979-09-06	Halifax	NS	Penicillin	184	123
1897	Mallory	Davies	F	1969-04-07	Ancaster	ON	Penicillin	192	94
1898	Haruhara	Stenbeck	F	1954-01-03	Walnut Grove	AB	Codeine	171	90
1899	Fenella	Languish	F	2015-08-02	Hamilton	ON	Sulpha	56	14
1903	Chris	Dedede	M	2006-09-05	Hamilton	ON	Penicillin	168	58
1904	Avon	Kobayakawa	M	1960-09-15	Timmins	ON	Codeine	190	116
1905	Jane	Anderson	F	1988-12-31	Toronto	ON	Valporic Acid	157	105
1906	Doris	Heat	F	2013-10-12	Waterford	ON	Penicillin Environmental	76	23
1907	Andy	Tutuola	M	2010-10-14	Burlington	ON	Hay Fever	96	35
1911	Chris	Johnson	F	1985-11-29	Hamilton	ON	Penicillin	178	108
1912	John	McNab	M	1978-03-05	Hamilton	ON	Codeine	160	83
1914	Briareos	Dash	M	1989-03-15	Grimsby	ON	Penicillin	189	108
1915	Caroline	Lorrison	F	1990-08-27	Mississauga	ON	Penicillin	151	59
1917	Signor	Temple	M	1960-04-09	Hepworth	ON	Topical Anaesthesia	208	115
1918	Hank	Cao	M	1968-11-09	Toronto	ON	Penicillin	163	75
1919	Willow	Lovegood	F	2016-08-07	Hamilton	ON	Codeine	61	14
1921	Kelly	Morton	F	1970-08-24	Hamilton	ON	Latex	155	62
1924	Elijah	Forelli	M	1952-08-15	Hamilton	ON	Feathers	149	80
1925	Annie	Barclay	F	1954-08-27	Toronto	ON	Tylenol	163	79
1928	Don	Robinson	M	2010-10-18	Cambridge	ON	Penicillin	127	37
1929	Joey	Brunetti	M	1979-04-27	Hamilton	ON	Salicylic Acid	154	84
1930	Craig	Frye	M	1967-06-28	Hamilton	ON	Penicillin	159	77
1934	Raylan	Mallory	M	1984-06-04	Hamilton	ON	Morphine	162	102
1936	Doris	Stillman	F	1974-06-12	Elmira	ON	Peanuts	158	95
1937	Glorietta	Zucco	F	1950-02-09	Windsor	ON	Penicillin	144	58
1939	Kara	Lockwood	F	2008-09-28	Hamilton	ON	Almonds	136	40
1942	Clark	Wright	M	1964-02-13	Cambridge	ON	Radioopaque Dye	216	126
1943	Alphonse	Lockwood	M	2016-11-04	Hamilton	ON	Penicillin	63	14
1945	Elizabeth	Johnson	F	1996-03-01	North York	ON	Penicillin	152	56
1947	Fenella	Donnelly	F	1958-10-29	Hamilton	ON	Iodine	145	53
1956	Joe	Halliwell	M	2000-03-16	Simcoe	ON	Penicillin	184	94
1958	Basil	Potter	M	1973-09-06	Toronto	ON	Sulfa	186	80
1964	Rita	Tachikawa	F	1957-05-08	Simcoe	ON	Tylenol	195	74
1966	Jane	Maclay	F	2000-01-17	Pickering	ON	Codeine	143	52
1967	Hecky	Vimes	M	1999-03-12	Brantford	ON	Penicillin Environmental	155	87
1968	Don	Lamb	M	1990-06-23	Dundas	ON	Codeine	182	95
1970	Walter	Bennett	M	2000-02-23	Hamilton	ON	Penicillin	192	105
1971	Kay	Sanada	F	1971-01-08	Beaverton	ON	Penicillin	162	54
1973	Carlie	Cooper	F	2009-12-20	London	ON	Codeine	127	31
1974	Stanley	Baley	M	2011-06-08	Waterloo	ON	Honey	92	36
1976	Daniel	Maxwell	M	1969-07-29	Brockville	ON	Sulfa Drugs	187	129
1977	Jin	Mephesto	M	1979-05-24	Pickering	ON	Codeine	147	58
1979	Martin	Atwater	M	2012-07-23	Hamilton	ON	Tylenol	83	33
1981	Silvio	Mitchell	M	1995-09-13	Brampton	ON	Hay Fever	127	86
1982	Roy	Kojak	M	1952-09-04	Hamilton	ON	Codeine	152	77
1983	Franz	Denton	M	2014-05-28	Hamilton	ON	ASA	66	21
1984	Lindsay	Daniels	F	1968-03-10	Brantford	ON	Codeine	150	72
1986	Nino	Haruko	M	1992-12-10	Beaverton	ON	Tetracycline	187	120
1987	Alecto	Burdock	F	1973-03-25	Hamilton	ON	Codeine	156	50
1988	Vivian	Strepfinger	F	2001-10-21	Niagara Falls	ON	Penicillin	186	71
1990	Astrid	Fletcher	F	1998-02-05	Brantford	ON	Valporic Acid	181	95
1992	Blake	Fabray	F	1987-09-23	Cambridge	ON	Peanuts	187	88
2000	Claire	Talbot	F	2002-11-13	Hamilton	ON	Penicillin	185	60
2003	Joseph	Yang	M	1970-09-24	Delhi	ON	ASA	170	87
2004	Amos	Harris	M	2013-05-16	Hamilton	ON	Shellfish	87	29
2006	Cedric	Green	M	1992-07-27	Ancaster	ON	Wheat	205	122
2007	Neil	Peroni	M	1999-04-18	Hamilton	ON	Sulfa	198	109
2009	Samantha	Harald	F	2017-09-28	Brantford	ON	Sulfa Drugs	46	7
2010	Anna	Carr	F	1953-11-17	Brantford	ON	Penicillin	159	70
2011	Jerry	Carver	M	1960-04-23	Toronto	ON	ASA	185	80
2012	Mike	Clarke	M	1980-05-08	Hamilton	ON	Penicillin	169	71
2014	Martin	Soran	M	2012-08-03	Hamilton	ON	Penicillin	97	41
2015	Cameron	Moss	M	2003-11-11	Hamilton	ON	Acetaminophen	171	81
2017	Paul	Stacy	M	1984-11-17	Burlington	ON	Strawberries	191	68
2018	Daisy	Smyth	F	1963-09-04	Smithville	ON	Penicillin	139	44
2019	Hilda	Fowler	F	1959-11-26	Hamilton	ON	Codeine	152	51
2022	Evan	Turnbull	M	2011-05-06	London	ON	Penicillin	94	31
2023	Sara	Kusanagi	F	2011-09-20	Sarnia	ON	Strawberries	89	31
2028	Dan	Zasa	M	1987-07-17	Burlington	ON	Peanuts	175	116
2030	Tiffany	Cortez	F	1993-08-22	Hamilton	ON	Penicillin	187	98
2031	Amy	Scott	F	1950-11-13	Hamilton	ON	Penicillin	155	53
2033	Charity	Flinstone	F	2002-02-07	Hamilton	ON	Sulfa	169	71
2034	Nicky	Chino	M	1982-10-05	Burlington	ON	ASA Cotton Sheets	198	104
2037	Jack	Gideon	M	1991-10-30	Stainer	ON	Hay Fever	203	110
2038	Lilith	Cropper	F	1989-11-05	Hamilton	ON	Penicillin	172	88
2039	Jennifer	Mieux	F	1965-01-29	Vancouver	BC	Tetracycline	180	80
2040	Angua	Brown	F	2012-05-17	Simcoe	ON	Penicillin	93	26
2043	Baba	Omovich	F	2007-03-20	Cambridge	ON	Tetracycline	136	41
2046	Michael	Space	M	1971-09-26	Hamilton	ON	Penicillin	169	85
2047	Joseph	McKinnon	M	1985-06-14	Hamilton	ON	Penicillin	152	88
2050	Anita	Haruko	F	1975-01-07	Hamilton	ON	Sulfa	182	87
2053	Paul	Cobb	M	1962-12-08	Hamilton	ON	Penicillin Sulpha Drugs	188	105
2055	Casanova	Petrelli	M	1957-12-26	Toronto	ON	Penicillin	145	86
2056	Artemus	Orwell	M	1957-04-09	Hamilton	ON	Penicillin	149	85
2058	Martha	Boddicker	F	1968-03-09	Toronto	ON	Codeine	142	56
2061	Hyman	Moses	M	1992-01-16	St. Catharines	ON	Honey	209	96
2064	Donna	McGrath	F	1987-04-29	Burlington	ON	Penicillin	140	55
2065	Elijah	OHara	M	1994-07-09	Hamilton	ON	Iodine	128	68
2066	Olivia	Garland	F	2010-05-22	Hamilton	ON	Sulfa	120	30
2068	Edward	Eckhardt	M	1981-01-13	Hamilton	ON	Wheat	180	131
2069	Hildegarde	Channing	F	1951-03-12	Timmins	ON	Penicillin	151	57
2070	Karen	Cooper	F	1978-04-12	Brantford	ON	Penicillin	184	108
2072	Poppy	Lerrol	F	1960-08-11	Hamilton	ON	Penicillin	147	48
2078	Sam	Sprockett	F	1985-04-02	Hamilton	ON	Penicillin	183	110
2080	Morgan	Johnson	M	2016-01-12	Carlisle	ON	Codeine	45	13
2085	Hayley	Ridolph	F	1986-05-24	Hamilton	ON	Sulfa	148	52
2086	Trinity	Vecchio	F	2016-10-14	Port Dover	ON	Penicillin	61	13
2087	Bertha	Halliwell	F	1993-04-04	Cambridge	ON	Penicillin	167	88
2090	Jadu	Littlefield	F	1949-08-25	Hamilton	ON	ASA	141	65
2092	Fiz	Foster	F	2008-03-05	Hamilton	ON	ASA	127	45
2093	Deunan	Rojo	F	1928-09-09	Grimsby	ON	Penicillin	153	79
2094	Helga	Burns	F	2007-07-08	Brampton	ON	Penicillin	129	41
2096	Garryn	Brown	M	2013-10-26	Brantford	ON	Codeine	93	29
2099	Primo	Adams	M	2017-12-21	Pickering	ON	Tape	40	5
2100	V�ctor	Caxton	M	1965-02-23	Carisle	ON	Penicillin	199	116
2102	Dodo	Levinson	F	1968-10-12	Hamilton	ON	Penicillin	178	106
2106	Warren	Knight	M	1969-01-10	Brockville	ON	Honey	143	77
2108	Maia	Uzuki	F	2007-06-06	Hamilton	ON	Penicillin	115	49
2111	Mickey	Tachikawa	M	1976-02-02	Hamilton	ON	Servere Peanut Allergy	154	76
2113	Jean	Caxton	F	1961-09-07	Hamilton	ON	Penicillin	149	57
2114	Milo	Fairfax	M	2002-11-10	Brantford	ON	Penicillin	197	92
2115	James	Ogg	M	2013-08-21	Hamilton	ON	Penicillin	79	27
2119	Stringer	Bottom	M	1987-09-21	Dunnville	ON	Penicillin	196	117
2121	Cedric	De Lena	M	1958-06-04	Hamilton	ON	Latex	157	70
2122	Buzz	Hare	M	1987-01-31	Brockville	ON	Penicillin	156	79
2124	Jesse	Guarnaccia	M	1954-11-14	Bancroft	ON	Morphine	214	104
2131	Joe	Weir	M	1955-02-03	Pickering	ON	Iodine	145	84
2132	Gemma	Matthews	F	1968-09-24	Hamilton	ON	Tetracycline	128	61
2134	Gennady	Kammerer	M	1976-12-31	Delhi	ON	Sulfa	197	116
2136	Hyman	Tonks	M	2009-07-19	Brantford	ON	Penicillin	118	47
2137	Sasha	Grace	M	1992-01-02	St. Catharines	ON	Penicillin	193	101
2139	Alexandra	Spelvin	F	1998-11-07	Hamilton	ON	Penicillin	170	86
2140	William	Snyder	M	1958-10-06	Toronto	ON	Sulphur	157	83
2142	Mickey	Yamamoto	M	1961-05-12	Burlington	ON	Morphine	186	67
2143	Luis	Smythson	M	1960-06-25	Fruitland	ON	Codeine	151	84
2147	Alan	Winslow	M	2014-06-20	Hamilton	ON	Penicillin	67	21
2148	Tubby	Coltrane	M	1993-05-06	Toronto	ON	Tetracycline	212	127
2155	Isaac	Tanner	M	1949-08-11	Hamilton	ON	Tetracycline	195	104
2156	Lindsay	Malvern	F	1964-02-09	Burlington	ON	Codeine	177	111
2157	Santiago	Urth	M	1988-10-11	Hamilton	ON	ASA	195	114
2158	Alejandro	Vane	M	1952-04-25	Timmins	ON	Sulfa Drugs	152	57
2160	Norton	Corsi	M	1988-12-08	Hamilton	ON	Sulfa	169	83
2162	Hayley	Holmes	F	1949-03-21	Toronto	ON	Iodine	169	108
2163	Quito	Delaware	M	1969-03-07	Hamilton	ON	Codeine	165	85
2166	Abi	Dax	F	1954-06-27	Dundas	ON	Penicillin	180	85
2167	Quinn	Jones	F	1956-05-16	Burlington	ON	Penicillin	164	59
2168	Darcy	Donahue	F	1960-05-20	Waterloo	ON	Codeine	155	52
2169	David	ONeill	M	2002-12-09	Stoney Creek	ON	Penicillin	211	87
2170	Stone	Granite	M	1978-09-30	Toronto	ON	Codeine	136	88
2171	Pomona	Barclay	F	1956-01-25	Beamsville	ON	Tape	165	96
2173	Nino	Sturgis	M	1955-07-16	Toronto	ON	Sulpha	175	85
2174	Nohar	Taylor	M	1989-01-18	Milton	ON	Penicillin	192	134
2176	Mark	Zatara	M	1999-11-08	Stoney Creek	ON	Codeine	173	107
2177	Dayne	Flowerstink	M	1975-04-25	Hamilton	ON	Penicillin	211	137
2179	William	Harrison	M	2000-09-12	Hamilton	ON	Bee Stings	138	72
2180	Henry	Shepherd	M	1968-04-06	Athens	ON	Peanut Butter	187	126
2181	Carol	Havers	F	1971-12-18	Hamilton	ON	Penicillin	164	75
2183	Lloyd	Brocklehurst	M	1971-01-07	Hamilton	ON	Penicillin	208	119
2184	Don	Dawson	M	1980-06-23	Hamilton	ON	Codeine	188	109
2185	Gwen	Russo	F	2017-09-22	Ottawa	ON	Penicillin	37	5
2191	Matt	Day	M	1957-11-02	Simcoe	ON	ASA	182	116
2195	Roger	Caffery	M	1936-10-01	Timmins	ON	Codeine	176	82
2196	Oliver	Olemaun	M	2002-01-14	Delhi	ON	Penicillin	215	83
2197	Andy	Wainthropp	M	2010-05-23	Ancaster	ON	Penicillin	128	47
2198	Dick	Sykes	M	2005-05-11	Hamilton	ON	Codeine	153	60
2199	Calleigh	Russell	F	1966-12-14	Fruitland	ON	Micropore Tape	174	115
2200	Leo	Neutron	M	1966-08-13	Burlington	ON	Penicillin	168	61
2201	Molly	Mackey	F	1967-07-07	Hamilton	ON	Codeine	165	91
2202	Jimmy	Sanderson	M	2017-12-24	Peterborough	ON	Hay Fever	44	5
2203	Eddie	Sawyer	M	1998-11-15	Toronto	ON	Sulfa	134	84
2204	Mona	Stape	F	1974-11-14	Hamilton	ON	Codeine	142	62
2207	Cresentmoon	Fleming	F	1955-05-10	Waterford	ON	Codeine	176	87
2208	Buckaroo	Baxter	M	2012-09-29	Beamsville	ON	Sulfa Drugs	107	41
2209	Gus	Torres	F	1967-09-26	Cambridge	ON	Penicillin	157	91
2211	Faye	Wilde	F	1974-07-19	Toronto	ON	Cyclor	165	96
2212	Juliet	Ravenclaw	F	1988-08-25	Ancaster	ON	Penicillin	160	73
2213	Margaret	Allen	F	1986-09-05	Burlington	ON	Penicillin	151	57
2215	Freddie	De Lena	M	2006-10-12	Burlington	ON	Codeine	177	71
2217	Moira	Holmes	F	1951-09-23	Ottawa	ON	Sulfa Drugs	145	56
2218	Darryl	Soze	M	1982-02-15	Ancaster	ON	Sulfa Drugs	160	67
2223	Max	OMalley	M	1964-06-30	Calgary	ON	Eggs	162	65
2227	Lizzie	Frankie	F	1962-07-24	Hamilton	ON	Salicylic Acid	135	62
2229	Georgina	Henderson	F	1962-07-01	Halifax	NS	Wheat	143	58
2230	Tem	Johnson	M	1957-03-31	St. Catharines	ON	Seafood	168	68
2231	Ben	Atwater	M	1957-10-25	Milton	ON	Codeine	142	70
2232	Joe	Trevelyan	M	1974-06-20	Stoney Creek	ON	Iodine	186	72
2234	Anthony	Arden	M	1988-08-04	Paris	ON	Penicillin Environmental	182	132
2236	Georgina	Lorrison	F	2002-04-22	Orangeville	ON	Penicillin	185	61
2238	Salvo	Kiriakis	M	1985-04-29	Hamilton	ON	Penicillin	145	79
2239	Vincent	Lopez	M	1973-06-11	Dundas	ON	Penicillin	160	56
2240	Rachel	Boxer	F	1995-10-16	Hamilton	ON	Penicillin	159	71
2241	Gary	Dyson	M	1993-01-17	Ancaster	ON	Codeine	149	71
2244	Paige	Gibson	F	1940-10-24	Hamilton	ON	Penicillin	185	107
2245	Gillian	Cuneo	F	1985-04-26	Hamilton	ON	Sulfa Drugs	182	117
2246	Stone	Polin	M	1963-08-27	Hamilton	ON	Elastoplast Bondage	147	70
2249	Imogen	Maxwell	F	1962-12-08	Brantford	ON	Penicillin	164	67
2250	Cho	Malvern	F	2010-10-16	Hamilton	ON	Penicillin	93	27
2254	Penny	Sugden	F	1972-08-05	Hamilton	ON	Penicillin	157	98
2256	Phil	Wayne	M	2014-10-23	Hamilton	ON	Penicillin	82	25
2258	Spiros	Leotardo	M	1957-05-07	Hamilton	ON	Eggs	209	97
2259	Aki	Rook	F	2017-10-22	Red River	MB	Codeine	43	7
2260	Jocko	Weir	M	1963-12-23	Brantford	ON	ASA	196	103
2261	Augusta	Oldstagh:	F	1966-10-27	Paris	ON	ASA	153	74
2262	Norton	Suresh	M	1984-10-07	Cambridge	ON	Sulfa	177	89
2263	Penny	Thomas	F	1985-06-20	Hamilton	ON	Valporic Acid	182	99
2264	Constance	Rebus	F	1990-12-28	Burlington	ON	Penicillin	162	65
2265	Judy	Halliwell	F	2010-06-21	Dundas	ON	Penicillin	85	33
2267	Kaye	Cressie	F	1988-08-28	Hamilton	ON	Penicillin	153	94
2269	Ronnie	Luthor	M	1965-01-22	Toronto	ON	Penicillin	200	101
2270	Madeline	Tojo	F	1982-03-23	Hamilton	ON	Codeine	171	96
2271	Justin	Fuse	M	2009-04-15	Toronto	ON	Penicillin	124	45
2272	Selsdon	Rubini	M	1976-11-24	Kapuskasing	ON	Iodine	194	114
2274	Tania	Travis	F	1978-04-30	Hamilton	ON	Aspirin	168	51
2275	Shahrukh	Quince	M	2012-10-05	Brantford	ON	Sulfa	79	33
2278	Cassie	Rockford	F	1951-08-16	Hamilton	ON	Bee Stings	142	76
2279	Danny	Ramsey	M	2005-04-16	Toronto	ON	Codeine	183	64
2280	Andy	Rook	M	1980-08-22	Troy	ON	Penicillin	172	68
2281	Sonny	Carter	M	1972-06-01	Stoney Creek	ON	Penicillin	157	91
2283	Hagbard	Audran	M	2008-06-24	Toronto	ON	ASA	118	57
2284	Hannah	Calvin	F	1976-08-02	Hamilton	ON	Penicillin	137	52
2286	Marietta	Banzai	F	2008-05-24	Hamilton	ON	Penicillin	137	48
2289	Bibi	Crane	F	1949-12-04	Hamilton	ON	Bee Stings	173	114
2291	Sabrina	Vajda	F	2010-10-26	Cambridge	ON	Peanut Butter	107	35
2294	Donald	Adams	M	1967-11-17	Ancaster	ON	Penicillin	196	129
2296	David	Costigan	M	1974-04-11	St. Catharines	ON	Honey	159	59
2298	Noonien	Cardenas	M	1950-12-07	Hamilton	ON	Tape	178	105
2299	Chick	West	M	1986-04-28	Hamilton	ON	Penicillin	188	102
2300	Cross	Bennett	M	1976-03-14	Milton	ON	Bee Stings	137	89
2303	Tobias	Robbins	M	2000-03-02	Ureterburg	ON	Environmental	181	103
2304	Sam	Rooney	M	1972-08-02	Toronto	ON	Penicillin	174	71
2305	Anita	Bennett	F	1984-03-24	Hamilton	ON	ASA	163	105
2308	Luanne	Matthews	F	1962-10-16	Selkirk	ON	Hay Fever	182	78
2309	Asa	Burdock	F	2017-09-24	Brantford	ON	Peanuts	48	9
2310	Christopher	Brockman	M	2005-09-25	Kingston	ON	Penicillin	153	71
2311	Art	Mars	M	2016-08-03	Hamilton	ON	Codeine	62	14
2312	Sam	Gaskell	M	2003-05-20	Hamilton	ON	Penicillin	189	86
2314	John	Grainger	M	2011-11-16	Toronto	ON	Iodine	107	41
2315	Charity	Hana	F	2018-03-18	Toronto	ON	Acetaminophen	30	3
2316	Sam	Atwater	M	2008-09-07	Hamilton	ON	Penicillin	130	56
2318	Sabrina	Goren	F	1988-02-14	Cambridge	ON	ASA	193	112
2320	Haruhara	Thomas	F	1961-08-01	Hamilton	ON	Penicillin	159	76
2324	Reginald	Vaughn	M	1998-05-07	Hamilton	ON	Peanut Butter	196	132
2325	Rose	Ray	F	2017-10-14	Milton	ON	Honey	47	8
2331	Kakihara	Threep	M	1985-02-28	Hamilton	ON	Penicillin	190	99
2332	Bumpy	Rosenberg	M	1960-05-01	Hamilton	ON	Penicillin	189	124
2336	Signor	Redding	M	1990-03-03	Toronto	ON	Codeine	141	80
2340	Kelly	Rosenberg	F	1953-04-10	Orillia	ON	Penicillin	168	108
2342	Vito	Powell	M	2002-09-21	Orangeville	ON	Codeine	197	90
2343	Alexei	Brocklehurst	M	1998-03-16	Victoria	BC	Codeine	158	82
2346	Julius	Grant	M	1977-06-07	Hamilton	ON	Penicillin	181	122
2347	Alice	Rosenburg	F	1987-09-17	Hamilton	ON	Penicillin	167	52
2349	Abe	Littlefield	M	2003-12-17	Burlington	ON	Codeine	186	77
2350	David	Wolf	M	1961-10-12	Georgetown	ON	Penicillin	198	123
2352	Helen	Jaffe	F	1961-08-07	Toronto	ON	Penicillin	186	91
2354	Paige	Randall	F	1962-03-23	Grimsby	ON	Penicillin	156	77
2355	Jason	Jovanovic	M	2000-08-27	Hamilton	ON	Penicillin	155	55
2356	Cuthbert	Omovich	M	1986-11-28	Hamilton	ON	Penicillin	194	105
2359	Peggy	Rivers	F	2006-12-16	Hamilton	ON	Penicillin	147	47
2360	Annie	Halliwell	F	2003-04-02	Burlington	ON	Codeine	187	65
2363	Primo	Harding	M	1969-12-26	Hamilton	ON	Valporic Acid	222	101
2365	Wendell	Brown	M	1963-07-22	Hamilton	ON	Codeine	156	77
2370	Paul	Magnus	M	2007-11-02	Hamilton	ON	Wheat	128	61
2371	Leslie	Che	F	1978-02-22	Hamilton	ON	Sulfa	177	102
2372	Stuart	Branning	M	1980-09-19	Cambridge	ON	Sulphur	183	62
2373	Jean	Logan	F	1952-09-10	Scarborough	ON	Penicillin	161	60
2374	Kirk	Archer	M	1987-03-27	Hamilton	ON	Penicillin	159	75
2375	Temple	Wylie	F	1970-02-10	Chicoutimi	QC	Penicillin	158	56
2376	Samantha	Blossom	F	1950-04-20	Thunder Bay	ON	Penicillin	165	104
2377	Chucky	Miller	M	1949-09-23	Hamilton	ON	Iodine	170	79
2378	Stanislaus	Swann	M	1981-11-04	Toronto	ON	Iodine	183	119
2379	Sabrina	Leon	F	1989-04-18	Hamilton	ON	Sulfa Drugs	166	115
2384	Julian	Kaiser	M	1961-12-03	Hamilton	ON	Cat Hair	136	77
2385	Luanne	Chino	F	1980-12-25	Ancaster	ON	Tylenol	149	67
2387	Vic	Pinzolo	M	2013-03-14	Hamilton	ON	Penicillin	75	28
2389	Woodsy	Mitchell	M	1965-12-03	Ottawa	ON	Penicillin	216	125
2390	Vera	Jeffries	F	1988-10-23	Hamilton	ON	ASA	153	110
2392	Kyle	Banzai	M	1939-03-25	Hamilton	ON	Topical Anaesthesia	161	78
2393	Nicky	Klump	M	1970-05-19	Oakville	ON	Penicillin	157	77
2395	Ray	Jackson	M	2016-07-21	North York	ON	ASA	54	11
2396	Rainier	Adamsberg	M	2004-06-19	Hamilton	ON	Sulfa Surgical Tape	176	78
2401	Eddie	Potts	M	1973-04-06	Hamilton	ON	Penicillin	192	109
2403	Vijay	Jury	M	1965-05-15	Toronto	ON	Codeine	159	87
2405	Anthony	Pullman	M	1978-09-18	Paris	ON	Penicillin	173	74
2406	Cross	Milo	M	2004-01-12	Ottawa	ON	Tylenol	201	80
2408	Charity	Langshaw	F	1957-08-21	Hamilton	ON	Sulfa	153	67
2411	Gina	Lenox	F	1984-04-10	Burlington	ON	Penicillin	139	63
2412	Maureen	Mallory	F	1937-05-21	Dundas	ON	Sulfa	165	102
2413	Randy	Lucas	M	1980-04-06	Brantford	ON	Sulfa Drugs	191	103
2414	Luanne	Makibi	F	2001-01-25	Hamilton	ON	Penicillin	167	105
2415	James	McCartney	M	1981-02-04	Milton	ON	Iodine	176	74
2420	Wanda	Boyle	F	1989-11-03	Toronto	ON	Penicillin Environmental	171	92
2422	Alexei	Schillinger	M	1981-01-23	Toronto	ON	Radioopaque Dye	154	64
2423	Giacomo	Serrano	M	1986-07-25	Burlington	ON	Eggs	173	97
2424	Frank	Blake	M	1999-08-25	Dundas	ON	Penicillin	199	122
2427	Buffy	Burdock	F	2014-11-14	Hamilton	ON	Peanuts	77	21
2428	Stan	Nappa	M	1986-03-24	Hamilton	ON	Penicillin	130	63
2430	Laura	Lockwood	F	1953-12-30	Hamilton	ON	Penicillin	166	100
2431	Emil	Engarde	M	1978-03-29	Hamilton	ON	Penicillin	158	86
2432	Robert	Vargas	M	1960-07-24	Saskatoon	SK	Codeine	201	97
2435	Cyrus	Sisco	M	1997-06-01	Hamilton	ON	Penicillin	210	113
2436	Vance	Harrington	M	1980-04-11	Hamilton	ON	Peanut Oil	199	113
2438	Agnes	Grant	F	1962-07-18	Red River	MB	Penicillin	173	95
2439	Amanda	Lino	F	1992-06-29	Hamilton	ON	Penicillin	174	89
2441	Anna	Talbert	F	2002-11-25	Ancaster	ON	Penicillin	190	75
2442	Jane	Shumway	F	1955-11-19	Hamilton	ON	Penicillin	166	67
2443	Ziva	Corbie	F	1967-10-28	Beamsville	ON	Elastoplast Bondage	154	60
2444	Kelly	Vendrell	F	1981-12-07	Oakville	ON	Penicillin	173	112
2447	Ernie	Lane	M	2005-01-19	Hamilton	ON	Penicillin	155	70
2450	Angela	Sosa	F	2012-07-02	Dundas	ON	Penicillin	111	22
2452	Patricia	Lawson	F	1978-03-14	Hamilton	ON	Micropore Tape	181	87
2454	Hercule	Hills	M	1958-05-06	Hamilton	ON	Nuts	180	78
2456	Paul	Zarkov	M	1992-10-27	Ottawa	ON	Codeine	186	116
2458	Chris	Morgan	F	1992-02-11	Burlington	ON	Penicillin	163	106
2459	Yusuke	Preston	M	1954-03-01	Hamilton	ON	Tylenol	180	108
2461	Benjamin	LeStrange	M	1955-06-16	Walnut Grove	AB	Peanut Butter	158	82
2462	Harry	McGraw	M	1960-04-03	Hamilton	ON	Penicillin	209	100
2463	Jo	Sugden	F	2012-06-15	Hamilton	ON	Cats	96	35
2464	Shiro	Thorne	M	2010-08-09	Pickering	ON	Almonds	120	48
2465	Richard	Flinstone	M	1983-07-25	Hamilton	ON	Peanuts	193	105
2467	Dirk	Ozaki	M	2007-10-25	Hamilton	ON	Penicillin	154	52
2470	Phil	Wylie	M	1979-05-03	Hamilton	ON	Penicillin	130	70
2471	Kat	Jones	F	1982-04-28	Burlington	ON	Penicillin	146	54
2472	Tem	Dawson	M	2002-02-16	Waterford	ON	Penicillin	202	79
2473	Ernestine	Sherwood	F	1989-03-28	Bancroft	ON	Penicillin	194	94
2474	Imogen	OBrien	F	1990-01-25	Toronto	ON	Penicillin	156	59
2476	Abe	Hamilton	M	2015-11-11	Ottawa	ON	Sulfa	74	19
2477	Sarah Jane	Hastings	F	2017-09-24	Delhi	ON	Penicillin	53	10
2478	Norine	Quirke	F	1997-08-29	Walnut Grove	AB	Hay Fever	170	85
2479	Elvis	Murphy	M	2003-09-11	Bartonville	ON	Penicillin	176	70
2483	Yuri	Provenza	M	2008-04-08	Peterborough	ON	Sulfa	143	58
2484	Faye	Langshaw	F	1927-03-03	Cambridge	ON	Erythromycin	163	104
2486	Jack	Lynch	M	2017-09-01	Hamilton	ON	Penicillin	46	10
2489	Nino	Maroni	M	1987-11-06	Grimsby	ON	Penicillin	171	82
2490	Edward	Donnelly	M	2005-09-14	Hamilton	ON	Penicillin	177	72
2491	Hyman	Corleone	M	1967-02-04	Burlington	ON	Penicillin	197	111
2493	Maria	Spencer	F	1998-10-03	Hamilton	ON	Sulfa	159	102
2494	Jonathan	Sionis	M	2011-04-23	Hamilton	ON	Penicillin	107	43
2497	Sharon	Nanny	F	1991-10-18	Saskatoon	SK	Penicillin Environmental	166	71
2499	Peter	Wallace	M	1990-06-23	Hamilton	ON	Codeine	175	67
2502	Barry	Mephesto	M	2003-05-02	Milton	ON	Salicylic Acid	208	80
2504	Luna	Vondopoulos	F	1954-03-16	Hamilton	ON	Sulfa	174	66
2505	Cross	Salieri	M	1968-10-28	Hamilton	ON	Sulfa Drugs	134	75
2508	Jack	Waterfield	M	1993-10-11	Hamilton	ON	Topical Anaesthesia	181	92
2509	Vernon	Beckett	M	2000-07-20	Hamilton	ON	Sulfa Drugs	163	74
2511	Lou	Ichi	M	2014-02-23	Hamilton	ON	Penicillin	81	26
2515	Alan	Kohran	M	2004-10-06	Hamilton	ON	Strawberries	187	81
2516	Achille	Cameron	M	1972-07-08	Burlington	ON	Codeine	174	118
2520	Zane	Che	F	1957-10-06	Toronto	ON	Servere Peanut Allergy	168	91
2522	George	Riggs	M	1987-12-18	Ancaster	ON	Penicillin	162	71
2523	Don	Starveling	M	1962-01-27	Hamilton	ON	Codeine	198	101
2524	Kurt	Bash	M	2002-09-03	Hamilton	ON	Tetracycline	191	78
2526	Laszlo	Hastings	M	1979-05-29	Hamilton	ON	Strawberries	139	70
2529	Laurel	Potts	F	2015-10-13	Hamilton	ON	Pet Hair	67	17
2530	David	Riviera	M	1995-08-29	Hamilton	ON	Strawberries	184	117
2531	Sarah	Thevenet	F	1955-07-22	Hamilton	ON	ASA	151	70
2533	Yosh	McPherson	F	1994-11-11	Hamilton	ON	Salicylic Acid	169	55
2535	Walter	Rockatansky	M	2001-10-27	Toronto	ON	Penicillin	215	94
2536	Jackson	Martinelli	M	2003-08-09	Toronto	ON	Codeine	194	83
2538	Elizabeth	Del Toro	F	2014-11-26	Hamilton	ON	Tape	67	18
2540	Sal	Barolli	M	1962-01-31	Burlington	ON	Penicillin	150	74
2541	Zatanna	Tyrell	F	1952-05-07	Hamilton	ON	Penicillin	137	50
2542	Kay	Swanson	F	1958-11-02	Hamilton	ON	Penicillin	157	49
2547	Chick	Ash	M	1973-03-22	Red River	MB	Codeine	170	107
2549	Charlie	Cooper	M	1991-04-25	Kingston	ON	Penicillin	148	72
2551	Tess	Kobayakawa	F	2003-11-21	Hamilton	ON	Codeine	174	65
2555	Libby	Taylor	F	2002-03-03	Hamilton	ON	Codeine	167	60
2564	Debra	Seaton	F	1954-04-15	Hamilton	ON	Penicillin	141	64
2567	Antonia	Greenaway	F	1995-09-17	Hamilton	ON	Penicillin	177	114
2568	James	Frye	M	2008-10-11	Hamilton	ON	Penicillin	134	48
2571	Tom	Kelso	M	1995-09-11	Carisle	ON	Penicillin	156	67
2573	Harry	Dallas	M	1966-01-27	Milton	ON	Penicillin	168	82
2575	Thomas	Xavier	M	1961-06-25	Hamilton	ON	Penicillin	202	87
2577	Jiveshwar	Evans	M	1957-12-26	Hamilton	ON	Tetracycline	164	80
2582	Emma	McClure	F	2003-05-15	Brantford	ON	Penicillin	158	62
2583	Louis	Drama	M	1997-04-23	Hamilton	ON	Latex	190	131
2586	Hecky	Stone	M	1948-11-10	Hamilton	ON	Tylenol	206	96
2587	Melody	Roberts	F	1980-06-10	Orangeville	ON	Penicillin	152	72
2588	Alan	Clouseau	M	1998-10-24	Hamilton	ON	Codeine	204	119
2589	Victor	Sinclair	M	1953-03-10	Hamilton	ON	Eggs	156	75
2594	Walter	Bachchan	M	2008-01-11	Hamilton	ON	Strawberries	136	47
2597	Georgina	Knight	F	1961-03-23	Hamilton	ON	Penicillin	173	91
2598	Dana	Pekkala	F	1989-03-27	Niagara Falls	ON	Penicillin	142	49
2600	Kim	Pullman	F	2000-04-16	Montreal	QC	Codeine	164	84
2601	Lyan	Skelton	M	1976-10-31	Hamilton	ON	Codeine	177	59
2603	Walter	Spade	M	1984-09-22	Dunton	ON	Penicillin	191	129
2604	Artemus	Knight	M	1978-03-01	Hamilton	ON	Penicillin	176	117
2605	Stringer	Thirteen	M	1982-05-25	Hamilton	ON	Penicillin	198	104
2607	Wilfred	Sugden	M	2013-06-08	Dunton	ON	Codeine	87	30
2608	Sal	Tsujimoto	M	1963-06-27	Burlington	ON	ASA	159	65
2609	Paul	Omovich	M	1971-05-17	Cambridge	ON	Codeine	167	85
2614	Midge	Hope	F	1989-06-06	Hamilton	ON	Penicillin	156	56
2615	Gillian	Munroe	F	2018-03-03	Hepworth	ON	Peanuts	39	6
2618	Dorrie	Wright	F	1972-12-29	St. Catharines	ON	Penicillin	152	77
2621	Rob	Waturs	M	1964-08-04	Dunton	ON	ASA	220	118
2622	Jean	Doyle	F	2015-08-31	Ancaster	ON	ASA	57	14
2625	Martha	Swoop	F	2000-06-22	Selkirk	ON	Sulfa	148	65
2626	Iris	Grant	F	1962-04-23	Grimsby	ON	Penicillin	173	97
2627	Mary	Bukater	F	1963-03-02	Hamilton	ON	Bee Stings	174	116
2631	Tom	McNab	M	1959-04-13	Caledonia	ON	ASA	149	68
2632	Peter	Spellman	M	1994-06-20	Brampton	ON	Codeine	216	104
2634	Ema	ORourke	F	1978-06-02	Hamilton	ON	Sulfa	134	71
2635	Marvin	Queen	M	1994-06-20	Hamilton	ON	Penicillin	154	70
2636	Madeline	Umbridge	F	2013-11-08	Barrie	ON	Sulfa	72	21
2637	Tom	Quince	M	2017-07-04	Hamilton	ON	ASA	38	6
2639	Quinn	De Lesseps	F	2016-10-23	Waterford	ON	Valporic Acid	50	9
2641	Wilfred	Vane	M	1968-09-22	Hamilton	ON	Penicillin Diazepam	179	101
2642	Cordelia	Bayles	F	1982-05-02	Burlington	ON	Sulfa Drugs	183	87
2643	Charmian	Mieux	F	1949-06-05	Kingston	ON	Cheese	135	68
2644	Sabrina	Mancini-Corleone	F	1965-08-22	Grimsby	ON	Penicillin	155	71
2646	George	Givens	M	2013-10-07	Hamilton	ON	Penicillin	79	28
2647	Doris	Cao	F	1989-05-04	Hamilton	ON	Penicillin	138	70
2648	Amelia	Forbin	F	1970-07-17	Burlington	ON	Cat Hair	189	97
2649	Eddie	Skye	M	2015-11-22	Sarnia	ON	ASA	71	18
2651	Melinda	Henderson	F	2010-10-06	Hamilton	ON	Penicillin	95	34
2652	Charles	Tony	M	1957-04-29	Red River	MB	Penicillin	205	118
2653	Thomas	Ravenclaw	M	1974-08-30	Sarnia	ON	Penicillin	212	117
2656	Cal	Boxer	M	1985-09-19	Burlington	ON	Sulfa Drugs	178	112
2658	Tiffany	McCrary	F	2014-02-13	Hamilton	ON	Sulfa	72	22
2663	Joe	Iverson	M	1979-06-21	Hamilton	ON	Penicillin	186	100
2667	Lisa	Lodge	F	2012-01-18	Toronto	ON	Codeine	94	27
2668	Fleur	Pekkala	F	1976-04-13	Red River	MB	Sulfa Drugs	148	98
2670	Frank	Dennis	M	2003-06-29	Montreal	QC	Acetaminophen	189	84
2676	Kaye	Spelvin	F	1981-07-20	Hamilton	ON	Peanut Butter	165	107
2677	Lucky	Allen	M	2010-06-08	Ottawa	ON	Sulfa	117	48
2680	Damian	Winslow	M	2012-02-26	Hamilton	ON	Seafood	103	30
2681	Domenico	Glicker	M	1950-10-01	Hamilton	ON	Bee Stings	198	120
2683	John	Lee	M	1995-08-29	Toronto	ON	Codeine	218	99
2686	Alex	John	M	1985-08-15	Grimsby	ON	Peanuts	194	116
2689	Kurt	Jones	M	2005-05-02	Burlington	ON	Penicillin	155	68
2691	Georgina	Carver	F	1978-11-08	Toronto	ON	Codeine	151	115
2692	Antonio	Oyama	M	1997-11-02	Hamilton	ON	Penicillin	174	84
2693	Ronnie	Dingle	M	1966-06-07	Victoria	BC	Penicillin	159	70
2694	Jason	Walker	M	1994-07-24	Ottawa	ON	Sulfa Drugs	193	92
2696	Peter	Canfield	M	2009-07-21	Toronto	ON	Penicillin	110	50
2701	David	Dennis	M	1953-11-12	Smithville	ON	Penicillin	184	100
2702	Santino	Bennett	M	1970-07-27	Tyndale	ON	Penicillin	167	76
2703	Jenna	Barton	F	1987-08-07	Burlington	ON	Peanuts	193	103
2705	Simon	Brockway	M	2002-05-04	Oakville	ON	Penicillin	191	83
2706	Alex	Angelline	F	2013-03-31	Smithville	ON	Shellfish	87	24
2709	Olympe	Brady	F	1980-10-21	Hamilton	ON	Sulfa	176	89
2711	Shinwell	Brady	M	1959-02-08	Northbay	ON	Strawberries	197	106
2713	Charlie	Ripstein	M	1967-10-29	Grimsby	ON	Penicillin	197	119
2714	Mickey	Fidelma	M	1952-06-05	Odessa	ON	Codeine	219	99
2716	Vicki	Masucci	F	1975-07-07	Hamilton	ON	Penicillin	180	97
2717	Madeline	Brady	F	1967-04-09	Hamilton	ON	Iodine	168	46
2718	Harley	Tryggvassen	F	1973-06-03	Fonthill	ON	Penicillin	151	100
2719	Chris	Kelling	F	1989-10-09	Whitby	ON	Peanut Butter	146	60
2720	Agnes	Cackle	F	2012-01-12	Hamilton	ON	Penicillin	96	31
2724	Ben	Tennison	M	1992-10-21	Toronto	ON	Valporic Acid	155	56
2725	Amanda	Owens	F	2016-10-22	Hamilton	ON	Strawberries	60	14
2727	Montana	Chaudury	F	1952-09-01	Cambridge	ON	Penicillin	156	83
2728	Bridget	Wakeman	F	1958-02-12	Carisle	ON	Penicillin	153	61
2730	Jadzia	Magliozzi	F	1978-09-27	Toronto	ON	Latex	132	58
2731	Catherine	Bennet	F	1952-03-01	Timmins	ON	Penicillin	138	57
2732	George	Scott	M	2017-07-30	Brockville	ON	Penicillin	44	8
2734	Faye	Leigh	F	1992-10-05	Milton	ON	Codeine	157	63
2735	Martha	Costigan	F	1981-03-20	Hamilton	ON	Sulfa Drugs	135	59
2738	Gary	Mephesto	M	1948-08-09	Toronto	ON	Penicillin	176	55
2739	Motoko	Scotts	F	1971-08-07	Hamilton	ON	Sulfa Drugs	175	54
2740	Jennifer	Meacham	F	1961-09-06	Toronto	ON	Radioopaque Dye	188	85
2742	Sue	Grant	F	1957-05-29	Hamilton	ON	Sulfa	163	43
2743	Ellen	Miller	F	1969-07-06	Hamilton	ON	Acetaminophen	173	82
2744	Daniel	Schibetta	M	2016-11-25	Hamilton	ON	ASA	51	11
2745	Vijay	Spellman	M	1987-11-25	Hamilton	ON	Dust	204	115
2746	Daphne	Tsuna	F	1981-07-17	Hamilton	ON	Tylenol	165	107
2748	Harold	Bowles	M	1976-04-14	Red River	MB	Penicillin	159	75
2749	Karen	Veeteren	F	1997-08-02	Hamilton	ON	Codeine	176	89
2752	Sarah Jane	Jones	F	2003-08-01	Hamilton	ON	Morphine	172	61
2753	Linda	McDonald	F	1982-12-25	Hamilton	ON	Penicillin	163	88
2756	Kymani	Robbins	M	2017-10-12	Brantford	ON	Penicillin	35	6
2759	Andy	Guarnaccia	M	1970-04-10	Grimsby	ON	Penicillin	168	76
2760	Charles	Barclay	M	1980-05-29	Hamilton	ON	Latex	188	110
2762	Christy	Bennett	F	1975-01-23	Hamilton	ON	Penicillin	134	58
2765	Tolian	Bennet	M	1966-07-07	Hamilton	ON	Penicillin	174	100
2766	Rose	McDonald	F	1950-02-11	Hamilton	ON	Penicillin	155	69
2767	Alexandra	Allan	F	2010-05-10	Hamilton	ON	Iodine	117	37
2770	Norman	Halliwell	M	2017-11-05	Hamilton	ON	Penicillin	35	6
2772	James	Sinclair	M	1962-07-26	Hamilton	ON	Penicillin	158	74
2773	Norton	Hubbard	M	2014-03-21	Hamilton	ON	Codeine	81	26
2774	Victor	Morris	M	1957-12-23	Brampton	ON	Sulfa Drugs	206	118
2775	Brenda	Lockwood	F	2008-10-15	Hamilton	ON	Penicillin	121	53
2776	Daphne	Lester	F	1978-05-11	Burlington	ON	Penicillin	131	50
2777	Tom	Dundee	M	1965-06-11	Burlington	ON	Eggs	161	75
2783	Ted	Marvin	M	2003-04-16	Cambridge	ON	Penicillin	193	75
2784	Tony	Harrington	M	2000-08-12	Dunton	ON	Sulfa	144	78
2786	Alan	Billa	M	1952-01-26	Hamilton	ON	Penicillin	160	74
2787	Minami	McArthur	M	1972-06-10	Barrie	ON	Almonds	198	109
2789	Akira	Henderson	M	2013-06-11	Hamilton	ON	Codeine	89	30
2791	Francis	Stone	M	1967-09-28	Hamilton	ON	Sulfa Drugs	168	88
2794	Tem	LeStrange	M	1996-11-19	Brantford	ON	Codeine	164	68
2795	Peter	Dawson	M	1962-07-20	Brockville	ON	Penicillin	192	118
2796	Tyler	Sanchez	M	1957-09-16	Mississauga	ON	Salicylic Acid	149	77
2798	Roland	Sweets	M	2005-09-10	Misty	AB	Penicillin	153	67
2799	Misty	Elms	F	1956-09-22	Hamilton	ON	Sulfa	148	50
2800	Kit	Carlos	M	1983-03-18	Ancaster	ON	Sulfa Drugs	186	109
2801	Julie	Hawker	F	1975-03-23	Burlington	ON	Sulfa	183	95
2802	Shawn	Brockway	M	1979-03-29	Grimsby	ON	Penicillin	175	119
2804	Roland	Lewis	M	1963-10-19	Toronto	ON	Penicillin	179	110
2805	Ethan	Glicker	M	2006-06-18	Fruitland	ON	Penicillin	161	62
2811	Gabriel	Price	M	1973-03-08	Milton	ON	Penicillin	189	63
2813	Kelly	Landsman	F	1952-03-22	Walnut Grove	AB	Morphine	160	64
2814	Theo	Lopez-Fitzgerald	M	1977-04-04	Ancaster	ON	Codeine	160	69
2816	Stella	Owens	F	1989-01-14	Hamilton	ON	Penicillin	172	108
2817	Basil	Milestone	M	1966-06-12	Calgary	ON	Penicillin	212	131
2820	Fleur	Mannheim	F	1987-12-11	Carisle	ON	Peanuts	167	98
2824	Theo	Vimes	M	1999-02-03	Dundas	ON	Sulfa	190	113
2826	Thomas	Larkin	M	1951-11-19	Hamilton	ON	Codeine	144	70
2828	Kurt	Hedley	M	1991-05-10	Hamilton	ON	Penicillin	192	126
2829	Oswald	Handley	M	2005-08-04	Hamilton	ON	Cheese	150	65
2830	Louie	Moorehead	M	1980-07-16	Brantford	ON	Tape	139	72
2831	Rob	Lockwood	M	1965-09-10	Hamilton	ON	Penicillin	162	78
2832	Larry	Adams	M	2007-11-02	Ancaster	ON	Codeine	156	62
2833	Grant	Whitefield	M	1993-07-07	Burlington	ON	Penicillin	193	105
2837	Oliver	Licalsi	M	2012-09-28	Hamilton	ON	Penicillin	100	27
2840	Madeline	Skye	F	1953-10-11	Hamilton	ON	Penicillin	150	62
2841	Spats	Buchanan	M	1971-05-07	Hamilton	ON	Micropore Tape	198	102
2843	Ronnie	Turtle	M	1951-09-12	Cambridge	ON	Sulfa	149	64
2844	Haiku	Lang	M	1951-11-09	Toronto	ON	Codeine	147	77
2845	Elizabeth	Blake	F	1960-02-09	Hamilton	ON	Penicillin	154	62
2846	Barbara	Mitchell	F	1975-11-19	Peterborough	ON	Penicillin	166	77
2847	Art	Ranall	M	1992-05-02	Burlington	ON	ASA	179	80
2850	Jane	Freeman	F	2006-12-04	Delhi	ON	Penicillin	137	59
2855	Endora	Raynor	F	1999-03-23	Brantford	ON	ASA	159	55
2856	Sean	OMalley	M	1961-05-08	Halifax	NS	Sulfa	164	76
2859	Chucky	Schwarzheimer	M	1968-11-12	Hamilton	ON	Shellfish	166	66
2860	Epiphany	Spuckler	F	1976-09-05	Hamilton	ON	Bee Stings	146	64
2861	Rory	Blair	F	1963-02-01	Pickering	ON	Penicillin	155	55
2864	Tom	Fitz	M	2011-05-14	Hamilton	ON	Penicillin	122	46
2866	Kris	Lupertazzi	F	1961-06-23	Cambridge	ON	Penicillin	147	48
2868	James	Farley	M	2006-05-11	Hamilton	ON	Shellfish	174	60
2869	Jocelyn	Erin	F	1977-06-14	Delhi	ON	Hay Fever	171	60
2870	Dolores	Rosenberg	F	2011-04-01	Hamilton	ON	ASA	84	28
2871	Harry	Leone	M	1998-06-06	Burlington	ON	Penicillin	209	97
2872	Millicent	Sawyer	F	1976-08-28	Hamilton	ON	Tetracycline	148	79
2875	Joey	Montford	M	1952-10-07	Burlington	ON	Tylenol	175	61
2877	Daphne	Hughes	F	1967-01-09	Toronto	ON	Penicillin	161	107
2878	Sarah	Pike	F	1973-04-26	Chicoutimi	QC	Morphine	170	116
2879	Agnes	Jessup	F	1965-03-28	Fruitland	ON	Penicillin	157	60
2881	Melanie	Urameshi	F	1950-12-23	Guelph	ON	Codeine	162	73
2883	Lydia	Graf	F	1957-03-21	Stoney Creek	ON	Penicillin	155	69
2884	Larry	Malvern	M	2006-10-29	Hamilton	ON	Penicillin	147	62
2887	Naoto	Martin	F	1965-11-20	Hamilton	ON	Penicillin	159	56
2888	Lilly	Zarkov	F	1964-07-12	Burlington	ON	Cheese	140	67
2891	Maureen	von Uberwald	F	2000-01-14	Burlington	ON	Penicillin	162	60
2892	Belladonna	Thomas	F	2014-04-26	Hamilton	ON	Almonds	66	19
2894	Delores	French	F	1974-07-26	Hamilton	ON	Penicillin Sulpha Drugs	164	52
2896	Sigrid	Margo	F	1996-08-02	Hamilton	ON	Walnuts	159	100
2898	Marlo	MacGyver	M	2010-10-26	Hamilton	ON	Penicillin	123	51
2899	Cassie	Warren	F	1978-10-10	Milton	ON	Codeine	163	87
2900	Corrado	Capone	M	1983-10-10	Burlington	ON	Iodine	165	73
2902	Hayley	Polin	F	1972-09-15	Brantford	ON	Penicillin	179	83
2903	Wayne	FUnke	M	1995-04-13	Dundas	ON	Codeine	154	62
2904	Lisa	Maraschino	F	1963-07-09	Hamilton	ON	Milk	177	111
2905	Axel	Denton	M	1949-12-30	Ancaster	ON	Eggs	145	69
2906	Linda	Moorehead	F	2018-01-19	Hamilton	ON	ASA	46	8
2907	Turanga	Meeks	F	1993-11-01	Paris	ON	Codeine	172	107
2908	Ed	Coltrane	M	1994-01-11	Hamilton	ON	Pet Hair	149	75
2909	Maria	Travis	F	1962-06-15	Thunder Bay	ON	Penicillin	160	49
2910	Isabella	Taylor	F	1983-11-10	Toronto	ON	Tetracycline	148	68
2911	Manick	Smythson	M	1994-11-20	Mississauga	ON	Valporic Acid	170	79
2912	Al	Lewis	M	1983-03-16	Hamilton	ON	Micropore Tape	161	86
2913	Michael	Che	M	1971-06-23	Ancaster	ON	Penicillin	154	74
2915	Jack	McArthur	M	1965-03-24	Hamilton	ON	Penicillin	173	78
2916	Al	Heat	M	1964-08-28	Hamilton	ON	Penicillin	203	108
2917	Kima	Chandler	F	2015-05-04	Hamilton	ON	Penicillin	63	17
2918	Neil	Cale	M	2011-06-03	Hamilton	ON	Valporic Acid	113	37
2919	Agnes	Stottlemeyer	F	2017-01-29	Rockford	ON	Penicillin	50	8
2920	Megan	Barzini	F	1956-03-06	Burlington	ON	Micropore Tape	166	93
2921	Don	Sunen	M	2013-06-01	Carlisle	ON	Penicillin	80	27
2926	Jo	Schultz	F	1979-01-15	Hamilton	ON	Bee Stings	171	100
2929	Mel	Carlos	M	1989-04-18	Tyndale	ON	Acetaminophen	183	112
2932	Arnold	Clearwater	M	1993-07-23	Brantford	ON	Codeine	175	75
2934	Billie	Temple	F	1968-08-25	Burlington	ON	Penicillin	147	60
2936	Temple	Valentine	F	1969-02-14	Inverness	NS	Peanuts	160	85
2940	Linda	Burton	F	1978-12-21	Waterford	ON	Sulfa	172	114
2941	Lady	Jarvik	F	2007-12-03	Waterford	ON	Almonds	129	45
2942	Tom	Leone	M	2002-08-10	Hamilton	ON	Penicillin	197	83
2944	Sara	Meredith	F	1963-09-28	Hamilton	ON	Codeine	164	94
2946	Gianni	Disher	M	1962-01-07	Calgary	ON	Hay Fever	193	101
2947	Angua	Halliwell	F	1956-04-28	Windsor	ON	Penicillin Diazepam	170	81
2948	Jake	De Lena	M	1953-11-08	Stoney Creek	ON	Penicillin	175	85
2949	Jack	McLaren	M	1965-05-16	Hamilton	ON	Tetracycline	177	103
2957	Damon	Fairfax	M	1976-09-06	Fruitland	ON	Milk	193	126
2958	Antonio	Donovan	M	1967-04-28	Walnut Grove	AB	ASA	185	107
2959	George	Kane	M	1960-10-09	Toronto	ON	Milk	177	110
2961	Emily	Levinson	F	1986-09-14	Hamilton	ON	Penicillin	166	45
2963	Dotty	Jones	F	1994-02-06	Fruitland	ON	Codeine	165	91
2964	Jim	Mephesto	M	1994-10-07	Kingston	ON	Penicillin	142	90
2966	Ema	Edgecombe	F	1987-10-28	Kelowna	BC	Penicillin	145	51
2967	Roger	Burbank	M	2006-05-24	Orillia	ON	Penicillin	157	68
2969	Jean	Davenport	F	1986-04-07	Hamilton	ON	Penicillin	172	71
2970	Carrie	Spellman	F	2009-04-29	Hamilton	ON	Penicillin	109	36
2971	Linda	Jackson	F	1970-09-09	Caledonia	ON	ASA	142	67
2973	Kelly	Wylie	F	1979-08-29	Paris	ON	Penicillin	167	89
2975	Megan	Taylor	F	1978-02-12	Burlington	ON	Sulfa Drugs	176	82
2979	Nikki	Fox	F	1964-03-24	Hamilton	ON	Micropore Tape	140	59
2980	Lily	Zatara	F	2004-05-23	Hamilton	ON	Penicillin	177	55
2984	Will	Chandler	M	1988-04-20	Hamilton	ON	Sulfa	182	116
2985	Hal	Kaiser	M	2011-04-24	Toronto	ON	Penicillin	88	34
2987	Angela	James	F	1954-06-25	Paris	ON	Penicillin	158	72
2989	Nancy	Thackeray	F	2018-02-24	Simcoe	ON	Tape	34	2
2992	Michael	Tabootie	M	1977-03-09	Hamilton	ON	Sulfa Drugs	203	111
2994	Loveday	Repulsa	F	1950-07-10	Hamilton	ON	ASA	167	90
2995	Tem	Moreland	M	2008-03-29	London	ON	Penicillin Sulpha Drugs	142	46
2996	Loretta	Iverson	F	1964-01-31	Hamilton	ON	Codeine	163	59
2997	Anna	Millhone	F	1954-06-14	Unionville	ON	Micropore Tape	165	62
2998	Domenica	Orlock	F	2015-05-04	Walnut Grove	AB	Codeine	67	18
2999	Phyllis	Stackhouse	F	2016-05-21	Toronto	ON	Penicillin	55	13
3000	Nicky	Prefect	M	1951-05-01	Hamilton	ON	Penicillin	161	78
3001	Anthony	Scully	M	1974-03-17	Guelph	ON	Penicillin	169	83
3003	Te	Trenton	F	1951-10-01	Vancouver	BC	Penicillin	140	73
3004	Nataria	Midgen	F	1998-06-18	Hamilton	ON	Sulfa	155	51
3006	Sybel	Crane	F	1991-10-12	Hamilton	ON	Penicillin	167	68
3008	Ian	Iosefa	M	1984-01-22	Peterborough	ON	Penicillin	148	77
3010	Edgar	Vector	M	2001-04-27	Guelph	ON	Codeine	187	94
3012	Henry	Cobb	M	1981-03-11	Hamilton	ON	Penicillin	184	119
3013	Rico	Hillard	M	1960-01-16	Hamilton	ON	Penicillin	156	84
3014	Tuppence	Tsuna	F	1961-03-11	Hamilton	ON	Penicillin	131	72
3016	Sally	Sternbergen	F	1950-03-21	Brantford	ON	Penicillin	154	100
3018	Harriet	Turner	F	2000-12-10	Hamilton	ON	Penicillin	151	73
3021	Hoshi	Blocksberg	F	1950-06-03	Hamilton	ON	Penicillin	171	103
3022	Leo	Sullivan	M	1987-11-29	Hamilton	ON	Penicillin	204	131
3024	Linda	Sharma	F	1997-03-26	Mississauga	ON	Penicillin	159	55
3025	Temple	Tsujimoto	F	1972-03-31	Hamilton	ON	Penicillin	169	61
3028	Jackie	Dingle	F	1981-04-17	Montreal	QC	Codeine	158	71
3029	Miss	McDonald	F	1951-07-19	Toronto	ON	Peanuts	134	60
3030	Joyce	Thackeray	F	1952-04-14	Orillia	ON	Penicillin	171	81
3032	Elisa	Clock	F	1960-06-20	St. Catharines	ON	Penicillin	147	47
3033	Sydney	Stewart	F	1992-03-29	St. Catharines	ON	Iodine	184	115
3034	Tabitha	Grant	F	1949-12-14	Hamilton	ON	Bee Stings	168	55
3035	Ronnie	Thorne	M	1954-03-23	Hamilton	ON	Codeine	176	80
3037	Jim	Stewart	M	1998-03-06	Hamilton	ON	Penicillin	195	131
3039	Malik	Burdock	M	2003-10-13	Brantford	ON	Sulfa	189	81
3040	Kazuki	Hoare	M	1988-01-22	Hamilton	ON	Sulfa Drugs	201	94
3041	Sara	Johnson	F	2017-02-19	Dundas	ON	ASA	37	6
3042	Basil	Brockman	M	1974-09-09	Hamilton	ON	Codeine	176	112
3043	Mickey	Spellman	M	1994-12-03	Barrie	ON	Feathers	191	113
3045	Lucky	White	M	1949-06-05	Guelph	ON	Micropore Tape	154	91
3050	Ben	Mephesto	M	1970-09-02	Marcam	ON	Tylenol	164	61
3052	Quinn	Walker	F	1987-10-19	Grimsby	ON	Penicillin	170	90
3053	Andrew	Reilly	M	1978-04-17	Bartonville	ON	ASA	173	70
3054	Lilly	Parkinson	F	1995-11-09	Hamilton	ON	Penicillin	155	56
3055	Giacomo	Randall	M	1953-10-07	Montreal	QC	Hay Fever	148	85
3058	Reginald	George	M	1968-06-21	Hamilton	ON	Micropore Tape	199	116
3060	Betty	Thomas	F	1958-08-13	Carlisle	ON	Sulphur	193	83
3061	Paige	Dean	F	1971-06-21	Grimsby	ON	Penicillin	149	80
3063	Frederico	Lerrol	M	1978-04-22	Toronto	ON	Penicillin	143	77
3064	Celestina	Principal	F	1972-04-19	Hamilton	ON	Sulfa	163	92
3065	Billie	Neutron	F	1958-10-14	Hamilton	ON	Codeine	167	87
3068	Carlos	Harrison	M	1982-04-01	Brantford	ON	Salicylic Acid	145	78
3069	Chucky	Brikowski	M	1992-07-15	Hamilton	ON	Penicillin	151	59
3070	Richard	Wildhack	M	1980-11-12	Grimsby	ON	Bee Stings	140	70
3071	Ted	Powers	M	2018-03-29	Milton	ON	Codeine	43	4
3072	Bruno	Knight	M	2015-01-10	Hamilton	ON	Codeine	66	22
3074	Grant	Hernandez	M	1960-12-22	Hamilton	ON	Penicillin	171	119
3075	Marsellus	Falcone	M	1925-03-14	Smithville	ON	Codeine	202	124
3076	Adam	Freamon	M	1961-08-06	Hamilton	ON	Sulfa	209	112
3077	Penelope	Gordon	F	2009-12-08	Hamilton	ON	Peanut Butter	123	46
3079	Betty	Petrie	F	1998-06-13	Burlington	ON	Sulfa Drugs	168	113
3080	Peter	Dean	M	1963-06-05	Delhi	ON	Codeine	206	123
3082	Alex	Burbage	M	1958-02-06	Hamilton	ON	Penicillin	165	121
3083	Constance	Dahl	F	1971-05-22	Hamilton	ON	Penicillin	147	66
3084	Jack	Stark	M	1976-09-25	Hamilton	ON	Sulfa	196	124
3085	Sara	Sawyer	F	1967-09-09	Hamilton	ON	Penicillin	179	92
3086	Carmine	Willing	M	1994-03-27	Hamilton	ON	Penicillin	194	100
3087	Diana	Hoare	F	1950-02-12	Toronto	ON	Penicillin	166	78
3088	Martin	LeStrange	M	1956-07-21	Stoney Creek	ON	Penicillin	154	84
3089	Bill	Dax	M	2010-08-31	Barrie	ON	Sulfa	130	43
3090	Michael	Bruckshot	M	1997-07-29	Toronto	ON	Sulfa Drugs	177	89
3094	Arjen	Kent	M	1983-09-01	Whitby	ON	Penicillin	154	62
3096	Jin	Vaughn	M	1985-05-06	Hamilton	ON	Penicillin	163	75
3098	Curro	Preston	M	1996-01-05	Hamilton	ON	ASA	164	69
3101	Henry	Spellman	M	2014-11-29	Hamilton	ON	Penicillin	67	22
3102	Sam	Mills	M	2005-04-06	Hamilton	ON	Sulfa	151	74
3104	Emma	Stape	F	1963-04-14	Toronto	ON	Penicillin	175	55
3108	Javier	Snout	M	1973-03-21	Hamilton	ON	Penicillin	151	73
3110	Frank	Masucci	M	1986-11-01	Hamilton	ON	Penicillin	153	80
3111	Frank	Aceveda	M	1955-05-22	Hamilton	ON	Penicillin	209	103
3114	Veronica	Stottlemeyer	F	2017-09-20	Milton	ON	Sulfa	35	6
3116	Maxim	Grayson	M	1978-02-14	Hamilton	ON	Strawberries	204	117
3117	Harry	Fife	M	1984-08-09	Hamilton	ON	Penicillin	206	98
3122	Tex	Roth	M	2007-10-05	Dundas	ON	ASA	146	64
3123	Sam	Carver	M	1980-11-28	Burlington	ON	Penicillin	171	97
3125	Ryuichiro	Taylor	M	1990-12-30	Ajax	ON	Codeine	133	63
3127	Simon	Vimes	M	2014-02-20	Toronto	ON	Penicillin	81	27
3128	Tristan	Pomfrey	M	1989-07-13	St. Catharines	ON	Codeine	196	126
3129	Goldie	Forbin	F	1975-07-12	Hamilton	ON	Penicillin	170	96
3131	Ronnie	Pulaski	M	1987-09-22	Hamilton	ON	Penicillin	200	109
3134	Tara	Stanton	F	2008-02-04	Hamilton	ON	Codeine	112	51
3135	Malma	Cooper	F	1976-04-27	Hamilton	ON	Penicillin	152	62
3136	Annie	Schwartz	F	1999-11-14	Burlington	ON	Sulfa Drugs	164	69
3137	Claire	Leone	F	1964-09-29	Hamilton	ON	Penicillin	174	91
3140	Salvatore	Torres	M	1976-10-28	Hamilton	ON	Penicillin	173	80
3143	Phoebe	Fraser	F	1958-11-13	Hamilton	ON	Peanuts	133	76
3147	June	Smart	F	1974-06-13	Grimsby	ON	Penicillin	168	52
3151	Wellington	Fitz	M	1965-06-20	St. Catharines	ON	Penicillin	199	118
3157	Peter	Meedhan	M	2013-06-15	Victoria	BC	Codeine	93	30
3158	Cross	Halliwell	M	1973-08-02	Waterford	ON	Topical Anaesthesia	186	133
3160	Rex	Clericuzio	M	2002-04-29	Toronto	ON	Hay Fever	197	75
3161	Imogen	Parrish	F	2004-09-11	Hamilton	ON	Penicillin	159	57
3162	Peter	Moses	M	2002-12-10	Hamilton	ON	Penicillin Environmental	193	87
3166	Peter	Alvarez	M	2014-10-02	Hamilton	ON	Penicillin	66	21
3168	George	Malfoy	M	1964-02-23	Hamilton	ON	Penicillin	180	81
3171	Samantha	Blossom	F	1974-10-01	Hamilton	ON	Codeine	156	47
3172	Tony	Double	M	1953-06-15	Halifax	NS	Codeine	156	71
3174	Sabrina	Preston	F	1970-10-11	Windsor	ON	Penicillin	143	59
3177	Claudia	Dean	F	1986-06-18	Toronto	ON	Strawberries	156	51
3178	Don	Brown	M	1955-08-20	Edmonton	AB	Penicillin	144	63
3179	Mel	Maximoff	F	1999-03-28	Thunder Bay	ON	Penicillin	147	48
3180	Mona	Manu	F	1992-04-26	Hamilton	ON	Sulfa	169	98
3181	Cletus	Punchinello	M	1977-08-20	Ottawa	ON	Sulfa Drugs	193	108
3182	Signor	Johnson	M	2001-04-30	Brantford	ON	Peanut Butter	204	88
3183	Lina	Cox	F	1964-12-08	Hamilton	ON	Penicillin Sulpha Drugs	174	111
3185	Gary	Burdock	M	2005-06-09	Walnut Grove	AB	Codeine	167	62
3186	Tyra	Shannon	F	1974-02-22	Hamilton	ON	Morphine	143	68
3189	Lloyd	Nesmith	M	1977-06-24	Hamilton	ON	Penicillin	172	64
3193	Miss	Marvin	F	1971-10-14	Hamilton	ON	Peanuts	144	64
3194	Kenny	Milbury	M	2013-07-04	Brantford	ON	Codeine	84	27
3195	Achille	Thomas	M	1994-10-08	Hamilton	ON	Penicillin	157	59
3197	Tara	Anders	F	1955-03-10	Toronto	ON	Valporic Acid	158	63
3198	Aldo	Lang	M	2010-05-05	Hamilton	ON	Penicillin	99	42
3199	Mrs	Rothstein	F	1959-03-25	Hamilton	ON	Sulfa	159	62
3202	Mercedes	Jordan	F	2013-07-25	Hamilton	ON	Penicillin	82	25
3203	Janice	Crane	F	2010-12-03	Ottawa	ON	ASA	93	35
3208	Callum	Johnson	M	1968-08-04	Hamilton	ON	Tylenol	130	79
3215	Shvaughn	Torini	F	1948-04-28	Orangeville	ON	Penicillin	159	75
3216	Kurt	OHara	M	2016-01-16	Stoney Creek	ON	Penicillin	53	13
3217	Deborah	Johnson	F	2018-04-23	Toronto	ON	Valporic Acid	42	5
3218	Eddie	Hammer	M	2002-08-31	Halifax	NS	Sulfa	192	86
3220	Mike	Levinson	M	1995-08-06	Hamilton	ON	Penicillin	175	69
3223	Christine	Waturs	F	1957-07-22	Cambridge	ON	Penicillin	154	119
3225	Elisa	Molly	F	2000-12-22	Brantford	ON	Penicillin	190	71
3229	Sam	Pike	M	2014-04-17	Chicoutimi	QC	Wheat	78	25
3230	Delores	Nanny	F	1956-08-20	Sarnia	ON	Penicillin	161	88
3234	Jean-Baptiste	Bass	M	1979-12-12	Windsor	ON	Topical Anaesthesia	143	64
3235	Indiana	Iosefa	M	1992-06-07	Simcoe	ON	Penicillin	150	74
3237	Rosco	McGraw	M	2017-04-29	Hamilton	ON	Sulphur	35	7
3238	Hecky	Diaz	M	1952-12-30	Grimsby	ON	Penicillin	147	78
3239	Vito	Falconeri	M	1970-06-03	Hamilton	ON	Penicillin	183	114
3241	Brick	Nederlander	M	1994-12-31	Windsor	ON	Codeine	192	122
3243	Chris	Vargo	M	1981-09-02	Northbay	ON	Peanut Butter	210	138
3245	Ben	Cooper	M	2015-12-04	Delhi	ON	Penicillin	57	16
3248	Julio	Lawson	M	1977-12-07	Hamilton	ON	Penicillin	199	131
3249	Lyan	Haruko	M	1964-08-18	Hamilton	ON	Wheat	173	112
3253	Tom	Freamon	M	1956-08-28	Hamilton	ON	Iodine	173	73
3254	Frederick	Van Helsing	M	1993-10-19	Edmonton	AB	Pork	188	97
3255	Helen	Breaker	F	1965-06-06	Halifax	NS	Codeine	132	49
3257	Polly	Shawn	F	1987-11-04	Hamilton	ON	Codeine	150	66
3259	Mashisu	Wildhack	F	1958-09-04	Stoney Creek	ON	Penicillin	151	52
3261	Haruhara	Bones	F	1980-07-20	Hamilton	ON	Codeine	139	64
3267	Jane	Daniels	F	1983-03-22	Hamilton	ON	Penicillin	173	96
3268	Anna	Wilcox	F	1976-01-03	Hamilton	ON	Penicillin	185	72
3272	Ford	Owens	M	1972-11-18	Barrie	ON	Penicillin	165	79
3273	Roman	Claibourne	M	1954-11-17	Victoria	BC	Sulfa	165	86
3274	Ben	Fraser	M	1992-09-01	Toronto	ON	Codeine	154	76
3276	Jack	Ridolph	M	1958-01-07	Fruitland	ON	Penicillin	213	100
3278	Deborah	Alvin	F	1983-12-11	Brantford	ON	Penicillin	159	46
3280	Magrat	McAllister	F	1990-01-29	Waterford	ON	Wheat	159	76
3284	Lloyd	Matthews	M	1993-04-30	Toronto	ON	Sulfa	132	71
3285	Paul	Lord	M	1998-07-10	Hamilton	ON	Penicillin	166	63
3286	Harmony	Brockman	F	1992-04-23	Elmwood	ON	Penicillin	181	102
3288	Louie	Capone	M	1958-08-22	Hamilton	ON	Sulfa	180	68
3293	Veronica	Bradley	F	2000-06-10	Hamilton	ON	Penicillin	168	91
3296	Norine	Hudson	F	1948-03-28	Elmwood	ON	Peanuts	145	47
3297	Pat	Owens	M	1986-09-06	Grimsby	ON	Penicillin	159	87
3300	Harry	Beckett	M	1999-03-04	Hamilton	ON	Penicillin	191	126
3301	Don	Space	M	1955-10-28	Hamilton	ON	Codeine	182	77
3305	Cameron	Carrow	F	1995-03-23	Hamilton	ON	Nuts	152	61
3307	Bridget	Milestone	F	1989-05-02	Hamilton	ON	Salicylic Acid	158	67
3312	Indiana	Peabody	M	1987-07-01	Hamilton	ON	Peanuts	181	118
3313	Chloe	Milly	F	1949-05-27	Hamilton	ON	Penicillin	146	57
3314	Joseph	Graham	M	2009-06-08	Hamilton	ON	Latex	146	47
3315	Emily	Lindstrom	F	1995-04-15	Stoney Creek	ON	Penicillin	169	84
3318	Katya	Delacour	F	1966-04-06	Barrie	ON	Sulfa Drugs	173	88
3319	Katie	Matthews	F	1972-04-27	Hamilton	ON	Penicillin	162	59
3321	Alex	Anderson	F	1983-07-30	Carisle	ON	Milk	177	101
3323	Robin	Sanchez	M	1980-07-23	Hamilton	ON	ASA	219	125
3324	Elvis	Babbling	M	1998-08-21	Hamilton	ON	Valporic Acid	174	104
3326	Grace	Halliwell	F	2001-05-03	Hamilton	ON	Sulfa	187	73
3328	Jamie	Pianta	M	1990-07-22	Hamilton	ON	Penicillin	195	101
3329	Bernard	Halifax	M	1958-04-24	Delhi	ON	Sulfa	188	128
3330	Henry	Huang	M	1980-06-06	Milton	ON	Morphine	186	99
3333	Willow	Shand	F	1982-12-26	Stoney Creek	ON	Penicillin	144	45
3334	Joe	Disher	M	1988-07-09	Hamilton	ON	Peanuts	171	120
3336	Philip	Donahue	M	1962-06-12	Toronto	ON	Pet Hair	128	81
3337	Mickey	MacAllister	M	1994-08-21	Hamilton	ON	Penicillin	209	128
3339	Maria	Storin	F	1965-10-22	Dundas	ON	Peanuts	133	59
3343	Jack	di Marco	M	2006-05-08	Hamilton	ON	Penicillin	160	57
3345	John	Witherdale	M	2011-11-08	Dundas	ON	Penicillin	123	48
3346	Mercedes	Randall	F	1997-04-11	Timmins	ON	Penicillin	174	81
3347	Trevor	Schwarzburger	M	1982-05-23	Hamilton	ON	Penicillin	179	90
3349	Jack	Underwood	M	2001-04-21	Cambridge	ON	Penicillin	208	79
3355	Thomas	Brown	M	2017-08-23	Toronto	ON	Micropore Tape	50	9
3356	Neely	Jameson	F	2009-08-29	Hamilton	ON	Penicillin	106	33
3357	Andy	Roland	M	2002-02-28	Hamilton	ON	Penicillin	201	77
3358	Tess	Cooper	F	2002-09-17	Toronto	ON	Environmental	170	68
3363	Peter	Treskovna	M	1948-11-22	Cambridge	ON	Sulfa	149	62
3365	Connie	Vallance	F	1968-05-28	Hamilton	ON	Sulfa	142	75
3366	Alan	Davis	M	1970-04-14	Kingston	ON	Codeine	204	106
3367	Vera	Gottwald	F	1972-04-25	Hamilton	ON	Penicillin	174	57
3368	Vislor	Ichi	M	1975-01-01	Burlington	ON	Penicillin	177	105
3369	Polly	Bindweed	F	1985-02-12	Toronto	ON	Codeine	148	63
3370	Lex	Tabak	M	2002-11-22	Hamilton	ON	Sulfa	194	89
3371	George	Sena	M	2009-10-22	Hamilton	ON	Penicillin	130	41
3372	BElanna	Franklin	F	1980-04-19	Timmins	ON	Penicillin	149	63
3373	Guy	Lodge	M	2006-10-07	Hamilton	ON	Sulfa Drugs	154	73
3374	John	Kendall	M	1987-08-03	Toronto	ON	Penicillin	132	69
3375	Agnes	Barkley	F	2017-12-02	Hamilton	ON	Codeine	51	8
3379	William	Jones	M	1958-03-14	Hamilton	ON	Penicillin	179	111
3381	Neely	Kolchak	F	2016-10-26	Sarnia	ON	Penicillin	61	13
3384	Molly	Moonshine	F	1951-08-23	Hamilton	ON	Penicillin	163	102
3385	Carmine	Fabray	M	1977-12-02	Hamilton	ON	Tylenol	163	70
3386	Caesar	Nessman	M	1957-02-04	Hamilton	ON	Penicillin	154	67
3387	Mimi	Pearle	F	1974-04-18	Hamilton	ON	Sulfa	175	116
3389	Annabelle	Henry	F	2003-04-05	Milton	ON	Bee Stings	164	69
3392	Elisa	Parrish	F	2013-05-11	Hamilton	ON	Penicillin	80	21
3393	Sarah	Caxton	F	1983-11-01	Waterford	ON	Tylenol	168	69
3394	Angela	Arden	F	2007-10-31	Hamilton	ON	Topical Anaesthesia	126	52
3395	Celeste	Sydnor	F	2006-07-15	Stoney Creek	ON	Penicillin	141	55
3397	Lloyd	Edgecombe	M	1950-03-27	Hamilton	ON	Penicillin	199	104
3398	Jackie	McAllister	F	2011-09-05	Grimsby	ON	Codeine	109	38
3399	Daniel	Scott	M	1963-11-02	Hamilton	ON	Penicillin	173	69
3400	Lizzie	Poirot	F	1968-11-09	Hamilton	ON	Peanuts	156	100
3401	Midge	Taylor	F	1958-09-29	Hamilton	ON	Codeine	164	56
3402	Victoire	Heriot	F	1985-10-07	Burlington	ON	Sulfa	148	69
3403	Mercedes	Littlefield	F	2011-11-12	Hamilton	ON	Penicillin	82	34
3404	David	Orlock	M	1964-12-09	Hamilton	ON	ASA	184	94
3405	Bruce	Barzini	M	1953-09-22	Hamilton	ON	ASA	183	134
3406	Augusta	Decker	F	1970-01-22	Hamilton	ON	Environmental	141	54
3407	Will	Crane	M	2017-12-11	Hamilton	ON	Penicillin	50	11
3408	Agnes	Appleton	F	1992-12-31	Hamilton	ON	Penicillin	165	54
3410	Marty	McGee	M	2013-02-10	Hamilton	ON	Penicillin	92	29
3411	Gwen	Jonas	F	2018-06-16	Carlisle	ON	Tylenol	28	1
3412	Hannah	Short	F	1967-01-09	Hamilton	ON	Walnuts	151	45
3414	George	Rockford	M	2014-05-06	Hamilton	ON	Iodine	68	22
3415	Anthony	Landsman	M	2015-05-25	Hamilton	ON	Sulfa Drugs	67	20
3416	Olga	Cruz	F	1956-03-14	Niagara Falls	ON	Penicillin	158	50
3421	Katrina	Maigret	F	1996-03-08	Ajax	ON	Acetaminophen	157	68
3422	Dayne	Lynch	M	2010-05-22	London	ON	Micropore Tape	128	45
3423	Eddie	Wagenbach	M	1975-12-10	Toronto	ON	Penicillin	168	73
3425	Thomas	Ramsey	M	1997-05-13	Hamilton	ON	Peanuts	167	69
3426	Aric	Tucker	M	2011-04-20	Mississauga	ON	Sulfa Drugs	102	35
3428	Doris	White	F	1957-07-04	Kelowna	BC	Sulfa Drugs	143	63
3429	Artemus	Vogelsang	M	1959-03-15	Toronto	ON	Penicillin	187	78
3430	Monica	Sagdiyev	F	1996-04-14	Burlington	ON	Eggs	165	55
3431	Vincent	Ross	M	1996-05-17	Burlington	ON	Valporic Acid	215	108
3432	Guy	Kruse	M	1988-10-30	Hamilton	ON	Codeine	185	122
3433	Peter	Lynley	M	2007-10-26	Hamilton	ON	Penicillin	137	62
3434	Caitlin	Shumway	F	1967-07-20	Delhi	ON	Strawberries	147	76
3435	Briareos	Rosetta	M	1982-05-13	Hepworth	ON	Sulfa Drugs	214	121
3438	Jack	Roberts	M	1965-06-16	Toronto	ON	Strawberries	215	107
3439	Moira	Martinelli	F	1991-05-27	Hamilton	ON	Tetracycline	147	73
3440	Lois	Nutter	F	1993-11-27	Toronto	ON	Penicillin	147	70
3442	Ricardo	Chester	M	2003-06-18	Beaverton	ON	ASA	164	70
3444	Annie	LoPresti	F	1927-09-10	Sarnia	ON	Codeine	147	53
3445	Miles	Taylor	M	1951-01-07	Hamilton	ON	Tetracycline	180	57
3447	Joe	Brady	M	1990-07-22	Hamilton	ON	Codeine	224	99
3448	Patricia	Newbury	F	1964-03-07	Burlington	ON	Morphine	184	101
3450	Miyuki	Baily	F	1985-12-08	Ottawa	ON	Cyclor	163	105
3451	Ben	Kent	M	2013-10-12	Brantford	ON	Sulfa	78	26
3452	Kevin	Kent	M	2001-05-19	Hamilton	ON	Penicillin	214	94
3453	Gregory	Wheeler	M	1953-09-16	Hamilton	ON	Codeine	179	87
3454	Henry	Daggett	M	1965-02-01	Burlington	ON	Codeine	146	86
3456	Pilar	Cooper	F	2009-05-13	Hamilton	ON	Sulfa Drugs	119	34
3458	Buzz	Anneke	M	2001-08-02	Toronto	ON	Penicillin	198	92
3463	Blanche	Spellman	F	1990-10-01	Milton	ON	Codeine	156	48
3470	Chuck	Strange	M	2002-02-23	Hamilton	ON	Valporic Acid	189	83
3472	Ann	Vargas	F	1961-05-11	Sarnia	ON	Penicillin	132	61
3473	Meyer	Spellman	M	1982-11-15	Dundas	ON	Pet Hair	177	127
3474	Brenda	Rose	F	1975-08-09	Hamilton	ON	Penicillin	170	96
3476	Endora	Buckton	F	1982-11-04	Waterford	ON	Penicillin	153	61
3477	Sabrina	Pekkala	F	1989-08-01	Brockville	ON	Penicillin	169	53
3478	Cletus	Fabray	M	1982-12-10	Timmins	ON	Penicillin	189	111
3479	Kima	Anderson	F	1995-12-02	Vancouver	BC	Codeine	157	67
3481	Martha	Sanderson	F	1980-04-13	Hamilton	ON	Penicillin	166	79
3482	Betty	Ramsey	F	2000-06-30	Kelowna	BC	Penicillin Environmental	182	97
3485	Maureen	Wolfcastle	F	1978-11-12	Hamilton	ON	Penicillin	157	115
3487	Stanislaus	Rice	M	1982-04-21	Hamilton	ON	Penicillin	209	103
3489	Troy	Zatara	M	1972-03-16	Halifax	NS	Penicillin	147	81
3490	Knox	Lee	M	2004-11-21	Hamilton	ON	ASA	178	76
3493	Robin	Van	M	1980-06-13	Hamilton	ON	Micropore Tape	189	135
3494	Brad	Cotter	M	2013-06-29	Hamilton	ON	Sulfa Drugs	94	29
3495	Doran	Makibi	F	2014-11-05	Ancaster	ON	Penicillin	76	22
3496	Harry	Lucas	M	2013-05-29	Burlington	ON	Micropore Tape	81	28
3497	Quito	Nash	M	1958-01-20	Brantford	ON	Aspirin	186	122
3498	Don	Omovich	M	1968-06-15	Hamilton	ON	Peanut Butter	154	88
3499	Cal	Freeman	M	1968-03-12	Hamilton	ON	Tetracycline	190	111
3501	George	Principal	M	1994-05-06	Cambridge	ON	Penicillin	172	86
3503	Kenny	Franco	M	1950-11-07	Fruitland	ON	Codeine	168	75
3505	Kylie	Decker	F	1984-10-15	Montreal	QC	Cyclor	148	59
3506	Ethan	Dax	M	1966-01-23	Hamilton	ON	Penicillin	141	77
3509	Pepper	March	F	1969-08-05	Dundas	ON	Penicillin	169	95
3510	Steven	Antony	M	1967-10-16	Simcoe	ON	Tetracycline	222	96
3511	Kathy	Dayton	F	1983-03-25	Burlington	ON	Penicillin	169	105
3513	Hetty	Vaughan	F	1987-05-02	Hamilton	ON	Sulphur	176	52
3514	Georgette	Noble	F	1987-07-12	Burlington	ON	Topical Anaesthesia	141	55
3517	Dotty	Matthews	F	1994-12-30	Burlington	ON	Penicillin	140	72
3518	Jacqueline	Blake	F	2004-03-18	Burlington	ON	ASA	157	55
3519	Blake	Cutting	F	1995-01-01	Ancaster	ON	Codeine	140	60
3520	Luna	Adebisi	F	2004-08-28	Caledonia	ON	Sulfa Drugs	142	59
3521	Willow	Roland	F	1960-12-16	Hamilton	ON	Penicillin	163	84
3522	Avon	Kent	M	1990-05-01	Carlisle	ON	Penicillin	159	84
3524	Snapper	Leon	M	1988-09-27	Toronto	ON	Penicillin	161	66
3526	Holt	Anders	M	1958-01-04	Hamilton	ON	Penicillin	181	120
3530	Raphael	Kaunaq	F	1964-04-02	Saskatoon	SK	Feathers	149	70
3531	Richard	Taylor	M	1957-07-08	Halifax	NS	Penicillin	192	113
3538	Simon	Schrute	M	1976-02-21	Simcoe	ON	Penicillin	197	111
3539	Jefferson	McCrimmon	M	2015-12-02	Saskatoon	SK	Topical Anaesthesia	71	20
3540	Charlie	Spratt	M	1988-10-23	Hamilton	ON	Shellfish	163	70
3541	Frank	Enrico	M	1986-03-04	Ottawa	ON	Penicillin	181	116
3542	Abi	Plum	F	1982-06-05	Hamilton	ON	Bee Stings	153	93
3543	Celeste	Dundee	F	1970-10-19	Hamilton	ON	Penicillin	156	59
3546	Mickey	Dent	M	1998-08-05	Brantford	ON	Penicillin	179	113
3550	Abraham	Meacham	M	2009-05-27	Hamilton	ON	Tape	125	59
3552	Neil	Verma	M	1989-04-18	Windsor	ON	Codeine	131	68
3556	Neville	Derwent	M	1980-08-27	Hamilton	ON	ASA	197	111
3557	Polly	Schibetta	F	1988-04-30	Hamilton	ON	Penicillin	175	91
3558	Susan	Bradley	F	1986-08-16	North York	ON	Codeine	180	121
3561	Pilar	Steiger	F	2001-04-08	Toronto	ON	Sulpha	192	75
3564	Jill	Heskell	F	1996-12-17	Hamilton	ON	Peanuts	169	61
3565	Yosh	Lynch	F	1973-08-07	Hamilton	ON	Codeine	170	72
3566	Bonnie	Crockett	F	1964-10-22	Hamilton	ON	Sulfa Drugs	154	59
3567	Mel	Newsworthy	F	2007-10-14	Windsor	ON	Penicillin	119	44
3568	Milo	Farrell	M	2011-06-19	Grimsby	ON	Codeine	90	41
3570	Barry	Fellowes	M	2014-07-14	Hamilton	ON	Lactose Intolerant	78	25
3571	Rita	Buck	F	1983-08-19	Hamilton	ON	Bee Stings	179	93
3572	Mendy	Foley	M	1959-10-12	Toronto	ON	Demerol	154	78
3575	Griselda	Hopper	F	1992-04-13	Ancaster	ON	Morphine	161	100
3577	Gary	Gharty	M	1974-08-11	Hamilton	ON	Shellfish	154	56
3578	Joel	Taylor	M	1967-06-04	Hamilton	ON	Penicillin	143	75
3580	Midge	Costigan	F	1951-03-11	Timmins	ON	Tape	137	45
3581	Sara	Hamilton	F	2012-11-17	Victoria	BC	Penicillin	100	24
3583	Tulio	Boddicker	M	1985-11-20	Hamilton	ON	Sulfa Drugs	169	100
3584	Carlito	Raziel	M	1958-08-04	Hamilton	ON	Codeine	164	104
3586	Sarah	Marshall	F	1958-04-15	Brantford	ON	Sulfa Drugs	156	64
3587	Iris	Travis	F	1984-01-31	Hamilton	ON	Honey	162	94
3589	Yukari	Vane	F	1997-04-19	Hamilton	ON	Sulfa	170	60
3591	Guy	Tyrell	M	1973-02-05	Dundas	ON	ASA	190	95
3594	Lou	Osterman	M	1989-06-04	Hamilton	ON	Sulfa Drugs	139	77
3595	Paulie	Boddicker	M	1959-09-04	Oakville	ON	Penicillin Sulpha Drugs	222	108
3596	Olivia	Chang	F	2004-11-05	Oakville	ON	Peanuts	169	54
3597	Jessica	Douglas	F	1968-11-01	Orangeville	ON	Iodine	152	62
3599	Donna	Derwent	F	1934-11-14	Sarnia	ON	ASA	169	106
3600	Miss	Clouseau	F	2017-04-02	Hamilton	ON	ASA	44	10
3603	Kiriko	Malfoy	F	1977-01-05	Brampton	ON	Strawberries	163	60
3605	Daniel	Caxton	M	1962-06-15	Waterford	ON	Penicillin	155	58
3607	Wayne	Kane	M	1952-12-22	London	ON	Tylenol	196	97
3608	Elisa	Davenport	F	2009-09-10	Pickering	ON	ASA	121	40
3613	Cassie	Holden	F	1962-01-01	Beaverton	ON	Micropore Tape	135	61
3614	Edward	Moorehead	M	1988-11-10	Peterborough	ON	Penicillin	169	97
3615	Kelly	Pond	F	1979-09-01	Toronto	ON	Penicillin	166	101
3616	Winnie	Weasley	F	1998-03-10	Hamilton	ON	Peanut Butter	157	47
3617	Kent	Jacobs	M	2009-02-07	Toronto	ON	Morphine	132	57
3621	Tom	Yurinov	M	1986-01-13	Brockville	ON	Penicillin	215	106
3622	Virginia	Davis	F	2013-07-24	Ancaster	ON	Penicillin	87	25
3623	Ryoko	Stottlemeyer	F	2015-04-30	Ottawa	ON	Penicillin	69	18
3624	Guy	Kent	M	2007-07-13	Hamilton	ON	Penicillin	150	58
3625	Dorothy	Lockwood	F	1957-10-19	Hamilton	ON	Penicillin	182	83
3626	Jane	Holmes	F	2016-09-09	Ancaster	ON	Peanuts	54	13
3629	Otis	McGraw	M	2016-04-13	Hamilton	ON	Codeine	51	13
3630	Maria	Wisdom	F	1965-05-05	Burlington	ON	Iodine	163	74
3631	Peter	Provenza	M	1988-11-14	Hamilton	ON	Penicillin	155	71
3633	Sam	Jackson	M	2007-11-16	Hamilton	ON	Penicillin	119	52
3634	Darcy	Sternin	F	1990-10-08	Hamilton	ON	Almonds	180	110
3636	Briareos	Larsen	M	1988-08-06	Thunder Bay	ON	ASA	150	65
3638	Celestina	Maxwell	F	1998-12-24	Hamilton	ON	Sulfa Drugs	173	103
3639	Seras	Canfield	F	2014-10-06	Toronto	ON	Penicillin	68	19
3642	Neil	Hedley	M	2005-04-14	Carisle	ON	Peanuts	143	67
3643	Agatha	Spellman	F	2005-12-19	Hamilton	ON	Acetaminophen	167	63
3644	Chucky	Lem	M	1986-06-11	Ottawa	ON	Elastoplast Bondage	167	65
3646	Agnes	Vimes	F	1989-04-20	Hamilton	ON	Salicylic Acid	178	104
3649	Don	de Souza	M	1987-05-15	Hamilton	ON	Penicillin	214	118
3650	Thomas	Omovich	M	1972-01-06	Hamilton	ON	Penicillin	200	90
3651	Sister	Gaskell	F	1960-05-05	Ottawa	ON	Codeine	171	79
3652	Larry	Vance	M	1979-06-11	Simcoe	ON	Penicillin	183	64
3656	Jeffrey	Marlowe	M	1972-08-12	Brantford	ON	Penicillin	163	68
3659	Zelda	Mephesto	F	1987-01-08	Ancaster	ON	Penicillin	135	67
3662	Lady	Lowe	F	1980-12-06	Hamilton	ON	Topical Anaesthesia	151	68
3663	Adam	Lopez-Fitzgerald	M	1971-12-29	Hamilton	ON	ASA	193	126
3666	Laurel	Page	F	2003-08-05	Hamilton	ON	Penicillin	175	71
3667	Maxim	Boddicker	M	1974-01-28	Brantford	ON	Penicillin	145	81
3668	Jay	Silly	M	1989-09-10	Burlington	ON	Penicillin	145	66
3669	Alberto	Polford	M	1985-12-31	Brantford	ON	Valporic Acid	161	74
3670	Patty	Brady	F	1992-01-09	Timmins	ON	Morphine	162	102
3671	Ray	Lawson	M	1954-09-07	Burlington	ON	Dye	150	86
3672	Dante	Brown	M	1977-08-02	Sarnia	ON	Penicillin	189	122
3673	Abby	Kendall	F	2017-12-23	Dunton	ON	Milk	48	8
3675	Rose	Donahue	F	2001-08-04	Hamilton	ON	Codeine	185	73
3676	Lucky	Carver	M	1980-08-09	Hamilton	ON	Penicillin	198	98
3677	Marnie	Harrison	F	1959-03-15	Sarnia	ON	Cheese	156	56
3678	Jake	Morello	M	1988-07-09	Hamilton	ON	Penicillin	169	128
3679	Alberto	Luthor	M	1957-02-15	Hamilton	ON	Lactose	156	73
3680	Mohinder	Allen	M	1966-04-13	Toronto	ON	Penicillin	199	125
3685	Mac	French	M	1999-09-10	Orillia	ON	Codeine	160	70
3687	Anthony	Orville	M	2007-06-06	Cambridge	ON	Penicillin	145	64
3688	Rose	Nona	F	1982-07-04	Tuscorora	ON	Penicillin	176	111
3691	Tony	John	M	1991-08-17	Hamilton	ON	Eggs	216	141
3693	Anita	Mason	F	1994-06-15	Ancaster	ON	Penicillin	164	73
3694	Donna	Elliot	F	1976-10-05	Cambridge	ON	Penicillin	152	74
3695	Henry	Schillinger	M	1987-10-22	Hamilton	ON	Sulfa	146	72
3696	Salvo	Arroway	M	1964-09-01	Milton	ON	Codeine	170	69
3698	Beanie	Allan	F	1951-01-15	Saskatoon	SK	ASA	162	91
3699	Charles	Caine	M	2001-02-26	Stoney Creek	ON	Codeine	192	82
3703	John	Robert	M	1967-03-13	Toronto	ON	Codeine	175	103
3704	Laura	Fairhead	F	2007-12-18	Toronto	ON	Penicillin	137	52
3708	Jennifer	Thirteen	F	1956-01-17	St. Catharines	ON	Penicillin	158	89
3709	Peter	Brown	M	2016-01-14	Hamilton	ON	ASA	74	21
3711	Cordelia	De Syn	F	1970-09-10	Stoney Creek	ON	Codeine	150	69
3712	Dirk	Zukovsky	M	1974-11-01	Cambridge	ON	Penicillin	195	112
3716	Agatha	Hollins	F	2016-05-24	Burlington	ON	Bee Stings	55	12
3717	Emerson	Allen	M	2001-09-05	Hamilton	ON	Iodine	208	83
3721	Jonathan	Zapatti	M	1991-03-16	Hamilton	ON	Sulfa	176	109
3722	Zefram	Flute	M	1965-10-31	Brantford	ON	Peanut Butter	196	106
3724	Richard	Sugden	M	1950-05-29	Dundas	ON	Penicillin	189	117
3726	Hyman	Marlowe	M	1970-11-22	Hamilton	ON	Peanuts	160	79
3727	Jo	Taylor	F	1958-04-09	Hamilton	ON	Penicillin	173	45
3728	Jon	Peace	M	2000-09-23	Stoney Creek	ON	Sulfa	166	70
3729	Eddie	Van	M	2005-07-25	Toronto	ON	Sulphur	159	76
3730	Jack	Quatermass	M	1983-04-19	Toronto	ON	Valporic Acid	160	94
3731	Elisa	Maximoff	F	1983-10-06	Cambridge	ON	Hay Fever	181	93
3732	Carla	McGonagall	F	2016-06-01	Ancaster	ON	Sulfa Drugs	60	14
3733	Sandy	Dallas	F	1961-10-08	Ancaster	ON	Penicillin	190	99
3736	Ernest	Maxime	M	1964-07-27	Grimsby	ON	Topical Anaesthesia	190	103
3737	Roy	Martinelli	M	1972-01-16	Caledonia	ON	Almonds	130	66
3739	Angela	Canlaster	F	1992-04-14	Delhi	ON	Penicillin	168	71
3740	Geordi	Banzai	M	1981-09-06	Hamilton	ON	Sulfa	188	63
3742	Agnes	Heriot	F	2014-08-13	Toronto	ON	Iodine	64	19
3744	Marnie	Dingle	F	1989-08-23	Oakville	ON	Peanut Butter	172	64
3745	Debbie	Vallance	F	1997-09-26	Hamilton	ON	Penicillin	155	98
3747	Demelza	Heat	F	1956-07-23	Hamilton	ON	Wheat	186	78
3750	Don	Patrick	M	1980-09-20	Paris	ON	Penicillin	209	89
3751	Paul	Gently	M	1987-10-18	Sarnia	ON	Penicillin	208	132
3752	Orla	Heat	F	2003-09-16	Hamilton	ON	Codeine	164	67
3753	Ethel	Givens	F	1988-05-30	Hamilton	ON	Codeine	158	45
3754	Rose	Cool	F	1998-07-22	Hamilton	ON	Codeine	190	89
3755	Natsumi	Cooper	F	1971-08-21	Montreal	QC	Salicylic Acid	181	89
3757	Angela	Zapatti	F	1974-10-20	Brantford	ON	Penicillin	187	99
3758	Caesar	MacLean	M	1975-05-27	Peterborough	ON	Wheat	222	111
3759	Ben	Rabbit	M	1977-05-23	Burlington	ON	Bee Stings	141	66
3760	Anna	De Lesseps	F	1964-01-20	Hamilton	ON	Codeine	188	110
3761	Eva	Roland	F	2008-11-09	Hamilton	ON	Penicillin	113	44
3765	Jesse	Deckard	M	1951-08-28	Hamilton	ON	Penicillin	185	88
3766	Jerry	Trask	M	1972-10-13	Toronto	ON	Penicillin	169	67
3767	Dana	Vector	F	1949-10-28	Hamilton	ON	Penicillin	166	100
3768	Vera	Lawless	F	1973-09-13	Hamilton	ON	Penicillin	177	102
3770	Peter	Rebus	M	1959-11-09	Burlington	ON	Penicillin	172	70
3771	Lennie	Bartlet	M	1983-03-20	Cambridge	ON	Penicillin	163	72
3772	Franz	Vecchio	M	2012-03-22	Toronto	ON	Peanuts	84	26
3774	Julianna	Weber	F	1986-06-06	Burlington	ON	Penicillin	172	63
3775	Henry	Banzai	M	1960-11-12	Delhi	ON	ASA	139	75
3776	Annabelle	Denovitz	F	1995-01-09	Hamilton	ON	Codeine	136	69
3778	Didi	MacKenzie	F	1983-10-25	Toronto	ON	Penicillin	164	98
3780	Joss	Page	M	1969-01-26	Hamilton	ON	Sulfa Drugs	184	105
3781	Avon	Magliozzi	M	2001-12-04	Fruitland	ON	Penicillin	203	93
3782	Kit	Spellman	M	1995-06-25	Toronto	ON	Sulfa	192	109
3786	Joe	de Castro	M	2004-06-28	Hamilton	ON	Almonds	184	82
3787	Jack	Buck	M	2008-11-03	Milton	ON	Honey	134	51
3789	Margaret	Fabray	F	1968-07-13	Ancaster	ON	Valporic Acid	159	70
3790	Janus	Scarpetta	F	1964-07-14	Hamilton	ON	Penicillin	178	90
3791	Wilfred	Boxer	M	1958-02-25	Hamilton	ON	Wheat	164	82
3796	Marvin	Cool	M	2017-07-04	Walnut Grove	AB	Elastoplast	39	7
3798	Rose	Sternin	F	1984-08-19	Barrie	ON	Strawberries	163	60
3801	Diane	Corinthos	F	1980-04-04	Stoney Creek	ON	Strawberries	180	107
3802	Ann	Paige	F	1982-03-04	St. Catharines	ON	Sulfa	168	94
3803	Kinman	Snyder	M	1965-03-11	Cambridge	ON	Penicillin	147	72
3806	Peggy	Wright	F	2003-05-26	Hamilton	ON	Salicylic Acid	168	71
3809	Gillian	Owens	F	1957-05-27	Cambridge	ON	Penicillin Diazepam	163	70
3811	Jeremiah	Yurinov	M	2003-03-20	Hamilton	ON	Wheat	194	86
3813	Jeff	Bolt	M	1981-09-27	Hamilton	ON	Lactose	212	102
3814	Daniel	Anderson	M	1958-10-28	Hamilton	ON	Peanuts	154	59
3815	Tiffany	Woods	F	1951-11-26	Whitby	ON	Penicillin	139	75
3822	Guido	Davenport	M	1958-04-15	Hamilton	ON	Penicillin	171	107
3823	Joseph	Brockman	M	1996-04-27	Dundas	ON	Codeine	182	108
3824	Karen	Brannigan	F	2008-05-10	Kelowna	BC	Iodine	121	38
3825	Katie	Blake	F	1956-03-30	Hamilton	ON	Penicillin	177	93
3826	Olivia	Wing	F	1950-07-03	Brantford	ON	Codeine	193	103
3828	Joel	Diamond	M	2015-04-13	Hamilton	ON	Sulphur	66	20
3833	Mickey	Tsuna	M	2003-10-05	Hamilton	ON	Penicillin	180	79
3835	Ana	Roberts	F	2013-05-02	Hamilton	ON	Penicillin	79	21
3837	Douglas	Gottwald	M	1977-12-27	Kingston	ON	Codeine	144	83
3838	William	Lang	M	2006-08-30	Dundas	ON	Penicillin	142	69
3840	Ritsuko	Brown	F	1952-09-27	Brockville	ON	Honey	183	105
3841	Elijah	Rothstein	M	2011-07-23	Burlington	ON	Penicillin	100	31
3842	Claudia	Drew	F	2006-03-07	Ancaster	ON	Penicillin	134	48
3845	Lloyd	Morgan	M	1975-05-10	Hamilton	ON	ASA	182	114
3847	Marcelino	Thorndyke	M	1976-03-22	Burlington	ON	Sulphur	201	114
3848	Phil	Jovanovic	M	1979-02-25	Hamilton	ON	Penicillin	191	98
3849	Rose	Del Toro	F	1966-08-25	Milgrove	ON	Penicillin	184	80
3851	Casanova	Halliwell	M	1977-05-12	Mississauga	ON	Penicillin	154	61
3852	Cat	Mars	F	1992-08-06	Hamilton	ON	Bee Stings	143	53
3854	Danny	Umbridge	M	2003-06-03	Hamilton	ON	Penicillin	165	69
3855	Tabitha	Claybourne	F	2004-10-15	Hamilton	ON	Penicillin	160	67
3856	Casanova	Costello	M	1976-12-20	Oakville	ON	Penicillin Environmental	212	105
3860	Frederick	Lee	M	1962-12-04	Hamilton	ON	Peanuts	213	121
3861	Shaz	Lopez-Fitzgerald	F	1995-10-14	Tyndale	ON	Penicillin	163	98
3862	Tim	Vinopan	M	1959-08-20	Whitby	ON	Micropore Tape	211	95
3863	Harley	Gill	F	1955-01-05	Cambridge	ON	Codeine	172	111
3864	James	Frobisher	M	1967-04-19	Kapuskasing	ON	Penicillin	149	59
3868	Marlo	Langshaw	M	1954-08-19	Paris	ON	Sulfa	178	118
3869	Tom	Dawson	M	1987-04-10	Hamilton	ON	Cheese	198	97
3872	Kaye	Willing	F	1997-07-02	Hamilton	ON	Codeine	173	92
3873	Penny	Lockwood	F	2011-11-29	Brantford	ON	Penicillin	121	34
3874	Charles	Seta	M	2001-11-05	Burlington	ON	Penicillin	211	86
3875	Victoria	Thoreauxe	F	1969-05-12	Halifax	NS	Penicillin	149	58
3878	Roman	Sendo	M	1988-03-18	Hamilton	ON	Bee Stings	168	75
3879	Brad	Zasa	M	1983-06-08	Hamilton	ON	Sulfa Drugs	156	67
3882	Amy	Schibetta	F	1963-12-14	Paris	ON	Codeine	146	53
3883	Tom	Russo	M	1986-11-04	Hamilton	ON	Penicillin	181	78
3884	Charlotte	Waturs	F	1967-12-08	Burlington	ON	Wheat	144	72
3885	Michael	Cochrane	M	1978-05-12	Vancouver	BC	Gluten	203	97
3887	Jake	Stanfield	M	1986-08-14	Hamilton	ON	ASA Cotton Sheets	223	104
3888	Vicki	Kolchak	F	1988-02-11	Toronto	ON	Penicillin	169	123
3891	Achille	Brennan	M	1965-03-10	Brantford	ON	Cheese	184	132
3892	Fin	Light	M	1968-12-04	Orangeville	ON	Latex	137	79
3896	Ruby	Possible	F	1984-12-06	Montreal	QC	Hay Fever	180	91
3897	Jason	Olemaun	M	2002-02-09	Brantford	ON	Penicillin	208	82
3898	Santino	Green	M	1980-10-14	Highland	ON	Codeine	142	63
3899	Haleh	Carling	F	1968-07-24	Burlington	ON	Penicillin	157	71
3900	Frances	Lang	F	1981-12-10	Toronto	ON	Penicillin	181	96
3904	Melinda	Beckett	F	2007-11-12	Hamilton	ON	Sulfa	130	47
3905	Hayley	Townsend	F	1954-11-21	Hamilton	ON	Codeine	151	58
3906	Imogen	Deakins	F	2005-09-15	Hamilton	ON	Penicillin	164	50
3907	Lily	Spratt	F	2002-12-31	Toronto	ON	Penicillin	187	60
3908	Tony	Thomas	M	2015-09-15	Mississauga	ON	ASA	69	19
3909	Charity	Hoare	F	1977-04-26	Stoney Creek	ON	Penicillin	139	55
3911	Luanne	Bell	F	1967-05-21	Ancaster	ON	Peanuts	159	102
3912	Willow	Hale	F	2011-12-14	Hamilton	ON	Lactose Intolerant	103	39
3914	Robert	von Uberwald	M	2014-02-19	North York	ON	Wheat	77	24
3916	Tierney	Watson	M	1952-08-13	Toronto	ON	Codeine	167	58
3919	Sam	Strange	M	1961-05-08	Beaverton	ON	Penicillin	170	58
3920	John	Smith	M	1957-03-24	Paris	ON	Penicillin	188	66
3921	Joss	Morris	M	1986-08-09	Hamilton	ON	Penicillin	154	69
3922	Joe	Franklin	M	1993-05-15	Sarnia	ON	Penicillin	189	112
3923	Dorothy	Ramotswe	F	1965-05-31	Thunder Bay	ON	Tylenol	160	95
3924	Armando	Alvin	M	2010-04-05	Hamilton	ON	Walnuts	126	48
3925	Tara	MacGowan	F	1990-01-30	Hamilton	ON	Penicillin	192	93
3926	Olwyn	Perry	M	1980-02-09	Hamilton	ON	Codeine	152	76
3927	Jefferson	Soap	M	1971-10-01	Hamilton	ON	Micropore Tape	211	109
3928	Joyce	OMalley	F	1996-04-27	Hamilton	ON	Penicillin	141	54
3930	Zelda	Morris	F	1989-03-16	Burlington	ON	Peanut Butter	166	64
3932	Betsy	Garlick	F	1970-10-27	Toronto	ON	Penicillin	146	71
3933	Belladonna	McClure	F	2000-08-15	Toronto	ON	Wheat	148	60
3935	YUko	Anneke	F	1977-08-16	Hamilton	ON	Almonds	150	56
3936	Charles	Tattaglia	M	1968-01-19	Hamilton	ON	Peanut Butter	151	80
3937	Alan	Webster	M	1960-09-10	Hamilton	ON	Bee Stings	142	78
3940	Wayne	Spellman	M	1980-01-10	Burlington	ON	Penicillin	166	87
3941	Miyuki	Salander	F	1960-12-25	Burlington	ON	Hay Fever	174	96
3943	Chloe	Parker	F	1967-04-06	Beaverton	ON	Penicillin	171	119
3945	Laura	Chase	F	1960-02-25	Beamsville	ON	Sulfa	161	105
3946	Dan	Von Doom	M	1992-01-21	Timmins	ON	Cheese	165	88
3947	Sue	Hudson	F	1982-01-01	Hamilton	ON	Penicillin	137	50
3948	Douglas	Grissom	M	1981-12-02	Hamilton	ON	Penicillin	215	114
3949	Nicky	Aitoro	M	1962-07-29	Thunder Bay	ON	Codeine	156	72
3951	Steven	Asplund	M	2017-12-15	Hamilton	ON	Penicillin	51	9
3953	Jaenelle	Dean	F	1945-09-16	Toronto	ON	Sulfa	178	89
3957	Rebecca	Skelton	F	1962-08-03	Hamilton	ON	Penicillin	153	87
3958	Christopher	Magliozzi	M	1950-10-06	Brantford	ON	Codeine	194	91
3960	Liz	Pullman	F	1975-08-04	Hamilton	ON	ASA	189	95
3962	Miyuki	Buxton	F	2017-09-29	Hamilton	ON	Sulfa	52	9
3963	Adam	Lindley	M	1996-12-29	Hamilton	ON	Penicillin	211	108
3964	George	Smyth	M	1986-09-30	Halifax	NS	Sulfa Drugs	204	89
3965	Chloe	Halliwell	F	1987-07-18	Hamilton	ON	Penicillin	158	107
3968	Miyuki	Bulstrode	F	1951-07-14	Hamilton	ON	Penicillin	163	104
3969	Claire	Wainthropp	F	1983-01-10	Hamilton	ON	Honey	192	69
3971	Cristina	Larsen	F	1991-03-10	Hamilton	ON	Penicillin	164	88
3972	Victoria	Starr	F	1978-04-04	Hamilton	ON	Salicylic Acid	181	104
3975	Stuart	Vincent	M	1942-10-10	Newmarket	ON	Penicillin	159	89
3976	Opara	ONeill	F	2011-03-10	Delhi	ON	Penicillin	113	26
3977	Bill	Potts	M	1995-08-01	Hamilton	ON	Peanuts	161	70
3978	Nick	Clarke	M	2000-01-06	Hamilton	ON	Peanut Butter	187	110
3979	Tristan	Vale	M	1999-02-11	Brantford	ON	ASA	183	73
3982	Riley	Soong	M	2014-10-29	Milton	ON	Peanuts	77	23
3985	Laverne	Duncan	F	1967-05-11	Hamilton	ON	Penicillin	174	95
3987	John	Cackle	M	1987-06-19	Burlington	ON	Penicillin	179	71
3988	Richard	Munson	M	1961-08-04	Burlington	ON	Penicillin	146	73
3989	Luke	Hojo	M	2004-10-05	St. Johns	NL	Ragweed	165	66
3991	Harry	Strong	M	2004-09-06	Toronto	ON	Penicillin	166	76
3992	Rex	Thomas	M	1967-04-17	Oakville	ON	Latex	142	71
3993	Rose	Madison	F	1994-01-06	Brantford	ON	Milk	148	55
3994	Johnny	Taylor	M	1999-06-30	Kelowna	BC	Codeine	209	106
3995	Diane	Kolchak	F	1987-11-16	Ancaster	ON	Sulfa	150	63
3997	Angus	Taylor	M	1949-09-06	Hamilton	ON	Penicillin	179	79
3999	Temple	Boxer	F	1953-01-01	Brantford	ON	Penicillin	178	114
4000	Sarah	Travis	F	1975-12-09	Burlington	ON	Penicillin	161	53
4002	Edward	Sullivan	M	1973-03-23	Hamilton	ON	Penicillin	177	108
4004	Sophie	Connolly	F	1997-06-15	Hamilton	ON	Sulfa Drugs	179	87
4007	John	Walker	M	1991-01-08	Brantford	ON	Cheese	191	115
4012	Sue	Young	F	1949-07-17	Bancroft	ON	Penicillin	166	69
4013	Alan	Brigante	M	1976-11-15	Hamilton	ON	Penicillin	160	86
4015	Stuart	Givens	M	1963-07-07	Brantford	ON	Bee Stings	189	96
4018	Miranda	Leon	F	2008-07-04	Hamilton	ON	Penicillin	114	49
4020	Adam	Magnum	M	1988-06-08	Burlington	ON	Penicillin	142	80
4021	Michael	Kane	M	2013-12-13	Cambridge	ON	Tylenol	78	28
4026	Mark	Skye	M	2002-12-27	Hamilton	ON	Valporic Acid	171	74
4028	Montana	Goodwin	F	1948-03-19	Paris	ON	Codeine	168	89
4030	Vivian	Fraser	F	1955-04-21	Hamilton	ON	Codeine	171	118
4031	Valerie	Poppins	F	1955-09-25	Toronto	ON	Peanuts	163	100
4035	Rico	Brady	M	1967-06-17	Hamilton	ON	Codeine	190	130
4036	Penny	von Uberwald	F	1989-09-30	Hamilton	ON	Hay Fever	152	54
4039	Hal	Vondopoulos	M	1958-05-29	Hamilton	ON	Penicillin	210	109
4040	Piper	Jacobs	F	1966-08-05	Smithville	ON	Tetracycline	182	101
4042	Rico	Crane	M	2008-01-12	Hamilton	ON	ASA	127	50
4046	Kira	Colorado	F	2003-09-28	Simcoe	ON	Penicillin	173	66
4047	Charlie	Swift	M	1993-10-19	Burlington	ON	Hay Fever	205	89
4051	Zachary	Bakshi	M	2012-11-04	Hamilton	ON	Penicillin	81	36
4052	Constance	Lewis	F	2005-08-08	Hamilton	ON	Tape	164	62
4053	Harry	Crabbe	M	1988-02-06	Hamilton	ON	Codeine	145	78
4055	Jason	Gordon	M	2009-10-11	Hamilton	ON	Environmental	109	55
4057	Bill	Scotts	M	1983-09-14	Hamilton	ON	Codeine	176	62
4058	Ben	Wolfcastle	M	1986-09-08	Burlington	ON	Latex	194	106
4059	Brynn	McKinnon	F	2017-08-27	Montreal	QC	Penicillin	48	9
4061	Sandy	Cameron	F	1975-04-06	Grimsby	ON	Salicylic Acid	161	97
4064	Joe	Vane	M	1969-03-26	Brampton	ON	Penicillin	175	121
4066	Abe	Luca	M	2015-05-08	Hamilton	ON	Penicillin	62	18
4068	Noike	Travis	F	1998-12-18	Ancaster	ON	Codeine	155	53
4069	Ross	Blake	M	1952-09-21	Burlington	ON	Honey	187	112
4071	Susan	Handley	F	2004-03-24	Fruitland	ON	Valporic Acid	154	59
4072	Ashley	Ranall	F	2013-07-05	Athens	ON	Penicillin	71	22
4075	Huma	Astro	F	2017-05-13	Hamilton	ON	Codeine	49	8
4076	Salvatore	Bardo	M	1973-08-15	Halifax	NS	Penicillin	159	77
4079	Helga	Fidelma	F	2018-05-08	Hamilton	ON	Penicillin	37	4
4082	Sabrina	Na Melmas	F	2011-10-21	Hamilton	ON	Tape	103	32
4083	Jaenelle	ONeill	F	1980-07-07	Waterford	ON	Codeine	142	72
4085	Janice	Redfield	F	1999-10-07	Hamilton	ON	Morphine	157	52
4087	Piper	Klump	F	1974-09-09	Ottawa	ON	Penicillin	156	69
4088	Linda	Meedhan	F	1982-01-06	Hamilton	ON	Penicillin	181	102
4092	Norine	Light	F	1974-01-30	Cambridge	ON	Penicillin	162	101
4093	Avon	Roberts	M	1994-06-14	Hamilton	ON	Sulfa	214	106
4094	Eve	Stackhouse	F	2014-05-27	Burlington	ON	Penicillin	70	17
4098	Katie	Bigelow	F	1999-07-22	Delhi	ON	Milk	175	111
4100	Prue	Owens	F	1976-05-07	Hamilton	ON	Sulfa	152	60
4101	Sister	Sofer	F	1961-11-24	Hamilton	ON	Almonds	167	68
4102	Emma	ONeill	F	2002-12-23	Hamilton	ON	Penicillin	179	62
4104	Alecto	Hoare	F	1979-01-26	Sarnia	ON	Penicillin	139	58
4108	Leon	Willing	M	1983-09-01	Whitby	ON	Peanuts	205	108
4110	Ellen	Black	F	1954-12-04	Brantford	ON	Codeine	174	90
4112	Jane	Andrews	F	1998-05-13	Toronto	ON	Bee Stings	154	73
4113	April	Cooper	F	2003-11-20	Sarnia	ON	ASA	173	71
4116	Michael	Chase	M	1961-01-13	Whitby	ON	ASA	203	96
4117	Lisa	Darrow	F	2015-08-27	Windsor	ON	Tetracycline	66	18
4119	Sally	DeWolff	F	1986-02-15	Hamilton	ON	Penicillin	140	57
4124	Grace	Bachchan	F	1968-12-14	Brandon	MB	Shellfish	140	69
4125	Jake	Falcone	M	2008-03-09	Hamilton	ON	Penicillin	136	57
4126	Zatanna	Maroney	F	1985-06-25	Hamilton	ON	Sulphur	147	63
4128	King	Shore	M	1955-05-25	Barrie	ON	Codeine	156	70
4130	Kingo	Bottom	M	1989-04-09	Hamilton	ON	Peanut Butter	177	105
4133	Danny	Cooper	M	2003-11-07	Oakville	ON	Penicillin	177	73
4134	Jennifer	Fletcher	F	2017-11-17	Hamilton	ON	Penicillin	49	9
4135	Didi	Peabody	F	1951-02-24	Hamilton	ON	Codeine	159	62
4136	Martin	Frye	M	1955-08-24	Brantford	ON	Penicillin	151	75
4137	Cedric	Bigelow	M	1989-05-11	Hamilton	ON	Codeine	137	69
4140	Mallory	Redfield	F	1979-02-05	Newmarket	ON	Valporic Acid	157	66
4142	Melody	Travis	F	1972-04-27	Hamilton	ON	Codeine	148	48
4143	William	Skilbeck	M	1982-09-22	Simcoe	ON	Sulfa	153	75
4144	Miranda	Moses	F	1970-07-02	Hamilton	ON	Seafood	169	59
4145	Bertha	Smart	F	1970-05-06	Toronto	ON	Sulfa	166	95
4146	Ruby	Bones	F	1993-04-08	Calgary	ON	Penicillin	166	105
4147	John	Tutuola	M	1992-05-24	Kapuskasing	ON	Honey	161	70
4149	Ryan	Bradford	M	1983-09-08	Hamilton	ON	Valporic Acid	197	90
4150	Harmony	Farrell	F	1971-10-11	Stoney Creek	ON	Iodine	170	42
4153	Peter	Drake	M	1999-07-25	Hamilton	ON	Strawberries	225	117
4155	Snapper	Hopper	M	1993-12-07	Hamilton	ON	Bee Stings	168	75
4156	Bobby	Whale	M	1960-07-01	Bancroft	ON	Codeine	150	62
4157	Rita	Owens	F	1959-12-20	Delhi	ON	Penicillin	177	85
4158	Nea	Stape	F	1979-11-16	Whitby	ON	Sulfa	169	111
4159	Victoria	Tabootie	F	1968-01-14	Hamilton	ON	Micropore Tape	180	86
4160	Subhash	Blake	M	1971-10-07	Hamilton	ON	Codeine	198	113
4162	Alecto	Givens	F	1994-06-14	Hamilton	ON	Tetracycline	165	118
4163	Agatha	Smythson	F	1989-08-10	Cambridge	ON	Penicillin	163	115
4167	Scott	Mowbray	M	2005-06-18	Hamilton	ON	Penicillin	170	67
4169	Norman	Crabbe	M	2017-06-26	Hamilton	ON	Iodine	40	7
4172	Julie	McAllister	F	2002-07-12	Montreal	QC	Codeine	192	66
4173	Hannah	Stephens	F	1955-12-25	Hamilton	ON	Penicillin	164	63
4174	Hermione	Beth	F	2007-11-21	Toronto	ON	Penicillin	139	44
4177	Kirk	Forelli	M	1957-06-19	Hamilton	ON	Topical Anaesthesia	178	67
4178	Catherine	Craven	F	1988-08-15	Hamilton	ON	Penicillin	161	97
4180	Cash	Verma	M	1996-10-30	St. Catharines	ON	Penicillin	143	83
4181	Jake	Lindley	M	2007-04-03	Burlington	ON	Dairy Products	156	57
4182	Kat	Holmes	F	1956-11-20	Carlisle	ON	Sulphur	159	100
4183	Sam	Towne	M	1971-11-28	Hamilton	ON	Penicillin Environmental	140	71
4184	Calleigh	Andonuts	F	1959-01-09	Hamilton	ON	Penicillin	176	82
4188	Hope	Warren	F	2005-09-01	Red River	MB	Penicillin	162	49
4191	Raphael	Snyder	F	2013-01-17	Walnut Grove	AB	Penicillin	89	26
4195	Joe	Bradley	M	1948-12-27	Ancaster	ON	Penicillin	174	76
4196	Ronnie	Clericuzio	M	1994-04-04	Walnut Grove	AB	Penicillin	135	81
4197	Mallory	Poppins	F	1985-06-18	Grimsby	ON	Penicillin	155	53
4199	Jake	Thevenet	M	1995-10-22	Burlington	ON	Penicillin	186	63
4200	Laverne	Gordon	F	2014-08-14	Brantford	ON	Tylenol	76	22
4202	Martin	McCartney	M	1996-05-01	Hamilton	ON	Penicillin	178	79
4204	Ellis	Michaelson	M	2009-09-09	Brantford	ON	Cheese	135	55
4205	Bo	Fisk	M	1954-08-21	Hamilton	ON	Penicillin	173	111
4206	Hiroshi	Langshaw	M	1968-02-25	Milton	ON	Micropore Tape	202	113
4207	Shaz	Piper	F	1987-07-12	Brantford	ON	Penicillin	158	110
4208	Alexei	Jaffe	M	1976-09-06	Hamilton	ON	Latex	197	106
4211	Ruby	Kennedy	F	1971-10-16	Hamilton	ON	Penicillin	180	99
4213	Chris	Morris	M	1964-09-09	Brantford	ON	Penicillin	205	110
4214	Harry	Barclay	M	1986-04-12	Brantford	ON	Penicillin	146	64
4215	Sylvester	Rawling	M	1951-11-24	Barrie	ON	Sulfa	144	68
4218	Clancy	Morgan	M	1994-10-09	Hamilton	ON	Peanut Butter	204	94
4219	Maggie	Purebred	F	1974-08-04	Orillia	ON	Penicillin	159	74
4222	Brian	Rosenberg	M	1984-03-26	Hamilton	ON	ASA	155	78
4226	John	Nelson	M	1960-12-19	Paris	ON	Penicillin	173	69
4227	Nataria	McCrary	F	1981-07-11	Hamilton	ON	Sulfa	165	70
4228	Lyla	Clare	F	1976-12-05	Toronto	ON	Penicillin	141	58
4230	Paul	Riviera	M	2000-10-28	Simcoe	ON	Codeine	137	87
4233	Kerry	Grant	F	1959-09-19	Paris	ON	Codeine	144	60
4234	Raphael	Van Buren	F	1985-07-25	Hamilton	ON	Sulfa	154	63
4235	Rose	Taylor	F	1981-08-30	Ottawa	ON	Penicillin	135	64
4237	Patti	Dunham	F	1990-09-09	Hamilton	ON	Strawberries	172	81
4238	Alan	Lawson	M	2014-11-30	Ottawa	ON	Penicillin	65	23
4240	Elly	Valentine	F	2003-06-02	Timmins	ON	Iodine	162	64
4247	Misty	Hastings	F	1993-07-01	Ancaster	ON	Penicillin	143	63
4250	Paul	Zaluchi	M	1986-10-27	Smithville	ON	Acetaminophen	211	116
4252	Jen	Dieudonne	F	2003-10-30	Hamilton	ON	Penicillin	168	59
4253	Kate	McClure	F	1962-06-01	Toronto	ON	Strawberries	174	93
4256	Rita	Wolfe	F	1957-10-05	Hamilton	ON	Penicillin	178	113
4257	Seiryo	Owens	M	1951-11-02	Hamilton	ON	Penicillin	192	93
4259	Kate	Tura	F	1978-12-30	Halifax	NS	Codeine	193	98
4262	Amelia	McDonald	F	1962-08-24	Halifax	NS	Penicillin	148	57
4263	Alan	Croft	M	2001-06-24	Toronto	ON	Wheat	199	88
4264	Catherine	Delacour	F	1960-08-26	Hamilton	ON	Topical Anaesthesia	162	102
4265	Lindsay	Fansler	F	1994-05-07	Sarnia	ON	Penicillin	167	93
4268	Cletus	Sprout	M	1952-10-11	Ancaster	ON	Penicillin	142	81
4272	Sharon	Bartlet	F	1969-09-02	Ancaster	ON	Tape	193	85
4273	John	Boyle	M	1964-11-10	Hamilton	ON	Penicillin	182	91
4276	Roy	Salieri	M	2004-05-22	Simcoe	ON	Penicillin	155	65
4281	Rachel	Caxton	F	2012-03-07	Niagara Falls	ON	Honey	103	30
4282	Mona	Meiklejohn	F	1983-12-29	Brantford	ON	Penicillin	148	68
4283	Maud	Vondopoulos	F	1976-05-10	Hamilton	ON	Penicillin	172	88
4285	Sam	Vincent	M	1990-07-23	Hamilton	ON	Peanuts	170	73
4286	Miyuki	Glicker	F	1961-12-21	Elmira	ON	Penicillin	174	104
4296	Donna	Drew	F	1960-04-12	Hamilton	ON	Sulfa	161	93
4297	Phil	Bell	M	2006-06-21	Ancaster	ON	Codeine	153	65
4298	Lewis	Crabtree	M	1984-08-18	Hamilton	ON	Penicillin	186	98
4299	Jefferson	Blake	M	1970-07-26	Burlington	ON	Bee Stings	155	71
4302	Neil	Yamamoto	M	1958-07-17	Hamilton	ON	Penicillin	142	74
4304	Gary	Weathers	M	2008-04-08	Dunton	ON	Penicillin	132	52
4305	Miguel	Henderson	M	1958-08-24	Timmins	ON	Penicillin	187	105
4307	Jack	White	M	2010-12-02	Ancaster	ON	Penicillin	131	42
4309	Penny	Woods	F	2003-11-12	Oakville	ON	ASA	155	58
4312	Marti	Summers	F	2002-10-14	Hamilton	ON	Penicillin	196	66
4314	Mallory	Pearle	F	1981-09-02	Troy	ON	Sulfa	165	105
4315	Jane	Dean	F	1967-12-18	Hamilton	ON	Codeine	154	96
4317	Mere	Charles	F	2002-04-21	Hamilton	ON	Penicillin	178	73
4326	Diane	Newman	F	1953-10-12	Sarnia	ON	Penicillin	137	68
4328	Brynn	Takata	F	1954-02-27	Cambridge	ON	Penicillin	168	95
4330	Riley	Banzai	M	1975-11-29	Sarnia	ON	Peanut Butter	158	57
4332	Tru	Kelly	F	1969-11-17	Stoney Creek	ON	Tetracycline	168	116
4334	Jim	Meeks	M	2007-09-06	Brantford	ON	Sulfa	160	53
4337	Lyan	Sharma	M	1982-04-22	Grimsby	ON	Micropore Tape	173	127
4340	Jerry	Camonte	M	1966-04-18	Hamilton	ON	Codeine	223	142
4343	Katie	Hill	F	1964-06-01	Burlington	ON	Acetaminophen	166	108
4346	Benjamin	Fidelma	M	2005-04-20	Hamilton	ON	ASA	172	66
4348	Alan	Richards	M	1978-10-17	Hamilton	ON	Strawberries	164	102
4349	Susan	Piper	F	1978-03-05	Ancaster	ON	Penicillin	164	52
4352	Dol	Forelli	F	2016-11-16	Hamilton	ON	Honey	45	9
4354	Jesse	Lowe	M	1998-06-23	Halifax	NS	Penicillin	159	61
4356	Paul	Pond	M	1967-09-26	Ancaster	ON	Penicillin	154	79
4358	Chris	Coon	M	1984-06-28	Hamilton	ON	Sulfa	191	114
4359	Sookie	Brearly	F	1970-02-01	Cambridge	ON	Sulfa Drugs	175	54
4366	Jo	Sahid	F	1970-03-31	Hamilton	ON	Penicillin	149	68
4368	Leslie	Espinosa	M	1985-07-18	Paris	ON	Valporic Acid	207	108
4369	Kingo	Russo	M	1969-07-26	Hamilton	ON	Codeine	188	109
4371	Bill	Cotter	M	1969-08-21	Hamilton	ON	Penicillin	193	119
4373	Tim	Bartlett	M	2004-05-21	Burlington	ON	Penicillin	179	82
4374	Rose	Douglas	F	2008-05-18	Stoney Creek	ON	Valporic Acid	121	43
4375	Agnes	Weasley	F	1969-01-03	Toronto	ON	Penicillin	145	69
4376	Russell	Baxter	M	1962-12-08	Toronto	ON	Penicillin	192	94
4377	Virginia	Marshall	F	2014-10-26	Hamilton	ON	Salicylic Acid	72	22
4378	Belinda	Papandrao	F	1986-02-04	St. Catharines	ON	Penicillin	153	62
4382	Roderick	Lawson	M	2005-01-09	Stoney Creek	ON	Penicillin	158	66
4383	Tess	Harrington	F	1975-12-22	Hamilton	ON	Penicillin	196	91
4384	Alex	Lane	F	1992-09-25	Cayuga	ON	Penicillin	165	90
4385	Elsa	Weston	F	2003-03-26	Peterborough	ON	Tape	167	66
4387	Demelza	Yang	F	1995-01-19	Toronto	ON	Penicillin	188	93
4388	Sara	Spratt	F	1961-10-08	Hamilton	ON	Bee Stings	147	62
4389	Charlotte	Sprout	F	1988-11-17	Grimsby	ON	Codeine	163	91
4392	Oswald	Ravenclaw	M	2016-02-15	Toronto	ON	Penicillin	49	13
4394	Peggy	Grissom	F	1987-03-21	Burlington	ON	Iodine	172	75
4395	Katie	Sanderson	F	1964-02-09	Odessa	ON	Bee Stings	188	93
4396	Fred	Lynch	M	1958-11-01	Hamilton	ON	Penicillin	187	98
4398	Leonard	Steelgrave	M	1958-04-28	Hamilton	ON	Dye	163	107
4403	Deborah	Stewart	F	1970-01-14	Dundas	ON	Penicillin	153	74
4406	Rita	Tonks	F	2010-07-17	Burlington	ON	Penicillin	117	42
4407	Monica	Licalsi	F	1976-08-10	Hamilton	ON	Codeine	161	101
4409	Christine	Soran	F	1974-03-06	Burlington	ON	Penicillin	152	53
4410	Melody	Ranall	F	1960-06-27	Hamilton	ON	Sulfa	189	91
4411	Ellery	Morales	M	1981-12-07	Dunton	ON	Penicillin	161	115
4414	Ray	Wheeler	M	1976-08-19	Hamilton	ON	Sulfa	174	131
4415	Max	Stape	M	1999-01-11	Hamilton	ON	Penicillin	178	97
4416	Joey	Lopez	M	1963-07-14	North York	ON	Penicillin Environmental	180	129
4417	Bernard	Hamilton	M	2011-08-28	Hamilton	ON	Penicillin	116	44
4418	Sarah	Warbeck	F	2015-04-23	Waterford	ON	Wheat	57	13
4419	Alecto	Murphy	F	1976-06-21	Burlington	ON	Cat Hair	175	115
4421	Benton	Barnaby	M	1982-01-25	Niagara Falls	ON	Micropore Tape	181	65
4422	Ruth	Russo	F	1982-09-08	Barrie	ON	Codeine	159	99
4423	Otis	Wright	M	2003-03-31	Troy	ON	Penicillin	184	76
4424	Oliver	Kolchak	M	2007-09-17	St. Johns	NL	Sulfa	154	68
4427	Jiveshwar	Miller	M	1971-11-02	Hamilton	ON	Codeine	182	105
4430	Maia	Warbeck	F	1974-01-31	Fruitland	ON	Codeine	178	101
4432	Jesse	Bartlet	M	1969-11-28	Hamilton	ON	Codeine	198	103
4435	Fiz	Bonner	F	1950-07-10	Windsor	ON	Penicillin	178	104
4436	Cliff	Smith	M	1993-02-09	Hamilton	ON	Penicillin	161	76
4438	Morgan	Santoro	M	1953-04-23	Ancaster	ON	Almonds	194	102
4439	Nick	Stottlemeyer	M	1966-01-08	Burlington	ON	Peanut Oil	137	66
4440	Reginald	Marvin	M	1996-04-11	Toronto	ON	Bee Stings	182	122
4441	Honey	Pope	F	1957-08-16	Hamilton	ON	Milk	142	72
4442	Paul	Andrews	M	1998-08-03	Stoney Creek	ON	Penicillin	213	113
4446	Ronnie	Lucchesi	M	1962-08-15	Hamilton	ON	Penicillin	184	118
4448	Sara	Manu	F	1983-05-09	Hamilton	ON	Penicillin	186	101
4451	Holly	Railly	F	1952-10-11	Timmins	ON	Codeine	187	96
4453	Andy	Wexford	M	1973-11-04	Paris	ON	Iodine	193	108
4454	Polly	Devine	F	1950-03-04	Sarnia	ON	Penicillin	148	58
4457	Nino	Denton	M	2002-12-12	Toronto	ON	Penicillin	186	87
4458	William	Beck	M	2018-04-08	Burlington	ON	Codeine	30	2
4459	Mary	Kent	F	1958-02-24	Hamilton	ON	Penicillin	162	67
4461	Roderick	Riviera	M	1975-07-27	Milton	ON	Peanuts	196	118
4462	Chris	Kuroda	M	1952-01-22	Hamilton	ON	Tylenol	133	73
4463	Laurel	Lucas	F	1965-11-28	Brantford	ON	Penicillin	173	101
4464	Melanie	OHara	F	2011-11-18	Walnut Grove	AB	Penicillin	102	38
4468	Jane	Coccotti	F	1995-06-19	Hamilton	ON	Penicillin	165	55
4470	Valerie	Schrute	F	2017-12-02	Dunton	ON	Ragweed	42	7
4473	Alphonse	ONeill	M	1983-10-24	Hamilton	ON	Penicillin	171	117
4474	Kelly	Munroe	F	2015-03-19	St. Catharines	ON	Penicillin	68	17
4477	Lilly	Downs	F	2003-05-09	Hamilton	ON	ASA	167	65
4478	Alice	Sanderson	F	2013-11-22	St. Catharines	ON	Peanut Butter	80	22
4480	Zenigata	Overstreet	M	1956-05-19	Stoney Creek	ON	Codeine	178	83
4481	Indiana	Halliwell	M	2012-12-12	Hamilton	ON	Codeine	75	36
4482	Michael	Breaker	M	1957-05-28	Burlington	ON	Iodine	149	81
4483	Cordelia	Brown	F	1954-03-11	Hamilton	ON	Penicillin	145	50
4484	Anthony	Krueger	M	1953-09-27	Hamilton	ON	Codeine	192	105
4487	Gail	Crusher	F	1976-03-13	Hamilton	ON	Codeine	176	107
4489	Annie	Travis	F	1953-06-30	Milton	ON	Penicillin	165	103
4493	Sophie	Aran	F	1969-05-14	Pickering	ON	Codeine	167	100
4494	Vera	Fairweather	F	1963-08-03	Paris	ON	Strawberries	142	53
4495	Paul	Schultz	M	1971-05-18	Oakville	ON	Penicillin	198	101
4498	Wanda	Rice	F	2016-10-25	Hepworth	ON	Sulfa	55	14
4499	Patricia	Webster	F	1948-12-22	Milton	ON	Penicillin	157	79
4500	Nero	Greer	M	1957-02-25	Hamilton	ON	Penicillin	149	78
4509	Tracy	Bell	F	1980-04-04	Timmins	ON	Penicillin	159	86
4511	Jeff	Hopper	M	2018-07-15	Hamilton	ON	Codeine	26	3
4512	Lois	Brocklehurst	F	1989-05-11	Milton	ON	Iodine	155	91
4513	Roberta	Jones	F	1952-04-29	Toronto	ON	Tylenol	166	107
4514	Todd	Dallas	M	1975-12-21	Ancaster	ON	Penicillin	193	100
4516	George	Sawyer	M	1983-11-17	Toronto	ON	Sulphur	191	129
4518	Domenica	Ashton	F	1977-10-02	Hamilton	ON	Sulphur	170	109
4519	Eddie	Drake	M	2017-05-22	Ancaster	ON	Penicillin	42	7
4524	Faye	Soong	F	1953-04-22	Hamilton	ON	Codeine	158	97
4525	Christine	Turtle	F	1999-09-30	Pickering	ON	Penicillin	164	51
4526	Armando	Matthews	M	1987-12-20	Burlington	ON	Penicillin	173	74
4527	Karen	Costello	F	2013-08-04	Windsor	ON	Penicillin	75	22
4528	Deanna	Barnes	F	1983-04-05	Toronto	ON	Penicillin	161	73
4529	Molly	Hanover	F	1999-10-23	Elmira	ON	Milk	167	91
4530	Constance	Yang	F	2002-07-17	Mississauga	ON	Penicillin	177	71
1	Donald	Waterfield	M	1963-02-12	Barrie	ON	\N	156	65
4	Blair	Diaz	M	1967-01-07	Hamilton	ON	\N	191	104
7	Thomas	ONeill	M	1993-01-31	Burlington	ON	\N	180	117
8	Sonny	Beckett	M	1952-12-11	Port Hawkesbury	NS	\N	174	105
10	Cedric	Coltrane	M	1961-11-10	Toronto	ON	\N	157	61
11	Hank	Spencer	M	1969-08-10	Peterborough	ON	\N	158	74
12	Sara	di Marco	F	1949-04-29	Hamilton	ON	\N	145	46
15	Amy	Leela	F	1977-06-25	Hamilton	ON	\N	172	72
18	Rachel	Winterbourne	F	1966-04-26	Hamilton	ON	\N	163	95
19	John	West	M	1961-06-19	Oakville	ON	\N	138	61
20	Jon	Doggett	M	1951-12-25	Hamilton	ON	\N	194	116
21	Angel	Edwards	F	1975-08-22	Brantford	ON	\N	176	106
22	Brodie	Beck	F	1975-08-01	Carlisle	ON	\N	157	66
26	Nea	Kobayakawa	F	1995-10-18	Toronto	ON	\N	147	62
27	Laura	Halliwell	F	1964-11-26	Brantford	ON	\N	146	76
28	Lucille	Maureen	F	1953-08-22	Hamilton	ON	\N	184	87
30	Roderick	Payne	M	2015-03-22	Halifax	NS	\N	58	17
32	Bertha	Crowley	F	2009-03-14	Delhi	ON	\N	125	39
34	Don	Wiggum	M	2002-11-15	Hamilton	ON	\N	189	91
35	Anthony	Maxwell	M	2011-02-11	Oakville	ON	\N	92	37
37	Anne	Marlowe	F	1996-09-17	Pickering	ON	\N	165	88
39	Charles	Andonuts	M	2016-05-20	Hamilton	ON	\N	62	15
41	Don	Edwards	M	1975-07-02	Hamilton	ON	\N	215	118
45	Cross	Gordon	M	2009-03-20	Ancaster	ON	\N	125	53
47	Harry	Kuramitsu	M	1979-12-03	Hamilton	ON	\N	215	95
48	Gary	Ramotswe	M	1977-07-31	Hamilton	ON	\N	178	101
50	Phil	Beckett	M	2014-10-11	Ottawa	ON	\N	83	26
51	Gala	Littlefield	F	2009-06-20	Brantford	ON	\N	112	41
52	Gregory	James	M	1986-08-17	Hamilton	ON	\N	195	135
54	Molly	Jackson	F	1985-05-04	Carlisle	ON	\N	159	48
55	Rose	Spellman	F	1957-05-31	Hamilton	ON	\N	164	59
56	Will	Manu	M	1960-08-25	Burlington	ON	\N	154	69
59	Rocky	Donahue	M	1953-04-16	Hamilton	ON	\N	190	110
61	Mary	Spellman	F	1988-03-08	Stoney Creek	ON	\N	178	92
64	Didi	Dean	F	1957-11-13	Milton	ON	\N	182	110
69	Lily	Crusher	F	1954-03-17	Burlington	ON	\N	185	82
70	Billy	Jones	M	2013-09-26	Hamilton	ON	\N	85	29
71	Vicki	Babbling	F	2003-08-10	Stoney Creek	ON	\N	180	64
74	Temple	Marlowe	F	1982-02-01	Hamilton	ON	\N	135	65
76	Jackie	Lovegood	F	1983-07-05	Hamilton	ON	\N	157	56
80	Ernest	Clarkson	M	1962-11-22	Hamilton	ON	\N	163	66
81	Gytha	Banzai	F	2001-08-22	Hamilton	ON	\N	182	75
83	Nick	Walker	M	1969-07-16	Hamilton	ON	\N	164	77
84	Jen	Jacobs	F	1962-12-02	Hamilton	ON	\N	156	79
87	Frank	Capone	M	2004-02-15	Hamilton	ON	\N	166	65
88	Caroline	Smart	F	1963-04-07	Hamilton	ON	\N	145	64
89	Sam	Spratt	M	1983-09-23	Hamilton	ON	\N	195	100
92	Mendy	Strate	M	1956-03-29	Stoney Creek	ON	\N	206	111
93	Delores	Bones	F	2006-07-19	Hamilton	ON	\N	154	50
96	Jonny	Christian	M	2003-06-26	Kingston	ON	\N	182	77
98	Harry	Soprano	M	2014-06-18	Beamsville	ON	\N	85	26
99	Richard	Davis	M	1971-08-03	Toronto	ON	\N	148	75
101	Annie	Cox	F	1961-01-27	Hamilton	ON	\N	160	83
102	John	Stape	M	1966-05-30	Hamilton	ON	\N	214	118
104	Alice	Taylor	F	1953-01-04	Hamilton	ON	\N	179	109
105	Freddie	Landsman	M	1972-03-16	Brockville	ON	\N	152	73
106	Moe	Provenza	M	2005-11-06	Cambridge	ON	\N	183	72
109	William	Templin	M	1975-08-06	Highland	ON	\N	152	72
111	Joyce	Bosch	F	2015-10-26	Brantford	ON	\N	65	17
112	David	Beresford	M	1974-10-17	Halifax	NS	\N	152	87
113	Shirley	Havers	F	1986-08-28	Hamilton	ON	\N	145	66
116	Mable	Taggart	F	1962-05-17	Hamilton	ON	\N	181	87
117	Chen	Baasha	M	1992-05-09	Cambridge	ON	\N	193	140
119	Henry	Hernandez	M	1954-03-30	Hamilton	ON	\N	163	55
120	Teddy	McGrath	M	1967-06-15	Hamilton	ON	\N	168	75
123	Stanley	Bean	M	1989-11-01	Toronto	ON	\N	172	75
130	Arnold	Love	M	1952-07-14	Toronto	ON	\N	200	116
132	Haiku	Shaft	M	2006-02-19	Barrie	ON	\N	155	55
133	Mattie	Harkness	F	1989-09-21	Timmins	ON	\N	159	60
136	Kenny	Skelton	M	1970-05-29	Calgary	ON	\N	187	118
137	Jackie	Dean	M	1980-09-29	Victoria	BC	\N	136	58
139	Robbie	Wilde	M	1971-03-27	Burlington	ON	\N	164	70
143	Mike	Madison	M	1993-09-13	Carlisle	ON	\N	191	110
145	Kurt	Turtle	M	1992-06-13	Hamilton	ON	\N	148	68
146	Scott	Corinthos	M	1999-11-25	Hamilton	ON	\N	198	123
150	Sonny	Waterman	M	1987-02-13	Hamilton	ON	\N	173	89
151	Jeff	Tyrell	M	1997-07-18	Hamilton	ON	\N	167	118
152	Charmian	Hardy	F	1992-04-16	Hamilton	ON	\N	155	93
156	Sarah	Newbury	F	2013-02-13	Athens	ON	\N	75	22
157	Robert	Page	M	1966-09-28	Stoney Creek	ON	\N	177	117
162	Laura	Dee	F	1949-05-03	Windsor	ON	\N	148	64
163	Mona	Heterodyne	F	1988-09-27	Hamilton	ON	\N	146	48
164	Valentin	Mackey	M	2004-06-20	Ottawa	ON	\N	181	78
165	Emmett	Colbock	M	1986-10-29	Hamilton	ON	\N	217	89
167	Alex	Fox	F	1951-11-07	Selkirk	ON	\N	170	98
168	Nina	Peroni	F	1964-03-18	Peterborough	ON	\N	151	69
169	Temple	LoPresti	F	1970-06-08	Hargersville	ON	\N	146	45
172	Maria	Bluenight	F	1989-09-24	Ancaster	ON	\N	147	71
173	Sarah	Cooper	F	1960-09-19	Athens	ON	\N	154	63
174	Samus	Dalton	F	1972-08-10	Hamilton	ON	\N	149	50
175	Melody	Frye	F	2006-07-07	Hamilton	ON	\N	132	44
182	Bernard	Karidian	M	2006-11-07	Hamilton	ON	\N	168	62
183	Doris	Kent	F	1965-09-20	Toronto	ON	\N	161	49
190	Gwenog	Hughes	F	1951-02-28	Burlington	ON	\N	162	87
193	Magrat	Luca	F	1985-04-14	Stoney Creek	ON	\N	134	63
197	Jack	Wesley	M	1933-07-15	Hamilton	ON	\N	197	106
199	Lenny	Holmes	M	1974-08-07	Hamilton	ON	\N	160	86
203	Anita	Manu	F	1963-07-16	Dunton	ON	\N	161	110
204	Wilfred	Vincent	M	1954-10-03	Burlington	ON	\N	200	114
205	Maggie	Rajasthan	F	1960-12-02	Hamilton	ON	\N	167	54
206	Martin	Schultz	M	2001-09-02	Brockville	ON	\N	214	84
207	Matt	Celine	M	1960-07-04	London	ON	\N	185	115
210	Subhash	Vercetti	M	1974-03-04	Hamilton	ON	\N	152	69
212	Gala	Cackle	F	1959-02-22	Hamilton	ON	\N	172	93
216	Miles	Mace	M	1991-06-15	Brantford	ON	\N	175	56
218	Megan	Fidelma	F	1986-03-19	Burlington	ON	\N	157	71
224	Michael	Jeter	M	1997-07-24	Toronto	ON	\N	199	107
225	Magnus	Ferrari	M	1994-01-21	Ottawa	ON	\N	169	99
227	Ellen	Wylie	F	1965-12-30	Hamilton	ON	\N	168	77
229	Leonard	Sacrimoni	M	2012-02-22	Walnut Grove	AB	\N	91	29
230	Jessie	Meedhan	F	1990-12-13	Toronto	ON	\N	172	73
235	Robert	Brockman	M	1984-05-05	Toronto	ON	\N	161	91
237	Margaret	MacNeil	F	1980-04-20	Timmins	ON	\N	171	114
239	Mike	Johnson	M	1993-03-07	Hamilton	ON	\N	158	78
241	Belladonna	Thomas	F	1965-01-03	Caledonia	ON	\N	143	59
245	Primo	Bushell	M	1975-06-17	Hamilton	ON	\N	187	101
246	Logan	Tao	M	1958-03-31	Ancaster	ON	\N	209	104
248	Sarah	Daniels	F	1972-07-22	Hamilton	ON	\N	153	60
249	Rita	Stephens	F	2003-12-02	Hamilton	ON	\N	172	57
250	Tania	McGrath	F	1968-07-14	Toronto	ON	\N	166	112
253	Angela	Loeb	F	2014-04-14	Hamilton	ON	\N	75	20
256	Billie	Lowell	F	1960-06-04	Halifax	NS	\N	153	100
261	Cordelia	Sugden	F	1996-12-08	Brantford	ON	\N	163	63
262	Samantha	Heterodyne	F	1978-07-10	Toronto	ON	\N	154	68
263	Jack	Valentine	M	1954-10-06	Hamilton	ON	\N	208	106
267	Bill	Capone	M	2003-04-26	Milgrove	ON	\N	166	82
271	Hannah	MacLeod	F	1982-09-12	Delhi	ON	\N	162	100
275	Roberta	Leone	F	1982-06-03	Hamilton	ON	\N	157	100
281	Michael	ORourke	M	1980-09-28	Burlington	ON	\N	177	122
282	Alex	Riviera	M	1997-04-20	Hamilton	ON	\N	189	121
283	Richard	Bigelow	M	1965-03-03	Burlington	ON	\N	197	114
284	Annie	Smart	F	1976-06-29	Vancouver	BC	\N	153	60
285	Jack	Allgood	M	2008-09-05	Hamilton	ON	\N	126	53
286	John	Crockett	M	1963-07-14	Athens	ON	\N	187	140
288	Katya	Fowler	F	2003-03-11	Burlington	ON	\N	161	57
290	Angela	Clearwater	F	1960-04-30	Hamilton	ON	\N	177	99
291	Naoko	Davenport	F	1951-05-07	Hamilton	ON	\N	169	105
293	Mickey	Fisk	M	1984-10-22	Hamilton	ON	\N	161	57
297	Bruno	Poppins	M	1948-10-11	Brantford	ON	\N	188	89
298	Polly	Bennett	F	1957-07-29	Burlington	ON	\N	166	60
299	Gary	Blake	M	1977-03-23	Hamilton	ON	\N	202	116
300	Mycroft	McGee	M	1967-02-04	Ancaster	ON	\N	198	95
301	Ricardo	Andrews	M	1987-07-21	Hamilton	ON	\N	177	112
302	Paul	Vondopoulos	M	2010-05-22	Brantford	ON	\N	107	36
305	Amane	Flute	F	2006-03-27	Hamilton	ON	\N	130	48
308	Rose	Dean	F	1969-11-18	Hamilton	ON	\N	182	113
309	Harold	Buchanan	M	1951-06-26	Toronto	ON	\N	186	95
311	Nico	Mason	F	1983-12-05	Hamilton	ON	\N	156	96
312	Peter	Tennan	M	1969-10-25	Burlington	ON	\N	167	83
313	Claire	Sprockett	F	1995-07-01	Hamilton	ON	\N	170	67
315	Winifred	Larkin	F	2017-11-03	Brantford	ON	\N	39	5
316	Sam	Lester	M	1982-12-06	Hamilton	ON	\N	203	124
318	Paul	Tau	M	2018-05-12	Hamilton	ON	\N	37	4
319	John	McCrimmon	M	1985-07-06	Paris	ON	\N	195	135
321	Melanie	Rook	F	1998-06-21	Toronto	ON	\N	162	44
323	Lylah	Lockwood	F	2002-03-06	Hamilton	ON	\N	169	75
324	Mary	Matthews	F	1962-08-07	Hamilton	ON	\N	163	67
326	Carol	Lenox	F	1982-07-25	Pickering	ON	\N	183	111
330	Kim	Petrie	F	1953-07-18	Hamilton	ON	\N	153	77
331	Jason	Hopper	M	1983-06-25	Hamilton	ON	\N	187	68
333	Harry	Sofer	M	1960-12-12	Hamilton	ON	\N	199	122
335	Ruby	Cherrytree	F	1991-07-22	Hamilton	ON	\N	147	44
336	Jim	Beckett	M	2016-03-21	Toronto	ON	\N	46	12
339	Lloyd	Kennedy	M	1986-11-19	Hamilton	ON	\N	154	69
343	Max	Sternin	M	2004-05-30	Oakville	ON	\N	182	68
344	Bryan	Skywalker	M	1960-05-24	Barrie	ON	\N	186	80
345	Cordelia	Hanson	F	1934-05-04	Hamilton	ON	\N	155	68
348	Danny	Magnus	M	2016-01-02	Hamilton	ON	\N	54	13
349	Ted	OHara	M	2009-03-02	Dunnville	ON	\N	130	47
351	Ezri	Petrie	F	1994-04-28	Niagara Falls	ON	\N	180	83
352	Peter	Rook	M	1980-12-22	Hamilton	ON	\N	163	88
353	David	Schultz	M	1962-12-15	Hamilton	ON	\N	136	76
356	Guy	Shimura	M	2004-01-09	Red River	MB	\N	172	83
361	Marshal	Hawkes	M	1985-12-09	Hamilton	ON	\N	152	57
362	Noike	Jarvik	F	1974-06-28	Hamilton	ON	\N	174	98
363	Cedric	Morgan	M	2003-09-08	Hamilton	ON	\N	197	86
365	Angelica	Dalton	F	1983-01-23	Hamilton	ON	\N	148	49
366	Vernon	Halliwell	M	1991-07-20	Hamilton	ON	\N	147	74
367	Chuny	Jenkins	F	2008-07-11	Paris	ON	\N	146	38
368	Claire	Barrie	F	1969-03-27	Hamilton	ON	\N	178	110
370	Juliet	Walker	F	1984-07-16	Hamilton	ON	\N	152	73
371	Lydia	Carver	F	1954-10-22	Victoria	BC	\N	176	87
374	Melinda	Boxer	F	2000-06-23	Cambridge	ON	\N	182	103
377	Lew	Vondopoulos	M	1979-03-26	Hamilton	ON	\N	156	84
379	Barney	Atwater	M	1966-03-11	Hamilton	ON	\N	140	69
380	Laura	March	F	1978-03-14	Vancouver	BC	\N	187	114
381	Jon	Landsman	M	1955-05-11	North York	ON	\N	198	131
384	Truman	Kennedy	M	1972-09-18	Timmins	ON	\N	185	119
385	Ernest	Poirot	M	1977-08-01	Hamilton	ON	\N	155	91
387	Vicki	Jonas	F	2012-04-20	Hamilton	ON	\N	96	20
388	Kurt	Beltzer	M	1965-02-16	Hamilton	ON	\N	190	103
391	Kingo	Frye	M	1967-04-06	Carisle	ON	\N	170	63
394	Buzz	Vajda	M	2007-08-29	Stoney Creek	ON	\N	137	62
396	Rick	Mowbray	M	1990-09-24	Ajax	ON	\N	201	123
397	Leona	Hernandez	F	1954-12-18	Hamilton	ON	\N	167	58
400	Cordelia	Belden	F	2017-04-12	Hamilton	ON	\N	45	10
404	Grace	Yurinov	F	1977-08-24	Hamilton	ON	\N	184	121
405	Katya	Sato	F	1975-05-27	Orillia	ON	\N	141	43
407	Jessica	Kent	F	1991-04-03	Hamilton	ON	\N	159	110
409	Julius	Montalbano	M	2007-06-08	Delhi	ON	\N	127	60
411	O-Ren	Baldi	F	2009-10-05	Niagara Falls	ON	\N	115	34
417	Elizabeth	Spencer	F	1973-09-05	Stoney Creek	ON	\N	160	63
418	Bertha	Martin	F	1994-07-26	Orangeville	ON	\N	131	69
419	Walburga	Masaki	F	1959-10-25	Brantford	ON	\N	151	73
420	Velu	Galv�n	M	2016-03-25	Walnut Grove	AB	\N	59	15
421	Eben	Quest	M	1995-10-20	Hamilton	ON	\N	143	78
424	Richard	Wyatt	M	1954-08-23	Marcam	ON	\N	188	101
425	Barney	Smith	M	1948-09-20	Hamilton	ON	\N	162	68
426	Patricia	Rose	F	1993-04-08	Hamilton	ON	\N	179	92
427	Colleen	Scott	F	1989-06-04	Hamilton	ON	\N	134	66
428	Ann	Flowerstink	F	2000-09-20	Paris	ON	\N	171	101
429	John	Grissom	M	1957-07-17	Waterford	ON	\N	215	126
434	Nicky	Shimura	M	2011-07-17	London	ON	\N	92	39
436	Gil	Sigel	M	1962-08-15	Burlington	ON	\N	146	70
437	Gordon	Swift	M	1977-01-01	Winona	ON	\N	192	115
440	Pablo	Treskovna	M	1994-09-16	Hamilton	ON	\N	157	60
443	Lisa	Baasha	F	2003-04-02	Delhi	ON	\N	174	71
444	Marvin	Jaffe	M	1992-05-10	Orangeville	ON	\N	215	112
446	Jane	Goodspeed	F	1980-08-06	Barrie	ON	\N	162	66
447	Kiriko	Baasha	F	1958-11-24	Ajax	ON	\N	169	64
451	Peter	PiNeiro	M	2009-10-08	Dunnville	ON	\N	123	44
455	Mercedes	Heat	F	1953-06-18	Hamilton	ON	\N	160	62
456	Beppe	Sigel	M	1955-01-26	Hamilton	ON	\N	159	78
458	Joseph	Miller	M	1991-02-11	Hamilton	ON	\N	150	87
460	Gerard	Holloway	M	1939-03-22	Hamilton	ON	\N	194	126
465	Luis	Rosenberg	M	1993-05-20	Calgary	ON	\N	180	122
470	Agnes	Waterfield	F	1958-08-19	Ancaster	ON	\N	155	65
471	Polly	Vallance	F	1956-08-08	Hamilton	ON	\N	150	67
474	John	Olsen	M	1985-07-17	Stoney Creek	ON	\N	220	106
476	Natsumi	Totenkinder	F	1993-05-17	Hamilton	ON	\N	136	56
478	Tom	Pike	M	1975-12-03	Dunnville	ON	\N	142	89
479	Narcissa	Hanover	F	1952-08-01	Ancaster	ON	\N	144	80
482	Teddy	Melinda	M	2008-11-14	Hamilton	ON	\N	152	59
484	Ismael	Brearly	M	1992-10-13	Hamilton	ON	\N	202	112
485	Dominic	Poppins	M	1971-02-18	Red River	MB	\N	190	108
486	Tony	Lamb	M	1992-05-10	Burlington	ON	\N	191	124
488	Mrs	Willows	F	2005-12-25	Hamilton	ON	\N	163	64
489	Hercule	Kuramitsu	M	1995-12-31	Hamilton	ON	\N	192	126
491	Herb	Bloom-Wood	M	1994-05-15	Hamilton	ON	\N	178	102
497	Louie	Sydnor	M	2014-05-05	Toronto	ON	\N	81	26
499	Jessica	Owens	F	2008-04-22	Dundas	ON	\N	123	50
500	Emma	Brandon	F	2002-07-06	Burlington	ON	\N	188	66
502	Peggy	Taylor	F	1983-03-26	Hamilton	ON	\N	171	106
505	Oliver	Corneo	M	1950-07-27	Dunton	ON	\N	160	81
509	Ann	Todd	F	2009-05-15	Hamilton	ON	\N	129	45
510	Constantin	Hughes	M	1958-02-09	St. Catharines	ON	\N	153	70
511	Morgan	Soong	M	1963-05-30	Hamilton	ON	\N	186	118
512	Celeste	Galloway	F	1990-10-29	Odessa	ON	\N	171	64
513	Rachel	Patil	F	1991-05-12	Hamilton	ON	\N	191	101
514	Sonny	Scott	M	2009-04-02	Hamilton	ON	\N	134	51
516	Marty	Cropper	M	1982-10-06	Stoney Creek	ON	\N	196	98
519	Rory	Deth	M	1962-09-25	Hamilton	ON	\N	203	111
521	Donald	Maine	M	1959-01-01	Hamilton	ON	\N	174	77
523	Max	Wilson	M	1972-01-04	Sarnia	ON	\N	157	74
524	Imogen	Carter	F	1985-10-17	Burlington	ON	\N	171	110
526	Temple	Parker	F	1973-02-19	Hamilton	ON	\N	160	53
527	Norbert	Strange	M	2015-07-29	Oakville	ON	\N	59	17
529	Honey	Khan	F	2001-04-23	Ancaster	ON	\N	190	64
531	Cy	Ferguson	M	1985-03-28	Niagara Falls	ON	\N	185	91
533	Moe	Russo	M	1976-08-09	Hamilton	ON	\N	198	107
534	Don	Zatara	M	2008-01-11	Timmins	ON	\N	136	67
536	Miss	Holroyd	F	1969-05-07	Hamilton	ON	\N	162	69
537	Harry	Harkness	M	1993-03-30	Hamilton	ON	\N	171	72
539	Dan	Boddicker	M	1962-01-20	Burlington	ON	\N	164	115
540	Phil	Manu	M	1963-06-30	Toronto	ON	\N	137	91
543	Vincent	Rooney	M	1998-02-26	Burlington	ON	\N	187	121
544	Cash	Alvin	M	1979-10-01	Hamilton	ON	\N	198	121
545	Mickey	Swanson	M	1973-03-03	Hamilton	ON	\N	174	107
556	Bill	Watson	M	1963-03-01	St. Johns	NL	\N	221	111
558	Callum	Toombs	M	1953-12-11	Hamilton	ON	\N	200	99
559	Harry	Parkinson	M	2017-06-23	Vancouver	BC	\N	45	7
560	Hal	Travis	M	1993-11-16	Athens	ON	\N	199	100
562	Gary	Graf	M	1988-02-20	St. Catharines	ON	\N	202	120
565	Art	Wycliffe	M	1975-07-17	Hamilton	ON	\N	190	118
566	Basil	Kolchak	M	1965-12-01	Hamilton	ON	\N	189	112
572	Temple	Cleever	F	2014-10-23	Hamilton	ON	\N	76	22
573	Martin	Arden	M	1959-10-24	Windsor	ON	\N	194	115
574	Janice	Yaga	F	1950-10-29	Carlisle	ON	\N	166	98
581	Elizabeth	Martinelli	F	2003-07-10	Hamilton	ON	\N	164	64
582	Ryan	Umbridge	M	1982-06-20	Burlington	ON	\N	166	100
583	Kay	Rawling	F	1949-05-05	Oakville	ON	\N	175	83
585	Jaenelle	Redfield	F	1965-04-30	Brantford	ON	\N	156	70
586	Ariel	Scribbs	F	1972-03-23	Hamilton	ON	\N	159	90
587	Byron	Briscoe	M	2016-12-25	Victoria	BC	\N	48	12
588	Robin	Calvin	F	1986-05-31	Toronto	ON	\N	170	94
589	Peter	Hajime	M	2018-01-07	Hamilton	ON	\N	48	9
590	Maria	Aran	F	1969-04-24	Hamilton	ON	\N	175	117
591	Jenny	Merrova	F	1960-12-08	Burlington	ON	\N	174	90
592	Lydia	Millhone	F	1985-09-03	Hamilton	ON	\N	153	45
595	Thomas	Clover	M	1959-08-15	Hamilton	ON	\N	155	58
596	Barry	Cooper	M	1962-01-30	Burlington	ON	\N	166	65
598	Blanche	Jovanovic	F	1975-04-28	Hamilton	ON	\N	166	100
600	Brian	Sullivan	M	1948-08-10	Milton	ON	\N	220	115
601	William	Purbright	M	2004-02-06	Ancaster	ON	\N	178	78
603	Kate	Ichihara	F	1977-03-05	Hamilton	ON	\N	185	98
605	Adam	Piquel	M	1968-10-28	Misty	AB	\N	160	64
606	Miranda	Warner	F	1966-03-12	Hamilton	ON	\N	194	92
609	Mickey	Carling	M	1968-05-02	Simcoe	ON	\N	143	64
611	Elvis	Whale	M	1952-08-14	Hamilton	ON	\N	209	106
612	Milo	Yarby	M	2006-07-17	Burlington	ON	\N	170	64
616	Will	Provenza	M	1979-06-27	Toronto	ON	\N	191	98
617	Arjen	Punchinello	M	2013-11-27	Hamilton	ON	\N	76	28
619	Anthony	Kingdom	M	1965-07-17	Mississauga	ON	\N	214	111
620	Carmine	Greene	M	1997-11-26	Hamilton	ON	\N	147	75
621	Helga	Peabody	F	1994-01-06	Burlington	ON	\N	131	51
622	Ethel	Garrick	F	1951-07-24	Hamilton	ON	\N	151	113
623	Rita	Lang	F	1953-05-06	Hamilton	ON	\N	177	109
624	Ted	Owens	M	2007-05-23	Grimsby	ON	\N	147	65
625	Alan	Hardbroom	M	1986-05-12	Hamilton	ON	\N	169	120
626	Miyuki	Moses	F	1964-09-25	Edmonton	AB	\N	173	93
629	Spiros	Heiji	M	2004-07-20	Hamilton	ON	\N	174	72
630	Kelly	Cropper	F	2012-12-22	Hamilton	ON	\N	79	23
634	Harry	Travers	M	1971-04-30	Hamilton	ON	\N	159	62
643	Didi	Sharma	F	2008-07-23	Hamilton	ON	\N	102	48
648	Stanislaus	Schibetta	M	1993-10-05	Walnut Grove	AB	\N	174	67
651	Ricky	Clericuzio	M	1953-08-21	Ancaster	ON	\N	169	76
652	Leland	Molly	M	1972-04-08	Red River	MB	\N	217	94
654	Drogulous	Halliwell	M	1955-01-12	Carisle	ON	\N	201	118
655	Peter	Khan	M	2016-10-13	Hamilton	ON	\N	57	15
656	Dominic	Toombs	M	1989-12-21	Hamilton	ON	\N	180	81
657	Carlos	Jason	M	1972-03-08	Brampton	ON	\N	172	106
659	Sonny	Kirk	M	1988-04-10	Calgary	ON	\N	138	73
661	Kay	Peroni	F	2017-07-11	Paris	ON	\N	40	5
663	Joe	Vitti	M	1948-07-07	Hamilton	ON	\N	160	58
665	Rita	De Lesseps	F	1968-08-05	Hamilton	ON	\N	142	72
666	Jack	Henderson	M	1964-10-19	Hamilton	ON	\N	146	87
668	Signor	Selden	M	2001-05-14	Hamilton	ON	\N	204	89
669	Huma	Thomas	F	1978-09-27	Windsor	ON	\N	159	61
671	Willow	Levinson	F	2017-06-30	Hamilton	ON	\N	35	6
672	Ben	Dalziel	M	1948-08-19	Timmins	ON	\N	129	71
674	Pardot	Smart	M	1960-05-15	Hamilton	ON	\N	208	121
675	Daniel	Shore	M	1988-05-26	Red Deer	AB	\N	145	71
677	Jenna	Crane	F	1958-10-22	Hamilton	ON	\N	162	94
678	Leonard	Taylor	M	1979-08-07	Hamilton	ON	\N	163	80
680	Giacomo	Carver	M	1949-05-13	Burlington	ON	\N	160	83
681	Adam	Sugden	M	1972-11-05	Hamilton	ON	\N	144	74
685	Jane	Hill	F	1989-01-27	Orangeville	ON	\N	168	93
686	Ichabod	Tura	M	1952-09-12	Peterborough	ON	\N	157	75
689	Paul	Wolfe	M	1962-10-01	Cambridge	ON	\N	160	76
691	Marina	Nichols	F	1974-05-23	Hamilton	ON	\N	161	105
692	Gary	Hufflepuff	M	1956-09-12	Hamilton	ON	\N	148	68
693	Temple	Scott	F	1971-07-11	Delhi	ON	\N	183	83
694	Bill	Vallance	M	1991-07-10	Hamilton	ON	\N	207	107
697	David	Snyder	M	2011-05-02	Dundas	ON	\N	109	32
701	Precious	Ashton	F	1988-12-14	Grimsby	ON	\N	164	64
702	Signor	Forelli	M	2005-04-28	Hamilton	ON	\N	177	63
704	Ismael	Jonas	M	2000-06-19	Hamilton	ON	\N	182	79
705	Eben	Corneo	M	2008-11-23	Toronto	ON	\N	146	58
706	Joey	Hammer	M	1970-09-10	Paris	ON	\N	176	67
708	Bruce	Corleone	M	1989-12-06	Hamilton	ON	\N	187	118
709	Thursday	Dunham	F	2012-06-28	Burlington	ON	\N	98	30
710	Neju	Gaskell	F	1971-08-22	Toronto	ON	\N	143	69
713	Blanche	Lewis	F	1975-12-04	Hamilton	ON	\N	165	59
715	Melody	Potter	F	1996-11-10	Hamilton	ON	\N	156	107
718	Jake	Owens	M	2014-01-07	Brantford	ON	\N	84	27
727	Willow	Thoreauxe	F	2015-10-16	Hamilton	ON	\N	65	17
728	Olga	Sugden	F	1993-05-19	Hamilton	ON	\N	188	86
729	Woodsy	Crane	M	1960-01-05	Hamilton	ON	\N	176	121
732	Bo	Halliwell	M	1990-11-03	Cambridge	ON	\N	214	123
738	Ethel	Hare	F	1975-06-18	Ancaster	ON	\N	180	105
741	Alex	Wesley	M	1990-06-18	Hamilton	ON	\N	184	118
743	Gary	Bardo	M	2006-12-21	Hamilton	ON	\N	156	65
744	Bonnie	Spinnet	F	1997-12-05	Hepworth	ON	\N	151	55
746	Reginald	Barnaby	M	1996-12-12	Victoria	BC	\N	155	82
747	Michael	Pratt	M	1972-11-02	Ancaster	ON	\N	190	109
748	Marvin	Yurinov	M	1969-04-10	Hamilton	ON	\N	146	64
749	Pilar	Dee	F	1984-05-10	Toronto	ON	\N	167	86
750	Stanley	Abruzzi	M	2000-11-10	Hamilton	ON	\N	180	119
752	Ronnie	Maxwell	M	2011-07-16	Elmira	ON	\N	106	40
753	Donald	Corleone	M	2016-07-01	Hamilton	ON	\N	56	15
755	Alexandra	Price	F	1967-10-29	Hamilton	ON	\N	183	92
756	Libby	Hallow	F	1957-11-01	Hamilton	ON	\N	156	107
760	Bruce	Castang	M	1973-10-18	Hamilton	ON	\N	153	72
761	Janine	Lopez-Fitzgerald	F	1979-10-07	Burlington	ON	\N	147	71
766	Joseph	Ferguson	M	1993-04-15	London	ON	\N	206	118
767	Kirk	Trent	M	1983-01-17	Milton	ON	\N	173	117
768	Amelia	Ogawa	F	1985-10-17	Hamilton	ON	\N	159	57
769	Ernie	Dyson	M	2005-12-15	Brantford	ON	\N	149	59
770	Eva	Medlicott	F	1986-09-16	Hamilton	ON	\N	193	94
772	Tom	Knight	M	1963-03-18	Brantford	ON	\N	169	85
775	Quinn	Frank	F	2008-11-11	Hamilton	ON	\N	117	43
776	Annie	Rook	F	1985-03-03	Toronto	ON	\N	171	108
778	Daphne	Bennett	F	2017-05-18	Brampton	ON	\N	36	6
779	Ruth	Sisco	F	1953-06-03	Hamilton	ON	\N	142	48
782	Bathsheda	Kent	F	1972-12-30	Brantford	ON	\N	155	90
783	Orla	Cooper	F	1979-02-23	Cambridge	ON	\N	163	95
787	Julian	Fuyutsuki	M	2002-11-26	Hamilton	ON	\N	186	85
791	Charlie	Spica	F	2011-02-21	Smithville	ON	\N	88	25
792	Jake	Alvin	M	2003-04-27	Hamilton	ON	\N	187	80
796	Maria	Scully	F	1959-01-07	Smithville	ON	\N	150	59
797	Jerry	Greener	M	1990-07-20	Hamilton	ON	\N	190	97
799	John	Spuckler	M	2002-08-05	Sarnia	ON	\N	209	82
800	Daniel	Cole	M	1980-03-05	Stoney Creek	ON	\N	175	121
803	Miley	Spencer	F	1994-12-19	Grimsby	ON	\N	191	99
804	V�ctor	Moss	M	1978-10-24	Burlington	ON	\N	175	60
809	Tom	Fanucci	M	1998-10-09	Hamilton	ON	\N	187	132
811	Henry	Martin	M	1961-12-18	Sarnia	ON	\N	192	116
812	Agnes	Akagi	F	1951-05-26	Hamilton	ON	\N	156	60
813	Cliff	Cusack	M	1996-01-22	St. Catharines	ON	\N	169	78
815	Victoria	Brown	F	1956-12-29	Barrie	ON	\N	162	95
816	John	Jenkins	M	1989-06-23	Hamilton	ON	\N	196	102
818	Evan	Cortez	M	2010-12-24	Burlington	ON	\N	108	35
821	Nero	Jacobs	M	2011-09-14	Hamilton	ON	\N	102	38
825	Javier	Jordan	M	2001-12-29	Milton	ON	\N	183	79
826	Kiranin	Parkinson	M	1987-01-17	Hamilton	ON	\N	206	124
827	Samuel	Littlefield	M	2008-11-18	Brantford	ON	\N	128	52
828	Liz	Willing	F	1981-06-12	Toronto	ON	\N	162	55
829	Helena	Monaghan	F	1991-05-07	Hamilton	ON	\N	148	61
831	Beverly	Halliwell	F	1985-03-21	Hamilton	ON	\N	131	59
832	Annie	Denoram	F	2006-01-01	Toronto	ON	\N	134	52
835	Joe	Strepfinger	M	2012-05-05	Paris	ON	\N	89	39
836	Montana	Vimes	F	1968-05-28	Pickering	ON	\N	159	60
837	Stephen	Cochrane	M	1954-01-25	Hamilton	ON	\N	149	68
839	Susie	Sinclair	F	1982-04-21	Toronto	ON	\N	156	55
841	Jemima	Adler	F	1994-06-09	Georgetown	ON	\N	167	111
845	Rose	Soong	F	1983-08-24	Timmins	ON	\N	147	69
847	Wayne	Stewart	M	2009-08-17	Hamilton	ON	\N	134	47
852	Amy	Brennan	F	1961-09-30	Hamilton	ON	\N	179	80
853	Karen	Halliwell	F	1954-02-09	Oakville	ON	\N	175	50
855	Kurt	Willis	M	2012-06-14	Hamilton	ON	\N	110	29
856	Eddie	Peroni	M	1963-03-30	Hamilton	ON	\N	181	99
857	Ian	Leigh	M	1967-03-03	Troy	ON	\N	168	106
858	Jean	Marlowe	F	2012-04-04	Burlington	ON	\N	85	27
862	Sabrina	Kane	F	1988-11-26	Smithville	ON	\N	166	67
863	Cross	Kiriakis	M	2010-11-09	St. Johns	NL	\N	125	41
864	Maia	Greener	F	1963-05-22	Hamilton	ON	\N	170	104
865	Tim	Miller	M	1985-06-25	Stoney Creek	ON	\N	161	79
867	Daphne	Beaumann	F	2011-12-06	Delhi	ON	\N	101	32
872	Mable	Davenport	F	2013-11-14	Brantford	ON	\N	89	26
873	Langdale	Cole	M	1948-04-26	Thunder Bay	ON	\N	183	57
876	Jaki	Maroni	M	1957-08-11	Orangeville	ON	\N	205	104
877	Gwen	Gottwald	F	1972-08-27	Walnut Grove	AB	\N	166	54
878	Amy	Furudo	F	1964-01-05	Stoney Creek	ON	\N	165	65
882	Sally	Fowler	F	1970-12-13	Guelph	ON	\N	155	100
884	Howard	Cortez	M	1977-06-16	Hamilton	ON	\N	193	92
888	Dale	Sigel	M	1963-09-18	Hamilton	ON	\N	188	93
889	Traci	Greggs	F	1996-03-31	Hamilton	ON	\N	161	65
891	Moe	Smith	M	1996-09-11	Hamilton	ON	\N	162	83
893	Ema	Wainthropp	F	1987-12-29	Cambridge	ON	\N	148	43
894	Natsumi	Hopper	F	1955-07-11	Simcoe	ON	\N	191	102
895	Mendy	Farrell	M	2010-09-21	Hamilton	ON	\N	120	48
897	Kevin	Bonasera	M	2009-05-10	Pickering	ON	\N	126	39
898	Alex	Yurinov	F	2016-08-07	Walnut Grove	AB	\N	56	14
902	Nero	Baldi	M	1961-02-09	Hamilton	ON	\N	143	73
903	Deborah	Fabray	F	2008-08-18	Hamilton	ON	\N	129	40
912	Isobel	Harding	F	1983-01-24	Hamilton	ON	\N	139	46
913	Manick	Archer	M	2004-10-01	Toronto	ON	\N	195	74
914	Grace	Plinge	F	1994-02-14	Hamilton	ON	\N	181	99
917	Melinda	Bell	F	1996-08-03	Hamilton	ON	\N	164	50
922	Carmine	Hunter	M	1981-10-21	Hamilton	ON	\N	196	115
925	Dion	Vincent	M	1987-06-23	Toronto	ON	\N	155	79
929	Leslie	Uzuki	M	1977-06-22	Red River	MB	\N	185	103
930	Bunk	Swift	M	1979-04-20	Hamilton	ON	\N	200	113
933	Nicole	Shimura	F	1991-06-04	Timmins	ON	\N	157	96
935	Antonio	Crockett	M	1955-03-02	Barrie	ON	\N	161	60
936	Gary	Shimura	M	1974-08-24	Hamilton	ON	\N	159	82
938	Paige	Forbin	F	1968-11-12	Hamilton	ON	\N	142	63
939	Chris	Johnson	F	1969-06-22	Whitby	ON	\N	182	94
940	Marid	Sanada	M	1954-10-30	Northbay	ON	\N	153	70
942	Sandra	Jackson	F	1991-01-28	Hamilton	ON	\N	158	116
943	Ottilio	McNulty	M	2016-02-28	Hamilton	ON	\N	59	16
944	Jessica	March	F	1973-05-08	Ajax	ON	\N	180	89
945	Angela	Maximoff	F	1972-03-04	Brantford	ON	\N	135	61
947	Melody	Blossom	F	1997-04-05	Hamilton	ON	\N	166	103
948	Al	Edwards	M	1982-02-04	Ottawa	ON	\N	185	114
949	Hannah	Arroway	F	2007-04-06	Burlington	ON	\N	141	41
953	Troy	Lionel	M	1955-12-11	Toronto	ON	\N	198	115
956	Joe	Dingle	M	1973-06-08	Hamilton	ON	\N	196	92
959	Chucky	Skilbeck	M	2017-08-11	Dundas	ON	\N	38	6
962	Dolores	Davenport	F	1971-11-02	Hamilton	ON	\N	165	106
963	Paul	Leotardo	M	1979-07-23	Hamilton	ON	\N	171	70
964	Sal	Larsen	M	1978-05-05	Brampton	ON	\N	175	132
965	Laura	Hope	F	1994-04-04	Guelph	ON	\N	169	99
967	Kay	Erin	F	1976-12-07	Fonthill	ON	\N	181	89
970	Jonathan	Willing	M	2013-08-08	Hamilton	ON	\N	85	26
972	Oliver	Hughes	M	1993-04-21	Toronto	ON	\N	186	80
975	Sam	Vitoller	M	2017-12-06	Hamilton	ON	\N	33	3
978	Rowena	Mann	F	1999-01-21	Hamilton	ON	\N	194	101
980	Rita	Zapatti	F	1961-02-02	Dunton	ON	\N	149	55
985	Wade	Hill	M	1949-06-25	Hamilton	ON	\N	214	100
986	Sister	Chino	F	2016-01-04	Hamilton	ON	\N	45	11
988	Alberto	Walker	M	1996-03-13	Thunder Bay	ON	\N	202	124
992	Denise	Martin	F	1963-06-23	Brockville	ON	\N	182	117
993	Gregory	Barnes	M	1978-11-14	Dunton	ON	\N	212	115
995	Georgette	Page	F	1987-01-27	Hamilton	ON	\N	175	69
996	David	Rook	M	1949-01-29	Orangeville	ON	\N	170	56
997	Georgette	Lambert	F	1991-11-13	Hamilton	ON	\N	179	100
998	Bruce	Lawson	M	1999-07-18	Cambridge	ON	\N	134	70
1003	Keith	MacLean	M	1961-03-05	Hamilton	ON	\N	202	119
1007	Crematia	Lewis	F	2000-10-06	Stoney Creek	ON	\N	141	59
1014	Haruhara	Bennett	F	1981-04-17	Hamilton	ON	\N	152	75
1020	Johnny	Antony	M	2004-10-01	Ancaster	ON	\N	170	75
1023	Velu	ONeill	M	2003-02-20	Hamilton	ON	\N	183	81
1024	Fin	OHara	F	1991-04-18	Hepworth	ON	\N	145	62
1026	Dusty	Manu	M	1965-11-03	Hamilton	ON	\N	200	109
1027	Ben	Tate	M	1953-11-24	Burlington	ON	\N	188	113
1028	Deirdre	Tsuna	F	1959-12-01	Hamilton	ON	\N	133	67
1030	Sam	Wilson	M	1999-05-19	Hamilton	ON	\N	192	109
1031	Calvin	McGee	M	1950-11-01	Niagara Falls	ON	\N	137	64
1034	Annabelle	Stackhouse	F	1960-07-13	Hamilton	ON	\N	166	107
1035	Midge	Fisher	F	1934-01-26	Hamilton	ON	\N	168	111
1036	Fred	Osborne	M	2012-08-03	Dunton	ON	\N	77	35
1038	Jonah	McCoy	M	1963-10-06	Fruitland	ON	\N	193	100
1040	Tochiro	Riviera	M	1956-04-17	Ancaster	ON	\N	190	129
1042	Olivia	McClure	F	1966-08-09	Burlington	ON	\N	165	72
1043	Franz	Morris	M	2011-12-05	Hamilton	ON	\N	115	29
1046	Bo	Wallenquist	M	1969-12-02	Hamilton	ON	\N	186	130
1047	Audrey	Owens	F	1957-07-23	Hamilton	ON	\N	150	65
1048	Jeff	Thornton	M	1991-07-28	Brantford	ON	\N	208	106
1050	Anna	Morrow	F	1973-12-12	Smithville	ON	\N	164	74
1055	Ella	Yurinov	F	1995-07-01	Toronto	ON	\N	168	115
1058	Morgan	Webber	M	1972-01-01	Hamilton	ON	\N	180	63
1059	Hecky	Cragen	M	2006-05-11	Guelph	ON	\N	146	65
1062	Pepper	Milly	F	2002-09-10	Hamilton	ON	\N	188	72
1065	Manick	Cao	M	1952-03-19	Hamilton	ON	\N	153	57
1066	Maia	Jovanovic	F	1978-01-26	Paris	ON	\N	168	99
1067	Alexx	Pigeon	F	1980-04-15	Caledonia	ON	\N	169	43
1068	Mary Jane	Owens	F	1975-04-04	Hamilton	ON	\N	170	90
1069	Benjamin	Flood	M	1955-08-22	Stoney Creek	ON	\N	216	110
1072	Kiriko	Lockwood	F	2001-06-04	Hamilton	ON	\N	172	77
1073	Hal	Thorndyke	M	1949-07-18	Halifax	NS	\N	191	113
1074	Tony	Baily	M	1991-09-08	Montreal	QC	\N	187	114
1075	Mary	Kedward	F	1975-01-03	Hamilton	ON	\N	161	91
1077	Franz	Melinda	M	1966-07-28	Mississauga	ON	\N	173	79
1078	Joe	Kennedy	M	1976-11-06	Dundas	ON	\N	210	106
1079	Carmine	Klump	M	1949-12-18	Hamilton	ON	\N	202	103
1081	Emilio	Maureen	M	1980-08-19	Burlington	ON	\N	209	128
1084	Mary	Hammer	F	1956-02-09	Ottawa	ON	\N	150	78
1087	Phil	Capone	M	1961-09-11	Hamilton	ON	\N	140	86
1088	Tobias	Guerrard	M	1951-07-25	Burlington	ON	\N	163	85
1090	Emma	Lonnegan	F	1987-11-11	St. Johns	NL	\N	164	67
1091	Sarah	Day	F	1966-03-31	Timmins	ON	\N	166	108
1092	Vic	Glicker	M	2006-01-06	Hamilton	ON	\N	162	57
1097	Constance	Jones	F	1981-05-02	Hamilton	ON	\N	143	62
1099	Perry	Bradley	M	1955-08-02	Hamilton	ON	\N	146	79
1104	James	Cortez	M	2000-10-08	Ancaster	ON	\N	147	59
1107	Amy	Travers	F	1987-09-27	Toronto	ON	\N	156	41
1112	Avery	Fidelma	M	1968-01-20	Burlington	ON	\N	198	104
1113	Jennifer	Strate	F	2009-10-25	Highland	ON	\N	110	39
1114	Simon	Kammerer	M	1966-05-10	Burlington	ON	\N	171	89
1115	Miss	Thickey	F	1977-03-27	Hamilton	ON	\N	177	107
1119	Anthony	Challis	M	1958-05-20	Ancaster	ON	\N	190	92
1120	Emma	Sena	F	1976-01-22	Hamilton	ON	\N	133	72
1123	Eloise	Harman	F	1975-06-12	Hamilton	ON	\N	132	79
1126	Carlie	Murphy	F	1956-09-20	Hamilton	ON	\N	191	93
1128	Jimmy	Serrano	M	1987-10-22	Brampton	ON	\N	161	75
1129	Don	Poppins	M	2007-08-27	Brantford	ON	\N	159	60
1133	Fiz	Peth	F	2005-03-21	Hamilton	ON	\N	148	61
1135	Sharon	Flynn	F	2007-02-01	Hamilton	ON	\N	142	51
1136	Norma	Maza	F	1959-12-26	Timmins	ON	\N	144	57
1140	Zane	Wong	F	1994-08-24	Hamilton	ON	\N	136	48
1141	Roman	Gordon	M	2002-02-07	Stoney Creek	ON	\N	190	81
1144	Jessica	Hill	F	2002-04-15	Kingston	ON	\N	166	76
1146	Matt	Sanderson	M	1989-07-30	Hamilton	ON	\N	142	69
1147	Harold	Weber	M	2009-12-21	Timmins	ON	\N	131	53
1154	Kate	Lupertazzi	F	1954-07-09	Hamilton	ON	\N	177	107
1155	Norma	Preston	F	2003-07-04	Hamilton	ON	\N	180	68
1160	Truman	Mancini-Corleone	M	1992-11-03	Hamilton	ON	\N	155	62
1161	Phryne	Bones	F	1966-01-10	Hamilton	ON	\N	133	55
1162	Amy	Pitts	F	1982-08-12	Hamilton	ON	\N	159	55
1163	Nick	Lopez-Fitzgerald	M	1964-05-21	Hamilton	ON	\N	168	80
1167	Woody	Wallace	M	1977-06-21	Hamilton	ON	\N	132	59
1171	Tegan	Delacour	F	1950-07-26	Dundas	ON	\N	148	69
1173	Shirley	Halliwell	F	1988-07-24	Stoney Creek	ON	\N	148	109
1174	Angela	Spencer	F	1998-08-12	Brantford	ON	\N	137	73
1175	Lucky	Crane	M	1994-11-28	Fruitland	ON	\N	161	77
1177	Kathy	Hudson	F	1967-11-16	Niagara Falls	ON	\N	171	103
1179	Angela	Buchanan	F	1973-05-30	Hamilton	ON	\N	189	113
1180	Pansy	Morrow	F	1974-08-27	Hamilton	ON	\N	167	57
1181	William	Kent	M	1955-08-15	Halifax	NS	\N	163	110
1187	Damon	Brennan	M	1950-12-04	Hamilton	ON	\N	212	107
1188	Tulio	Napoli	M	2003-11-01	Hamilton	ON	\N	181	78
1191	Hilda	Hudson	F	1951-06-13	Burlington	ON	\N	130	60
1192	Norman	Corleone	M	1971-05-22	Thunder Bay	ON	\N	154	68
1193	Huma	Brocklehurst	F	1981-07-02	Hamilton	ON	\N	147	70
1197	Jennifer	Withers	F	1970-11-19	Hamilton	ON	\N	142	59
1198	Danny	De Lena	M	1970-11-30	Ottawa	ON	\N	179	103
1201	Irene	Murphy	F	2012-10-04	Beaverton	ON	\N	93	29
1203	Emilio	Banks	M	1963-05-28	St. Catharines	ON	\N	176	69
1205	Ellie	Valentine	F	1950-05-24	Hamilton	ON	\N	144	63
1206	Joyce	White	F	1968-04-11	Timmins	ON	\N	174	55
1212	Lester	Forbin	M	1960-08-27	Hamilton	ON	\N	161	74
1213	Lolly	Aguilar	F	1966-05-04	Toronto	ON	\N	129	68
1214	Francis	Coccotti	M	1998-02-16	Toronto	ON	\N	163	83
1215	Charity	Morrow	F	1953-05-15	Hamilton	ON	\N	177	113
1217	Bobbie	Weasley	F	1988-07-07	Victoria	BC	\N	161	72
1220	Sarah	Brown	F	1952-06-21	Brantford	ON	\N	175	85
1225	Motoko	DeWolff	F	1993-09-02	Windsor	ON	\N	180	110
1227	Loveday	Morgan	F	2016-01-03	Hamilton	ON	\N	57	13
1228	Romany	Sendo	F	2007-06-03	Hamilton	ON	\N	123	50
1236	Kat	Corbie	F	1961-09-12	Ancaster	ON	\N	152	92
1238	Sunny	Crane	F	1954-11-08	Mississauga	ON	\N	157	61
1242	Faye	Zeller	F	1966-10-26	Hamilton	ON	\N	157	106
1243	Tony	Stephens	M	1991-03-31	Linton	ON	\N	130	84
1245	Larry	Ferguson	M	1981-08-07	Hamilton	ON	\N	143	75
1247	Jonathan	McAllister	M	1972-10-12	Delhi	ON	\N	204	102
1248	Maxim	Trivino	M	1966-02-22	Hamilton	ON	\N	162	65
1250	Gary	Neri	M	1982-05-30	Hamilton	ON	\N	191	112
1252	Philip	Nolan	M	1960-12-23	Hamilton	ON	\N	144	77
1255	Shion	Klump	M	1949-07-04	Hamilton	ON	\N	139	80
1256	Harry	Leotardo	M	1998-09-18	London	ON	\N	188	131
1267	Miyuki	Tanner	F	1954-06-26	Hamilton	ON	\N	167	93
1269	Marvin	Bolt	M	1987-06-18	Milton	ON	\N	181	94
1274	Don	Haruko	M	1984-04-18	Burlington	ON	\N	144	82
1275	Diane	Briscoe	F	2005-08-12	Fruitland	ON	\N	135	56
1279	Charles	Denovitz	M	2013-10-21	Brantford	ON	\N	92	31
1285	Theo	Garlick	M	2006-08-16	Milton	ON	\N	154	64
1286	Roland	Hanover	M	1986-04-09	Hamilton	ON	\N	206	130
1287	Holly	Grant	F	1971-03-01	Hamilton	ON	\N	146	48
1288	Agatha	Brandon	F	2003-06-03	Hamilton	ON	\N	173	64
1295	Elvis	Kaiser	M	1984-05-22	Burlington	ON	\N	147	63
1296	Hannah	Wyms	F	1977-07-25	Windsor	ON	\N	174	76
1298	Andrew	Peace	M	1962-05-02	Hamilton	ON	\N	192	97
1303	Roman	Banzai	M	2011-06-26	Hamilton	ON	\N	96	29
1306	Jack	Goren	M	1989-09-01	Oakville	ON	\N	155	86
1307	Al	Travis	M	2003-10-28	Hamilton	ON	\N	187	72
1309	Jimmy	Stiles	M	1968-03-26	Timmins	ON	\N	212	96
1311	Tony	Milbury	M	1982-12-16	Milton	ON	\N	172	107
1314	Lester	Taylor	M	2017-02-17	Hamilton	ON	\N	44	6
1316	Don	Clouseau	M	1975-02-28	Milton	ON	\N	195	99
1317	Hannah	Lewis	F	1955-08-21	Hamilton	ON	\N	154	50
1318	Hannah	Stewart	F	2014-02-10	Hamilton	ON	\N	66	17
1322	Rei	Scotts	F	2009-11-15	Oakville	ON	\N	109	44
1325	Thomas	Redfield	M	1957-01-29	Stoney Creek	ON	\N	184	124
1329	John	Devine	M	1979-06-19	Brantford	ON	\N	178	114
1330	Jimmy	Barret	M	1976-08-22	Hamilton	ON	\N	153	73
1331	Ray	Hoare	M	1996-07-02	Ottawa	ON	\N	172	131
1333	Lao	Elms	M	2008-05-11	Oakville	ON	\N	139	54
1339	Michael	Falcon	M	1993-08-25	Ottawa	ON	\N	146	76
1341	Saito	Tony	M	1962-11-05	Hamilton	ON	\N	195	111
1342	Jim	Grant	M	1974-12-20	Milton	ON	\N	209	93
1351	Justine	Sena	F	1974-03-19	Hamilton	ON	\N	153	106
1353	Miguel	Whitlock	M	1963-05-02	Hamilton	ON	\N	189	90
1354	Meyer	Holden	M	1957-11-22	Hamilton	ON	\N	175	128
1361	Peter	Olivaw	M	2005-01-15	Hamilton	ON	\N	178	76
1362	Achille	Travis	M	1972-05-29	Hamilton	ON	\N	162	59
1364	George	Gudmundsdottir	M	1987-05-16	Edmonton	AB	\N	179	126
1369	Chris	Prentiss	F	1981-07-06	Burlington	ON	\N	135	62
1370	Georgina	Spratt	F	1982-11-30	Brantford	ON	\N	151	63
1371	Beanie	Thackeray	F	1971-08-28	Ancaster	ON	\N	170	67
1379	Donald	Preston	M	1982-09-09	Burlington	ON	\N	168	92
1382	Nero	Chandler	M	1979-07-04	Hamilton	ON	\N	152	80
1387	Chris	Crosby	M	1955-09-10	Toronto	ON	\N	153	77
1390	Henrieta	Lawson	F	1963-05-30	Hamilton	ON	\N	167	104
1394	Roderick	Sun	M	1974-08-20	Ancaster	ON	\N	151	78
1396	Mable	Daniels	F	2016-09-20	Ancaster	ON	\N	60	12
1404	Wilfred	Russo	M	1993-02-13	Hamilton	ON	\N	180	117
1405	Carlito	Bek	M	2002-10-15	Hamilton	ON	\N	202	78
1408	Arnold	Burnett	M	1966-10-08	Dundas	ON	\N	195	108
1409	Curtis	Ichi	M	1955-10-09	Stoney Creek	ON	\N	192	128
1410	Isobel	Taylor	F	1994-08-08	Hamilton	ON	\N	170	110
1411	Claire	Parkinson	F	1925-07-15	Dunton	ON	\N	186	103
1412	Gabrielle	Longbottom	F	1962-05-29	Hamilton	ON	\N	179	87
1415	Tristan	Kelso	M	1974-04-19	Cambridge	ON	\N	150	82
1420	Deirdre	Baley	F	1994-09-10	Hamilton	ON	\N	186	109
1421	Alexei	Banzai	M	1980-03-02	Stoney Creek	ON	\N	179	78
1423	Matthew	Patil	M	1955-12-15	Hamilton	ON	\N	160	76
1425	Donna	Tennison	F	1984-08-20	Hamilton	ON	\N	177	109
1427	Dick	Thomas	M	2018-01-12	Hamilton	ON	\N	40	5
1428	Eddie	Gharty	M	2001-05-31	Stainer	ON	\N	201	92
1430	Carl	Costigan	M	1983-12-13	Toronto	ON	\N	194	121
1431	John	Martin	M	1969-09-17	Toronto	ON	\N	216	113
1433	Larry	Swirling	M	1995-12-18	Brampton	ON	\N	202	87
1434	Shaz	Maud	F	1981-09-20	Brockville	ON	\N	146	72
1435	Calleigh	Fabray	F	2007-01-15	Hamilton	ON	\N	145	59
1438	Primo	Drew	M	1989-10-17	Burlington	ON	\N	179	66
1440	Sam	Bek	M	2017-10-21	Dundas	ON	\N	48	11
1441	Georgette	Brown	F	1989-05-18	Hepworth	ON	\N	180	84
1442	William	De Lena	M	1967-01-22	Troy	ON	\N	144	64
1445	Dale	Tan	M	1992-10-06	Stoney Creek	ON	\N	162	77
1449	Simon	Boyce	M	1987-08-03	Hamilton	ON	\N	200	111
1450	Jack	McArthur	M	1992-03-01	Hamilton	ON	\N	212	109
1451	Nancy	Desmond	F	1977-12-18	Stoney Creek	ON	\N	174	96
1452	Garryn	Archer	M	1952-05-20	Victoria	BC	\N	153	68
1456	Miss	Page	F	1956-05-22	Toronto	ON	\N	161	111
1457	Gerard	Church	M	1952-08-18	Troy	ON	\N	162	69
1459	Betty	Waterman	F	2011-04-19	Toronto	ON	\N	101	24
1460	Paul	Garrick	M	1957-10-05	Brampton	ON	\N	192	102
1461	Ralph	Cropper	M	1945-01-19	Milton	ON	\N	218	110
1462	Miles	Belov	M	1956-12-11	Hamilton	ON	\N	166	74
1463	Curro	Mephesto	M	1993-11-06	Sarnia	ON	\N	156	64
1464	Ryoko	Akagi	F	1992-04-20	Hamilton	ON	\N	172	99
1465	Alberto	Bradley	M	1986-05-27	Halifax	NS	\N	222	114
1468	Maia	Sprout	F	1968-04-25	Hamilton	ON	\N	165	96
1469	Haiku	Dundee	M	1994-02-24	Stoney Creek	ON	\N	153	81
1470	Kline	Fortune	M	1989-06-23	Hamilton	ON	\N	177	74
1472	Seaton	Flute	M	1998-07-08	Hamilton	ON	\N	172	62
1477	Catherine	Sun	F	1960-09-17	Hamilton	ON	\N	150	62
1480	Ethel	Brearly	F	2003-01-03	Marcam	ON	\N	150	63
1482	Liz	Miller	F	1983-02-03	Milton	ON	\N	161	58
1486	Alexei	Brockman	M	1989-04-20	Simcoe	ON	\N	201	119
1489	Barney	Hudson	M	1992-12-29	Dundas	ON	\N	164	83
1490	Carlos	Manu	M	1994-09-28	Halifax	NS	\N	150	66
1491	Doris	McGrew	F	1986-05-04	Hamilton	ON	\N	150	71
1494	Buckaroo	Volsky	M	1992-01-12	Hamilton	ON	\N	176	118
1496	Adam	Spelvin	M	2016-06-05	Hamilton	ON	\N	53	12
1497	Katie	Shoop	F	2006-06-17	Halifax	NS	\N	144	59
1501	Sunny	White	F	1950-04-30	Beamsville	ON	\N	170	87
1502	Melanie	Patil	F	2003-03-25	Stoney Creek	ON	\N	179	65
1504	Kevin	Meeks	M	2010-05-31	Cambridge	ON	\N	103	44
1507	Leo	Ravenclaw	M	1959-06-01	Hamilton	ON	\N	179	119
1508	David	Hufflepuff	M	1985-05-03	Dundas	ON	\N	158	65
1510	Bo	Perry	M	2017-11-02	Ancaster	ON	\N	55	9
1511	Steven	Bottoms	M	1966-04-05	Hamilton	ON	\N	203	102
1514	Kirk	Delacour	M	2013-09-16	Simcoe	ON	\N	83	27
1515	Gail	Spellman	F	1999-05-18	Dunton	ON	\N	134	66
1516	David	Falken	M	2004-11-20	Hamilton	ON	\N	176	69
1517	Frederick	Bagshot	M	1989-03-13	Hamilton	ON	\N	132	62
1520	Sister	Allan	F	1980-01-31	Montreal	QC	\N	175	111
1521	Molly	Wesker	F	1956-10-05	Hamilton	ON	\N	171	103
1523	Stone	Barton	M	2010-03-06	Cambridge	ON	\N	123	40
1526	Mary	Sanchez	F	2008-05-13	Hamilton	ON	\N	133	42
1528	Lily	Angie	F	1978-05-30	Hamilton	ON	\N	173	73
1529	Todd	Nash	M	1991-05-31	Hamilton	ON	\N	169	75
1531	Renfield	Caspar	M	1999-11-17	Toronto	ON	\N	213	107
1533	Stanley	Rockford	M	1956-03-04	Brantford	ON	\N	159	71
1534	Sabrina	Spellman	F	1976-10-31	Dunton	ON	\N	147	73
1536	Andy	Graham	M	1996-06-14	Toronto	ON	\N	195	105
1540	Tim	Lee	M	1993-06-30	Grimsby	ON	\N	215	116
1541	Donald	Morgan	M	1998-10-13	Hamilton	ON	\N	163	73
1544	Chan	Snyder	M	2003-12-24	Stoney Creek	ON	\N	173	76
1546	Sasha	Bonasera	M	1984-09-09	Toronto	ON	\N	193	113
1550	Billie	Pancamo	F	1996-07-30	Sarnia	ON	\N	172	65
1552	Tony	Halliwell	M	1971-06-23	Hamilton	ON	\N	180	84
1553	Linda	St. Clare	F	1938-06-01	Hamilton	ON	\N	188	110
1554	Dwight	Barolli	M	2007-05-27	Hamilton	ON	\N	135	56
1555	Albert	Rojo	M	1957-07-02	Hamilton	ON	\N	184	115
1557	Betsy	Matthews	F	1960-11-01	Milton	ON	\N	167	80
1559	Eddie	Bigelow	M	1956-10-29	Timmins	ON	\N	198	99
1565	Pepper	Cameron	F	2007-10-17	Windsor	ON	\N	131	45
1568	Marcus	Wallander	M	1981-05-08	Toronto	ON	\N	178	83
1569	Lilly	Banzai	F	1959-12-16	Highland	ON	\N	157	56
1574	Sue	Fett	F	1973-07-21	Saskatoon	SK	\N	161	68
1575	Temperance	Wright	F	1966-03-30	Paris	ON	\N	170	121
1577	Michael	Sakatsu	M	1987-06-04	Hamilton	ON	\N	192	101
1585	Alex	Cantropus	M	1964-05-02	Ottawa	ON	\N	136	80
1589	Miranda	Aching	F	2007-09-21	Hamilton	ON	\N	137	51
1592	Elizabeth	Peroni	F	2017-11-30	Beaverton	ON	\N	42	5
1594	Eloise	Enrico	F	1950-10-27	Hamilton	ON	\N	158	70
1602	Dickie	Decker	M	2011-06-11	Hamilton	ON	\N	105	39
1604	Norbert	Spellman	M	1998-12-27	Burlington	ON	\N	183	94
1605	Saito	Wesker	M	2014-08-16	Selkirk	ON	\N	84	25
1606	Nymphadora	Kingdom	F	1953-10-29	Hamilton	ON	\N	155	54
1607	George	Lemansky	M	1983-10-13	Paris	ON	\N	145	66
1608	Toby	Crabbe	M	1986-11-10	Brantford	ON	\N	221	91
1609	Luke	Sugden	M	1979-10-09	Smithville	ON	\N	180	80
1610	Anthony	Graf	M	1998-07-29	Toronto	ON	\N	192	121
1611	Paul	Kennedy	M	1982-05-12	Milton	ON	\N	176	66
1612	Daisuke	Dax	M	2013-07-14	St. Catharines	ON	\N	88	30
1614	Paulie	Yang	M	1999-10-29	Hamilton	ON	\N	194	88
1615	Theo	White	M	1967-04-23	Pickering	ON	\N	154	63
1619	Juliet	Wong	F	1968-08-16	Hamilton	ON	\N	176	114
1621	Keyser	Trivino	M	1987-03-24	Hamilton	ON	\N	173	135
1630	Mihoshi	Eckhart	F	1960-04-26	Halifax	NS	\N	191	123
1631	Giacomo	Double	M	1975-09-04	Oakville	ON	\N	186	85
1632	Giacomo	MacAllister	M	2001-07-17	Hamilton	ON	\N	197	83
1633	Martin	OBrien	M	1988-03-13	Brantford	ON	\N	188	61
1635	Peter	Thornton	M	1972-05-05	Toronto	ON	\N	161	72
1646	Enos	Sage	M	2006-05-30	Toronto	ON	\N	147	61
1647	Jack	Bennett	M	1991-04-06	Hamilton	ON	\N	167	105
1648	Nelson	Ray	M	1992-04-03	Dunton	ON	\N	194	115
1649	Martha	Lake	F	2004-08-31	Hamilton	ON	\N	177	54
1651	Doran	Heath	F	2008-07-11	Burlington	ON	\N	139	48
1654	James	Vector	M	1996-10-31	Hamilton	ON	\N	134	74
1660	Bumpy	Hort	M	1983-09-04	Ottawa	ON	\N	167	91
1661	Harmony	Tachikawa	F	1994-10-15	Thunder Bay	ON	\N	184	95
1662	Becky	Halliwell	F	1987-01-26	Dundas	ON	\N	191	94
1672	Sarah	Hare	F	1993-09-03	Hamilton	ON	\N	169	117
1676	Shane	Peroni	M	2001-10-30	Hamilton	ON	\N	211	85
1678	Betty	Stephens	F	1970-03-28	Orangeville	ON	\N	160	121
1679	Joyce	Turner	F	2005-06-04	Oakville	ON	\N	134	52
1680	Kelly	Kalman	F	1997-07-11	Hamilton	ON	\N	185	99
1682	Arnold	Hill	M	1980-01-17	Hamilton	ON	\N	154	68
1686	Miranda	Blossom	F	1961-10-27	Hamilton	ON	\N	164	96
1688	Bob	Zarkov	M	1999-08-20	Ottawa	ON	\N	158	84
1689	Moe	Tsuna	M	1992-09-08	Brampton	ON	\N	198	127
1690	Gary	Principal	M	1992-12-05	Red River	MB	\N	150	86
1693	John	Scott	M	1964-06-20	Waterford	ON	\N	180	125
1698	Hannah	Price	F	1987-01-23	Orillia	ON	\N	176	97
1700	James	Piquel	M	1999-05-27	Dundas	ON	\N	159	76
1703	Shaz	Manu	F	1973-09-22	Dunton	ON	\N	161	89
1704	Jay	Prentiss	M	1992-02-04	Hamilton	ON	\N	214	117
1708	Thomas	Shimura	M	1978-06-13	Waterford	ON	\N	143	64
1710	Cameron	Bigelow	M	1980-08-13	Hamilton	ON	\N	201	103
1711	Sam	Mott	M	1951-09-19	Burlington	ON	\N	195	87
1712	Harry	Halliwell	M	1992-12-26	Stoney Creek	ON	\N	191	74
1713	Jacques	Major	M	2005-01-20	Hamilton	ON	\N	162	62
1717	Joss	McGee	M	2017-12-16	Burlington	ON	\N	46	12
1720	Lavender	Battersby	F	1979-01-06	Hamilton	ON	\N	164	89
1727	Anna	Vane	F	1964-12-15	Pickering	ON	\N	147	102
1731	Shinwell	Williams	M	1981-09-25	Hamilton	ON	\N	211	124
1734	Mabel	DiGeorge	F	1975-12-07	Toronto	ON	\N	150	50
1735	YUko	Randall	F	1968-08-25	Timmins	ON	\N	183	99
1739	Katie	Haruko	F	1958-10-14	Hamilton	ON	\N	183	82
1742	Jaenelle	Granger	F	1978-04-23	Hamilton	ON	\N	148	58
1743	Nancy	Ashton	F	1959-02-16	Hamilton	ON	\N	167	66
1745	Meyer	Iosefa	M	2000-11-23	Hamilton	ON	\N	179	118
1746	Leyla	Lamb	F	1994-07-22	Hamilton	ON	\N	138	58
1748	Christina	Kuramitsu	F	1977-03-18	Toronto	ON	\N	143	61
1749	Alejandro	Mellie	M	1965-02-12	Stoney Creek	ON	\N	211	110
1751	Julian	Hightower	M	1992-08-15	Stoney Creek	ON	\N	203	124
1752	Miles	Cooper	M	2008-08-16	Hamilton	ON	\N	142	60
1755	Eddie	Pond	M	1970-10-13	Simcoe	ON	\N	157	81
1756	Kiyone	Wildhack	F	1976-01-15	Stoney Creek	ON	\N	163	100
1759	Jim	Nicolavic	M	1993-09-10	Stoney Creek	ON	\N	176	106
1760	Vijay	Scotts	M	1995-02-21	Walnut Grove	AB	\N	217	115
1762	Winifred	Cunningham	F	1988-07-26	Paris	ON	\N	179	88
1763	Harry	Tribbiani	M	1957-12-23	Tyndale	ON	\N	199	95
1764	Joe	Lonnegan	M	1967-06-24	Tyndale	ON	\N	200	116
1767	Ricardo	Lupertazzi	M	1957-08-07	Hamilton	ON	\N	150	70
1770	Chuck	Hawker	M	1994-02-25	Hamilton	ON	\N	154	58
1771	Didi	DAmico	F	1949-09-05	Waterford	ON	\N	180	89
1773	Kirk	Marley	M	1976-08-03	Brantford	ON	\N	213	104
1776	Tom	Lopez	M	1950-10-19	Hamilton	ON	\N	176	120
1777	Lucky	Crusher	M	1981-11-16	Caledonia	ON	\N	191	103
1778	Jack	Anderson	M	2005-01-12	Hamilton	ON	\N	173	66
1779	Kim	Morris	F	1948-06-07	Hamilton	ON	\N	141	60
1781	Raymond	MacLean	M	1983-01-09	Burlington	ON	\N	161	68
1782	Paul	Noble	M	1976-07-10	Ancaster	ON	\N	152	76
1783	Artemus	Freeman	M	1959-06-06	Hamilton	ON	\N	186	120
1794	Mel	Knight	F	1970-07-25	Stoney Creek	ON	\N	154	88
1797	Miguel	Campbell	M	1993-05-21	Kingston	ON	\N	167	89
1798	Sister	Trenton	F	1978-03-25	Hamilton	ON	\N	185	98
1800	Vijay	Buchanan	M	1995-04-15	Toronto	ON	\N	180	107
1803	Grace	Aguilar	F	1988-12-03	Burlington	ON	\N	171	86
1805	Otis	Valentine	M	1987-02-07	Orangeville	ON	\N	185	100
1806	Nero	Patterson	M	2002-02-20	Ancaster	ON	\N	182	78
1808	Hetty	Trent	F	1999-10-27	Niagara Falls	ON	\N	178	117
1809	Tem	Rain	M	2013-05-08	Hamilton	ON	\N	79	26
1812	Callum	Ranall	M	1970-10-29	Hamilton	ON	\N	175	87
1813	Velu	Dyson	M	1989-04-22	Walnut Grove	AB	\N	196	113
1817	Hestia	Ward	F	2009-10-26	Ancaster	ON	\N	131	36
1818	Jonathan	Bluenight	M	1970-10-21	Brantford	ON	\N	186	108
1819	Christine	Treskovna	F	1977-05-02	Burlington	ON	\N	174	98
1822	Jack	Williams	M	2007-04-07	Ajax	ON	\N	155	61
1823	Callum	Dorsey	M	1957-11-17	Toronto	ON	\N	165	107
1827	Sacha	Murphy	M	1997-05-21	Hamilton	ON	\N	172	70
1829	Jeff	OHara	M	1996-08-06	St. Johns	NL	\N	169	114
1831	Jay	Hojo	M	1971-04-28	Hamilton	ON	\N	187	107
1832	Arnold	Manetta	M	1946-06-09	Hamilton	ON	\N	196	124
1835	Fleur	Thackeray	F	1986-04-24	Kapuskasing	ON	\N	174	106
1836	Ray	Tabootie	M	1949-01-27	Hamilton	ON	\N	203	134
1837	Johnny	Selwyn	M	1956-04-02	Vancouver	BC	\N	199	104
1838	Domenica	McCall	F	1998-05-15	Hamilton	ON	\N	145	59
1839	Chris	Cardenas	F	1969-12-02	Kingston	ON	\N	141	71
1842	Laura	Rockford	F	1959-05-02	Hamilton	ON	\N	147	59
1843	Mark	Patil	M	1997-09-02	Hamilton	ON	\N	187	115
1844	Jadu	Wilson	F	1971-07-04	Hamilton	ON	\N	190	110
1845	George	Parker	M	1978-02-02	Hamilton	ON	\N	147	66
1846	Anna	Lord	F	1982-03-10	Hamilton	ON	\N	179	109
1848	Michael	McNab	M	1988-08-04	Hamilton	ON	\N	206	107
1851	Guido	Lopez	M	1962-11-06	Ancaster	ON	\N	186	105
1852	John	Kennedy	M	1963-05-25	Brockville	ON	\N	167	82
1853	Richard	Palmi	M	1989-01-10	Red River	MB	\N	159	59
1857	Norma	Kennedy	F	1996-09-23	Hamilton	ON	\N	156	64
1861	Gary	Elliot	M	2003-10-04	Hamilton	ON	\N	177	77
1865	Jocelyn	Principal	F	2010-04-07	Pickering	ON	\N	88	32
1869	Jennifer	Whitefield	F	1979-03-18	Hamilton	ON	\N	131	71
1871	Elvis	Cruger	M	1961-03-07	Ancaster	ON	\N	206	125
1872	Veronica	Maroni	F	1977-12-27	Stoney Creek	ON	\N	181	98
1873	Lloyd	Fortune	M	2000-02-05	Toronto	ON	\N	180	92
1878	Tex	Stein	M	2012-06-19	Grimsby	ON	\N	95	39
1880	Poppy	Zasa	F	2010-09-23	Hamilton	ON	\N	100	31
1883	Mike	McCoy	M	1976-06-07	St. Catharines	ON	\N	194	114
1884	Nick	White	M	1949-05-20	Hamilton	ON	\N	187	102
1892	Raoul	White	M	1956-04-07	Timmins	ON	\N	156	79
1894	Bridget	Morgan	F	1980-07-07	Brantford	ON	\N	160	102
1900	Reginald	Prefect	M	1967-05-22	Waterford	ON	\N	212	108
1901	Tierney	Halliwell	M	1959-11-01	Stoney Creek	ON	\N	184	109
1902	Jean	Trivino	F	1966-05-13	Ancaster	ON	\N	164	100
1908	Stephen	Grissom	M	1968-06-16	Milton	ON	\N	219	122
1909	Leslie	Lime	F	1951-07-05	Hamilton	ON	\N	154	61
1910	Liz	Crandall	F	2011-08-09	Hamilton	ON	\N	95	38
1913	Johnny	Daniels	M	1982-10-31	Timmins	ON	\N	155	85
1916	Claudia	Fairweather	F	1967-01-24	Hamilton	ON	\N	183	85
1920	Naomi	Heriot	F	1979-08-25	Burlington	ON	\N	156	66
1922	Rachel	Johnson	F	1997-04-10	Dundas	ON	\N	152	59
1923	Richard	Wing	M	1997-12-24	Milton	ON	\N	189	109
1926	Stanislaus	Mancini-Corleone	M	1985-01-27	Hamilton	ON	\N	173	81
1927	Hal	Douglas	M	1948-09-23	Hamilton	ON	\N	152	60
1931	Willow	Thirteen	F	1963-06-19	Milton	ON	\N	131	55
1932	Imogen	Falcone	F	1993-09-09	Ancaster	ON	\N	143	55
1933	Thomas	Taylor	M	1984-11-24	Hamilton	ON	\N	156	82
1935	Kay	Romantica	F	1962-03-29	Beamsville	ON	\N	182	91
1938	Anthony	Anneke	M	1960-11-22	Simcoe	ON	\N	147	71
1940	Riley	Fett	M	1956-07-11	Hamilton	ON	\N	170	109
1941	Shion	Lonnegan	M	2002-10-08	Orangeville	ON	\N	173	83
1944	Kouzou	Daystrom	M	2002-04-15	Hamilton	ON	\N	184	82
1946	Donna	Brea	F	1954-06-26	Hamilton	ON	\N	140	53
1948	Theo	Wallace	M	1998-12-11	Hamilton	ON	\N	174	66
1949	Borat	Cortez	M	2001-04-26	Burlington	ON	\N	203	85
1950	Gala	Zarkov	F	1994-04-01	Halifax	NS	\N	171	69
1951	Jack	Valentine	M	2013-02-08	Pickering	ON	\N	84	28
1952	Vickie	Vincent	F	2001-02-15	Hamilton	ON	\N	180	69
1953	Ethel	Matthews	F	1963-12-02	Halifax	NS	\N	147	55
1954	Jonathan	Tremulous	M	1990-02-21	Hamilton	ON	\N	172	84
1955	Sam	Carr	M	1984-08-05	Toronto	ON	\N	163	77
1957	Casanova	Parker	M	1955-12-15	Hamilton	ON	\N	187	78
1959	Doris	Sakatsu	F	1961-03-26	Hamilton	ON	\N	160	100
1960	Curtis	Mephesto	M	1976-10-18	Burlington	ON	\N	198	102
1961	Angua	Spratt	F	1996-04-04	Beaverton	ON	\N	161	101
1962	Ana	Sprout	F	1967-08-21	Hamilton	ON	\N	176	103
1963	Carrie	Cooper	F	1943-03-26	Ancaster	ON	\N	146	50
1965	Mickey	Zaluchi	M	1973-04-07	Dundas	ON	\N	214	116
1969	Olivia	Michaels	F	1976-08-03	Ancaster	ON	\N	147	58
1972	Artemus	Bergman	M	2000-09-08	Kelowna	BC	\N	145	87
1975	Richard	Valentine	M	1994-08-05	Marcam	ON	\N	160	86
1978	Fleur	Brooke	F	2003-10-05	Hamilton	ON	\N	154	66
1980	Leslie	Corneo	M	1985-04-25	Waterford	ON	\N	152	73
1985	Lisa	Riggs	F	1993-11-05	Hamilton	ON	\N	171	107
1989	Mildred	Fitzgerald	F	1953-05-25	Hamilton	ON	\N	169	105
1991	Dorrie	Brennan	F	1999-02-23	Hamilton	ON	\N	176	116
1993	Sister	Spade	F	1981-04-07	Brantford	ON	\N	179	99
1994	Keith	Omovich	M	1974-07-02	Hamilton	ON	\N	205	102
1995	Katarina	Decker	F	1963-12-29	Peterborough	ON	\N	166	78
1996	Stanislaus	MacLean	M	1968-04-08	Halifax	NS	\N	184	111
1997	Alecto	Goodspeed	F	1987-08-12	Brockville	ON	\N	148	51
1998	Zen	Bennett	M	2012-04-23	Toronto	ON	\N	75	25
1999	Aric	Possible	M	1968-06-20	Beaverton	ON	\N	186	119
2001	Alexx	Dieudonne	F	1963-11-23	Kelowna	BC	\N	157	110
2002	Gene	Rawls	M	1989-12-16	Ottawa	ON	\N	171	90
2005	Julian	OHara	M	1997-02-28	Hamilton	ON	\N	202	111
2008	Rose	Hoare	F	1985-03-19	Cambridge	ON	\N	164	102
2013	Lindsay	Short	F	1954-03-24	Toronto	ON	\N	157	66
2016	Jake	Morgan	M	1975-06-13	Hamilton	ON	\N	194	101
2020	Caesar	Magliozzi	M	1971-04-07	Hamilton	ON	\N	185	58
2021	Paul	Millman	M	1969-03-22	Hamilton	ON	\N	177	84
2024	Tony	Jenkins	M	1961-03-02	Ancaster	ON	\N	181	97
2025	Cherry	Morris	F	1981-06-22	Cambridge	ON	\N	147	68
2026	Jo	Baily	F	1999-10-11	St. Catharines	ON	\N	174	67
2027	Lloyd	Morrow	M	1955-09-12	Dundas	ON	\N	188	110
2029	Fred	Petrie	M	1923-01-25	Hamilton	ON	\N	141	82
2032	Reed	Cuneo	M	2003-09-24	Hamilton	ON	\N	192	78
2035	Diane	Carr	F	1950-10-28	Halifax	NS	\N	145	68
2036	Simon	Drew	M	2004-12-01	Paris	ON	\N	178	81
2041	Laura	Dennis	F	1961-12-30	Brampton	ON	\N	187	88
2042	Thomas	Smart	M	1961-01-22	Hamilton	ON	\N	222	114
2044	Phil	McCall	M	1975-11-28	Caledonia	ON	\N	195	97
2045	Frank	Lane	M	2012-10-10	Hamilton	ON	\N	108	29
2048	King	Sugden	M	1965-05-04	Hamilton	ON	\N	127	73
2049	Terry	DAmico	F	1971-11-05	Hamilton	ON	\N	153	61
2051	Mel	Willing	F	2017-03-02	Burlington	ON	\N	44	5
2052	Angela	Reilly	F	1953-08-20	Hamilton	ON	\N	165	99
2054	Artemus	Riggs	M	1976-07-03	Hamilton	ON	\N	139	67
2057	Cassie	Maroni	F	1994-02-22	Kelowna	BC	\N	149	53
2059	Margaret	Hare	F	1998-05-11	Hamilton	ON	\N	140	52
2060	Katie	Wexford	F	1955-01-23	Ancaster	ON	\N	156	51
2062	Ellery	La Forge	M	1987-05-20	Halifax	NS	\N	203	123
2063	Dilys	Zapatti	F	1990-05-13	Hamilton	ON	\N	164	95
2067	Ben	Lawson	M	2015-05-04	Sarnia	ON	\N	58	16
2071	Calleigh	Goth	F	1979-07-12	Beaverton	ON	\N	166	103
2073	Marcello	Sparazza	M	1952-09-30	Hamilton	ON	\N	174	89
2074	Loveday	Young	F	2002-01-26	Hamilton	ON	\N	195	69
2075	Wilson	Bennett	M	1989-01-26	Hamilton	ON	\N	160	80
2076	Clark	Miller	M	1992-05-21	Paris	ON	\N	177	74
2077	Jack	PiNeiro	M	1962-05-25	St. Johns	NL	\N	184	128
2079	David	Hammer	M	1959-09-09	Hamilton	ON	\N	210	128
2081	Ben	Stanfield	M	1962-07-25	Hamilton	ON	\N	186	103
2082	Sophie	Costigan	F	1994-02-09	Hamilton	ON	\N	141	55
2083	Ann	Halifax	F	1928-08-08	Hamilton	ON	\N	157	54
2084	Ronnie	Sanderson	M	1989-07-16	Hamilton	ON	\N	202	120
2088	Dotty	Van Tassel	F	1976-03-10	Burlington	ON	\N	184	119
2089	Turanga	Havers	F	1960-09-21	Cambridge	ON	\N	169	57
2091	Emily	Chester	F	2016-12-21	Hamilton	ON	\N	49	9
2095	Ben	Cavor	M	1989-05-24	Hamilton	ON	\N	173	80
2097	Viola	Redfield	F	1990-07-22	Orangeville	ON	\N	161	69
2098	Genesis	Barton	F	1987-06-20	Sarnia	ON	\N	193	89
2101	Andy	Cage	M	1963-11-01	Dunton	ON	\N	183	68
2103	Maria	Angie	F	1968-07-18	Burlington	ON	\N	132	56
2104	Vito	Cacuzza	M	1976-02-09	Hamilton	ON	\N	199	121
2105	Sybill	Van	F	2001-10-25	Toronto	ON	\N	206	73
2107	John	Chino	M	1969-12-30	Hamilton	ON	\N	181	123
2109	Ella	Jones	F	2009-06-09	Hamilton	ON	\N	102	37
2110	Tim	Holliwell	M	1987-09-13	St. Catharines	ON	\N	202	95
2112	Cameron	Spellman	M	1970-04-21	Hamilton	ON	\N	154	62
2116	Doran	Graham	F	1995-12-01	Fruitland	ON	\N	164	48
2117	Jack	Hawker	M	2009-12-19	Hamilton	ON	\N	136	54
2118	Mickey	Riley	M	1979-09-09	Hamilton	ON	\N	200	132
2120	Dan	Falfa	M	1981-06-05	Hamilton	ON	\N	173	83
2123	Anthony	Manu	M	1960-11-30	Paris	ON	\N	155	78
2125	Dirk	Banner	M	1992-10-01	St. Catharines	ON	\N	174	67
2126	Susie	Brand	F	1950-08-16	Inverness	NS	\N	153	53
2127	Naoto	Nordbo	F	1986-06-21	Hamilton	ON	\N	167	95
2128	Fred	Denoon	M	1962-06-08	Hamilton	ON	\N	137	71
2129	Bigby	Vallance	M	1999-10-15	Hamilton	ON	\N	166	70
2130	Luanne	Spano	F	1992-06-03	Hamilton	ON	\N	187	80
2133	Sam	Lang	M	1960-11-05	Fruitland	ON	\N	160	75
2135	Stella	Lino	F	1967-06-22	Dundas	ON	\N	156	56
2138	Zenigata	Kobayakawa	M	1983-01-19	Burlington	ON	\N	161	73
2141	Curtis	Douglas	M	1962-06-13	Odessa	ON	\N	155	60
2144	Susan	Yurinov	F	1943-12-13	Port Hawkesbury	NS	\N	175	112
2145	Sam	Hernandez	M	1979-07-09	Hamilton	ON	\N	161	73
2146	Deanna	Spano	F	1970-03-23	Hamilton	ON	\N	142	63
2149	Carmen	Seymour	F	1952-02-23	Hamilton	ON	\N	184	88
2150	James	Frost	M	1972-07-14	Pickering	ON	\N	191	115
2151	Fred	Requer	M	1941-11-09	Stoney Creek	ON	\N	188	118
2152	Vance	Vincent	M	1959-04-14	Pickering	ON	\N	175	62
2153	Leyla	Croft	F	1963-08-22	Hamilton	ON	\N	183	99
2154	Henry	Bottom	M	1962-06-17	Toronto	ON	\N	172	81
2159	Shirley	Feverfew	F	1971-06-07	Hamilton	ON	\N	181	99
2161	Shiro	Taylor	M	1955-08-05	Grimsby	ON	\N	180	104
2164	Mickey	Chesterton	M	2016-06-11	Hamilton	ON	\N	50	11
2165	Mable	Halliwell	F	1985-05-31	Hamilton	ON	\N	187	99
2172	Lucy	Leon	F	1975-11-17	Smithville	ON	\N	156	52
2175	Todd	Harland	M	1978-12-06	Hamilton	ON	\N	210	101
2178	Phoebe	Piper	F	1991-11-12	Hamilton	ON	\N	179	111
2182	Frank	Lassard	M	2009-04-27	Fruitland	ON	\N	113	47
2186	Toby	Napier	M	1965-10-16	Hamilton	ON	\N	148	60
2187	Gennady	Lerrol	M	2012-04-19	Toronto	ON	\N	94	30
2188	Marty	Ventura	M	1949-06-23	Hamilton	ON	\N	186	116
2189	Sharon	ORourke	F	2011-09-24	Vancouver	BC	\N	110	37
2190	Karen	Buchanan	F	1991-08-26	Simcoe	ON	\N	136	64
2192	Cross	Marquez	M	2007-06-16	Hamilton	ON	\N	152	61
2193	Joel	Torini	M	1961-09-16	Hamilton	ON	\N	209	96
2194	Armando	Cox	M	1966-09-22	Brampton	ON	\N	202	99
2205	Andy	Havers	M	1995-08-03	Toronto	ON	\N	145	84
2206	Brynn	Fabray	F	1963-12-06	Hamilton	ON	\N	150	56
2210	Walter	Rush	M	1951-05-08	Hamilton	ON	\N	151	66
2214	Silvio	Silvermane	M	1950-06-11	Fruitland	ON	\N	184	122
2216	Tom	Robins	M	1977-03-22	Hamilton	ON	\N	208	117
2219	Andy	Tanner	M	1992-04-03	Port Hawkesbury	NS	\N	204	117
2220	Jackson	Clancy	M	1997-07-17	Victoria	BC	\N	168	62
2221	Benton	Space	M	2011-06-02	Hamilton	ON	\N	114	29
2222	Anton	Scott	M	2004-06-22	Hamilton	ON	\N	170	70
2224	Victoria	Ramotswe	F	1958-07-19	Brampton	ON	\N	180	101
2225	Victor	Matthews	M	2002-09-27	Selkirk	ON	\N	188	92
2226	Frank	Canlaster	M	1952-04-28	Dundas	ON	\N	191	128
2228	Silvio	Profitt	M	1955-08-10	Hamilton	ON	\N	205	106
2233	Rosco	Burns	M	1994-05-22	Hamilton	ON	\N	211	131
2235	Ruby	Pike	F	1950-05-05	Hamilton	ON	\N	169	111
2237	Kinman	Brunetti	M	1994-01-09	Fruitland	ON	\N	171	119
2242	Jessica	Sidle	F	1962-06-22	Hamilton	ON	\N	171	97
2243	Naoko	Winterbourne	F	1984-05-31	Burlington	ON	\N	166	114
2247	Sabrina	Shaw	F	2004-09-24	Hamilton	ON	\N	172	67
2248	Molly	Hammer	F	2011-11-22	Carlisle	ON	\N	110	31
2251	Rose	Marie	F	1974-12-24	Hamilton	ON	\N	170	52
2252	Miles	Sinclair	M	1997-02-08	Hamilton	ON	\N	171	77
2253	Julian	Tura	M	1956-09-01	Brockville	ON	\N	126	76
2255	Mona	Pynchon	F	2013-06-05	Ajax	ON	\N	76	23
2257	Ian	Hutt	M	1951-09-30	Hamilton	ON	\N	220	115
2266	Gil	Taylor	M	1985-05-10	Hamilton	ON	\N	208	109
2268	China	Ishii	F	1976-09-23	Pickering	ON	\N	186	110
2273	Curtis	Fraser	M	1949-08-19	Brantford	ON	\N	187	90
2276	Gregory	Garlick	M	1949-08-30	Milton	ON	\N	208	115
2277	Beanie	Ravenclaw	F	2008-07-25	Hamilton	ON	\N	121	49
2282	Uri	Lionel	M	1963-07-26	Milgrove	ON	\N	157	67
2285	Tochiro	Drum	M	1964-05-25	Cambridge	ON	\N	163	67
2287	Eddie	Diamond	M	1942-05-26	Ancaster	ON	\N	178	102
2288	Imogen	Jackson	F	1962-09-05	Hamilton	ON	\N	185	98
2290	John	Tau	M	2014-08-26	Hamilton	ON	\N	85	25
2292	Jessica	Talbot	F	1949-06-20	Niagara Falls	ON	\N	173	113
2293	Matt	Lupertazzi	M	2006-10-16	Hamilton	ON	\N	159	65
2295	Lara	Lang	F	1950-09-02	Oakville	ON	\N	153	69
2297	Rick	Thorne	M	1986-03-13	Sarnia	ON	\N	201	101
2301	Sal	Flinstone	M	2014-09-18	Burlington	ON	\N	69	21
2302	Michael	Dallas	M	1961-07-24	Hamilton	ON	\N	198	128
2306	Donna	Dax	F	1973-02-24	Burlington	ON	\N	166	100
2307	Angelica	Brockway	F	2016-09-05	Grimsby	ON	\N	50	9
2313	Ethel	Gordon	F	2013-05-26	Burlington	ON	\N	75	21
2317	Stan	Webster	M	1988-04-01	Fonthill	ON	\N	165	78
2319	Jenny	Petrie	F	1955-11-25	Hamilton	ON	\N	161	50
2321	Vicki	Jorkins	F	1986-08-10	Brantford	ON	\N	162	107
2322	Sarah	Hunter	F	1988-01-07	Burlington	ON	\N	173	88
2323	Lisbeth	Hill	F	1955-09-22	Toronto	ON	\N	173	45
2326	Willie	Wesker	M	2005-08-03	Hamilton	ON	\N	173	60
2327	Elsa	Robert	F	1976-09-23	Stoney Creek	ON	\N	165	51
2328	Vera	Cackle	F	1980-04-13	Grimsby	ON	\N	167	113
2329	Frederick	Jones	M	1965-08-23	Hamilton	ON	\N	135	74
2330	Clark	Preston	M	1986-09-21	Calgary	ON	\N	204	102
2333	Septima	Melfi	F	2012-04-27	Burlington	ON	\N	84	33
2334	Pilar	Halliwell	F	1987-09-20	Hamilton	ON	\N	175	92
2335	Bill	Shand	M	1958-11-12	Hamilton	ON	\N	157	83
2337	Carlos	ONeill	M	1943-05-24	Hamilton	ON	\N	155	80
2338	Cordelia	Peabody	F	1958-04-13	Burlington	ON	\N	162	100
2339	Constantin	Anneke	M	1976-08-28	Grimsby	ON	\N	180	105
2341	Mona	Dahl	F	1962-01-03	Hamilton	ON	\N	157	105
2344	Darcy	Osborne	M	1967-05-14	Hamilton	ON	\N	183	109
2345	Jango	Pitts	M	1976-11-18	Peterborough	ON	\N	212	121
2348	Rose	March	F	1989-08-10	Dundas	ON	\N	174	99
2351	Harry	Stewart	M	1966-02-02	Toronto	ON	\N	162	94
2353	Stephanie	Inverse	F	1995-08-12	Walnut Grove	AB	\N	171	52
2357	Wilson	Foster	M	1956-11-04	Toronto	ON	\N	155	78
2358	Art	Canfield	M	1977-07-08	Calgary	ON	\N	167	86
2361	Ethel	Brewer	F	1960-02-01	Toronto	ON	\N	162	61
2362	Judy	de Passe	F	2010-03-20	Hamilton	ON	\N	108	42
2364	Paige	Lynch	F	1950-06-10	Bancroft	ON	\N	154	67
2366	Chris	Sanders	M	1950-06-03	Dundas	ON	\N	167	88
2367	Margo	MacGyver	F	2013-08-23	Toronto	ON	\N	81	25
2368	Max	Spencer	M	2014-07-07	Thunder Bay	ON	\N	67	22
2369	Nero	Nayagan	M	1986-05-31	Stoney Creek	ON	\N	146	66
2380	Henrieta	Trelawney	F	1963-02-08	Stoney Creek	ON	\N	157	114
2381	Jay	Camonte	M	2009-12-15	Windsor	ON	\N	131	53
2382	Tyra	Sugden	F	2016-01-24	Milton	ON	\N	59	13
2383	Peri	Guarnaccia	F	1981-10-29	Hamilton	ON	\N	142	67
2386	Sabrina	Scarpetta	F	1981-02-21	Unionville	ON	\N	176	85
2388	Keziah	Greengrass	F	1979-07-24	Timmins	ON	\N	166	96
2391	Jean	Brannigan	F	1999-05-17	Kingston	ON	\N	156	52
2394	Matt	Flinstone	M	2003-10-22	Hamilton	ON	\N	173	86
2397	Georgina	Pierce	F	1971-10-15	Hamilton	ON	\N	157	59
2398	Hailey	Pomfrey	F	2012-01-12	Brampton	ON	\N	81	31
2399	Hayley	Hufflepuff	F	1958-08-10	Hamilton	ON	\N	155	73
2400	Celestina	Harrison	F	2006-12-06	Guelph	ON	\N	129	47
2402	Deborah	Threep	F	1950-02-25	Barrie	ON	\N	157	65
2404	Sam	Martin	M	1988-04-17	Toronto	ON	\N	170	72
2407	Buck	Wilde	M	1956-08-29	Halifax	NS	\N	172	78
2409	John	Handford	M	1949-10-15	Toronto	ON	\N	145	75
2410	Griselda	Ash	F	1975-07-15	Ancaster	ON	\N	179	104
2416	Erika	Dobbs	F	1985-04-17	Hamilton	ON	\N	194	94
2417	Frances	Kobayakawa	F	1970-01-02	Hamilton	ON	\N	159	109
2418	Anita	Holroyd	F	2013-07-05	Toronto	ON	\N	82	25
2419	Lou	Lockwood	M	1991-10-21	Hamilton	ON	\N	174	74
2421	Haleh	Johnson	F	2006-09-27	Milton	ON	\N	145	57
2425	Aki	Lopez	F	1983-10-18	Hamilton	ON	\N	186	109
2426	Quinn	Witherdale	F	2005-11-22	Milton	ON	\N	160	60
2429	Emil	Macdonald	M	1975-11-25	Windsor	ON	\N	199	123
2433	Kay	Sanderson	F	1953-02-09	Hamilton	ON	\N	163	52
2434	Jacqueline	Dalma	F	1972-02-12	Hamilton	ON	\N	152	91
2437	Eloise	Ravenclaw	F	1990-08-23	Hamilton	ON	\N	147	68
2440	Luanne	Bukater	F	1959-08-14	Kelowna	BC	\N	163	96
2445	Tristan	Blossom	M	2014-12-17	Hamilton	ON	\N	75	22
2446	Fred	Thomas	M	2000-08-21	Thunder Bay	ON	\N	185	105
2448	Peter	Nelson	M	1965-11-23	Fruitland	ON	\N	174	72
2449	Imogen	Miller	F	2008-12-30	Walnut Grove	AB	\N	101	30
2451	Todd	Sanderson	M	1948-02-08	Oakville	ON	\N	135	73
2453	George	Thompson	M	1971-08-26	Toronto	ON	\N	189	114
2455	Holt	Cod	M	1975-10-16	Hamilton	ON	\N	142	64
2457	Eddie	Forrester	M	2012-09-15	Hamilton	ON	\N	84	29
2460	Elisa	Carver	F	1978-06-09	Hamilton	ON	\N	156	53
2466	Victor	Fleming	M	1991-03-15	Waterford	ON	\N	224	132
2468	Isabel	Crabtree	F	1984-03-31	Windsor	ON	\N	177	97
2469	Georgia	Crockford	F	1957-11-10	Fruitland	ON	\N	171	86
2475	Jane	Zatara	F	1979-08-15	Burlington	ON	\N	172	88
2480	Harriet	Platter	F	1963-04-11	Burlington	ON	\N	156	114
2481	Karen	Skeeter	F	2001-10-16	Dundas	ON	\N	191	74
2482	Paul	Rocco	M	1982-07-31	Hamilton	ON	\N	184	105
2485	Leland	Trudeau	M	1995-05-30	St. Catharines	ON	\N	207	113
2487	Casanova	Cartwright	M	1955-09-28	Hamilton	ON	\N	195	87
2488	Enrique	Smyth	M	2008-05-01	Kelowna	BC	\N	154	51
2492	Jake	Burrell	M	1977-04-19	Dundas	ON	\N	173	140
2495	Blair	von Uberwald	M	1966-07-30	Toronto	ON	\N	208	122
2496	Harper	Benson	F	2012-09-03	St. Catharines	ON	\N	91	24
2498	Wendy	Orlock	F	1964-02-29	Hamilton	ON	\N	162	96
2500	Andy	Lopez	M	1955-01-13	Beamsville	ON	\N	140	59
2501	Constance	Atwater	F	1990-10-20	Red River	MB	\N	157	55
2503	Don	McCrary	M	1978-04-12	Mississauga	ON	\N	195	121
2506	Jay	Doland	M	1989-10-13	Hamilton	ON	\N	158	63
2507	Tyra	Chaplet	F	1985-10-11	Halifax	NS	\N	188	104
2510	Don	Brady	M	1990-12-04	Orangeville	ON	\N	204	116
2512	Henry	Fuhrey	M	1980-09-22	Hamilton	ON	\N	172	101
2513	Rachel	Grainger	F	1982-11-05	Hamilton	ON	\N	164	58
2514	Robert	Spratt	M	1949-10-09	Toronto	ON	\N	181	94
2517	King	Brady	M	1971-09-28	Stoney Creek	ON	\N	218	101
2518	Russell	Gabriel	M	1969-10-19	Windsor	ON	\N	179	109
2519	Margaret	Levinson	F	1972-08-30	Hamilton	ON	\N	183	97
2521	Kira	Nitt	F	1966-06-08	Toronto	ON	\N	158	71
2525	Robin	McAllister	F	2017-11-20	St. Catharines	ON	\N	36	7
2527	Marid	Stewart	M	1958-01-04	Hamilton	ON	\N	182	108
2528	Horatio	Roberts	M	1960-12-04	Hamilton	ON	\N	164	107
2532	Lynn	Willing	F	1989-09-30	Hamilton	ON	\N	149	62
2534	Ed	Rearden	M	2002-08-31	Hamilton	ON	\N	193	81
2537	Fin	Jimmy	M	1998-03-01	Hamilton	ON	\N	139	59
2539	Sonia	St. Clare	F	2006-03-15	Delhi	ON	\N	149	51
2543	William	Fairhead	M	1992-01-26	Fruitland	ON	\N	174	95
2544	Brad	Parker	M	1993-06-21	Hamilton	ON	\N	194	89
2545	Angela	Kingdom	F	2016-06-16	Hamilton	ON	\N	55	13
2546	Hillary	Miller	F	2013-08-22	Toronto	ON	\N	87	25
2548	Lloyd	Brockman	M	1959-07-24	Hamilton	ON	\N	205	111
2550	Jimmy	Gabriel	M	2012-07-22	Hamilton	ON	\N	98	27
2552	Rex	Ortega	M	1978-01-17	Saskatoon	SK	\N	167	116
2553	George	Costello	M	1997-01-23	Hamilton	ON	\N	165	59
2554	Celestina	Hathaway	F	2001-02-16	Burlington	ON	\N	197	77
2556	Marcus	Jackson	M	1955-07-13	Brantford	ON	\N	205	104
2557	Peri	Taylor	F	1999-07-20	Hamilton	ON	\N	140	52
2558	Don	Lockwood	M	1997-05-23	Burlington	ON	\N	192	109
2559	Frau	Cherrytree	F	2010-07-17	Stoney Creek	ON	\N	99	44
2560	Norine	Wexford	F	1994-08-30	Victoria	BC	\N	168	42
2561	Max	Taggart	M	1993-05-24	Hamilton	ON	\N	147	88
2562	Holly	Bennett	F	1972-05-05	Hamilton	ON	\N	162	70
2563	Phil	Belden	M	1974-10-13	Hamilton	ON	\N	135	62
2565	Tuppence	Hardbroom	F	2011-04-23	Hamilton	ON	\N	94	32
2566	Eddie	McGrew	M	1977-04-03	Hamilton	ON	\N	204	135
2569	Boris	Maroni	M	1951-08-31	Toronto	ON	\N	196	99
2570	Tara	Beaumann	F	1973-05-26	Cambridge	ON	\N	134	70
2572	Vicki	Rush	F	1988-03-28	Hamilton	ON	\N	172	44
2574	Sam	Moss	M	2003-10-07	Stoney Creek	ON	\N	179	78
2576	Mike	Larsen	M	1991-02-15	Stoney Creek	ON	\N	138	75
2578	Jo	Mallory	F	1981-10-17	Hamilton	ON	\N	178	104
2579	Mel	Bell	M	2006-11-12	Stoney Creek	ON	\N	159	63
2580	Jadu	Cantillon	F	2002-11-04	Hamilton	ON	\N	187	66
2581	Maynard	Von	M	1992-05-16	Hamilton	ON	\N	192	119
2584	Slam	De Lena	M	2009-02-01	Hamilton	ON	\N	108	53
2585	Jimmy	Wylie	M	1949-11-24	Hamilton	ON	\N	153	78
2590	Mark	Abbot	M	2014-11-17	Toronto	ON	\N	68	21
2591	Linda	Shayne	F	1965-01-30	Hamilton	ON	\N	186	91
2592	Damian	Robins	M	1972-07-02	Brantford	ON	\N	184	104
2593	Tony	Smiley	M	1961-11-03	Hamilton	ON	\N	174	91
2595	Guy	Miller	M	1984-02-25	Burlington	ON	\N	185	79
2596	Joey	Dorsey	M	1968-04-13	Stoney Creek	ON	\N	181	130
2599	Montana	Skadi	F	2012-08-20	Timmins	ON	\N	89	29
2602	Maia	Freeman	F	2015-11-14	Hamilton	ON	\N	60	14
2606	Christine	Lester	F	1980-06-23	Toronto	ON	\N	193	85
2610	Mel	Bloom-Wood	F	2011-05-06	Hamilton	ON	\N	114	33
2611	Rick	Franklin	M	2003-10-07	Hamilton	ON	\N	187	79
2612	John	Mitchell	M	2010-06-17	Toronto	ON	\N	120	49
2613	Jane	Stockmann	F	1960-10-22	Hamilton	ON	\N	170	100
2616	Kay	Benson	F	1988-07-09	Vancouver	BC	\N	181	112
2617	Rex	MacLeod	M	1952-10-01	Milton	ON	\N	182	106
2619	Alan	Strange	M	2010-03-29	Hamilton	ON	\N	109	49
2620	Lena	Takata	F	1989-10-23	Burlington	ON	\N	137	71
2623	Cross	Denoon	M	1953-10-02	Hamilton	ON	\N	203	121
2624	Benton	Sigel	M	1958-07-05	Stoney Creek	ON	\N	185	102
2628	Doris	Scotts	F	1956-07-26	Hamilton	ON	\N	162	82
2629	Christine	Massey	F	1987-03-09	London	ON	\N	138	68
2630	Chris	DAmico	M	1949-07-16	Brampton	ON	\N	193	110
2633	Elvis	Costello	M	1984-06-18	Milton	ON	\N	209	102
2638	Lloyd	Tate	M	1989-11-17	Hamilton	ON	\N	128	76
2640	Henry	Jackson	M	2013-02-09	Stoney Creek	ON	\N	81	28
2645	Paul	Stracci	M	2016-02-16	Cambridge	ON	\N	61	15
2650	Harry	Dean	M	1958-03-05	Orangeville	ON	\N	196	111
2654	Jacques	Cropper	M	2005-09-22	Toronto	ON	\N	166	66
2655	James	Dundee	M	1976-08-09	Brantford	ON	\N	223	104
2657	Minerva	Ravenclaw	F	1989-01-03	Delhi	ON	\N	165	59
2659	Vivian	Harding	F	1955-04-24	Timmins	ON	\N	154	70
2660	Anna	Burnett	F	1952-08-07	Hamilton	ON	\N	170	110
2661	Sharona	Skye	F	1951-08-01	Ancaster	ON	\N	186	75
2662	Robert	Spellman	M	2008-09-08	Waterford	ON	\N	153	54
2664	Enid	Granger	F	1989-11-19	Stoney Creek	ON	\N	170	57
2665	Nick	Rivers	M	1967-05-20	Pickering	ON	\N	151	69
2666	Rose	Peretti	F	2003-11-30	Hamilton	ON	\N	157	61
2669	Dirk	Jackson	M	1969-06-06	Burlington	ON	\N	167	72
2671	Jesse	Justice	M	1984-07-04	Toronto	ON	\N	178	121
2672	Deirdre	Sugden	F	1981-10-01	Paris	ON	\N	168	62
2673	Sabrina	Lopez-Fitzgerald	F	1939-06-28	Hamilton	ON	\N	186	106
2674	Sophie	Dunlap	F	1973-01-14	Burlington	ON	\N	179	87
2675	Eve	Harland	F	1977-05-15	Hamilton	ON	\N	136	48
2678	Richie	Gharty	M	1952-12-09	Hamilton	ON	\N	177	104
2679	Sheldon	John	M	1975-08-01	Cambridge	ON	\N	219	108
2682	Jimmy	Wong	M	2011-07-24	Simcoe	ON	\N	101	35
2684	Trixie	Banzai	F	2003-04-27	Hamilton	ON	\N	163	61
2685	Lisbeth	Evans	F	1974-11-21	Hamilton	ON	\N	181	114
2687	Jiji	Caprice	M	2016-08-11	Niagara Falls	ON	\N	58	14
2688	Tom	Falcon	M	2005-08-07	Hamilton	ON	\N	161	68
2690	Velu	Bennett	M	1980-02-27	Burlington	ON	\N	156	64
2695	Ford	Templin	M	1966-05-07	Hamilton	ON	\N	138	63
2697	Van	Franchetti	M	2002-03-15	Hamilton	ON	\N	200	89
2698	Frank	Brockman	M	2004-11-23	Victoria	BC	\N	160	73
2699	Michael	Zatara	M	2017-10-01	Hamilton	ON	\N	52	11
2700	David	Beckett	M	2010-03-26	Delhi	ON	\N	119	39
2704	Hari	Andonuts	M	1985-06-18	Burlington	ON	\N	158	76
2707	Sonny	von Uberwald	M	1976-06-23	Hamilton	ON	\N	198	108
2708	John	Colbert	M	1976-03-24	Hamilton	ON	\N	179	97
2710	Sonya	Owens	F	1949-04-09	Waterford	ON	\N	164	107
2712	Charlie	Barclay	M	1982-01-20	Hamilton	ON	\N	169	70
2715	Charity	Roland	F	1999-01-25	Ancaster	ON	\N	134	61
2721	Linda	Lawson	F	1980-06-18	Toronto	ON	\N	159	61
2722	Sheldon	Dalton	M	2008-03-29	Hamilton	ON	\N	138	55
2723	Rachel	Aguilar	F	1983-12-30	Hamilton	ON	\N	177	95
2726	Santino	Hawker	M	1970-04-08	Hamilton	ON	\N	133	76
2729	Benton	Rooney	M	1948-05-03	Hamilton	ON	\N	169	98
2733	Nancy	Fish	F	2008-11-10	Hamilton	ON	\N	111	45
2736	Monica	Andrews	F	1957-10-06	Hamilton	ON	\N	167	78
2737	Ruth	Bottoms	F	2008-11-24	Hamilton	ON	\N	116	51
2741	Anna	Edgecombe	F	1999-02-18	Toronto	ON	\N	167	75
2747	Sara	Townsend	F	1981-02-23	Hamilton	ON	\N	182	95
2750	Snapper	DiMera	M	1967-09-23	Winona	ON	\N	204	123
2751	Fred	Malcolm	M	2014-11-19	Calgary	ON	\N	68	21
2754	Aurora	Pezzini	F	1999-04-20	Hamilton	ON	\N	175	94
2755	Marty	Chesterton	M	1955-11-20	Hamilton	ON	\N	158	72
2757	Victor	Vimes	M	1962-07-26	Hamilton	ON	\N	189	121
2758	Rita	Page	F	1960-03-08	Hamilton	ON	\N	173	88
2761	Dale	Snyder	M	1949-10-29	Cambridge	ON	\N	216	126
2763	Sara	Eckhart	F	1997-01-05	Ottawa	ON	\N	190	85
2764	Avon	Neri	M	1991-02-04	Fruitland	ON	\N	149	76
2768	Leonid	Barnfather	M	1945-10-15	Mississauga	ON	\N	160	74
2769	Antonio	Cork	M	2017-01-08	Barrie	ON	\N	58	15
2771	Stanislaus	Drew	M	1980-11-24	Milton	ON	\N	171	77
2778	Hetty	Smith	F	2012-04-21	Dundas	ON	\N	76	33
2779	Jack	Higby	M	1950-06-29	Brantford	ON	\N	141	83
2780	James	Petrie	M	1990-12-19	Hamilton	ON	\N	141	80
2781	Hal	Cabot	M	2003-04-30	Fruitland	ON	\N	200	84
2782	Tom	McHuwen	M	1952-12-08	Ancaster	ON	\N	170	67
2785	Mike	Parrish	M	1992-03-16	St. Catharines	ON	\N	194	116
2788	Matthew	Dagg	M	1952-03-06	London	ON	\N	198	93
2790	Thora	Crane	F	1955-09-01	Hamilton	ON	\N	130	60
2792	Leona	Bennett	F	1929-06-08	Ancaster	ON	\N	166	49
2793	Agnes	Dresden	F	1971-10-26	Hamilton	ON	\N	169	83
2797	Raymond	Mannheim	M	1961-07-12	Ancaster	ON	\N	188	99
2803	Caesar	Malfoy	M	1990-10-26	Saskatoon	SK	\N	197	116
2806	Elvis	Royle	M	1966-10-22	Brantford	ON	\N	172	114
2807	Brick Top	OBannon	M	1985-12-07	Oakville	ON	\N	201	115
2808	Agnes	Diehl	F	1992-12-26	Hamilton	ON	\N	145	65
2809	Carmine	Capone	M	1982-10-18	Troy	ON	\N	185	124
2810	Hal	Lino	M	1976-07-23	Hamilton	ON	\N	181	107
2812	Jake	Bradley	M	2003-01-03	Simcoe	ON	\N	199	78
2815	Ronnie	Wong	M	1959-02-13	Hamilton	ON	\N	162	57
2818	Philip	Reardon	M	1955-04-27	Halifax	NS	\N	161	62
2819	Geordi	Trapani	M	2016-07-03	Timmins	ON	\N	60	14
2821	Jimmy	Brown	M	1952-05-31	Hamilton	ON	\N	170	80
2822	Cross	Dingle	M	1963-06-03	Hamilton	ON	\N	177	70
2823	Patty	White	F	1985-07-26	Hamilton	ON	\N	149	69
2825	Jack	Cherrytree	M	1964-12-11	Cambridge	ON	\N	164	69
2827	Margaret	Hammond	F	1992-06-18	Hamilton	ON	\N	160	53
2834	Juliet	Harkness	F	2015-10-11	Hamilton	ON	\N	63	18
2835	Sophie	Vale	F	1955-03-23	Toronto	ON	\N	170	45
2836	Ray	Blossom	M	1992-12-12	Toronto	ON	\N	155	70
2838	Alex	McGonagall	M	1966-06-13	Hamilton	ON	\N	201	103
2839	Victor	Wildhack	M	1956-11-21	Hamilton	ON	\N	192	112
2842	Beanie	Celine	F	1960-10-20	Fruitland	ON	\N	177	58
2848	Craig	Havers	M	1986-12-11	Hamilton	ON	\N	201	137
2849	Clayton	White	M	1968-05-10	Toronto	ON	\N	210	113
2851	Sandy	Cutting	F	1958-12-16	Hamilton	ON	\N	187	93
2852	Celestina	Ross	F	1982-05-25	Grimsby	ON	\N	191	104
2853	Helena	Stokes	F	1991-11-01	Hamilton	ON	\N	137	58
2854	Stefano	Gabriel	M	1975-03-09	Calgary	ON	\N	139	64
2857	Tabitha	Bek	F	2004-06-24	Hamilton	ON	\N	166	60
2858	Jimmy	Stewart	M	1960-07-01	Hepworth	ON	\N	185	102
2862	Margo	Clarke	F	1966-05-20	Hamilton	ON	\N	148	46
2863	Matthew	Frankenstein	M	1991-10-07	Ancaster	ON	\N	194	130
2865	Jane	Langton	F	1993-06-07	Hamilton	ON	\N	160	52
2867	Andy	Lopez-Fitzgerald	M	1949-08-31	Brantford	ON	\N	191	129
2873	Tony	White	M	1948-06-08	Dundas	ON	\N	187	101
2874	Jake	Stewart	M	1985-08-23	Timmins	ON	\N	153	77
2876	Lonnie	Lonnegan	M	1973-10-22	Toronto	ON	\N	186	109
2880	Yuri	Churchill	M	1987-04-28	Cambridge	ON	\N	173	68
2882	Leander	Xavier	M	2007-02-28	Hamilton	ON	\N	151	61
2885	Henri	Belski	M	2002-03-21	Halifax	NS	\N	199	81
2886	Haruhara	Stillman	F	2007-10-05	Brantford	ON	\N	152	55
2889	Melinda	Gilmore	F	1986-10-24	Hamilton	ON	\N	172	50
2890	Herr	Hoare	M	1983-03-09	Toronto	ON	\N	201	116
2893	Fenella	Christe	F	1995-06-30	Burlington	ON	\N	173	73
2895	Noriyasu	Robbins	M	2011-06-05	Hamilton	ON	\N	92	32
2897	Charlotte	Poppins	F	2001-10-19	Hamilton	ON	\N	205	73
2901	Kate	Jenkins	F	1969-01-30	Toronto	ON	\N	154	69
2914	Lloyd	Birkin	M	1991-08-13	Fonthill	ON	\N	172	116
2922	Patty	Klump	F	1999-02-20	Troy	ON	\N	154	50
2923	Eddie	Weathers	M	1975-01-08	Sarnia	ON	\N	168	58
2924	Carlos	Lionel	M	1968-10-05	Timmins	ON	\N	183	70
2925	John	McAllister	M	1984-11-13	Barrie	ON	\N	176	102
2927	Delores	Sydnor	F	1975-12-13	Brantford	ON	\N	135	70
2928	Demelza	Quirk	F	2012-01-09	Hamilton	ON	\N	103	24
2930	Anna	Kennedy	F	1966-09-14	Hepworth	ON	\N	134	68
2931	Laura	Wilcox	F	1982-12-05	Hamilton	ON	\N	129	50
2933	Olivia	Bean	F	2007-10-08	Waterford	ON	\N	142	50
2935	Fred	Dingle	M	1982-07-02	Caledonia	ON	\N	193	117
2937	Art	Sindone	M	1972-01-14	Hamilton	ON	\N	186	84
2938	Mabel	Sahid	F	1965-12-30	Brantford	ON	\N	186	86
2939	Kay	Kolchak	F	1969-05-03	Hamilton	ON	\N	175	92
2943	Robyn	Cathers	F	1977-01-01	Cambridge	ON	\N	166	67
2945	Hailey	Cabot	F	1954-05-06	Burlington	ON	\N	169	63
2950	Samantha	Beckett	F	1982-03-14	Walnut Grove	AB	\N	173	104
2951	Bernard	Grant	M	1991-12-31	Toronto	ON	\N	149	70
2952	Haruhara	Billa	F	1975-12-17	Milgrove	ON	\N	157	89
2953	Ann	Turtle	F	1973-05-11	Hamilton	ON	\N	162	74
2954	Nataria	Welles	F	1964-08-18	Paris	ON	\N	151	72
2955	Amelia	Aitoro	F	1951-07-13	Stoney Creek	ON	\N	180	106
2956	Jesse	Vimes	M	1991-05-06	St. Catharines	ON	\N	175	105
2960	Alexandra	Holroyd	F	1969-02-28	Brantford	ON	\N	145	62
2962	Blanche	Deane	F	1980-06-20	Victoria	BC	\N	171	103
2965	Jay	Tanner	M	1971-08-28	Simcoe	ON	\N	192	109
2968	Margo	Swoop	F	2008-09-11	Hamilton	ON	\N	114	46
2972	Julien	Chino	M	1960-10-03	Paris	ON	\N	138	91
2974	Lennie	Zatara	M	1951-05-17	Ancaster	ON	\N	183	70
2976	Richard	Threep	M	2005-08-09	Caledonia	ON	\N	165	67
2977	Don	Doggett	M	1957-06-20	Hamilton	ON	\N	185	131
2978	Emma	Robbins	F	2013-03-12	Hamilton	ON	\N	78	23
2981	Jim	Milo	M	1962-07-23	Hamilton	ON	\N	159	72
2982	Frankie	Thomas	M	1954-07-01	Hamilton	ON	\N	161	128
2983	Bolivar	Randall	M	1957-08-17	Hamilton	ON	\N	209	115
2986	Carmel	Espinosa	F	1972-06-02	Stoney Creek	ON	\N	137	62
2988	Kate	Campbell	F	2011-09-11	Hamilton	ON	\N	96	21
2990	Clark	Lonsdale	M	2013-10-03	Hamilton	ON	\N	91	29
2991	Kenny	Serizawa	M	1960-07-20	Hamilton	ON	\N	175	96
2993	Linda	Bayles	F	1981-05-23	Dunton	ON	\N	151	51
3002	Jacques	Croydon	M	1997-08-12	Cayuga	ON	\N	204	111
3005	Caesar	Iosefa	M	2003-08-28	Cambridge	ON	\N	174	78
3007	Stuart	McFly	M	1998-04-25	Hamilton	ON	\N	178	90
3009	Bolivar	Lockwood	M	2000-07-22	Troy	ON	\N	182	66
3011	Thomas	LeStrange	M	2004-12-11	Hamilton	ON	\N	195	74
3015	Milo	Wesley	M	2013-10-25	Toronto	ON	\N	76	28
3017	Leslie	Farley	M	2017-07-03	Carisle	ON	\N	36	8
3019	Tuppence	Clericuzio	F	1976-09-28	Hamilton	ON	\N	136	62
3020	George	Carlyle	M	1978-05-30	Hamilton	ON	\N	214	119
3023	Rose	Pond	F	1997-01-16	Hamilton	ON	\N	188	72
3026	Quinn	Drew	F	1953-07-22	Burlington	ON	\N	178	89
3027	Sunny	Burrell	F	1970-01-07	Fruitland	ON	\N	139	58
3031	Sonia	Baley	F	2014-03-29	Hamilton	ON	\N	78	21
3036	Douglas	Owens	M	1999-06-09	Hamilton	ON	\N	186	106
3038	Mycroft	Fitz	M	1979-08-23	Hamilton	ON	\N	195	109
3044	John	Waterfield	M	2009-08-17	Grimsby	ON	\N	119	57
3046	Jean	Clue	F	1981-10-16	Toronto	ON	\N	139	72
3047	Alex	Peabody	F	1947-02-15	Sarnia	ON	\N	182	106
3048	Kate	Malfoy	F	2014-12-13	Hamilton	ON	\N	76	20
3049	Dorian	Vondopoulos	M	1981-10-27	Brantford	ON	\N	206	121
3051	Brooke	Ogawa	F	1954-03-11	Hamilton	ON	\N	163	98
3056	Rose	Lowe	F	1980-12-17	Toronto	ON	\N	165	60
3057	Carmine	Speedman	M	1971-07-27	Bancroft	ON	\N	138	57
3059	Billie	Barrie	F	1957-07-28	Toronto	ON	\N	173	55
3062	Mary	Sun	F	1985-03-13	Red River	MB	\N	149	49
3066	Thomas	Soap	M	1950-04-22	Toronto	ON	\N	148	87
3067	Blake	McGrath	F	1984-10-30	Grimsby	ON	\N	152	70
3073	Chris	Kitka	M	1971-09-25	Hamilton	ON	\N	173	108
3078	Jill	Jorkins	F	1979-05-22	Kingston	ON	\N	175	120
3081	Abe	Ogawa	M	1950-06-25	Hamilton	ON	\N	188	110
3091	Buddy	Sugden	M	1958-04-07	Dundas	ON	\N	161	92
3092	Jimmy	Boyd	M	1998-03-04	Hamilton	ON	\N	172	112
3093	Harvey	di Marco	M	2005-04-08	Hamilton	ON	\N	181	64
3095	Chen	Robert	M	2012-12-03	Red River	MB	\N	91	27
3097	Joyce	Walker	F	1981-08-02	Montreal	QC	\N	166	65
3099	Kathy	Channing	F	1984-06-19	Stoney Creek	ON	\N	148	53
3100	Leon	Macdonald	M	1981-05-04	Toronto	ON	\N	147	69
3103	Sam	Redfield	M	1968-04-28	Brantford	ON	\N	185	115
3105	Peri	Soran	F	1990-03-03	Burlington	ON	\N	164	79
3106	Rose	Spano	F	1949-08-04	Toronto	ON	\N	153	64
3107	Giacomo	Greer	M	1958-08-05	Timmins	ON	\N	186	102
3109	Georgina	Jones	F	1952-10-08	Hamilton	ON	\N	174	68
3112	Mona	Taylor	F	1954-03-13	Hamilton	ON	\N	176	96
3113	Andy	Allan	M	1959-05-14	Hamilton	ON	\N	175	69
3115	Joe	Daggett	M	1968-07-31	Toronto	ON	\N	161	83
3118	Marty	Fox	M	1949-03-05	Victoria	BC	\N	197	121
3119	Adelaide	Xavier	F	2006-03-17	Pickering	ON	\N	137	53
3120	Rose	Vincent	F	1958-03-06	Hamilton	ON	\N	134	54
3121	Gregory	Seldon	M	1975-02-16	Peterborough	ON	\N	196	106
3124	Jules	Baily	F	1961-08-07	Timmins	ON	\N	171	100
3126	Patricia	Prefect	F	1997-05-31	Hamilton	ON	\N	157	48
3130	Jack	Sprockett	M	1978-04-17	Grimsby	ON	\N	213	126
3132	John	Tura	M	2002-04-03	Brockville	ON	\N	204	77
3133	Romilda	Hayes	F	1992-04-07	Halifax	NS	\N	150	57
3138	Melinda	Vitti	F	2000-11-12	Hamilton	ON	\N	177	61
3139	Jacques	Kojak	M	1979-06-28	Toronto	ON	\N	173	107
3141	Miranda	Grant	F	1950-01-19	Hamilton	ON	\N	170	90
3142	Quinn	Wayne	F	1985-08-16	London	ON	\N	186	113
3144	Lyla	Swansong	F	1990-05-11	Orillia	ON	\N	143	58
3145	Peter	Tully	M	2009-07-13	Hamilton	ON	\N	116	54
3146	Cal	Savage	M	1992-10-13	Hamilton	ON	\N	181	85
3148	Vincent	Otley	M	2003-06-14	Hamilton	ON	\N	182	88
3149	Harry	Bigelow	M	1971-03-29	Toronto	ON	\N	209	94
3150	Rachel	Michaels	F	1955-06-06	Dundas	ON	\N	157	100
3152	Jaki	Tutuola	M	2015-12-19	Hamilton	ON	\N	67	21
3153	Angela	Mitchell	F	1989-04-25	Bancroft	ON	\N	157	94
3154	Samuel	Cherrytree	M	2013-01-28	Dundas	ON	\N	85	29
3155	Liz	Moss	F	1993-07-22	Orillia	ON	\N	145	60
3156	Vislor	Sagdiyev	M	1938-06-27	Inverness	NS	\N	179	108
3159	Jennifer	Holden	F	1966-05-06	Hamilton	ON	\N	152	46
3163	Annie	Thackeray	F	1963-06-22	Hamilton	ON	\N	147	73
3164	Gary	Banks	M	2008-08-21	Walnut Grove	AB	\N	144	48
3165	Stella	Martin	F	1999-08-11	Hamilton	ON	\N	163	51
3167	Chris	Graham	F	1985-10-10	Hamilton	ON	\N	163	69
3169	Eddie	Fowler	M	1982-02-19	Hamilton	ON	\N	141	76
3170	Ginevra	Hufflepuff	F	1987-06-10	Hamilton	ON	\N	147	64
3173	Chris	Brockman	F	1989-11-19	Cambridge	ON	\N	160	67
3175	Stephen	Corrigan	M	1956-09-26	Milton	ON	\N	177	83
3176	Julia	Fleming	F	1965-10-22	Hamilton	ON	\N	134	46
3184	Paul	Mitchell	M	1972-11-21	Hamilton	ON	\N	163	113
3187	Frank	Owens	M	2000-10-13	Hamilton	ON	\N	209	113
3188	Ella	Lupo	F	1963-08-19	Dundas	ON	\N	193	86
3190	Victoria	Lindell	F	2017-10-28	Brantford	ON	\N	52	9
3191	Jake	Addy	M	1962-08-18	Troy	ON	\N	135	76
3192	Celestina	De Lesseps	F	1979-12-11	Burlington	ON	\N	166	107
3196	Thomas	Newman	M	1983-08-28	Burlington	ON	\N	158	67
3200	Kelly	Corleone	F	2005-08-03	Hamilton	ON	\N	143	51
3201	Ana	Price	F	1954-08-06	Hamilton	ON	\N	170	102
3204	Harmony	Halliwell	F	1984-03-31	Hamilton	ON	\N	153	73
3205	Didi	Smyth	F	1995-07-09	Hamilton	ON	\N	181	114
3206	Maggie	Lane	F	1961-07-02	Hamilton	ON	\N	166	112
3207	Thora	David	F	1959-05-31	Toronto	ON	\N	163	102
3209	Brian	McEvoy	M	1990-04-27	Halifax	NS	\N	187	107
3210	Georgina	OMalley	F	2006-06-21	Waterford	ON	\N	152	58
3211	Stuart	Caprice	M	2012-04-23	Toronto	ON	\N	94	31
3212	Lucky	Ramsey	M	1983-12-05	Hamilton	ON	\N	166	70
3213	Les	Rudd	M	1975-11-06	Burlington	ON	\N	152	69
3214	Adam	McFly	M	1957-06-02	Hamilton	ON	\N	132	77
3219	Justine	Grant	F	1956-12-13	St. Johns	NL	\N	174	99
3221	Don	Mason	M	1978-10-19	Brantford	ON	\N	205	105
3222	Jasmine	Corinthos	F	1938-12-20	Hamilton	ON	\N	170	104
3224	Bernard	Drake	M	1976-10-10	Ottawa	ON	\N	151	85
3226	Paul	Johnson	M	1978-07-13	Hamilton	ON	\N	168	122
3227	Misao	Thorndyke	M	1960-02-22	Hamilton	ON	\N	168	66
3228	Beppe	Parrish	M	1984-10-31	North York	ON	\N	153	78
3231	Eddie	Greene	M	2011-06-16	Mississauga	ON	\N	98	34
3232	Jimmy	Anderson	M	2004-10-20	Burlington	ON	\N	170	82
3233	Nancy	Spofford	F	2018-02-06	Hamilton	ON	\N	31	1
3236	Jack	Flinstone	M	1999-04-28	Hamilton	ON	\N	191	102
3240	Sabrina	Adams	F	1955-09-14	Toronto	ON	\N	142	76
3242	Katarina	Bush	F	2013-05-09	Calgary	ON	\N	76	22
3244	Rose	Davies	F	2012-07-01	Whitby	ON	\N	94	20
3246	Erica	Grant	F	1967-03-28	Hamilton	ON	\N	175	108
3247	Virginia	Starr	F	1988-08-06	Pickering	ON	\N	158	59
3250	John	Anderson	M	1986-04-04	Hamilton	ON	\N	142	80
3251	Tom	Arrowsmith	M	1948-08-25	Fruitland	ON	\N	188	96
3252	Evan	Raynor	M	2010-06-20	Hamilton	ON	\N	112	35
3256	Brian	Lopez-Fitzgerald	M	1949-01-07	Waterford	ON	\N	176	127
3258	Garryn	Handley	M	1977-06-21	Hamilton	ON	\N	142	72
3260	Angelo	Prentiss	M	1965-08-10	Hamilton	ON	\N	185	112
3262	Marcus	Landsman	M	1970-07-11	Marcam	ON	\N	135	86
3263	Jiveshwar	Frobisher	M	1993-10-20	Hamilton	ON	\N	147	76
3264	Alexandra	Mortem	F	1959-06-25	Oakville	ON	\N	157	66
3265	Pearl	Schwarzburger	F	1991-01-24	Hamilton	ON	\N	137	59
3266	Casanova	Tsuna	M	2016-03-24	Hamilton	ON	\N	56	15
3269	Kay	Sanderson	F	1981-11-15	Newmarket	ON	\N	148	77
3270	Jim	Grant	M	1978-06-26	Toronto	ON	\N	162	76
3271	Arjen	Blake	M	1983-07-15	Toronto	ON	\N	172	72
3275	Andy	Stone	M	2000-11-14	Dundas	ON	\N	177	126
3277	John	Lejeune	M	1977-01-15	Hamilton	ON	\N	167	128
3279	Martin	Overstreet	M	1973-11-26	Guelph	ON	\N	223	113
3281	Piper	Lawson	F	1961-03-24	Hamilton	ON	\N	155	68
3282	Sam	Moss	M	1980-10-24	Hamilton	ON	\N	156	67
3283	Casanova	Littlefield	M	1988-07-03	Peterborough	ON	\N	151	55
3287	Harris	Green	M	1995-04-21	Delhi	ON	\N	169	56
3289	Will	Fabray	M	1994-05-28	Kelowna	BC	\N	204	119
3290	Aric	Rosewood	M	1944-03-20	Hamilton	ON	\N	195	119
3291	Vito	Fabray	M	1960-08-06	Orangeville	ON	\N	177	123
3292	Jadu	Hare	F	2002-12-03	Grimsby	ON	\N	184	66
3294	Jefferson	Falcone	M	2005-05-04	Hamilton	ON	\N	147	69
3295	Sara	Tojo	F	2000-06-16	Hamilton	ON	\N	160	51
3298	Daneel	Garrett	M	1975-07-17	Barrie	ON	\N	199	88
3299	Sarah	Blake	F	1965-07-15	Caledonia	ON	\N	154	56
3302	Constance	Dresden	F	2002-08-24	Toronto	ON	\N	189	63
3303	Sophie	Taggart	F	2001-08-28	Brantford	ON	\N	198	71
3304	Mihoshi	Mortem	F	1997-04-21	Dundas	ON	\N	167	52
3306	Joyce	Adrienne	F	1966-11-19	Elmira	ON	\N	153	79
3308	Freddy	Starsmore	M	1992-06-04	Toronto	ON	\N	158	70
3309	Rex	Holmes	M	1963-05-07	Orillia	ON	\N	157	56
3310	Shion	Fairweather	M	1963-02-22	Barrie	ON	\N	210	113
3311	Thomas	Lindley	M	2013-08-28	Kelowna	BC	\N	89	30
3316	Benjamin	Ka-kui	M	1985-03-28	Barrie	ON	\N	200	104
3317	William	Scotts	M	1981-02-22	Hamilton	ON	\N	191	120
3320	Carl	Scotts	M	1980-06-06	Hamilton	ON	\N	154	65
3322	Rupert	Kane	M	1990-02-19	Burlington	ON	\N	191	106
3325	Jerry	Powers	M	1979-09-29	Toronto	ON	\N	177	65
3327	Phil	Waturs	M	2002-11-12	Ancaster	ON	\N	179	85
3331	Sunny	Torres	F	2012-11-13	Hamilton	ON	\N	68	22
3332	Maleen	Maxwell	F	1978-05-16	Red River	MB	\N	168	60
3335	Burr	Page	M	1959-01-20	Hamilton	ON	\N	162	83
3338	Deirdre	Rizzoli	F	1964-01-07	Hamilton	ON	\N	160	57
3340	Johnny	McAllister	M	2005-09-05	Toronto	ON	\N	167	77
3341	Brooke	Fairhead	F	1989-06-12	Hamilton	ON	\N	187	109
3342	Linda	Flood	F	1989-03-18	Hamilton	ON	\N	166	105
3344	Leona	Lopez-Fitzgerald	F	1966-05-10	Hargersville	ON	\N	160	97
3348	Miyuki	Wyms	F	1949-05-30	Beamsville	ON	\N	154	61
3350	Goldie	Jones	F	1972-08-07	Burlington	ON	\N	184	72
3351	Philip	Hojo	M	1979-04-28	Hamilton	ON	\N	206	99
3352	Magrat	Ogawa	F	2011-06-19	Delhi	ON	\N	114	28
3353	Duncan	Bosch	M	1969-03-26	Burlington	ON	\N	190	111
3354	Rita	Skye	F	1987-02-13	Brampton	ON	\N	143	57
3359	Angela	Page	F	1964-03-27	Hamilton	ON	\N	167	59
3360	Imogen	Jones	F	2008-07-09	Stoney Creek	ON	\N	123	35
3361	Quinn	Johnson	F	2017-09-19	Hamilton	ON	\N	41	7
3362	Tommy	Stottlemeyer	M	1982-11-10	Paris	ON	\N	163	78
3364	Stephen	Summers	M	1979-12-29	Hamilton	ON	\N	164	94
3376	Annie	MacKenzie	F	1962-11-15	Burlington	ON	\N	176	107
3377	Al	Brownlee	M	1965-08-13	Toronto	ON	\N	128	68
3378	Jean-Baptiste	Jenkins	M	1953-11-23	Toronto	ON	\N	175	83
3380	Moe	Waters	M	2004-07-24	Sarnia	ON	\N	166	70
3382	Alan	Cameron	M	1999-05-20	Hamilton	ON	\N	222	108
3383	Diane	Randall	F	1981-05-11	Hamilton	ON	\N	184	94
3388	Nikki	Cackle	F	1964-08-24	Hamilton	ON	\N	180	109
3390	Nohar	Lamb	M	1997-04-06	Kelowna	BC	\N	190	98
3391	Charity	Tanner	F	1997-09-28	Kingston	ON	\N	159	56
3396	Phil	Lang	M	2009-02-28	Cambridge	ON	\N	118	52
3409	Apolline	Graf	F	1956-03-11	Pickering	ON	\N	165	80
3413	Robin	Bennet	F	1992-03-11	Tyndale	ON	\N	143	78
3417	Simon	Heriot	M	1972-05-26	Hamilton	ON	\N	181	83
3418	Penelope	McGrath	F	2002-05-21	Hamilton	ON	\N	172	67
3419	Wayne	Maximoff	M	2016-11-16	Calgary	ON	\N	56	15
3420	Daphne	Lovelace	F	1967-06-26	Hamilton	ON	\N	151	88
3424	Jack	Stone	M	1989-05-23	Ancaster	ON	\N	202	118
3427	Tulio	Hastings	M	1949-02-19	Ottawa	ON	\N	176	76
3512	Cal	Powers	M	2004-10-21	Hamilton	ON	\N	175	79
3436	Mickey	Ross	M	1999-08-01	Kingston	ON	\N	197	92
3437	Noonien	Knute	M	1969-07-29	Toronto	ON	\N	152	74
3441	Justin	Tsuna	M	2005-01-22	Toronto	ON	\N	150	69
3443	Fred	Mancini-Corleone	M	1997-12-05	Hamilton	ON	\N	156	84
3446	Selsdon	Leela	M	1973-11-02	Fruitland	ON	\N	186	118
3449	Sam	Seta	M	1960-08-13	Hamilton	ON	\N	200	115
3455	Jay	Turpin	M	2006-06-20	Waterloo	ON	\N	156	67
3457	Samantha	Troi	F	1980-09-30	Grimsby	ON	\N	139	54
3459	Claudette	Magliozzi	F	2011-10-21	Hamilton	ON	\N	97	26
3460	Jack	Beckett	M	1966-10-29	Hamilton	ON	\N	188	92
3461	Adelia	Klay	F	2002-07-28	Oakville	ON	\N	173	73
3462	Ben	Donahue	M	1997-05-04	Toronto	ON	\N	145	60
3464	Catherine	Lopez	F	1951-11-15	Hamilton	ON	\N	166	54
3465	Alpa	Ramsey	M	1986-08-28	Hamilton	ON	\N	204	110
3466	Katie	Gaucho	F	1968-02-19	Toronto	ON	\N	148	63
3467	Lola	Languish	F	1973-06-09	Hamilton	ON	\N	164	52
3468	Kazuki	Ray	M	1961-06-13	Hamilton	ON	\N	202	122
3469	Bryan	Reed	M	2002-04-06	Hamilton	ON	\N	194	80
3471	Norma	Lindley	F	2012-02-17	Brantford	ON	\N	73	31
3475	Dan	Crockett	M	1961-10-03	Port Dover	ON	\N	193	131
3480	Jack	Bergman	M	1983-06-23	Hamilton	ON	\N	186	123
3483	Elizabeth	Smyth	F	2010-05-26	Dunnville	ON	\N	96	29
3484	Robert	Kasen	M	2003-10-30	Montreal	QC	\N	183	73
3486	Misty	Stenbeck	F	2004-07-07	Hamilton	ON	\N	174	55
3488	Jackson	Kennedy	M	1958-06-27	Hamilton	ON	\N	208	115
3491	Laura	Barolli	F	1986-01-09	Brantford	ON	\N	145	62
3492	Jamie	Riley	M	1974-08-23	Hamilton	ON	\N	139	65
3500	Rajesh	Wilson	M	1992-05-23	Hamilton	ON	\N	215	119
3502	Violet	Victoria	F	1979-04-02	Thunder Bay	ON	\N	157	61
3504	Strega	Jovanka	F	1997-07-01	Burlington	ON	\N	155	93
3507	Alexandra	Holroyd	F	1951-07-24	Toronto	ON	\N	133	70
3508	Temple	Harkness	F	1980-08-05	Hamilton	ON	\N	155	54
3515	Nicky	Zale	M	1988-03-28	Fruitland	ON	\N	186	123
3516	Lucille	ONeill	F	1981-08-03	Hamilton	ON	\N	179	87
3523	David	Mitchell	M	2013-05-17	Hamilton	ON	\N	81	26
3525	Faye	Space	F	2017-12-15	Hamilton	ON	\N	48	10
3527	David	Hoare	M	1965-10-09	Waterford	ON	\N	158	70
3528	Zack	Drew	M	1963-05-05	Hamilton	ON	\N	135	73
3529	Carrie	Shannon	F	1953-10-14	Thunder Bay	ON	\N	178	85
3532	Sara	Wainthropp	F	2018-01-24	Sarnia	ON	\N	29	1
3533	Stan	Alvin	M	1973-08-24	Oakville	ON	\N	178	107
3534	Regan	Knute	F	1977-03-15	Hamilton	ON	\N	129	61
3535	Goldie	Tsuna	F	2012-01-06	Hamilton	ON	\N	100	41
3536	Jango	Willing	M	2017-08-13	Grimsby	ON	\N	54	9
3537	Judy	Takata	F	2007-08-06	Hamilton	ON	\N	138	43
3544	Alex	Sprockett	M	1954-07-07	Victoria	BC	\N	159	75
3545	Kurt	Zapatti	M	1967-01-25	Dundas	ON	\N	191	110
3547	Joey	Carrington	M	1951-09-15	Hamilton	ON	\N	179	120
3548	Tom	Medford	M	1994-10-03	Dunnville	ON	\N	183	123
3549	Rosco	Brennan	M	1977-06-09	Hamilton	ON	\N	146	73
3551	Joel	Duncan	M	2000-07-15	Fruitland	ON	\N	135	65
3553	Harris	Macdonald	M	1987-05-16	Hamilton	ON	\N	182	105
3554	Simon	Anneke	M	2015-10-15	Paris	ON	\N	67	19
3555	Jack	Caspar	M	1993-05-10	Hamilton	ON	\N	159	68
3559	Ernestine	Longbottom	F	2010-04-28	Cambridge	ON	\N	111	34
3560	Maggie	Crusher	F	1990-05-13	Hamilton	ON	\N	184	118
3562	Hope	Costello	F	1981-10-16	Hamilton	ON	\N	140	62
3563	Jadu	Jenkins	F	2013-10-01	Toronto	ON	\N	88	26
3569	Shion	Hagen	M	2017-05-28	Brantford	ON	\N	49	11
3573	Leo	Turlough	M	1948-12-23	Hamilton	ON	\N	166	66
3574	Charlie	Pope	M	2004-10-16	Grimsby	ON	\N	172	78
3576	Ellen	Cartwright	F	1989-06-07	Brantford	ON	\N	186	84
3579	Ashley	Blake	F	1974-07-27	Stoney Creek	ON	\N	190	102
3582	Frank	Hoare	M	2000-12-26	Beamsville	ON	\N	196	113
3585	Alex	Martin	F	1976-02-01	Fruitland	ON	\N	189	100
3588	Julie	Todd	F	2013-11-12	Toronto	ON	\N	80	22
3590	Paul	Battersby	M	1954-01-09	Hamilton	ON	\N	159	84
3592	Alex	DAmico	M	1950-08-09	Hamilton	ON	\N	193	115
3593	Sasha	Lane	M	2010-08-25	Dundas	ON	\N	131	45
3598	Clay	Sturgis	M	2006-09-17	Milton	ON	\N	161	61
3601	Ted	Martinelli	M	1960-02-18	Hamilton	ON	\N	195	122
3602	David	McAllister	M	1978-05-29	Windsor	ON	\N	162	80
3604	Todd	Tankinson	M	1958-06-21	Hamilton	ON	\N	191	103
3606	Sandra	Roberts	F	1991-03-10	Paris	ON	\N	175	104
3609	Rose	Petrie	F	1970-05-27	Beamsville	ON	\N	174	82
3610	Poppy	Anneke	F	1968-09-23	Hamilton	ON	\N	166	102
3611	Ben	Maroni	M	1975-11-02	Kapuskasing	ON	\N	155	69
3612	Luanne	Anders	F	2008-10-01	Sarnia	ON	\N	128	46
3618	Richard	Arroway	M	1970-04-13	Hamilton	ON	\N	204	119
3619	Simon	Edwards	M	1949-10-19	Saskatoon	SK	\N	202	111
3620	Cash	Komov	M	1968-10-24	Brampton	ON	\N	171	77
3627	Mark	Leigh	M	1959-06-17	Hamilton	ON	\N	178	131
3628	Zefram	Thomas	M	2003-06-12	Hamilton	ON	\N	198	77
3632	Maria	Moorehead	F	1954-10-16	Troy	ON	\N	146	55
3635	Joanna	Pekkala	F	1982-02-09	Hamilton	ON	\N	182	103
3637	Agatha	Tonks	F	2007-08-24	Inverness	NS	\N	132	42
3640	Tom	McAllister	M	1983-05-16	Kingston	ON	\N	176	124
3641	Clark	Mancini-Corleone	M	1967-08-20	Hamilton	ON	\N	192	126
3645	Winifred	Jenkins	F	1959-11-28	Hamilton	ON	\N	175	87
3647	Anthony	Moses	M	1971-11-21	Hamilton	ON	\N	152	82
3648	Bryan	Burdock	M	2010-05-05	Hamilton	ON	\N	123	46
3653	Ben	Owens	M	1975-07-24	Hamilton	ON	\N	142	80
3654	Polly	Billa	F	1972-10-11	Hamilton	ON	\N	183	114
3655	Avon	Prentiss	M	2011-01-28	Hamilton	ON	\N	110	49
3657	Elsa	Possible	F	1987-06-15	Barrie	ON	\N	159	58
3658	Vinnie	Andrews	M	2009-11-07	Milton	ON	\N	114	43
3660	Signor	Larkin	M	1960-07-14	Stoney Creek	ON	\N	154	74
3661	Avon	Travis	M	1988-03-03	Milton	ON	\N	170	70
3664	Rose	McAllister	F	1937-07-07	Hamilton	ON	\N	187	104
3665	Chuck	Lewis	M	2004-06-06	Hamilton	ON	\N	177	68
3674	Buddy	Lydecker	M	1966-07-03	Hamilton	ON	\N	178	69
3681	Michael	Grissom	M	1951-11-22	Hamilton	ON	\N	148	70
3682	Peter	Rojo	M	1977-11-14	Misty	AB	\N	202	98
3683	Willie	Duncan	M	1963-11-11	Brockville	ON	\N	158	83
3684	Martin	De Lesseps	M	1975-03-25	Hamilton	ON	\N	160	76
3686	Lao	Fraser	M	1984-05-19	Hamilton	ON	\N	156	73
3689	William	Buzzard	M	2015-03-17	Milton	ON	\N	72	21
3690	Leo	Alvin	M	1960-09-21	Stoney Creek	ON	\N	180	69
3692	Jack	St. Clare	M	2001-06-04	Milton	ON	\N	182	80
3697	Georgina	Urameshi	F	1989-01-10	Calgary	ON	\N	171	96
3700	Vislor	Colombo	M	1978-03-21	Ottawa	ON	\N	181	67
3701	Gwen	Wyms	F	1984-07-06	Montreal	QC	\N	148	79
3702	Norma	Thackeray	F	2013-09-04	Milton	ON	\N	75	21
3705	Teddy	Withers	M	1949-11-08	Hamilton	ON	\N	151	62
3706	Temperance	Kiriakis	F	1934-03-20	Toronto	ON	\N	137	75
3707	Jack	Garrett	M	1959-06-08	Hamilton	ON	\N	198	115
3710	Norine	McClure	F	1971-01-29	Sarnia	ON	\N	171	91
3713	Freddy	Silvermane	M	1963-07-11	Paris	ON	\N	145	74
3714	Frank	Moonshine	M	1994-11-12	Brantford	ON	\N	159	75
3715	Danny	Wexford	M	2003-07-13	Burlington	ON	\N	168	85
3718	Dick	Halliwell	M	1976-10-12	Red River	MB	\N	205	107
3719	Jaenelle	Starsmore	F	2012-06-23	Dundas	ON	\N	83	31
3720	Toby	Smith	M	2014-11-16	Hamilton	ON	\N	77	26
3723	Billie	Peroni	F	1964-09-28	Hamilton	ON	\N	146	67
3725	Baba	Cartwright	F	1984-05-07	Dunton	ON	\N	164	88
3734	Deanna	Spellman	F	1982-06-29	Simcoe	ON	\N	157	100
3735	Frank	Kirby	M	1983-09-07	Toronto	ON	\N	159	89
3738	Martin	Russo	M	2002-10-08	Hamilton	ON	\N	197	76
3741	Lisa	Wanawake	F	1975-06-26	Hamilton	ON	\N	170	59
3743	Talia	Woods	F	1954-11-02	Ancaster	ON	\N	178	90
3746	Stanley	Burnett	M	1958-12-10	Hamilton	ON	\N	163	73
3748	Snapper	Henderson	M	2017-04-03	Beaverton	ON	\N	54	9
3749	Jefferson	Landsman	M	1991-07-18	Hamilton	ON	\N	150	90
3756	Paul	Beckett	M	1997-01-05	Hamilton	ON	\N	214	99
3762	James	Schibetta	M	2018-07-21	Ancaster	ON	\N	27	3
3763	Alex	Lovelace	F	2011-06-23	Hamilton	ON	\N	110	30
3764	Tony	Ramsey	M	1969-05-23	Sarnia	ON	\N	170	85
3769	Reva	Raziel	F	1989-10-10	Cambridge	ON	\N	161	66
3773	Billy	Hallow	M	1983-02-18	Delhi	ON	\N	171	122
3777	Raylan	Sugden	M	1990-06-08	Elmira	ON	\N	138	69
3779	Bumpy	Willis	M	1963-07-23	Kingston	ON	\N	139	76
3783	Barbara	Matthews	F	1997-09-30	Hamilton	ON	\N	177	112
3784	Mel	Corleone	M	1974-07-24	Fruitland	ON	\N	210	91
3785	Rhona	Blake	F	1990-05-21	Burlington	ON	\N	153	107
3788	Hrundi	Fisher	M	2015-03-09	North York	ON	\N	56	16
3792	Giacomo	Falcon	M	1978-08-22	Dundas	ON	\N	177	114
3793	Abraham	Kane	M	1954-04-02	Stoney Creek	ON	\N	147	93
3794	Melinda	Garlick	F	2013-10-15	Brantford	ON	\N	80	24
3795	Artemus	Dax	M	1969-03-11	Hamilton	ON	\N	166	58
3797	Kinman	Gardocki	M	1998-12-28	Hamilton	ON	\N	218	118
3799	Seaton	Delacour	M	2006-03-13	Kapuskasing	ON	\N	149	65
3800	Quinn	Barr	F	1993-12-25	Walnut Grove	AB	\N	171	64
3804	Kate	Vincent	F	1978-06-04	Stoney Creek	ON	\N	130	57
3805	Frances	Kelly	F	1978-08-02	Hamilton	ON	\N	145	55
3807	Maria	Prefect	F	1955-01-26	Hamilton	ON	\N	165	90
3808	Sharon	Serizawa	F	1958-12-30	Hamilton	ON	\N	167	97
3810	Tom	Tyler	M	1977-07-02	Burlington	ON	\N	212	115
3812	Phil	Hollins	M	1982-08-30	Marcam	ON	\N	193	113
3816	Art	Castang	M	1977-08-30	Hamilton	ON	\N	180	62
3817	Liz	Riviera	F	1997-04-23	Hamilton	ON	\N	133	49
3818	Roberta	Ravenscroft	F	2007-07-04	Dundas	ON	\N	144	54
3819	Vanilla	Pike	F	1998-03-28	Burlington	ON	\N	138	68
3820	Dale	Vercetti	M	2009-08-11	Hamilton	ON	\N	114	49
3821	Hecky	Atwater	M	1974-04-07	Timmins	ON	\N	186	106
3827	Henry	Powers	M	1980-12-27	Milton	ON	\N	135	90
3829	Alecto	Lambert	F	1955-11-26	Hamilton	ON	\N	171	99
3830	Midge	Kelling	F	2005-11-14	Stoney Creek	ON	\N	154	56
3831	Carol	Longbottom	F	2003-06-01	Hamilton	ON	\N	161	69
3832	Tulio	Maroni	M	2010-03-14	Hamilton	ON	\N	123	41
3834	Paige	Stone	F	2013-08-03	Burlington	ON	\N	76	22
3836	Harry	Hogg	M	1995-08-23	Hamilton	ON	\N	139	68
3839	Barney	Parlabane	M	2015-01-03	Hamilton	ON	\N	82	25
3843	Tom	Ranall	M	2003-05-24	Toronto	ON	\N	185	72
3844	Tony	Appleton	M	1992-03-20	Carlisle	ON	\N	150	60
3846	Nicky	Denning	M	1985-03-30	Hamilton	ON	\N	197	130
3850	Rex	Drew	M	2004-12-14	Hamilton	ON	\N	155	73
3853	Dilys	Lee	F	1963-07-11	Hamilton	ON	\N	184	110
3857	Agnes	Watson	F	1958-04-28	Hamilton	ON	\N	177	95
3858	Aki	Duquesne	F	1964-06-16	Hamilton	ON	\N	159	67
3859	Henry	Cooper	M	1978-10-25	Paris	ON	\N	212	115
3865	Davina	MacLean	F	1989-07-19	Brantford	ON	\N	151	103
3866	Chris	Thackeray	M	1950-01-06	Hamilton	ON	\N	168	71
3867	Ruby	Vincent	F	1992-11-27	Ottawa	ON	\N	149	48
3870	Vincent	Potter	M	1955-01-30	Hamilton	ON	\N	153	75
3871	Gerard	Stillman	M	1988-06-30	Milton	ON	\N	188	118
3876	Todd	Brockman	M	1962-07-22	Hamilton	ON	\N	171	68
3877	Peyton	Zapatti	M	2012-03-01	Dundas	ON	\N	88	42
3880	Monica	McGrath	F	2000-04-22	Grimsby	ON	\N	161	61
3881	Mar�a	Knott	F	1974-03-13	Burlington	ON	\N	188	77
3886	Nick	Rhodes	M	1977-12-29	Hamilton	ON	\N	154	82
3889	Sam	Winslow	M	1987-08-16	Toronto	ON	\N	171	114
3890	Selsdon	Jessup	M	1966-09-25	Burlington	ON	\N	167	109
3893	Anna	Caxton	F	1959-01-12	Hamilton	ON	\N	151	110
3894	Ritsuko	Tonks	F	2000-12-12	Hamilton	ON	\N	154	64
3895	Kiriko	Crandall	F	1983-10-31	Windsor	ON	\N	148	47
3901	Eric	Cropper	M	1955-03-09	Hamilton	ON	\N	148	62
3902	Celestina	Baily	F	1991-08-25	Hamilton	ON	\N	177	101
3903	Gillian	Vondopoulos	F	2017-08-08	Hamilton	ON	\N	36	7
3910	Jimmy	Khan	M	2012-04-08	Paris	ON	\N	78	35
3913	Damian	Hubbard	M	2014-06-30	Hamilton	ON	\N	71	22
3915	Rex	Glicker	M	2003-01-02	St. Catharines	ON	\N	184	77
3917	Jadu	Burkhart	F	1954-09-30	Ajax	ON	\N	164	56
3918	Victoria	Spellman	F	1978-07-12	Hamilton	ON	\N	159	65
3929	Dame	Beresford	F	1997-01-02	Hamilton	ON	\N	165	78
3931	Neil	Wolfe	M	2004-03-16	Hamilton	ON	\N	189	76
3934	Walter	Pullman	M	1983-03-09	Hamilton	ON	\N	211	112
3938	Dick	Grant	M	2018-04-22	Hamilton	ON	\N	31	2
3939	Dodo	Green	F	1967-11-09	Carisle	ON	\N	150	44
3942	Alex	Hankle	M	1995-09-23	Kingston	ON	\N	181	93
3944	Joseph	Maroney	M	1949-04-22	Hamilton	ON	\N	153	87
3950	Kanuka	Nightshade	F	1956-05-12	Paris	ON	\N	146	64
3952	Evan	Plinge	M	2004-12-01	Northbay	ON	\N	169	68
3954	Jeff	Boyce	M	1950-04-08	Caledonia	ON	\N	218	111
3955	James	Abbot	M	2017-12-05	Paris	ON	\N	54	10
3956	Jack	Halliwell	M	1980-08-23	Hamilton	ON	\N	173	62
3959	Mary Jane	Swan	F	2016-07-10	Hamilton	ON	\N	50	9
3961	William	Savage	M	1964-10-03	Oakville	ON	\N	159	83
3966	Victor	Sosa	M	1961-04-06	Cambridge	ON	\N	137	61
3967	Johnny	Speedman	M	1958-09-05	Timmins	ON	\N	162	81
3970	Kakihara	Holden	M	2008-07-18	Hamilton	ON	\N	135	54
3973	Bobby	Nanny	M	1990-05-06	Burlington	ON	\N	158	82
3974	Fred	Sydnor	M	2003-03-29	Hamilton	ON	\N	204	82
3980	Julie	Casswell	F	1957-08-31	Hamilton	ON	\N	144	57
3981	Carlotta	Davenport	F	2003-06-03	Port Dover	ON	\N	166	64
3983	Rajesh	Omovich	M	1972-08-15	Hamilton	ON	\N	202	120
3984	Walter	Blocksberg	M	2005-11-22	St. Catharines	ON	\N	157	76
3986	Nikki	Southwood	F	1956-05-25	Hamilton	ON	\N	152	96
3990	Helena	Stillman	F	1979-10-02	Hamilton	ON	\N	141	63
3996	Aniki	McCoy	M	2008-03-19	Milgrove	ON	\N	137	51
3998	Sam	Travis	M	1953-07-05	Hamilton	ON	\N	183	79
4001	Gianni	Van Tassel	M	1994-06-21	Cambridge	ON	\N	200	115
4003	Annie	Scotts	F	1990-11-18	St. Catharines	ON	\N	158	88
4005	Arnold	Hutt	M	1969-02-28	Toronto	ON	\N	206	111
4006	Roman	Barksdale	M	1950-05-15	Dunton	ON	\N	139	67
4008	Martha	Meeks	F	1994-04-30	Hamilton	ON	\N	136	62
4009	Celeste	Dean	F	2007-09-21	Toronto	ON	\N	151	52
4010	Amitabh	Larsen	M	2017-01-03	Hamilton	ON	\N	61	14
4011	Amos	White	M	1955-06-18	Selkirk	ON	\N	163	82
4014	Morgan	Sullivan	M	2013-08-16	Hamilton	ON	\N	77	27
4016	Casanova	Carlyle	M	1981-04-19	Hamilton	ON	\N	184	128
4017	Sydney	Lopez-Fitzgerald	F	1975-04-18	Hamilton	ON	\N	162	90
4019	Kim	Sharma	F	1957-11-26	Thunder Bay	ON	\N	194	105
4022	Andromeda	Sanderson	F	1997-02-14	Port Dover	ON	\N	164	94
4023	Donald	Brown	M	1999-06-15	Hamilton	ON	\N	188	122
4024	Claire	Morgan	F	1996-08-06	Hamilton	ON	\N	164	78
4025	Olivia	Troi	F	1949-05-29	Hamilton	ON	\N	189	97
4027	Raylan	Carling	M	1954-03-16	Barrie	ON	\N	149	66
4029	Julian	Cox	M	2001-11-16	Kapuskasing	ON	\N	221	94
4032	Lilly	Grissom	F	2015-05-28	Hamilton	ON	\N	57	14
4033	Molly	Shugak	F	1983-03-09	Walnut Grove	AB	\N	179	88
4034	Ruta	Malfoy	F	1963-12-02	Hamilton	ON	\N	160	62
4037	Roderick	Murtaugh	M	1962-02-28	Toronto	ON	\N	221	98
4038	Lex	Brockman	M	1978-08-11	Burlington	ON	\N	194	109
4041	Basil	Nona	M	1979-05-20	Toronto	ON	\N	172	124
4043	Karen	Weber	F	2016-12-23	Hamilton	ON	\N	37	6
4044	Sonny	Stockmann	M	1992-05-20	Hamilton	ON	\N	191	92
4045	Sam	Wallander	M	2014-07-11	Hamilton	ON	\N	66	23
4048	Alexandra	Spica	F	1986-12-14	Hamilton	ON	\N	173	103
4049	Harry	Ranall	M	1977-05-06	Athens	ON	\N	147	81
4050	Opara	Spellman	F	1957-03-20	Dundas	ON	\N	162	82
4054	Nancy	McGraw	F	1996-07-19	Dunton	ON	\N	191	104
4056	Kinsey	Thackeray	F	1965-11-30	Hamilton	ON	\N	171	61
4060	Arnold	Carling	M	1990-10-09	Hamilton	ON	\N	170	63
4062	Blake	Lockwood	F	1988-07-01	Hamilton	ON	\N	168	67
4063	Ford	Aitoro	M	1956-09-24	Hamilton	ON	\N	210	92
4065	Anthony	Corbie	M	1957-07-26	Hamilton	ON	\N	194	108
4067	Peter	Henry	M	1982-06-22	Hamilton	ON	\N	174	109
4070	Amanda	ONeil	F	2014-07-07	Burlington	ON	\N	67	17
4073	Leonard	Emmerich	M	1952-04-10	Hamilton	ON	\N	208	102
4074	Eddie	Moses	M	1999-03-14	Ottawa	ON	\N	154	87
4077	Jaenelle	Swansong	F	2006-05-21	Timmins	ON	\N	157	52
4078	Buddy	Hill	M	1986-05-30	Ancaster	ON	\N	175	66
4080	Mendy	Farrell	M	2008-03-30	Hamilton	ON	\N	158	60
4081	Lolly	Sugden	F	1982-09-02	Mississauga	ON	\N	153	105
4084	Constance	Johnson	F	1966-02-03	Simcoe	ON	\N	154	48
4086	Grant	Indelicato	M	1981-09-03	Hamilton	ON	\N	166	82
4089	Jaenelle	Riviera	F	2015-12-29	Simcoe	ON	\N	59	14
4090	Dotty	Parker	F	1980-07-22	Red River	MB	\N	149	84
4091	Walburga	Lopez-Fitzgerald	F	1952-04-12	Hamilton	ON	\N	192	91
4095	Matt	Manu	M	1996-07-20	Bancroft	ON	\N	182	83
4096	Hrundi	Strange	M	1980-03-30	Paris	ON	\N	175	119
4097	Harry	Brady	M	2018-02-03	Hamilton	ON	\N	38	7
4099	Kelly	Rook	F	2017-05-14	Milton	ON	\N	41	6
4103	James	Jameson	M	2006-03-17	Tuscorora	ON	\N	154	60
4105	Beatrice	Blackwood	F	1974-07-16	Toronto	ON	\N	167	88
4106	Billie	de Passe	F	1983-10-28	Whitby	ON	\N	154	117
4107	Buford	Martin	M	1981-04-02	Stoney Creek	ON	\N	162	84
4109	Jacques	Schwarzburger	M	1960-08-27	Toronto	ON	\N	152	80
4111	James	Stenbeck	M	1997-08-26	Hamilton	ON	\N	194	104
4114	Jonathan	Newsworthy	M	1984-10-12	Hamilton	ON	\N	152	84
4115	Monica	Sugden	F	1969-11-28	Toronto	ON	\N	181	96
4118	Nohar	Hughes	M	1955-05-11	Burlington	ON	\N	154	81
4120	Moira	Williams	F	1959-04-06	Hamilton	ON	\N	191	109
4121	Emily	Hudson	F	1948-05-03	Brockville	ON	\N	147	61
4122	Shaz	Pezzini	F	1967-07-27	Calgary	ON	\N	165	56
4123	Charmian	Henderson	F	2012-04-24	Pickering	ON	\N	76	18
4127	Emil	Owens	M	1969-04-06	Thunder Bay	ON	\N	182	103
4129	Angua	Standish	F	1951-11-30	Hamilton	ON	\N	164	89
4131	Jacques	Kingdom	M	1959-03-14	Burlington	ON	\N	145	82
4132	Bobby	Kendall	M	1966-10-06	Hamilton	ON	\N	180	111
4138	Kate	Fletcher	F	1960-10-31	Walnut Grove	AB	\N	159	97
4139	Stephen	Moreland	M	1977-07-25	Hamilton	ON	\N	189	109
4141	Wendy	Cammeniti	F	1926-07-10	Burlington	ON	\N	183	92
4148	Annie	Corsi	F	1982-07-25	Hamilton	ON	\N	179	110
4151	Sam	Brockman	M	1994-08-08	Burlington	ON	\N	142	92
4152	Trinity	Russo	F	1976-02-19	Hamilton	ON	\N	143	73
4154	Carmine	Zucco	M	1948-11-21	Hamilton	ON	\N	174	81
4161	Carlos	Urth	M	1971-03-20	Orillia	ON	\N	147	70
4164	Harry	Quince	M	1998-09-27	Hamilton	ON	\N	152	84
4165	Daniel	Kent	M	1963-11-18	Hamilton	ON	\N	212	119
4166	Gerard	Serrano	M	1956-05-01	Timmins	ON	\N	163	79
4168	Linda	Ozaki	F	1978-04-22	Fruitland	ON	\N	176	97
4170	Anna	Patrick	F	1988-05-16	Hamilton	ON	\N	170	100
4171	Marid	Addy	M	1980-07-12	Hamilton	ON	\N	145	89
4175	Charity	Soong	F	1975-12-26	Dundas	ON	\N	173	93
4176	Ben	Taylor	M	1960-07-25	Marcam	ON	\N	157	79
4179	Meg	Gottwald	F	2002-07-23	Hamilton	ON	\N	198	74
4185	Angela	Rabbit	F	1966-06-07	Burlington	ON	\N	168	102
4186	Ivy	Brooke	F	1980-06-22	Pickering	ON	\N	178	99
4187	Nataria	Fier	F	1963-08-28	Ancaster	ON	\N	166	59
4189	Roman	Clarke	M	1993-09-08	Grimsby	ON	\N	195	118
4190	Eddie	Antony	M	1968-09-25	Fruitland	ON	\N	192	126
4192	Holly	Rapp	F	2014-05-24	Timmins	ON	\N	68	17
4193	V�ctor	Serrano	M	2007-09-16	Dundas	ON	\N	147	63
4194	Hal	Gorbovsky	M	1976-12-26	Hamilton	ON	\N	177	78
4198	Robin	Holliwell	F	2015-03-29	Beamsville	ON	\N	62	14
4201	Penelope	Beckett	F	1970-01-14	Hamilton	ON	\N	179	106
4203	Brynn	Van	F	1937-06-19	Hamilton	ON	\N	180	107
4209	Andy	Dean	M	1981-06-19	Hamilton	ON	\N	217	125
4210	Billie	Ladderbanks	F	1959-08-07	Paris	ON	\N	169	61
4212	Mendy	Platter	M	2003-03-26	Hamilton	ON	\N	195	82
4216	Langdale	Robert	M	2017-04-22	Hamilton	ON	\N	45	7
4217	Stuart	Rudd	M	1987-01-21	Misty	AB	\N	140	65
4220	Willow	Pond	F	1992-03-29	Hamilton	ON	\N	163	62
4221	Christopher	Weber	M	1949-06-23	Toronto	ON	\N	156	83
4223	Te	Thoreauxe	F	1960-06-25	Dunton	ON	\N	154	87
4224	Don	Cobb	M	1971-08-06	Hamilton	ON	\N	141	70
4225	Rosita	Schwarzheimer	F	1954-06-12	Hamilton	ON	\N	152	74
4229	Carmine	Fish	M	1951-08-02	Hamilton	ON	\N	211	99
4231	Myra	Abbott	F	1993-08-31	Hamilton	ON	\N	167	89
4232	Jay	Parker	M	1962-03-15	Burlington	ON	\N	137	68
4236	Marlo	Fier	M	2012-04-17	Hamilton	ON	\N	97	27
4239	Jen	Poirot	F	1994-01-05	Kingston	ON	\N	151	71
4241	Elizabeth	Maroni	F	1993-02-28	Hamilton	ON	\N	165	112
4242	Angela	Hamilton	F	1990-03-20	Hamilton	ON	\N	141	58
4243	Jack	Goodwin	M	2006-07-10	Grimsby	ON	\N	129	54
4244	Mark	Jonas	M	1987-07-21	Ancaster	ON	\N	212	116
4245	Elvis	Taylor	M	1991-10-08	Toronto	ON	\N	132	78
4246	Ruby	Sullivan	F	1986-10-10	Windsor	ON	\N	170	99
4248	Vivian	Owens	F	1988-05-17	Sarnia	ON	\N	156	70
4249	Rico	Langton	M	1987-12-18	Hamilton	ON	\N	205	120
4251	Nicky	Jenkins	M	1974-05-27	Hamilton	ON	\N	205	115
4254	Lloyd	Bayles	M	1986-06-01	Elmwood	ON	\N	185	112
4255	Hank	Feedbag	M	2015-07-26	Walnut Grove	AB	\N	59	16
4258	Martha	Cooper	F	1979-08-27	Burlington	ON	\N	173	92
4260	Bolivar	Sawyer	M	1979-12-29	Dundas	ON	\N	198	126
4261	Angelina	Wu	F	1978-05-24	Hamilton	ON	\N	172	50
4266	Jeff	Von Doom	M	1994-07-04	Sarnia	ON	\N	189	114
4267	Jessica	Leotardo	F	1969-10-02	Ancaster	ON	\N	142	69
4269	Harry	Principal	M	1956-05-25	Toronto	ON	\N	154	74
4270	Tom	Valchek	M	1975-11-26	Hamilton	ON	\N	177	116
4271	Jackson	Parker	M	1972-06-11	Burlington	ON	\N	196	102
4274	Lisa	Webster	F	1992-10-23	Hamilton	ON	\N	154	61
4275	Amelia	Wainthropp	F	1975-09-02	Hamilton	ON	\N	163	89
4277	Remy	Sprockett	F	1962-11-02	Hamilton	ON	\N	147	66
4278	Temperance	Reilly	F	1948-12-20	Hamilton	ON	\N	156	95
4279	Sonny	Hedley	M	1975-04-01	Halifax	NS	\N	198	131
4280	Quinn	Butterworth	F	1984-10-31	Toronto	ON	\N	194	106
4284	Gregory	Arden	M	2004-03-23	Hamilton	ON	\N	171	68
4287	Julia	Gudmundsdottir	F	1968-03-26	Stoney Creek	ON	\N	181	103
4288	Stefano	Alvin	M	1981-01-23	Hamilton	ON	\N	177	112
4289	Domenico	Donahue	M	1951-04-18	Hamilton	ON	\N	172	118
4290	Enrique	ORourke	M	1976-04-30	Hamilton	ON	\N	194	94
4291	Turanga	Ranall	F	1972-08-03	Toronto	ON	\N	145	50
4292	Mary Ann	Vaughn	F	2012-03-09	Hamilton	ON	\N	101	23
4293	Johnny	Juntao	M	1991-12-31	Ancaster	ON	\N	208	106
4294	Bruce	Leon	M	1999-10-24	Hamilton	ON	\N	152	80
4295	Hagbard	Daniels	M	1950-03-26	Walnut Grove	AB	\N	207	93
4300	Agnes	Starsmore	F	1955-06-16	Windsor	ON	\N	162	78
4301	Joyce	Farrell	F	2011-03-27	Hamilton	ON	\N	100	29
4303	Ivy	Martinelli	F	1994-07-02	Paris	ON	\N	158	87
4306	Maleen	Boddicker	F	2006-07-08	Halifax	NS	\N	145	59
4308	Eddie	Snyder	M	1993-09-02	Hamilton	ON	\N	147	85
4310	Kay	Bennett	F	1966-09-01	Barrie	ON	\N	170	78
4311	Andy	Quirk	M	1958-10-24	Dundas	ON	\N	195	108
4313	William	Vinopan	M	1962-10-03	Paris	ON	\N	192	120
4316	Blanche	Mannheim	F	1949-12-09	Hamilton	ON	\N	147	52
4318	Molly	Vargas	F	2005-08-21	Hamilton	ON	\N	162	51
4319	Steve	Vecchio	M	2011-07-15	Hamilton	ON	\N	109	47
4320	Shane	Napoli	M	2007-06-01	Guelph	ON	\N	138	63
4321	Langdale	Marino	M	1952-10-11	Stoney Creek	ON	\N	138	75
4322	John	Altobello	M	1996-09-25	Kelowna	BC	\N	222	110
4323	Andy	Yurinov	M	1965-06-09	Walnut Grove	AB	\N	204	110
4324	Gwen	Lewis	F	1983-10-13	Ancaster	ON	\N	177	92
4325	Robert	Flinstone	M	1967-07-02	Hamilton	ON	\N	206	136
4327	Michael	Sprockett	M	1966-05-31	Simcoe	ON	\N	204	112
4329	Ellen	Chandler	F	1977-09-25	Beamsville	ON	\N	167	45
4331	Natalie	Brockman	F	2002-07-29	Hamilton	ON	\N	162	63
4333	Avon	Indelicato	M	2006-12-15	Hamilton	ON	\N	152	59
4335	Laura	Nightbane	F	1982-12-12	Hamilton	ON	\N	143	52
4336	Jesse	Sands	M	1938-10-15	Hamilton	ON	\N	171	78
4338	Cedric	Falken	M	1997-04-05	Hamilton	ON	\N	187	73
4339	Ronnie	Spano	M	1979-10-13	Hamilton	ON	\N	184	130
4341	Anna	Grissom	F	1993-03-18	Montreal	QC	\N	149	70
4342	Laura	Knott	F	1985-04-06	Paris	ON	\N	142	49
4344	Murphy	Mitchell	F	1949-04-02	Port Hawkesbury	NS	\N	141	55
4345	Sonya	Hopper	F	1950-12-02	Hamilton	ON	\N	137	61
4347	Frederick	Sugden	M	2016-11-21	Burlington	ON	\N	49	12
4350	Teddy	Nederlander	M	1983-04-27	Ancaster	ON	\N	186	135
4351	Roberta	Taylor	F	1984-08-20	Stoney Creek	ON	\N	169	105
4353	Delia	Forelli	F	2017-03-10	Hamilton	ON	\N	50	9
4355	Roberta	Drake	F	1994-10-07	Hamilton	ON	\N	163	66
4357	Alex	Moss	F	2012-04-25	Hamilton	ON	\N	69	21
4360	Alexandra	Scotts	F	1992-02-28	Oakville	ON	\N	142	70
4361	Lucinda	Brocklehurst	F	1976-06-21	Ottawa	ON	\N	161	55
4362	Tyra	Lemansky	F	1960-08-01	Cambridge	ON	\N	176	76
4363	Diane	Ramotswe	F	1965-03-10	Hamilton	ON	\N	162	49
4364	Carlotta	Baily	F	1979-10-23	Hamilton	ON	\N	166	98
4365	Magrat	Zale	F	1966-05-01	Burlington	ON	\N	183	103
4367	Melody	Wilson	F	2004-06-27	Brantford	ON	\N	172	63
4370	Shion	Agasa	M	2010-11-15	Thunder Bay	ON	\N	129	47
4372	Kelly	Holmes	F	1960-12-03	Burlington	ON	\N	157	58
4379	Alan	Loeb	M	1984-05-13	Burlington	ON	\N	170	80
4380	Doyle	Stockmann	M	1993-07-05	Stoney Creek	ON	\N	168	87
4381	Francis	Morrow	M	2005-03-13	Hamilton	ON	\N	178	64
4386	Sam	Garrick	M	1964-09-20	Hamilton	ON	\N	196	108
4390	Uri	Dahl	M	1991-09-21	Hamilton	ON	\N	147	70
4391	June	Feedbag	F	1988-01-17	Oakville	ON	\N	174	60
4393	Kate	Carlyle	F	1974-05-15	Paris	ON	\N	172	93
4397	Sam	Jackson	M	1953-04-15	Hamilton	ON	\N	169	71
4399	Angua	Kapowski	F	1964-11-01	Brandon	MB	\N	167	68
4400	Hal	Redfield	M	2011-12-12	Brantford	ON	\N	97	39
4401	Mary Ann	Wali	F	1960-04-17	Hamilton	ON	\N	185	119
4402	Cal	Soran	M	1993-01-25	Burlington	ON	\N	200	110
4404	Alan	Holroyd	M	1956-09-13	Hamilton	ON	\N	134	73
4405	Lady	Jorkins	F	1993-07-18	Hamilton	ON	\N	151	59
4408	Ted	Hecatonchires	M	1956-10-18	Toronto	ON	\N	144	88
4412	Melanie	Atwater	F	1961-07-13	Montreal	QC	\N	164	52
4413	Stanley	Willows	M	2007-01-24	Dunton	ON	\N	133	56
4420	Kirk	Disher	M	1957-09-25	Hamilton	ON	\N	205	123
4425	Tristan	Fleming	M	1979-05-28	Mississauga	ON	\N	146	74
4426	Sukie	Omovich	F	1971-06-16	Calgary	ON	\N	162	98
4428	Saito	Henderson	M	1984-09-01	Hamilton	ON	\N	182	114
4429	Tex	Munson	M	1956-01-20	Hamilton	ON	\N	189	103
4431	Holly	McPherson	F	1956-09-17	Hamilton	ON	\N	159	64
4433	Buck	Kasen	M	1978-02-06	Ancaster	ON	\N	135	80
4434	George	Garrison	M	1950-08-25	St. Catharines	ON	\N	192	103
4437	Victoria	Halliwell	F	1956-05-30	Hamilton	ON	\N	153	65
4443	John	Corsi	M	1982-04-10	Windsor	ON	\N	192	118
4444	Gene	Scott	M	1960-02-06	Hamilton	ON	\N	147	80
4445	Hecky	Spaceman	M	1953-08-02	Ottawa	ON	\N	174	99
4447	Callum	Cooper	M	2012-04-13	Highland	ON	\N	92	25
4449	Cordelia	Carlyle	F	2006-07-16	Paris	ON	\N	143	49
4450	James	Grant	M	1990-09-17	Cambridge	ON	\N	154	60
4452	Norma	Steel-Stuart	F	1997-04-29	London	ON	\N	177	110
4455	Elijah	Marlowe	M	2008-06-28	Hamilton	ON	\N	144	52
4456	Gregory	Tutuola	M	1988-10-25	Hamilton	ON	\N	220	124
4460	Tia	Lewis	F	1990-10-03	Hamilton	ON	\N	152	65
4465	Isobel	Winslow	F	1955-06-05	Dundas	ON	\N	182	100
4466	Andromeda	Cleever	F	1995-04-21	Hamilton	ON	\N	146	49
4467	Doris	Mercer	F	2011-03-11	Stoney Creek	ON	\N	111	24
4469	Glorietta	Gribble	F	1968-12-15	Hamilton	ON	\N	167	66
4471	Paul	De Lena	M	1966-05-02	Burlington	ON	\N	200	102
4472	Caroline	Corsi	F	1966-03-25	Kelowna	BC	\N	176	105
4475	Jo	North	F	1984-06-18	Hamilton	ON	\N	175	113
4476	Henrieta	Lamont	F	1987-02-04	Hamilton	ON	\N	174	81
4479	Jake	Banzai	M	2010-09-24	Burlington	ON	\N	118	49
4485	Lylah	Blake	F	1992-07-22	Brampton	ON	\N	138	77
4486	Paul	Bloom-Wood	M	1984-01-25	Beamsville	ON	\N	129	74
4488	Hank	Hill	M	1953-04-14	Hamilton	ON	\N	143	69
4490	Sara	Guarnaccia	F	2007-06-13	Toronto	ON	\N	139	46
4491	Polly	Johnson	F	1973-10-16	Ottawa	ON	\N	146	65
4492	Truman	Scudder	M	1969-10-22	Ottawa	ON	\N	178	65
4496	Frank	Lassiter	M	1986-12-04	Hamilton	ON	\N	170	66
4497	John	Guarnaccia	M	1975-06-15	Burlington	ON	\N	162	77
4501	Rita	Carp	F	1988-01-03	Hamilton	ON	\N	143	69
4502	Frank	Angie	M	2004-04-22	Toronto	ON	\N	188	82
4503	Holly	Jones	F	1954-01-25	Hamilton	ON	\N	165	101
4504	Sukie	Tennison	F	2005-11-07	Hamilton	ON	\N	157	50
4505	Jenny	Farrell	F	1959-04-15	Hamilton	ON	\N	164	96
4506	Ray	Morgan	M	1991-09-27	Victoria	BC	\N	127	85
4507	Wendell	Kasen	M	1983-08-28	Hamilton	ON	\N	190	112
4508	Elisa	Spellman	F	2008-11-01	Toronto	ON	\N	112	35
4510	Constantin	Pullman	M	1994-02-03	Delhi	ON	\N	188	108
4515	Thomas	Smith	M	2003-09-12	Hamilton	ON	\N	181	73
4517	Bo	Darby	M	1961-09-24	Toronto	ON	\N	179	120
4520	Morgan	McCrary	M	1990-11-11	Caledonia	ON	\N	163	70
4521	Sam	OHara	M	2017-05-17	Pickering	ON	\N	39	6
4522	Charlie	Neutron	M	1964-12-09	Paris	ON	\N	199	116
4523	Fleur	Morales	F	1992-03-02	Timmins	ON	\N	169	103
\.


--
-- Data for Name: province_names; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.province_names (province_id, province_name) FROM stdin;
AB	Alberta
BC	British Columbia
MB	Manitoba
NB	New Brunswick
NL	Newfoundland and Labrador
NT	Northwest Territories
NS	Nova Scotia
NU	Nunavut
ON	Ontario
PE	Prince Edward Island
QC	Quebec
SK	Saskatchewan
YT	Yukon
\.


--
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctor_id);


--
-- Name: patients patients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (patient_id);


--
-- Name: province_names province_names_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.province_names
    ADD CONSTRAINT province_names_pkey PRIMARY KEY (province_id);


--
-- Name: admissions admissions_attending_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admissions
    ADD CONSTRAINT admissions_attending_doctor_id_fkey FOREIGN KEY (attending_doctor_id) REFERENCES public.doctors(doctor_id) NOT VALID;


--
-- Name: admissions admissions_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admissions
    ADD CONSTRAINT admissions_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) NOT VALID;


--
-- Name: patients patients_province_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_province_id_fkey FOREIGN KEY (province_id) REFERENCES public.province_names(province_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

