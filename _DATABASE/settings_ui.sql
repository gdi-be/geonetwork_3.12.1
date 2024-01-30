--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 15.3

-- Started on 2024-01-30 12:05:58

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
-- TOC entry 266 (class 1259 OID 12567287)
-- Name: settings_ui; Type: TABLE; Schema: public; Owner: geonetwork
--

CREATE TABLE public.settings_ui (
    id character varying(255) NOT NULL,
    configuration text
);


ALTER TABLE public.settings_ui OWNER TO geonetwork;

--
-- TOC entry 4392 (class 0 OID 12567287)
-- Dependencies: 266
-- Data for Name: settings_ui; Type: TABLE DATA; Schema: public; Owner: geonetwork
--

COPY public.settings_ui (id, configuration) FROM stdin;
srv	{\n  "langDetector": {\n    "fromHtmlTag": false,\n    "regexp": "^(?:/.+)?/.+/([a-z]{2,3})/.+",\n    "default": "eng"\n  },\n  "nodeDetector": {\n    "regexp": "^(?:/.+)?/(.+)/[a-z]{2,3}/.+",\n    "default": "srv"\n  },\n  "serviceDetector": {\n    "regexp": "^(?:/.+)?/.+/[a-z]{2,3}/(.+)",\n    "default": "catalog.search"\n  },\n  "baseURLDetector": {\n    "regexp": "^((?:/.+)?)+/.+/[a-z]{2,3}/.+",\n    "default": "/geonetwork"\n  },\n  "mods": {\n    "global": {\n      "humanizeDates": true\n    },\n    "footer": {\n      "enabled": true,\n      "showSocialBarInFooter": false\n    },\n    "header": {\n      "enabled": true,\n      "languages": {\n        "ger": "de"\n      },\n      "isLogoInHeader": false,\n      "logoInHeaderPosition": "left",\n      "fluidHeaderLayout": true,\n      "showGNName": true,\n      "isHeaderFixed": true,\n      "isMenubarAccessible": true\n    },\n    "cookieWarning": {\n      "enabled": false,\n      "cookieWarningMoreInfoLink": "",\n      "cookieWarningRejectLink": ""\n    },\n    "home": {\n      "enabled": true,\n      "appUrl": "../../{{node}}/{{lang}}/catalog.search#/home",\n      "fluidLayout": true\n    },\n    "search": {\n      "enabled": true,\n      "appUrl": "../../{{node}}/{{lang}}/catalog.search#/search",\n      "hitsperpageValues": [\n        10,\n        25,\n        50\n      ],\n      "paginationInfo": {\n        "hitsPerPage": 10\n      },\n      "mapFilterCollapsed": false,\n      "facetsSummaryType": "details",\n      "defaultSearchString": "",\n      "facetTabField": "",\n      "facetConfig": [],\n      "filters": {},\n      "sortbyValues": [\n        {\n          "sortBy": "title",\n          "sortOrder": "reverse"\n        },\n        {\n          "sortBy": "changeDate",\n          "sortOrder": ""\n        },\n        {\n          "sortBy": "relevance",\n          "sortOrder": ""\n        },\n        {\n          "sortBy": "",\n          "sortOrder": ""\n        },\n        {\n          "sortBy": "",\n          "sortOrder": ""\n        },\n        {\n          "sortBy": "",\n          "sortOrder": ""\n        },\n        {\n          "sortBy": "",\n          "sortOrder": ""\n        }\n      ],\n      "sortBy": "changeDate",\n      "resultViewTpls": [\n        {\n          "tplUrl": "../../catalog/components/search/resultsview/partials/viewtemplates/grid.html",\n          "tooltip": "Grid",\n          "icon": "fa-th"\n        },\n        {\n          "tplUrl": "../../catalog/components/search/resultsview/partials/viewtemplates/list.html",\n          "tooltip": "List",\n          "icon": "fa-bars"\n        }\n      ],\n      "resultTemplate": "../../catalog/components/search/resultsview/partials/viewtemplates/grid.html",\n      "formatter": {\n        "list": [\n          {\n            "label": "defaultView",\n            "url": ""\n          },\n          {\n            "label": "full",\n            "url": "/formatters/xsl-view?root=div&view=advanced"\n          }\n        ],\n        "defaultUrl": ""\n      },\n      "downloadFormatter": [\n        {\n          "label": "exportXML",\n          "url": "/formatters/xml",\n          "class": "fa-file-code-o"\n        },\n        {\n          "label": "exportPDF",\n          "url": "/formatters/xsl-view?output=pdf&language=${lang}",\n          "class": "fa-file-code-o"\n        },\n        {\n          "label": "exportMEF",\n          "url": "/formatters/zip?withRelated=false",\n          "class": "fa-file-code-o"\n        }\n      ],\n      "grid": {\n        "related": [\n          "parent",\n          "children",\n          "services",\n          "datasets"\n        ]\n      },\n      "linkTypes": {\n        "links": [\n          "LINK",\n          "kml"\n        ],\n        "downloads": [\n          "DOWNLOAD"\n        ],\n        "layers": [\n          "OGC",\n          "ESRI:REST"\n        ],\n        "maps": [\n          "ows"\n        ]\n      },\n      "isFilterTagsDisplayedInSearch": true,\n      "usersearches": {\n        "enabled": false,\n        "displayFeaturedSearchesPanel": false\n      },\n      "savedSelection": {\n        "enabled": false\n      }\n    },\n    "map": {\n      "enabled": false,\n      "appUrl": "../../{{node}}/{{lang}}/catalog.search#/map",\n      "externalViewer": {\n        "enabled": false,\n        "enabledViewAction": false,\n        "baseUrl": "https://gdi.berlin.de/viewer/main",\n        "urlTemplate": "",\n        "openNewWindow": true,\n        "valuesSeparator": ","\n      },\n      "is3DModeAllowed": false,\n      "isSaveMapInCatalogAllowed": false,\n      "isExportMapAsImageEnabled": false,\n      "storage": "sessionStorage",\n      "bingKey": "",\n      "listOfServices": {\n        "wms": [],\n        "wmts": []\n      },\n      "projection": "EPSG:25833",\n      "projectionList": [\n        {\n          "code": "EPSG:25833",\n          "label": "UTM Zone 33N"\n        },\n        {\n          "code": "EPSG:4326",\n          "label": "WGS 84"\n        }\n      ],\n      "switcherProjectionList": [\n        {\n          "code": "EPSG:25833",\n          "label": "UTM Zone 33N",\n          "def": "+proj=utm +zone=33 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs",\n          "extent": [\n            269387.694352036,\n            5138491.809627139,\n            731380.9793150194,\n            9330126.130705113\n          ],\n          "worldExtent": [\n            12,\n            46.4,\n            18.01,\n            84.01\n          ]\n        },\n        {\n          "label": "WGS 84",\n          "code": "EPSG:4326",\n          "extent": [\n            -180,\n            -90,\n            180,\n            90\n          ],\n          "worldExtent": [\n            -180,\n            -90,\n            180,\n            90\n          ],\n          "resolutions": [],\n          "def": "+proj=longlat +datum=WGS84 +no_defs"\n        }\n      ],\n      "disabledTools": {\n        "processes": true,\n        "addLayers": false,\n        "projectionSwitcher": true,\n        "layers": false,\n        "legend": false,\n        "filter": true,\n        "contexts": true,\n        "print": true,\n        "mInteraction": true,\n        "graticule": true,\n        "syncAllLayers": true,\n        "drawVector": true\n      },\n      "graticuleOgcService": {},\n      "map-viewer": {\n        "context": "../../map/config-viewer.xml",\n        "extent": [\n          0,\n          0,\n          0,\n          0\n        ],\n        "layers": []\n      },\n      "map-search": {\n        "context": "../../map/config-viewer.xml",\n        "extent": [\n          0,\n          0,\n          0,\n          0\n        ],\n        "layers": []\n      },\n      "map-editor": {\n        "context": "../../map/config-viewer.xml",\n        "extent": [\n          0,\n          0,\n          0,\n          0\n        ],\n        "layers": [\n          {\n            "type": "osm"\n          }\n        ]\n      },\n      "autoFitOnLayer": true\n    },\n    "geocoder": {\n      "enabled": false,\n      "appUrl": "https://secure.geonames.org/searchJSON"\n    },\n    "recordview": {\n      "enabled": true,\n      "isSocialbarEnabled": false\n    },\n    "editor": {\n      "enabled": true,\n      "appUrl": "../../{{node}}/{{lang}}/catalog.edit",\n      "isUserRecordsOnly": false,\n      "minUserProfileToCreateTemplate": "",\n      "isFilterTagsDisplayed": true,\n      "fluidEditorLayout": true,\n      "createPageTpl": "../../catalog/templates/editor/new-metadata-horizontal.html",\n      "editorIndentType": ""\n    },\n    "admin": {\n      "enabled": true,\n      "appUrl": "../../{{node}}/{{lang}}/admin.console"\n    },\n    "signin": {\n      "enabled": false,\n      "appUrl": "../../{{node}}/{{lang}}/catalog.signin"\n    },\n    "signout": {\n      "appUrl": "../../signout"\n    },\n    "page": {\n      "enabled": true,\n      "appUrl": "../../{{node}}/{{lang}}/catalog.search#/page"\n    }\n  }\n}
\.


--
-- TOC entry 4247 (class 2606 OID 12567293)
-- Name: settings_ui settings_ui_pkey; Type: CONSTRAINT; Schema: public; Owner: geonetwork
--

ALTER TABLE ONLY public.settings_ui
    ADD CONSTRAINT settings_ui_pkey PRIMARY KEY (id);


-- Completed on 2024-01-30 12:05:58

--
-- PostgreSQL database dump complete
--

