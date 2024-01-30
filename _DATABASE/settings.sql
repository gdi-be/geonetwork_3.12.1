--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 15.3

-- Started on 2024-01-30 12:10:36

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
-- TOC entry 264 (class 1259 OID 12567269)
-- Name: settings; Type: TABLE; Schema: public; Owner: geonetwork
--

CREATE TABLE public.settings (
    name character varying(255) NOT NULL,
    datatype integer,
    editable character(1) DEFAULT 'y'::bpchar NOT NULL,
    encrypted character(1) DEFAULT 'n'::bpchar NOT NULL,
    internal character(1) DEFAULT 'y'::bpchar NOT NULL,
    "position" integer DEFAULT 0 NOT NULL,
    value text
);


ALTER TABLE public.settings OWNER TO geonetwork;

--
-- TOC entry 4396 (class 0 OID 12567269)
-- Dependencies: 264
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: geonetwork
--

COPY public.settings (name, datatype, editable, encrypted, internal, "position", value) FROM stdin;
system/platform/version	0	y	n	n	150	3.12.1
system/platform/subVersion	0	y	n	n	160	0
system/site/svnUuid	0	y	n	y	170	
system/server/log	0	y	n	y	250	log4j.xml
system/server/timeZone	0	y	n	n	260	
system/cors/allowedHosts	0	y	n	y	561	*
system/feedback/mailServer/port	1	y	n	y	640	25
system/feedback/mailServer/username	0	y	n	y	642	
system/feedback/mailServer/password	0	y	y	y	643	
system/feedback/mailServer/ssl	2	y	n	y	641	false
system/feedback/mailServer/tls	2	y	n	y	644	false
system/csw/enable	2	y	n	y	1210	true
system/csw/enabledWhenIndexing	2	y	n	y	1211	true
system/csw/capabilityRecordUuid	0	y	n	y	1220	-1
system/csw/metadataPublic	2	y	n	y	1310	false
system/csw/transactionUpdateCreateXPath	2	y	n	y	1320	true
system/userSelfRegistration/enable	2	y	n	n	1910	false
system/userFeedback/enable	2	y	n	n	1911	false
system/clickablehyperlinks/enable	2	y	n	y	2010	true
system/downloadservice/leave	0	y	n	y	2210	false
system/downloadservice/simple	0	y	n	y	2220	true
system/downloadservice/withdisclaimer	0	y	n	y	2230	false
system/xlinkResolver/localXlinkEnable	2	y	n	n	2311	true
system/xlinkResolver/ignore	0	y	n	n	2312	operatesOn,featureCatalogueCitation,Anchor,source
system/xlinkResolver/referencedDeletionAllowed	2	y	n	n	2313	true
system/hidewithheldelements/enableLogging	2	y	n	y	2320	false
system/autofixing/enable	2	y	n	y	2410	true
system/indexoptimizer/enable	2	y	n	y	6010	true
system/indexoptimizer/at/hour	1	y	n	y	6030	0
system/indexoptimizer/at/min	1	y	n	y	6040	0
system/indexoptimizer/at/sec	1	y	n	y	6050	0
system/indexoptimizer/interval/day	1	y	n	y	6070	0
system/indexoptimizer/interval/hour	1	y	n	y	6080	24
system/indexoptimizer/interval/min	1	y	n	y	6090	0
system/oai/mdmode	0	y	n	y	7010	1
system/oai/tokentimeout	1	y	n	y	7020	3600
system/oai/cachesize	1	y	n	y	7030	60
system/oai/maxrecords	1	y	n	y	7040	10
system/inspire/enableSearchPanel	2	y	n	n	7220	false
system/inspire/atom	0	y	n	y	7230	disabled
system/inspire/atomSchedule	0	y	n	y	7240	0 0 0/24 ? * *
system/inspire/atomProtocol	0	y	n	y	7250	INSPIRE-ATOM
system/harvester/disabledHarvesterTypes	0	y	n	n	9011	
system/harvesting/mail/templateWarning	0	y	n	y	9023	
system/harvesting/mail/level2	2	y	n	y	9027	false
system/users/identicon	0	y	n	n	9110	gravatar:mp
system/metadata/prefergrouplogo	2	y	n	y	9111	true
system/metadata/allThesaurus	2	y	n	n	9160	false
metadata/vcs/enable	2	y	n	n	9161	false
system/metadata/validation/removeSchemaLocation	2	y	n	n	9170	false
system/metadata/history/enabled	2	y	n	n	9171	false
system/metadatacreate/generateUuid	2	y	n	n	9100	true
system/metadataprivs/usergrouponly	2	y	n	n	9180	false
system/threadedindexing/maxthreads	1	y	n	y	9210	1
system/autodetect/enable	2	y	n	y	9510	false
system/requestedLanguage/only	0	y	n	y	9530	prefer_locale
system/requestedLanguage/sorted	2	y	n	y	9540	false
system/requestedLanguage/ignorechars	0	y	n	y	9590	
system/requestedLanguage/preferUiLanguage	2	y	n	y	9595	true
region/getmap/width	0	y	n	n	9590	500
region/getmap/summaryWidth	0	y	n	n	9590	500
system/site/name	0	y	n	n	110	Geodatensuche
system/proxy/use	2	y	n	y	510	true
system/proxy/host	0	y	n	y	520	
region/getmap/background	0	y	n	n	9590	https://sgx.geodatenzentrum.de/wms_basemapde?SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.0&LAYERS=de_basemapde_web_raster_grau&STYLES=inspire_common:DEFAULT&SRS={srs}&BBOX={minx},{miny},{maxx},{maxy}&WIDTH={width}&HEIGHT={height}&FORMAT=image/png
system/site/organization	0	y	n	n	130	Geodateninfrastruktur Berlin (Senatsverwaltung für Stadtentwicklung, Bauen und Wohnen Berlin)
system/server/host	0	y	n	n	210	gdi.berlin.de
system/server/protocol	0	y	n	n	220	https
system/server/port	1	y	n	n	230	443
system/intranet/network	0	y	n	y	310
region/getmap/mapproj	0	y	n	n	9590	EPSG:25833
system/harvesting/mail/enabled	2	y	n	y	9025	true
system/feedback/mailServer/host	0	y	n	y	630
system/harvesting/mail/templateError	0	y	n	y	9022	Folgender Fehler im beim Harvesting von $$harvesterName$$ geschehen : $$errorMsg$$
system/feedback/mailServer/ignoreSslCertificateErrors	2	y	n	y	645	true
system/userFeedback/lastNotificationDate	0	n	n	y	1912	2024-01-30T04:00:00
system/harvesting/mail/level1	2	y	n	y	9026	true
system/harvesting/mail/level3	2	y	n	y	9028	true
metadata/import/restrict	0	y	n	y	11000	
metadata/workflow/enable	2	y	n	n	100002	false
metadata/workflow/draftWhenInGroup	0	y	n	n	100003	
metadata/workflow/allowSumitApproveInvalidMd	2	y	n	n	100004	true
metadata/workflow/allowPublishNonApprovedMd	2	y	n	n	100005	true
metadata/workflow/allowPublishInvalidMd	2	y	n	n	100006	true
metadata/workflow/automaticUnpublishInvalidMd	2	y	n	n	100007	false
metadata/workflow/forceValidationOnMdSave	2	y	n	n	100008	false
metadata/backuparchive/enable	2	y	n	n	12000	false
metadata/pdfReport/coverPdf	0	y	n	y	12500	
metadata/pdfReport/introPdf	0	y	n	y	12501	
metadata/pdfReport/tocPage	2	y	n	y	12502	false
metadata/pdfReport/headerLeft	0	y	n	y	12504	{siteInfo}
metadata/pdfReport/headerRight	0	y	n	y	12505	
metadata/pdfReport/footerLeft	0	y	n	y	12506	
metadata/pdfReport/footerRight	0	y	n	y	12507	{date}
metadata/pdfReport/pdfName	0	y	n	n	12507	metadata_{datetime}.pdf
system/ui/defaultView	0	y	n	n	10100	default
system/userSelfRegistration/recaptcha/enable	2	y	n	n	1910	false
system/userSelfRegistration/recaptcha/publickey	0	y	n	n	1910	
system/userSelfRegistration/recaptcha/secretkey	0	y	n	y	1910	
system/publication/doi/doienabled	2	y	n	n	100191	false
system/publication/doi/doiurl	0	y	n	n	100192	
system/publication/doi/doiusername	0	y	n	n	100193	
system/publication/doi/doipassword	0	y	y	y	100194	
system/publication/doi/doikey	0	y	n	n	110095	
system/publication/doi/doilandingpagetemplate	0	y	n	n	100195	http://localhost:8080/geonetwork/srv/resources/records/{{uuid}}
system/security/passwordEnforcement/minLength	1	y	n	n	12000	6
system/security/passwordEnforcement/maxLength	1	y	n	n	12001	20
system/security/passwordEnforcement/usePattern	2	y	n	n	12002	true
system/security/passwordEnforcement/pattern	0	n	n	n	12003	^((?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*(_|[^\\w])).*)$
system/proxy/username	0	y	n	y	540	
system/proxy/password	0	y	y	y	550	
system/proxy/ignorehostlist	0	y	n	y	560	
system/indexoptimizer/interval	0	y	n	y	6060	
system/inspire/enable	2	y	n	n	7210	true
system/proxy/port	1	y	n	y	530	8080
system/site/siteId	0	y	n	n	120	d378d93a-169e-4332-8e88-fcc6b3d3e975
system/intranet/netmask	0	y	n	y	320	255.255.255.0
system/selectionmanager/maxrecords	1	y	n	y	910	10000
system/localrating/enable	0	y	n	n	2110	
system/xlinkResolver/enable	2	y	n	n	2310	true
system/searchStats/enable	2	y	n	n	2510	true
system/inspire/remotevalidation/url	0	y	n	n	7211	https://inspire.ec.europa.eu/validator/
system/harvester/enableEditing	2	y	n	n	9010	true
metadata/resourceIdentifierPrefix	0	y	n	n	10001	https://gdi.berlin.de/geonetwork/srv/resources
system/harvesting/mail/subject	0	y	n	y	9024	[GeoNetwork-PROD] - Das Harvesting von $$harvesterName$$ war erfolgreich
system/harvesting/mail/template	0	y	n	y	9021	Name des Harvesters: $$harvesterName$$\r\nHarvester-Typ: $$harvesterType$$\r\nGesamtzahl importierter Metadatensätze: $$total$$\r\nAnzahl hinzugefügter Metadatensätze: $$added$$\r\nAnzahl aktualisierter Metadatensätze: $$updated$$\r\nAnzahl unveränderter Metadatensätze: $$unchanged$$\r\nAnzahl nicht ersetzbarer Metadatensätze: $$unretrievable$$\r\nAnzahl gelöschter Metadatensätze: $$removed$$\r\nAnzahl nicht validierter Metadatensätze: $$doesNotValidate$$
system/feedback/email	0	y	n	y	610
system/harvesting/mail/recipient	0	y	n	y	9020
\.


--
-- TOC entry 4251 (class 2606 OID 12567279)
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: geonetwork
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (name);


-- Completed on 2024-01-30 12:10:37

--
-- PostgreSQL database dump complete
--

