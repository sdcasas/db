--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: util_provincia; Type: TABLE; Schema: public; Owner: dpga; Tablespace: 
--

CREATE TABLE util_provincia (
    id integer NOT NULL,
    is_active boolean NOT NULL,
    created_on timestamp with time zone,
    modified_on timestamp with time zone,
    nombre character varying(60) NOT NULL,
    created_by_id integer,
    modified_by_id integer,
    pais_id integer
);


ALTER TABLE util_provincia OWNER TO dpga;

--
-- Name: util_provincia_id_seq; Type: SEQUENCE; Schema: public; Owner: dpga
--

CREATE SEQUENCE util_provincia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE util_provincia_id_seq OWNER TO dpga;

--
-- Name: util_provincia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpga
--

ALTER SEQUENCE util_provincia_id_seq OWNED BY util_provincia.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: dpga
--

ALTER TABLE ONLY util_provincia ALTER COLUMN id SET DEFAULT nextval('util_provincia_id_seq'::regclass);


--
-- Data for Name: util_provincia; Type: TABLE DATA; Schema: public; Owner: dpga
--

COPY util_provincia (id, is_active, created_on, modified_on, nombre, created_by_id, modified_by_id, pais_id) FROM stdin;
1	t	2017-05-16 21:32:50.884899-03	2017-05-16 21:32:50.889881-03	BUENOS AIRES	\N	\N	\N
2	t	2017-05-16 21:32:50.894042-03	2017-05-16 21:32:50.897996-03	CATAMARCA	\N	\N	\N
3	t	2017-05-16 21:32:50.901527-03	2017-05-16 21:32:50.904601-03	CHACO	\N	\N	\N
4	t	2017-05-16 21:32:50.90921-03	2017-05-16 21:32:50.912274-03	CHUBUT	\N	\N	\N
5	t	2017-05-16 21:32:50.917741-03	2017-05-16 21:32:50.920049-03	CORDOBA	\N	\N	\N
6	t	2017-05-16 21:32:50.92316-03	2017-05-16 21:32:50.925365-03	CORRIENTES	\N	\N	\N
7	t	2017-05-16 21:32:50.92831-03	2017-05-16 21:32:50.93083-03	ENTRE RIOS	\N	\N	\N
8	t	2017-05-16 21:32:50.933791-03	2017-05-16 21:32:50.936325-03	FORMOSA	\N	\N	\N
9	t	2017-05-16 21:32:50.93966-03	2017-05-16 21:32:50.942237-03	JUJUY	\N	\N	\N
10	t	2017-05-16 21:32:50.945287-03	2017-05-16 21:32:50.947839-03	LA PAMPA	\N	\N	\N
11	t	2017-05-16 21:32:50.95096-03	2017-05-16 21:32:50.953458-03	LA RIOJA	\N	\N	\N
12	t	2017-05-16 21:32:50.956428-03	2017-05-16 21:32:50.958772-03	MENDOZA	\N	\N	\N
13	t	2017-05-16 21:32:50.961621-03	2017-05-16 21:32:50.963877-03	MISIONES	\N	\N	\N
14	t	2017-05-16 21:32:50.966831-03	2017-05-16 21:32:50.969156-03	NEUQUEN	\N	\N	\N
15	t	2017-05-16 21:32:50.972008-03	2017-05-16 21:32:50.974295-03	RIO NEGRO	\N	\N	\N
16	t	2017-05-16 21:32:50.977212-03	2017-05-16 21:32:50.979556-03	SALTA	\N	\N	\N
17	t	2017-05-16 21:32:50.982811-03	2017-05-16 21:32:50.98544-03	SAN JUAN	\N	\N	\N
18	t	2017-05-16 21:32:50.988704-03	2017-05-16 21:32:50.991235-03	SAN LUIS	\N	\N	\N
19	t	2017-05-16 21:32:50.994205-03	2017-05-16 21:32:50.996539-03	SANTA CRUZ	\N	\N	\N
20	t	2017-05-16 21:32:50.999425-03	2017-05-16 21:32:51.001725-03	SANTA FE	\N	\N	\N
21	t	2017-05-16 21:32:51.00459-03	2017-05-16 21:32:51.006925-03	SANTIAGO DEL ESTERO	\N	\N	\N
22	t	2017-05-16 21:32:51.009943-03	2017-05-16 21:32:51.01233-03	TIERRA DEL FUEGO	\N	\N	\N
23	t	2017-05-16 21:32:51.01539-03	2017-05-16 21:32:51.017903-03	TUCUMAN	\N	\N	\N
\.


--
-- Name: util_provincia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpga
--

SELECT pg_catalog.setval('util_provincia_id_seq', 1, false);


--
-- Name: util_provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: dpga; Tablespace: 
--

ALTER TABLE ONLY util_provincia
    ADD CONSTRAINT util_provincia_pkey PRIMARY KEY (id);


--
-- Name: util_provincia_created_by_id_1f4c80eb; Type: INDEX; Schema: public; Owner: dpga; Tablespace: 
--

CREATE INDEX util_provincia_created_by_id_1f4c80eb ON util_provincia USING btree (created_by_id);


--
-- Name: util_provincia_modified_by_id_ebc3d258; Type: INDEX; Schema: public; Owner: dpga; Tablespace: 
--

CREATE INDEX util_provincia_modified_by_id_ebc3d258 ON util_provincia USING btree (modified_by_id);


--
-- Name: util_provincia_pais_id_e0c2d94c; Type: INDEX; Schema: public; Owner: dpga; Tablespace: 
--

CREATE INDEX util_provincia_pais_id_e0c2d94c ON util_provincia USING btree (pais_id);


--
-- Name: util_provincia_created_by_id_1f4c80eb_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dpga
--

ALTER TABLE ONLY util_provincia
    ADD CONSTRAINT util_provincia_created_by_id_1f4c80eb_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: util_provincia_modified_by_id_ebc3d258_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dpga
--

ALTER TABLE ONLY util_provincia
    ADD CONSTRAINT util_provincia_modified_by_id_ebc3d258_fk_auth_user_id FOREIGN KEY (modified_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: util_provincia_pais_id_e0c2d94c_fk_util_pais_id; Type: FK CONSTRAINT; Schema: public; Owner: dpga
--

ALTER TABLE ONLY util_provincia
    ADD CONSTRAINT util_provincia_pais_id_e0c2d94c_fk_util_pais_id FOREIGN KEY (pais_id) REFERENCES util_pais(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

