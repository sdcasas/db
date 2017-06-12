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
-- Name: utils_provincia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE utils_provincia (
    id integer NOT NULL,
    is_active boolean NOT NULL,
    created_on timestamp with time zone,
    modified_on timestamp with time zone,
    nombre character varying(60) NOT NULL,
    created_by_id integer,
    modified_by_id integer,
    pais_id integer
);


ALTER TABLE utils_provincia OWNER TO postgres;

--
-- Name: utils_provincia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE utils_provincia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utils_provincia_id_seq OWNER TO postgres;

--
-- Name: utils_provincia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE utils_provincia_id_seq OWNED BY utils_provincia.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY utils_provincia ALTER COLUMN id SET DEFAULT nextval('utils_provincia_id_seq'::regclass);


--
-- Data for Name: utils_provincia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY utils_provincia (id, is_active, created_on, modified_on, nombre, created_by_id, modified_by_id, pais_id) FROM stdin;
1	t	2017-05-16 21:32:50.884899-03	2017-05-16 21:32:50.889881-03	BUENOS AIRES	\N	\N	1
2	t	2017-05-16 21:32:50.894042-03	2017-05-16 21:32:50.897996-03	CATAMARCA	\N	\N	1
3	t	2017-05-16 21:32:50.901527-03	2017-05-16 21:32:50.904601-03	CHACO	\N	\N	1
4	t	2017-05-16 21:32:50.90921-03	2017-05-16 21:32:50.912274-03	CHUBUT	\N	\N	1
5	t	2017-05-16 21:32:50.917741-03	2017-05-16 21:32:50.920049-03	CORDOBA	\N	\N	1
6	t	2017-05-16 21:32:50.92316-03	2017-05-16 21:32:50.925365-03	CORRIENTES	\N	\N	1
7	t	2017-05-16 21:32:50.92831-03	2017-05-16 21:32:50.93083-03	ENTRE RIOS	\N	\N	1
8	t	2017-05-16 21:32:50.933791-03	2017-05-16 21:32:50.936325-03	FORMOSA	\N	\N	1
9	t	2017-05-16 21:32:50.93966-03	2017-05-16 21:32:50.942237-03	JUJUY	\N	\N	1
10	t	2017-05-16 21:32:50.945287-03	2017-05-16 21:32:50.947839-03	LA PAMPA	\N	\N	1
11	t	2017-05-16 21:32:50.95096-03	2017-05-16 21:32:50.953458-03	LA RIOJA	\N	\N	1
12	t	2017-05-16 21:32:50.956428-03	2017-05-16 21:32:50.958772-03	MENDOZA	\N	\N	1
13	t	2017-05-16 21:32:50.961621-03	2017-05-16 21:32:50.963877-03	MISIONES	\N	\N	1
14	t	2017-05-16 21:32:50.966831-03	2017-05-16 21:32:50.969156-03	NEUQUEN	\N	\N	1
15	t	2017-05-16 21:32:50.972008-03	2017-05-16 21:32:50.974295-03	RIO NEGRO	\N	\N	1
16	t	2017-05-16 21:32:50.977212-03	2017-05-16 21:32:50.979556-03	SALTA	\N	\N	1
17	t	2017-05-16 21:32:50.982811-03	2017-05-16 21:32:50.98544-03	SAN JUAN	\N	\N	1
18	t	2017-05-16 21:32:50.988704-03	2017-05-16 21:32:50.991235-03	SAN LUIS	\N	\N	1
19	t	2017-05-16 21:32:50.994205-03	2017-05-16 21:32:50.996539-03	SANTA CRUZ	\N	\N	1
20	t	2017-05-16 21:32:50.999425-03	2017-05-16 21:32:51.001725-03	SANTA FE	\N	\N	1
21	t	2017-05-16 21:32:51.00459-03	2017-05-16 21:32:51.006925-03	SANTIAGO DEL ESTERO	\N	\N	1
22	t	2017-05-16 21:32:51.009943-03	2017-05-16 21:32:51.01233-03	TIERRA DEL FUEGO	\N	\N	1
23	t	2017-05-16 21:32:51.01539-03	2017-05-16 21:32:51.017903-03	TUCUMAN	\N	\N	1
\.


--
-- Name: utils_provincia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('utils_provincia_id_seq', 1, true);


--
-- Name: utils_provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY utils_provincia
    ADD CONSTRAINT utils_provincia_pkey PRIMARY KEY (id);


--
-- Name: utils_provincia_847ec16e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX utils_provincia_847ec16e ON utils_provincia USING btree (pais_id);


--
-- Name: utils_provincia_b3da0983; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX utils_provincia_b3da0983 ON utils_provincia USING btree (modified_by_id);


--
-- Name: utils_provincia_e93cb7eb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX utils_provincia_e93cb7eb ON utils_provincia USING btree (created_by_id);


--
-- Name: utils_provincia_created_by_id_ee3fe637_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY utils_provincia
    ADD CONSTRAINT utils_provincia_created_by_id_ee3fe637_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: utils_provincia_modified_by_id_78d31649_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY utils_provincia
    ADD CONSTRAINT utils_provincia_modified_by_id_78d31649_fk_auth_user_id FOREIGN KEY (modified_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: utils_provincia_pais_id_14fb76aa_fk_utils_pais_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY utils_provincia
    ADD CONSTRAINT utils_provincia_pais_id_14fb76aa_fk_utils_pais_id FOREIGN KEY (pais_id) REFERENCES utils_pais(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

