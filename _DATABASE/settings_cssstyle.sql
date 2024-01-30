--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 15.3

-- Started on 2024-01-30 12:05:41

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
-- TOC entry 265 (class 1259 OID 12567280)
-- Name: settings_cssstyle; Type: TABLE; Schema: public; Owner: geonetwork
--

CREATE TABLE public.settings_cssstyle (
    variable character varying(255) NOT NULL,
    value character varying(255)
);


ALTER TABLE public.settings_cssstyle OWNER TO geonetwork;

--
-- TOC entry 4392 (class 0 OID 12567280)
-- Dependencies: 265
-- Data for Name: settings_cssstyle; Type: TABLE DATA; Schema: public; Owner: geonetwork
--

COPY public.settings_cssstyle (variable, value) FROM stdin;
gn-search-background-color	#FFFFFF
gn-search-button-background-color	#C41B31
gn-bottombar-color-hover	#0E4C38
gn-background-color	
gn-results-background-color	#EFEFEF
gn-info-background-color	#EFEFEF
gn-header-height	
gn-search-button-color	#FFFFFF
gn-menubar-color-active	#333333
gn-menubar-background-hover	#F2F2F2
gn-background-image	''
gn-menubar-color	#333333
gn-resultcard-background-color	
gn-menubar-background-active	#FFFFFF
gn-menubar-color-hover	#C41B31
gn-bottombar-background	#EFEFEF
gn-header-background	
gn-bottombar-border-color	#C41B31
gn-menubar-border-color	#C41B31
gn-resultcard-title-background-color	#666666
gn-topics-background-color	#FFFFFF
gn-bottombar-background-hover	#EFEFEF
gn-bottombar-color	#333333
gn-search-outline-color	#C41B31
gn-menubar-background	#FFF
gn-md-view-background-color	#EFEFEF
\.


--
-- TOC entry 4247 (class 2606 OID 12567286)
-- Name: settings_cssstyle settings_cssstyle_pkey; Type: CONSTRAINT; Schema: public; Owner: geonetwork
--

ALTER TABLE ONLY public.settings_cssstyle
    ADD CONSTRAINT settings_cssstyle_pkey PRIMARY KEY (variable);


-- Completed on 2024-01-30 12:05:41

--
-- PostgreSQL database dump complete
--

