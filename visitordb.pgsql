--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.24
-- Dumped by pg_dump version 9.5.24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: visitor_log; Type: TABLE; Schema: public; Owner: iamuser
--

CREATE TABLE public.visitor_log (
    _vid character varying(50),
    intime character varying(35),
    outtime character varying(35)
);


ALTER TABLE public.visitor_log OWNER TO iamuser;

--
-- Name: visitor_master; Type: TABLE; Schema: public; Owner: iamuser
--

CREATE TABLE public.visitor_master (
    _vid character varying(50),
    fname character varying(20),
    lname character varying(20),
    phno character varying(20)
);


ALTER TABLE public.visitor_master OWNER TO iamuser;

--
-- Data for Name: visitor_log; Type: TABLE DATA; Schema: public; Owner: iamuser
--

COPY public.visitor_log (_vid, intime, outtime) FROM stdin;
cbd6d43d-e03a-459b-9345-2efe1ef489bb	1607847842151	1607858385931
\.


--
-- Data for Name: visitor_master; Type: TABLE DATA; Schema: public; Owner: iamuser
--

COPY public.visitor_master (_vid, fname, lname, phno) FROM stdin;
cbd6d43d-e03a-459b-9345-2efe1ef489bb	Sumit	Mridha	8336823892
\.


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

