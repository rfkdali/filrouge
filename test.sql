--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: goals; Type: TABLE; Schema: public; Owner: raf; Tablespace: 
--

CREATE TABLE goals (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    status boolean,
    category character varying(255)
);


ALTER TABLE public.goals OWNER TO raf;

--
-- Name: goals_id_seq; Type: SEQUENCE; Schema: public; Owner: raf
--

CREATE SEQUENCE goals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goals_id_seq OWNER TO raf;

--
-- Name: goals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: raf
--

ALTER SEQUENCE goals_id_seq OWNED BY goals.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: raf; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO raf;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: raf
--

ALTER TABLE ONLY goals ALTER COLUMN id SET DEFAULT nextval('goals_id_seq'::regclass);


--
-- Data for Name: goals; Type: TABLE DATA; Schema: public; Owner: raf
--

COPY goals (id, title, description, status, category) FROM stdin;
13	haml	Mise en place de l'haml	t	\N
14	Authentification	Mettre en place l'authentification (basicAuth, gem Dotenv)	t	\N
15	Postgresql	Mettre en place une base de donnée (PostgresQl)	t	\N
16	formulaire	Mettre en place un formulaire pour l'insertions de liens	t	\N
17	validations	Ajout validations pour le formulaire	t	\N
18	Heroku	Créer un compte heroku et y déployer l'appli	t	\N
19	script de déploiement	Créer un script de déploiement (local > dev et prod)	t	\N
20	Test	 Mettre en place des tests	t	\N
25	rgregre	ergrege	t	\N
22	Test BDD	Mettre en place des tests (BDD avec jasmine-rails/rspec/cucumber)	f	implémentation
23	AngularJs	Mettre en place AngularJs	f	implémentation
21	API	Mettre en place une API	f	implémentation
24	MongoDB	Mettre en place une base de données NoSql	f	implémentation
26	Refaire kata	Refaire Kata WordCount du 11/02	f	Katas
27	KataPotter	Refaire KataPotter du 09/02	f	Katas
\.


--
-- Name: goals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raf
--

SELECT pg_catalog.setval('goals_id_seq', 27, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: raf
--

COPY schema_migrations (version) FROM stdin;
20141423202535
20150206152043
20150206152329
20150206154544
20150206173239
20150207102702
20150211101145
\.


--
-- Name: goals_pkey; Type: CONSTRAINT; Schema: public; Owner: raf; Tablespace: 
--

ALTER TABLE ONLY goals
    ADD CONSTRAINT goals_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: raf; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

