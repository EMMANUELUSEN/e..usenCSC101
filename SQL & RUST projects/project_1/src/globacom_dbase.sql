--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    eid integer NOT NULL,
    ename text NOT NULL,
    dno real NOT NULL,
    esal real NOT NULL,
    age integer NOT NULL,
    phone text NOT NULL
);


ALTER TABLE public.company OWNER TO postgres;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    c_id integer NOT NULL,
    c_name text NOT NULL,
    c_age integer NOT NULL,
    c_email text NOT NULL,
    c_mobile text NOT NULL,
    eid integer NOT NULL,
    data_id integer NOT NULL
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: dataplan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataplan (
    data_id integer NOT NULL,
    data_size text NOT NULL,
    data_duration integer NOT NULL,
    data_price text NOT NULL
);


ALTER TABLE public.dataplan OWNER TO postgres;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    eid integer NOT NULL,
    ename text NOT NULL,
    dno integer NOT NULL,
    esal real NOT NULL,
    age integer NOT NULL,
    phone text NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    staff_name text NOT NULL,
    dno integer NOT NULL,
    staff_sal text NOT NULL,
    age integer NOT NULL,
    mobile text NOT NULL
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (eid, ename, dno, esal, age, phone) FROM stdin;
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (c_id, c_name, c_age, c_email, c_mobile, eid, data_id) FROM stdin;
110	Musta Karim	35	m_karim@gmail.com	8055089112	102	5
111	Lilian Jaiya	43	l_jaiye@gmail.com	8055185341	100	3
112	Arthur Musa	50	a_musa@gmail.com	7055282813	107	10
113	Philip Akonjo	41	p_akonjo@gmail.com	9052356772	100	2
114	Marylene Mapa	41	m_mapa@gmail.com	8053333551	120	5
115	Oghenero Agor	50	o_ogor@gmail.com	7055566774	117	11
116	Adams Bree	33	a_bree@gmail.com	8056765424	102	1
117	Okafor Mathias	45	o_mathias@gmail.com	8056763367	120	10
118	Samson Adeleke	65	s_adeleke@gmail.com	7056774423	117	11
119	Lawal Tamire	35	l_tamire@gmail.com	9053111101	107	5
120	James Job	44	j_job@gmail.com	8059693919	100	8
121	Matthew Jakande	21	m_jakande@gmail.com	7051232144	120	2
122	Jimila Adegboye	20	j_adegboye@gmail.com	8054921923	107	5
\.


--
-- Data for Name: dataplan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataplan (data_id, data_size, data_duration, data_price) FROM stdin;
1	350MB	2	200
2	1.8GB	14	500
3	3.9GB	30	1000
4	7.5GB	30	1500
5	9.2GB	30	2000
6	10.8GB	30	2500
7	14GB	30	3000
8	18GB	30	4000
9	24GB	30	5000
10	29.9GB	30	8000
11	50GB	30	10000
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (eid, ename, dno, esal, age, phone) FROM stdin;
101	Alade Joy	2	250000	33	8023089832
\.


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (staff_id, staff_name, dno, staff_sal, age, mobile) FROM stdin;
101	Alade Joy	2	250000	33	8023089832
100	Mustapha Ali	3	175000	32	8063285832
107	Alokwe Martin	7	380000	48	7090082812
97	Dankade Aminat	5	550000	40	9023688832
108	Josiah Joshua	1	120000	30	8053189131
102	Mankinde Mary	2	450000	55	9023487830
120	Adeleke Jane	4	200000	38	7061045862
122	Osahon Mark	6	320000	44	8022289842
117	Suleman Ajayi	3	8000000	50	7030089981
104	Kuti Lawal	1	750000	35	9145689842
\.


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (eid);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (c_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (eid);


--
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);


--
-- PostgreSQL database dump complete
--

