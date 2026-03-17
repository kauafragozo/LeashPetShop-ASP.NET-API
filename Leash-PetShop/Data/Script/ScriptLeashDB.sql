--
-- PostgreSQL database dump
--

\restrict zzco8S0YpFqHI1Fu8Z7Ew1xgPkdreKSXcU07M8tOegOCsilFTcfqDnwE1AMgmDo

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-03-17 10:55:19

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
-- TOC entry 226 (class 1259 OID 24727)
-- Name: Usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuarios" (
    "Id" integer CONSTRAINT usuarios_id_not_null NOT NULL,
    "UserName" character varying(100),
    "UserEmail" character varying(100),
    "Userpwd" text,
    "UserRoleId" integer
);


ALTER TABLE public."Usuarios" OWNER TO postgres;

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
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 225
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public."Usuarios"."Id";


--
-- TOC entry 4766 (class 2604 OID 24730)
-- Name: Usuarios Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios" ALTER COLUMN "Id" SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4768 (class 2606 OID 24735)
-- Name: Usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY ("Id");


--
-- TOC entry 4769 (class 2606 OID 24736)
-- Name: Usuarios usuarios_user_role_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT usuarios_user_role_fkey FOREIGN KEY ("UserRoleId") REFERENCES public."Roles"("Id");


-- Completed on 2026-03-17 10:55:20

--
-- PostgreSQL database dump complete
--

\unrestrict zzco8S0YpFqHI1Fu8Z7Ew1xgPkdreKSXcU07M8tOegOCsilFTcfqDnwE1AMgmDo

