--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 15.3

-- Started on 2024-01-30 12:07:40

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
-- TOC entry 231 (class 1259 OID 12567067)
-- Name: harvestersettings; Type: TABLE; Schema: public; Owner: geonetwork
--

CREATE TABLE public.harvestersettings (
    id integer NOT NULL,
    encrypted character(1) DEFAULT 'n'::bpchar NOT NULL,
    name character varying(255) NOT NULL,
    value text,
    parentid integer
);


ALTER TABLE public.harvestersettings OWNER TO geonetwork;

--
-- TOC entry 4394 (class 0 OID 12567067)
-- Dependencies: 231
-- Data for Name: harvestersettings; Type: TABLE DATA; Schema: public; Owner: geonetwork
--

COPY public.harvestersettings (id, encrypted, name, value, parentid) FROM stdin;
1	n	harvesting	\N	\N
117	n	node	csw	1
118	n	site		117
119	n	translations		118
120	n	options		117
121	n	info		117
122	n	content		117
123	n	name	GDI-BE	118
124	n	uuid	d78d0fa5-6aee-4ae7-8628-c91e2d253a97	118
125	n	ownerId	1	118
126	n	ownerUser	1	118
127	n	ownerGroup	116	118
128	n	useAccount	false	118
129	n	username		128
130	y	password		128
131	n	every	0 0 6 ? * TUE-SAT	120
132	n	oneRunOnly	false	120
133	n	overrideUUID	OVERRIDE	120
134	n	ifRecordExistAppendPrivileges	false	120
136	n	importxslt	none	122
137	n	batchEdits	[]	122
138	n	validate	NOVALIDATION	122
140	n	privileges		117
141	n	group	1	140
142	n	operation	0	141
143	n	operation	5	141
144	n	operation	1	141
145	n	categories		117
146	n	capabUrl	https://fbinter.stadt-berlin.de/fb/csw?request=GetCapabilities&service=CSW&version=2.0.2	118
147	n	icon	blank.png	118
148	n	rejectDuplicateResource	false	118
149	n	queryScope	local	118
150	n	hopCount	2	118
151	n	xpathFilter		118
152	n	xslfilter	fix-atom_2	118
153	n	outputSchema	http://www.isotc211.org/2005/gmd	118
154	n	search		117
155	n	Identifier		154
156	n	Language		154
157	n	OperatesOn		154
158	n	OperatesOnIdentifier		154
159	n	OperatesOnName		154
160	n	ParentIdentifier		154
161	n	ResourceIdentifier		154
162	n	RevisionDate		154
163	n	ServiceType		154
164	n	AccessConstraints		154
165	n	Classification		154
166	n	ConditionApplyingToAccessAndUse		154
167	n	Degree		154
168	n	Lineage		154
169	n	OtherConstraints		154
170	n	SpecificationDate		154
171	n	SpecificationDateType		154
172	n	SpecificationTitle		154
173	n	bbox-xmin		154
174	n	bbox-ymin		154
175	n	bbox-xmax		154
176	n	bbox-ymax		154
135	n	status	active	120
139	n	lastRun	2024-01-30T05:00:00.029Z	121
\.


--
-- TOC entry 4248 (class 2606 OID 12567074)
-- Name: harvestersettings harvestersettings_pkey; Type: CONSTRAINT; Schema: public; Owner: geonetwork
--

ALTER TABLE ONLY public.harvestersettings
    ADD CONSTRAINT harvestersettings_pkey PRIMARY KEY (id);


--
-- TOC entry 4249 (class 2606 OID 12567493)
-- Name: harvestersettings fk_hu0aqcu6xr59088fibd1vhnqi; Type: FK CONSTRAINT; Schema: public; Owner: geonetwork
--

ALTER TABLE ONLY public.harvestersettings
    ADD CONSTRAINT fk_hu0aqcu6xr59088fibd1vhnqi FOREIGN KEY (parentid) REFERENCES public.harvestersettings(id) ON DELETE CASCADE;


-- Completed on 2024-01-30 12:07:40

--
-- PostgreSQL database dump complete
--

