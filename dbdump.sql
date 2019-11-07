--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-3.pgdg100+1)
-- Dumped by pg_dump version 11.5 (Debian 11.5-3.pgdg100+1)

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

--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cabanes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cabanes (
    id integer NOT NULL,
    nom character varying NOT NULL,
    nplaces integer,
    tel character varying,
    web character varying,
    pt public.geometry,
    region character varying
);


--
-- Name: cabanes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cabanes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cabanes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cabanes_id_seq OWNED BY public.cabanes.id;


--
-- Name: cabanes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cabanes ALTER COLUMN id SET DEFAULT nextval('public.cabanes_id_seq'::regclass);


--
-- Data for Name: cabanes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cabanes (id, nom, nplaces, tel, web, pt, region) FROM stdin;
1	Aiguilles Rouges	80	027 283 16 49	www.caag.ch	01010000201555000000000000E85A224100000000C08BF840	vs
2	Bertol	80	027 283 19 29	www.bertol.ch	010100002015550000000000006885224100000000602EF740	vs
4	Britannia	134	027 957 22 88	www.britannia.ch	01010000201555000000000000A87B234100000000E0ACF840	vs
3	Boval	90	081 842 64 03	www.sac-bernina.ch	01010000201555000000000000C824284100000000D0820141	gr
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Name: cabanes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cabanes_id_seq', 4, true);


--
-- Name: cabanes cabanes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cabanes
    ADD CONSTRAINT cabanes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

