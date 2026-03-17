--
-- PostgreSQL database dump
--

\restrict WVYZaN32hJAxK5ONpiJeW7YfAOUltKkPKO8O91LHDwQez61S7kMJ6nAQhLjxuj0

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-03-16 18:14:06

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 24680)
-- Name: pacientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pacientes (
    id integer NOT NULL,
    nome character varying(100),
    cpf character(14),
    telefone character varying(100),
    genero character varying(100),
    idade integer
);


ALTER TABLE public.pacientes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24679)
-- Name: pacientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pacientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pacientes_id_seq OWNER TO postgres;

--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 219
-- Name: pacientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pacientes_id_seq OWNED BY public.pacientes.id;


--
-- TOC entry 222 (class 1259 OID 24696)
-- Name: pets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pets (
    id integer NOT NULL,
    nome character varying(100),
    especie character varying(100),
    dono integer,
    genero character varying(100),
    idade integer
);


ALTER TABLE public.pets OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24695)
-- Name: pets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pets_id_seq OWNER TO postgres;

--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 221
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pets_id_seq OWNED BY public.pets.id;


--
-- TOC entry 224 (class 1259 OID 24709)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    role character varying(100)
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24708)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 223
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 226 (class 1259 OID 24727)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    user_name character varying(100),
    user_email character varying(100),
    user_pwd text,
    user_role integer
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24726)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 4770 (class 2604 OID 24683)
-- Name: pacientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes ALTER COLUMN id SET DEFAULT nextval('public.pacientes_id_seq'::regclass);


--
-- TOC entry 4771 (class 2604 OID 24699)
-- Name: pets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets ALTER COLUMN id SET DEFAULT nextval('public.pets_id_seq'::regclass);


--
-- TOC entry 4772 (class 2604 OID 24712)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4773 (class 2604 OID 24730)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4775 (class 2606 OID 24686)
-- Name: pacientes pacientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id);


--
-- TOC entry 4777 (class 2606 OID 24702)
-- Name: pets pets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);


--
-- TOC entry 4779 (class 2606 OID 24715)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4781 (class 2606 OID 24735)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4782 (class 2606 OID 24703)
-- Name: pets pets_dono_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_dono_fkey FOREIGN KEY (dono) REFERENCES public.pacientes(id);


--
-- TOC entry 4783 (class 2606 OID 24736)
-- Name: usuarios usuarios_user_role_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_user_role_fkey FOREIGN KEY (user_role) REFERENCES public.roles(id);


-- Completed on 2026-03-16 18:14:07

--
-- PostgreSQL database dump complete
--

\unrestrict WVYZaN32hJAxK5ONpiJeW7YfAOUltKkPKO8O91LHDwQez61S7kMJ6nAQhLjxuj0

