--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 15.3

-- Started on 2024-01-30 12:08:00

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
-- TOC entry 227 (class 1259 OID 12567040)
-- Name: groups; Type: TABLE; Schema: public; Owner: geonetwork
--

CREATE TABLE public.groups (
    id integer NOT NULL,
    description character varying(255),
    email character varying(128),
    enablecategoriesrestriction character(1) DEFAULT 'n'::bpchar,
    logo character varying(255),
    name character varying(32) NOT NULL,
    referrer integer,
    website character varying(255),
    defaultcategory_id integer
);


ALTER TABLE public.groups OWNER TO geonetwork;

--
-- TOC entry 4394 (class 0 OID 12567040)
-- Dependencies: 227
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: geonetwork
--

COPY public.groups (id, description, email, enablecategoriesrestriction, logo, name, referrer, website, defaultcategory_id) FROM stdin;
-1	self-registered users	\N	n	\N	GUEST	\N	\N	\N
0	\N	\N	n	\N	intranet	\N	\N	\N
1	\N	\N	n	\N	all	\N	\N	\N
116			n	BE_logo.png	GDI-BE	\N	\N	\N
\.


--
-- TOC entry 4248 (class 2606 OID 12567047)
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: geonetwork
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- TOC entry 4249 (class 2606 OID 12567483)
-- Name: groups fk_balio8qkvhnitbdw241e4ryb8; Type: FK CONSTRAINT; Schema: public; Owner: geonetwork
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT fk_balio8qkvhnitbdw241e4ryb8 FOREIGN KEY (defaultcategory_id) REFERENCES public.categories(id);


-- Completed on 2024-01-30 12:08:00

--
-- PostgreSQL database dump complete
--

