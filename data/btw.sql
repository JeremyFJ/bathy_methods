--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Homebrew)
-- Dumped by pg_dump version 14.15 (Homebrew)

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
-- Name: btw_iso_expedition; Type: TABLE; Schema: public; Owner: jeremy
--

CREATE TABLE public.btw_iso_expedition (
    set character varying(255),
    date date,
    gear character varying(255),
    traps character varying(255),
    common character varying(255),
    family character varying(255),
    species character varying(255),
    depth numeric,
    latitude numeric(9,7),
    longitude numeric(10,7),
    temp numeric(5,2),
    sample character varying(255),
    sex character varying(10),
    tl numeric(5,2),
    carapace_width numeric(5,2),
    genetics character varying(1),
    muscle character varying(1),
    swab character varying(1),
    notes text,
    reference character varying(255),
    dna character varying(1),
    rna character varying(1),
    observation_id integer
);


ALTER TABLE public.btw_iso_expedition OWNER TO jeremy;

--
-- Name: isopod_observations; Type: TABLE; Schema: public; Owner: jeremy
--

CREATE TABLE public.isopod_observations (
    latitude numeric(9,7),
    longitude numeric(9,6),
    date date,
    species text,
    url text,
    image_url text,
    reference text,
    n integer,
    location text,
    depth character varying,
    gear text,
    temp character varying,
    traps character varying,
    id integer NOT NULL,
    notes character varying,
    source text,
    aquarium_inp boolean
);


ALTER TABLE public.isopod_observations OWNER TO jeremy;

--
-- Name: isopod_observations_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremy
--

CREATE SEQUENCE public.isopod_observations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.isopod_observations_id_seq OWNER TO jeremy;

--
-- Name: isopod_observations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremy
--

ALTER SEQUENCE public.isopod_observations_id_seq OWNED BY public.isopod_observations.id;


--
-- Name: isopod_observations id; Type: DEFAULT; Schema: public; Owner: jeremy
--

ALTER TABLE ONLY public.isopod_observations ALTER COLUMN id SET DEFAULT nextval('public.isopod_observations_id_seq'::regclass);


--
-- Data for Name: btw_iso_expedition; Type: TABLE DATA; Schema: public; Owner: jeremy
--

COPY public.btw_iso_expedition (set, date, gear, traps, common, family, species, depth, latitude, longitude, temp, sample, sex, tl, carapace_width, genetics, muscle, swab, notes, reference, dna, rna, observation_id) FROM stdin;
BTW_DW1	2022-07-29	traps	Eel	Isopod	Cirolanidae	Bathynomus apothecarus	720	24.9827000	-77.5564000	\N	\N	\N	\N	\N	t	f	f	With Alexis Janosik for sequencing	BTW expedition	f	f	2925
BTW_DW1	2022-07-29	traps	Eel	Isopod	Cirolanidae	Bathynomus apothecarus	720	24.9827000	-77.5564000	\N	\N	\N	\N	\N	t	f	f	With Alexis Janosik for sequencing	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW1	F	5.20	2.20	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW2	F	5.20	2.50	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW3	F	5.10	2.10	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW4	F	5.20	2.40	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW5	F	4.90	2.00	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW6	F	5.00	2.10	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW7	F	5.00	2.00	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW8	F	12.00	5.20	t	t	t	\N	BTW expedition	t	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW9	F	11.00	4.50	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW10	F	9.60	4.00	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW11	F	9.50	4.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW12	F	8.40	3.40	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW13	M	8.00	3.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW14	F	7.80	3.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW15	F	\N	2.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW16	F	8.00	3.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW17	F	6.00	2.80	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW18	F	6.20	2.60	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW19	F	6.50	2.80	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW20	F	5.20	2.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW21	F	17.50	8.00	t	t	t	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW22	F	7.40	3.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW23	F	\N	2.50	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW24	F	4.40	1.80	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW2	2022-11-14	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	886	25.1425800	-77.2801600	7.17	DW25	F	4.90	2.10	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW1	2022-07-29	traps	Square	Deep-sea lobster	Nephropidae	 	720	24.9827000	-77.5564000	\N	DW26	\N	\N	\N	t	t	f	In Tigress freezer until ID'd	BTW expedition	f	f	2925
BTW_DW3	2022-11-16	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	990	25.1594200	-77.2310000	6.41	DW27	F	8.90	3.90	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW3	2022-11-16	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	990	25.1594200	-77.2310000	6.41	DW28	F	6.80	3.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW3	2022-11-16	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	990	25.1594200	-77.2310000	6.41	DW29	F	7.80	3.80	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW3	2022-11-16	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	990	25.1594200	-77.2310000	6.41	DW30	F	10.00	4.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW3	2022-11-16	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	990	25.1594200	-77.2310000	6.41	DW31	F	7.90	3.60	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW3	2022-11-16	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	990	25.1594200	-77.2310000	6.41	DW32	F	6.20	2.80	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Large Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW33	F	5.80	2.60	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW34	F	11.40	5.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW35	F	17.80	8.40	t	t	f	\N	BTW expedition	t	f	2925
BTW_DW4	2022-11-17	traps	Eel	Isopod	Cirolanidae	Bathynomus maxeyorum	749	25.1890600	-77.1140500	9.96	DW36	F	8.60	3.60	t	t	f	Larger individual New species? Still on Tigress	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW37	M	11.80	5.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW38	F	7.20	3.60	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW39	F	7.20	4.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW40	F	7.00	4.40	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW41	M	7.20	4.00	t	t	f	Odd shape for B. giganteus, new species? Still on Tigress	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW42	F	7.20	3.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW43	F	6.00	2.80	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW44	F	5.80	2.80	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW45	F	6.80	3.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW46	F	5.00	2.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW47	F	5.00	2.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW4	2022-11-17	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	749	25.1890600	-77.1140500	9.96	DW48	F	4.80	2.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW5	2023-02-18	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	786	23.7177000	-75.9462700	8.60	DW49	\N	10.40	5.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW5	2023-02-18	traps	Amphipod	Giant isopod	Cirolanidae	Bathynomus giganteus	786	23.7177000	-75.9462700	8.60	DW50	\N	6.20	4.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW5	2023-02-18	traps	Eel	Giant isopod	Cirolanidae	Bathynomus giganteus	786	23.7177000	-75.9462700	8.60	DW51	M	11.20	6.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW6	2023-02-19	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	784.5	23.7118000	-75.8826700	9.00	DW63	F	13.00	7.60	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW6	2023-02-19	traps	Eel	Red shrimp	Pandalidae	Heterocarpus ensifer	784.5	23.7118000	-75.8826700	9.00	DW64	\N	11.60	1.80	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	801	24.1931600	-76.4105400	\N	DW52	M	26.00	15.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	801	24.1931600	-76.4105400	\N	DW53	M	10.40	6.10	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	801	24.1931600	-76.4105400	\N	DW54	F	28.80	8.90	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	801	24.1931600	-76.4105400	\N	DW55	F	18.10	9.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	801	24.1931600	-76.4105400	\N	DW56	F	17.00	9.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	801	24.1931600	-76.4105400	\N	DW57	F	15.90	9.20	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	801	24.1931600	-76.4105400	\N	DW58	M	11.80	5.80	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Square	Giant isopod	Cirolanidae	Bathynomus giganteus	801	24.1931600	-76.4105400	\N	DW59	\N	6.80	3.00	t	t	f	\N	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Square	Giant isopod	Cirolanidae	Bathynomus sp.	801	24.1931600	-76.4105400	\N	DW60	\N	\N	\N	t	f	f	Sent to Alexis for sequencing, unsure if new spp.	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Large amphipod	Amphipod	Amphipoda	 	801	24.1931600	-76.4105400	\N	DW61	\N	\N	\N	t	f	f	Sent to Alexis for sequencing	BTW expedition	f	f	2925
BTW_DW7	2023-02-22	traps	Small amphipod	Amphipod	Amphipoda	 	801	24.1931600	-76.4105400	\N	DW62	\N	\N	\N	t	f	f	Sent to Alexis for sequencing	BTW expedition	f	f	2925
BTW_DW8	2023-02-23	traps	Eel	Isopod	Cirolanidae	Bathynomus sp.	755	24.2289000	-76.4255500	\N	DW65	\N	3.20	1.40	t	f	f	Sent to Alexis for sequencing	BTW expedition	f	f	2925
BTW_DW8	2023-02-23	traps	Eel	Isopod	Cirolanidae	Bathynomus maxeyorum	755	24.2289000	-76.4255500	\N	DW66	\N	7.80	3.20	t	t	f	Sent to Alexis for sequencing	BTW expedition	f	f	2925
BTW_DW8	2023-02-23	traps	Large amphipod	Isopod	Cirolanidae	Bathynomus sp.	755	24.2289000	-76.4255500	\N	DW67	\N	3.00	1.40	t	f	f	Sent to Alexis for sequencing	BTW expedition	f	f	2925
BTW_DW8	2023-02-23	traps	Small amphipod	Amphipod	\N	 	755	24.2289000	-76.4255500	\N	DW68	\N	\N	\N	t	f	f	Sent to Alexis for sequencing	BTW expedition	f	f	2925
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	12.00	\N	\N	\N	\N		BTW expedition	0	\N	3657
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	11.50	\N	\N	\N	\N		BTW expedition	0	\N	3658
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	13.00	\N	\N	\N	\N		BTW expedition	0	\N	3659
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	12.50	\N	\N	\N	\N		BTW expedition	0	\N	3660
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	13.00	\N	\N	\N	\N		BTW expedition	0	\N	3661
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	13.00	\N	\N	\N	\N		BTW expedition	0	\N	3662
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	13.00	\N	\N	\N	\N		BTW expedition	0	\N	3663
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	12.00	\N	\N	\N	\N		BTW expedition	0	\N	3664
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	12.00	\N	\N	\N	\N		BTW expedition	0	\N	3665
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	11.00	\N	\N	\N	\N		BTW expedition	0	\N	3666
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	10.50	\N	\N	\N	\N		BTW expedition	0	\N	3667
\N	2025-03-07	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	\N	34.8615000	138.3753170	\N	JPY-NA	\N	10.50	\N	\N	\N	\N		BTW expedition	0	\N	3668
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-1	\N	10.00	\N	\N	\N	\N		BTW expedition	1	\N	3669
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-2	\N	10.50	\N	\N	\N	\N		BTW expedition	1	\N	3670
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-3	\N	11.00	\N	\N	\N	\N		BTW expedition	1	\N	3671
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-4	\N	12.50	5.50	\N	\N	\N		BTW expedition	1	\N	3672
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-5	\N	11.50	5.50	\N	\N	\N		BTW expedition	1	\N	3673
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-6	\N	10.50	5.50	\N	\N	\N		BTW expedition	1	\N	3674
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-7	\N	10.50	5.20	\N	\N	\N		BTW expedition	1	\N	3675
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-8	\N	11.00	5.50	\N	\N	\N		BTW expedition	1	\N	3676
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-9	\N	11.00	5.50	\N	\N	\N		BTW expedition	1	\N	3677
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-10	\N	10.00	5.50	\N	\N	\N		BTW expedition	1	\N	3678
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-11	\N	11.40	5.20	\N	\N	\N		BTW expedition	1	\N	3679
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-12	\N	7.80	3.70	\N	\N	\N		BTW expedition	1	\N	3680
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-01	\N	11.20	3.88	\N	\N	\N		BTW expedition	1	\N	3681
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-02	\N	10.29	3.76	\N	\N	\N		BTW expedition	1	\N	3682
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-03	\N	9.98	3.72	\N	\N	\N		BTW expedition	1	\N	3683
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-04	\N	7.36	2.87	\N	\N	\N		BTW expedition	1	\N	3684
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-05	\N	11.62	4.15	\N	\N	\N		BTW expedition	1	\N	3685
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-06	\N	11.54	3.63	\N	\N	\N		BTW expedition	1	\N	3686
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-07	\N	9.82	4.13	\N	\N	\N		BTW expedition	1	\N	3687
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-08	\N	11.00	4.21	\N	\N	\N		BTW expedition	1	\N	3688
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-09	\N	10.65	4.17	\N	\N	\N		BTW expedition	1	\N	3689
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-010	\N	8.09	3.32	\N	\N	\N		BTW expedition	1	\N	3690
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-011	\N	8.48	3.79	\N	\N	\N		BTW expedition	1	\N	3691
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-012	\N	10.30	4.00	\N	\N	\N		BTW expedition	1	\N	3692
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-013	\N	9.50	4.22	\N	\N	\N		BTW expedition	1	\N	3693
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-014	\N	9.53	3.80	\N	\N	\N		BTW expedition	1	\N	3694
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-015	\N	11.73	4.34	\N	\N	\N		BTW expedition	1	\N	3695
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-016	\N	10.67	4.51	\N	\N	\N		BTW expedition	1	\N	3696
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-017	\N	7.30	6.30	\N	\N	\N		BTW expedition	1	\N	3697
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-018	\N	9.60	6.40	\N	\N	\N		BTW expedition	1	\N	3698
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-019	\N	14.50	6.55	\N	\N	\N		BTW expedition	1	\N	3699
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-020	\N	8.60	3.80	\N	\N	\N		BTW expedition	1	\N	3700
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-021	\N	8.80	3.35	\N	\N	\N		BTW expedition	1	\N	3701
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-022	\N	6.50	4.30	\N	\N	\N		BTW expedition	1	\N	3702
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-023	\N	8.56	4.00	\N	\N	\N		BTW expedition	1	\N	3703
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-024	\N	10.37	4.40	\N	\N	\N		BTW expedition	1	\N	3704
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-025	\N	10.40	4.20	\N	\N	\N		BTW expedition	1	\N	3705
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-026	\N	9.60	3.30	\N	\N	\N		BTW expedition	1	\N	3706
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-027	\N	9.78	3.67	\N	\N	\N		BTW expedition	1	\N	3707
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-028	\N	10.70	4.00	\N	\N	\N		BTW expedition	1	\N	3708
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-029	\N	11.50	4.26	\N	\N	\N		BTW expedition	1	\N	3709
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-030	\N	9.40	3.60	\N	\N	\N		BTW expedition	1	\N	3710
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-031	\N	9.10	4.10	\N	\N	\N		BTW expedition	1	\N	3711
\N	2025-03-10	traps	Large amphipod - Bonito	\N	\N	Bathynomus doederleini	487	34.8682670	138.3743330	\N	JPY-032	\N	9.07	3.60	\N	\N	\N		BTW expedition	1	\N	3712
\N	2025-03-12	traps	Large amphipod - Bonito	\N	\N		436	34.8932670	138.4499000	\N	JPY-033	\N	\N	\N	\N	\N	\N	parasitizing a kitefin A, unknown isopod species	BTW expedition	1	\N	3713
\N	2025-03-12	traps	Large amphipod - Bonito	\N	\N		436	34.8932670	138.4499000	\N	JPY-034	\N	\N	\N	\N	\N	\N	parasitizing a kitefin A, unknown isopod species	BTW expedition	1	\N	3714
\.


--
-- Data for Name: isopod_observations; Type: TABLE DATA; Schema: public; Owner: jeremy
--

COPY public.isopod_observations (latitude, longitude, date, species, url, image_url, reference, n, location, depth, gear, temp, traps, id, notes, source, aquarium_inp) FROM stdin;
24.4704380	123.943500	2024-01-05	Hierodula patellifera		\N	GBIF	1	\N	\N	\N	\N	\N	1010	\N	GBIF	f
34.7025502	139.444081	2006-07-09	Ligia exotica	https://www.inaturalist.org/observations/241570901	https://static.inaturalist.org/photos/430554963/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	36	\N	iNaturalist	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3657		expedition	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3658		expedition	f
24.5840210	123.961517	2024-01-03	Mimegralla albimanus		\N	GBIF	1	\N	\N	\N	\N	\N	1000	\N	GBIF	f
24.2289000	-76.425550	2023-02-23	Bathynomus sp.	\N	\N	BTW expedition	1	\N	755	traps	\N	Eel	2959	\N	\N	f
24.5749080	123.945511	2024-01-12	Somena Walker		\N	GBIF	1	\N	\N	\N	\N	\N	153	\N	GBIF	f
24.2289000	-76.425550	2023-02-23	 	\N	\N	BTW expedition	1	\N	755	traps	\N	Small amphipod	2962	\N	\N	f
28.1272000	-85.860000	1985-05-16	Bathynomus giganteus	\N	\N	\N	1	\N	627.5	\N	\N	\N	3173	PRESERVED_SPECIMEN	GBIF	f
17.6250000	-62.800000	1967-06-05	Bathynomus giganteus	\N	\N	\N	1	\N	658.5	\N	\N	\N	3248	PRESERVED_SPECIMEN	GBIF	f
37.8125291	138.228383	2024-06-01	Ligia exotica	https://www.inaturalist.org/observations/238907848	https://inaturalist-open-data.s3.amazonaws.com/photos/425408092/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	57	\N	iNaturalist	f
16.6500000	-82.430000	1957-08-22	Bathynomus giganteus	\N	\N	\N	1	\N	457	\N	\N	\N	3285	PRESERVED_SPECIMEN	GBIF	f
17.5200000	-77.820000	1970-07-06	Bathynomus giganteus	\N	\N	\N	1	\N	892	\N	\N	\N	2677	PRESERVED_SPECIMEN	GBIF	f
29.8841970	122.117495	2024-01-13	Pontia edusa		\N	GBIF	1	\N	\N	\N	\N	\N	345	\N	GBIF	f
11.9583000	121.704000	1908-06-03	Bathynomus affinis		\N	GBIF	1	\N	\N	\N	\N	\N	3407	\N	GBIF	f
25.9882420	-80.051281	2024-01-03	Nehalennia pallidula		\N	GBIF	1	\N	\N	\N	\N	\N	2561	\N	GBIF	f
18.4052870	-76.949707	2024-01-03	Panulirus argus		\N	GBIF	1	\N	\N	\N	\N	\N	2562	\N	GBIF	f
28.0723390	-82.830727	2024-01-02	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2564	\N	GBIF	f
-12.5778194	-38.001811	2014-01-14	Bathynomus giganteus	https://www.inaturalist.org/observations/110138752	https://static.inaturalist.org/photos/185742959/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2759	 	iNaturalist	t
-18.2871000	147.699200	1993-01-01	Bathynomus brucei	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	49	Great Barrier Reef, Australia	400-1000	\N	\N	\N	3715	Reported during 1993-1994	\N	f
35.2516203	139.742072	2024-04-30	Armadillidium vulgare	https://www.inaturalist.org/observations/212902986	https://inaturalist-open-data.s3.amazonaws.com/photos/376236244/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	250	\N	iNaturalist	f
33.2211950	126.245628	2024-05-02	Ligia exotica	https://www.inaturalist.org/observations/212780628	https://static.inaturalist.org/photos/376023342/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	251	\N	iNaturalist	f
-5.1500000	145.800000	1991-01-01	Bathynomus bruscai	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	11	Astrolabe Bay, Papua New Guinea	400-600	\N	\N	\N	3716	Reported during 1991-1994	\N	f
-18.2871000	147.699200	1991-01-01	Bathynomus bruscai	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	12	Great Barrier Reef, Australia	400-600	\N	\N	\N	3717	Reported during 1991-1994	\N	f
-18.2871000	147.699200	1993-01-01	Bathynomus immanis	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	500	Great Barrier Reef, Australia	200-400	\N	\N	\N	3718	Reported during 1993-1994	\N	f
-18.0000000	152.000000	1993-01-01	Bathynomus immanis	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	478	Coral Sea	200-400	\N	\N	\N	3719	Reported during 1993-1994	\N	f
-5.1500000	145.800000	1993-01-01	Bathynomus immanis	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	478	Astrolabe Bay, Papua New Guinea	200-400	\N	\N	\N	3720	Reported during 1993-1994	\N	f
-33.8688000	151.209300	1971-01-01	Bathynomus kapala	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	25	New South Wales, Australia	366-823	\N	\N	\N	3721	Reported during 1971-1994	\N	f
-10.9792700	-37.040981	2018-10-20	Bathynomus giganteus	https://www.inaturalist.org/observations/17698882	https://static.inaturalist.org/photos/26976213/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2765	 Oceanário de Aracaju. Coletado em águas profundas dos mares de salvador. 	iNaturalist	t
8.9733333	121.351667	1986-04-10	Bathynomus wilsoni	https://doi.org/10.26107/RBZ-2025-0012	\N	Ahyong2025	1	Sulu Trough, Sulu Sea, Philippines	2500	thermally insulated tube trap	\N	\N	3734	female, holotype, AM P42711, RV Thomas Washington, PAPATUA Expedition Leg 08, coll. A.A. Yayanos	literature	f
8.9733333	121.351667	1986-04-10	Bathynomus wilsoni	https://doi.org/10.26107/RBZ-2025-0012	\N	Ahyong2025	1	Sulu Trough, Sulu Sea, Philippines	2500	thermally insulated tube trap	\N	\N	3735	male, paratype, ZRC 2025.0098, RV Thomas Washington, PAPATUA Expedition Leg 08, coll. A.A. Yayanos	literature	f
12.5116670	45.693333	1987-03-08	Bathynomus sp.	http://sesam.senckenberg.de/page/index.asp?objekt_id=11886&sprache_kurz=en	\N	\N	1	\N	\N	\N	\N	\N	3159	PRESERVED_SPECIMEN	GBIF	f
14.8320800	73.330280	1995-09-27	Bathynomus sp.	http://collections.peabody.yale.edu/search/Record/YPM-IZ-021255	\N	Bathynomus giganteus (YPM IZ 021255)	1	\N	765	\N	\N	\N	3132	PRESERVED_SPECIMEN	GBIF	f
35.1624276	139.784769	2014-09-17	Tylos granuliferus	https://www.inaturalist.org/observations/212743720	https://inaturalist-open-data.s3.amazonaws.com/photos/375711865/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	253	\N	iNaturalist	f
35.1148601	139.722395	2014-09-17	Tylos granuliferus	https://www.inaturalist.org/observations/212743717	https://inaturalist-open-data.s3.amazonaws.com/photos/375711431/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	254	\N	iNaturalist	f
33.5017967	126.452567	2023-09-10	Ligia exotica	https://www.inaturalist.org/observations/212736490	https://inaturalist-open-data.s3.amazonaws.com/photos/375946037/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	255	\N	iNaturalist	f
30.7206450	122.502792	2024-04-29	Armadillidium vulgare	https://www.inaturalist.org/observations/211440872	https://static.inaturalist.org/photos/373826729/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	256	\N	iNaturalist	f
30.7138981	122.514797	2024-04-29	Ligia	https://www.inaturalist.org/observations/211286531	https://static.inaturalist.org/photos/373578247/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	257	\N	iNaturalist	f
27.2336382	-92.398513	2002-10-12	Bathynomus giganteus	https://www.inaturalist.org/observations/103104210	https://inaturalist-open-data.s3.amazonaws.com/photos/172489848/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2761	 	iNaturalist	f
39.9447057	-75.131480	2015-07-17	Bathynomus giganteus	https://www.inaturalist.org/observations/48609782	https://static.inaturalist.org/photos/77138275/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2762	 	iNaturalist	f
24.8296748	-76.328217	2017-01-25	Bathynomus giganteus	https://www.inaturalist.org/observations/35713277	https://inaturalist-open-data.s3.amazonaws.com/photos/56348171/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2305	 Common name: giant isopod\nLocation: North Eleuthera, Bahamas - deep sea\nHabitat: Deep Sea Benthic\nPhysical description: Large in size  ranging from 8 and 15 cm. \nFun fact: The large size of this isopod is a result of an effect called "deep-sea gigantism"	iNaturalist	f
17.9774326	-66.895736	2020-04-11	Crinocheta	https://www.inaturalist.org/observations/41918312	https://www.inaturalist.org/observations/41918312	iNaturalist	1	\N	\N	\N	\N	\N	2280	\N	iNaturalist	f
25.3495617	-80.259492	2018-02-03	Ligia exotica	https://www.inaturalist.org/observations/9720857	https://www.inaturalist.org/observations/9720857	iNaturalist	1	\N	\N	\N	\N	\N	2417	\N	iNaturalist	f
19.9289300	-75.130347	2018-01-29	Anilocra	https://www.inaturalist.org/observations/9658480	https://www.inaturalist.org/observations/9658480	iNaturalist	1	\N	\N	\N	\N	\N	2419	\N	iNaturalist	f
24.8872223	-80.676666	2018-01-28	Ligia exotica	https://www.inaturalist.org/observations/9647445	https://www.inaturalist.org/observations/9647445	iNaturalist	1	\N	\N	\N	\N	\N	2420	\N	iNaturalist	f
28.4080622	-80.588917	2018-01-27	Ligia exotica	https://www.inaturalist.org/observations/9638067	https://www.inaturalist.org/observations/9638067	iNaturalist	1	\N	\N	\N	\N	\N	2421	\N	iNaturalist	f
25.1386108	-80.927498	2018-01-15	Ligia exotica	https://www.inaturalist.org/observations/9488116	https://www.inaturalist.org/observations/9488116	iNaturalist	1	\N	\N	\N	\N	\N	2422	\N	iNaturalist	f
27.7499867	-82.631745	2018-01-03	Porcellionides	https://www.inaturalist.org/observations/9483769	https://www.inaturalist.org/observations/9483769	iNaturalist	1	\N	\N	\N	\N	\N	2423	\N	iNaturalist	f
19.9052231	-75.144523	2018-01-05	Armadillidae	https://www.inaturalist.org/observations/9373931	https://www.inaturalist.org/observations/9373931	iNaturalist	1	\N	\N	\N	\N	\N	2424	\N	iNaturalist	f
28.1188167	-80.574342	2017-12-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/9279737	https://www.inaturalist.org/observations/9279737	iNaturalist	1	\N	\N	\N	\N	\N	2425	\N	iNaturalist	f
28.4049967	-80.647805	2017-11-25	Cymothoa oestrum	https://www.inaturalist.org/observations/8934118	https://www.inaturalist.org/observations/8934118	iNaturalist	1	\N	\N	\N	\N	\N	2426	\N	iNaturalist	f
27.7271955	-82.688629	2017-11-19	Cymothoidae	https://www.inaturalist.org/observations/8931546	https://www.inaturalist.org/observations/8931546	iNaturalist	1	\N	\N	\N	\N	\N	2427	\N	iNaturalist	f
28.3814950	-80.608947	2017-07-21	Ligia	https://www.inaturalist.org/observations/7147467	https://www.inaturalist.org/observations/7147467	iNaturalist	1	\N	\N	\N	\N	\N	2428	\N	iNaturalist	f
25.1769000	-80.490013	2017-06-29	Paracerceis	https://www.inaturalist.org/observations/6852879	https://www.inaturalist.org/observations/6852879	iNaturalist	1	\N	\N	\N	\N	\N	2429	\N	iNaturalist	f
27.4531754	-82.689012	2017-05-22	Ligia exotica	https://www.inaturalist.org/observations/6336591	https://www.inaturalist.org/observations/6336591	iNaturalist	1	\N	\N	\N	\N	\N	2430	\N	iNaturalist	f
19.0833300	115.250000	2023-01-28	Bathynomus paracelensis	https://doi.org/10.3897/BDJ.13.e144238	\N	Huang2025	1	South China Sea, Paracel Islands	300-550	bottom trawl	\N	\N	3736	Paratype, ovigerous, incomplete, NMMB-CD006299, COI: PP715921, 16S: PP719187	literature	f
19.0833300	115.250000	2023-01-28	Bathynomus paracelensis	https://doi.org/10.3897/BDJ.13.e144238	\N	Huang2025	1	South China Sea, Paracel Islands	300-550	bottom trawl	\N	\N	3737	Holotype, complete, NMMB-CD006300, COI: PP715922, 16S: PP719190	literature	f
19.0833300	115.250000	2023-01-28	Bathynomus paracelensis	https://doi.org/10.3897/BDJ.13.e144238	\N	Huang2025	1	South China Sea, Paracel Islands	300-550	bottom trawl	\N	\N	3738	Paratype, incomplete (head cracked), NMMB-CD006301, COI: PP715923, 16S: PP719189	literature	f
19.0833300	115.250000	2023-01-28	Bathynomus paracelensis	https://doi.org/10.3897/BDJ.13.e144238	\N	Huang2025	1	South China Sea, Paracel Islands	300-550	bottom trawl	\N	\N	3739	Paratype, complete, ovigerous, NMMB-CD006302, COI: PP715924, 16S: PP719188	literature	f
34.8174262	128.748712	2024-04-12	Oniscidea	https://www.inaturalist.org/observations/209078236	https://static.inaturalist.org/photos/369867703/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	258	\N	iNaturalist	f
33.4627639	126.938556	2024-04-24	Ligia exotica	https://www.inaturalist.org/observations/209052420	https://inaturalist-open-data.s3.amazonaws.com/photos/369933996/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	259	\N	iNaturalist	f
33.4626217	126.938697	2024-04-24	Ligia exotica	https://www.inaturalist.org/observations/209026238	https://static.inaturalist.org/photos/369883810/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	260	\N	iNaturalist	f
33.5157250	126.511439	2024-04-23	Ligia exotica	https://www.inaturalist.org/observations/208848724	https://inaturalist-open-data.s3.amazonaws.com/photos/369555051/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	261	\N	iNaturalist	f
35.1892028	129.223292	2024-04-22	Armadillidium vulgare	https://www.inaturalist.org/observations/208809110	https://inaturalist-open-data.s3.amazonaws.com/photos/369476656/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	262	\N	iNaturalist	f
27.4531383	-82.688954	2017-05-15	Ligia exotica	https://www.inaturalist.org/observations/6235591	https://www.inaturalist.org/observations/6235591	iNaturalist	1	\N	\N	\N	\N	\N	2431	\N	iNaturalist	f
28.3910465	-80.741554	2016-09-28	Ligia exotica	http://www.inaturalist.org/observations/4227675	http://www.inaturalist.org/observations/4227675	iNaturalist	1	\N	\N	\N	\N	\N	2432	\N	iNaturalist	f
27.5393467	-80.361870	2016-04-29	Holoverticata	http://www.inaturalist.org/observations/3056387	http://www.inaturalist.org/observations/3056387	iNaturalist	1	\N	\N	\N	\N	\N	2433	\N	iNaturalist	f
28.3032003	-80.706321	2024-05-06	Armadillidium vulgare	https://www.inaturalist.org/observations/214001546	https://www.inaturalist.org/observations/214001546	iNaturalist	1	\N	\N	\N	\N	\N	1465	\N	iNaturalist	f
27.7100750	-82.689713	2024-05-05	Paracerceis	https://www.inaturalist.org/observations/213869654	https://www.inaturalist.org/observations/213869654	iNaturalist	1	\N	\N	\N	\N	\N	1466	\N	iNaturalist	f
25.7531200	-79.277625	2024-05-04	Ligia exotica	https://www.inaturalist.org/observations/213854056	https://www.inaturalist.org/observations/213854056	iNaturalist	1	\N	\N	\N	\N	\N	1467	\N	iNaturalist	f
26.5478967	-81.981155	2024-01-10	Porcellionides pruinosus	https://www.inaturalist.org/observations/213532740	https://www.inaturalist.org/observations/213532740	iNaturalist	1	\N	\N	\N	\N	\N	1468	\N	iNaturalist	f
25.7639826	-80.129955	2024-04-29	Ligia exotica	https://www.inaturalist.org/observations/213394063	https://www.inaturalist.org/observations/213394063	iNaturalist	1	\N	\N	\N	\N	\N	1469	\N	iNaturalist	f
25.1738133	-80.900070	2020-05-16	Ligia	https://www.inaturalist.org/observations/46447793	https://www.inaturalist.org/observations/46447793	iNaturalist	1	\N	\N	\N	\N	\N	2267	\N	iNaturalist	f
18.5000000	-63.395000	1969-07-23	Bathynomus giganteus	\N	\N	\N	1	\N	684	\N	\N	\N	3224	PRESERVED_SPECIMEN	GBIF	f
15.4917000	-61.191700	1969-07-15	Bathynomus giganteus	\N	\N	\N	1	\N	503	\N	\N	\N	3225	PRESERVED_SPECIMEN	GBIF	f
18.6459550	-74.109626	2018-12-21	Ligia	https://www.inaturalist.org/observations/19456151	https://www.inaturalist.org/observations/19456151	iNaturalist	1	\N	\N	\N	\N	\N	2365	\N	iNaturalist	f
26.9227695	-82.339294	2018-12-30	Ligia exotica	https://www.inaturalist.org/observations/19336268	https://www.inaturalist.org/observations/19336268	iNaturalist	1	\N	\N	\N	\N	\N	2366	\N	iNaturalist	f
25.1391484	-80.937630	2018-12-30	Ligia exotica	https://www.inaturalist.org/observations/19323584	https://www.inaturalist.org/observations/19323584	iNaturalist	1	\N	\N	\N	\N	\N	2368	\N	iNaturalist	f
19.3963800	-81.385712	2018-12-26	Littorophiloscia	https://www.inaturalist.org/observations/19238435	https://www.inaturalist.org/observations/19238435	iNaturalist	1	\N	\N	\N	\N	\N	2369	\N	iNaturalist	f
19.3874450	-81.379167	2018-12-25	Oniscidea	https://www.inaturalist.org/observations/19232806	https://www.inaturalist.org/observations/19232806	iNaturalist	1	\N	\N	\N	\N	\N	2370	\N	iNaturalist	f
19.3875117	-81.379242	2018-12-25	Porcellionides	https://www.inaturalist.org/observations/19232546	https://www.inaturalist.org/observations/19232546	iNaturalist	1	\N	\N	\N	\N	\N	2371	\N	iNaturalist	f
19.3865167	-81.377625	2018-12-25	Porcellionides	https://www.inaturalist.org/observations/19232331	https://www.inaturalist.org/observations/19232331	iNaturalist	1	\N	\N	\N	\N	\N	2372	\N	iNaturalist	f
25.1193232	-80.574158	2018-12-04	Ligia exotica	https://www.inaturalist.org/observations/19224887	https://www.inaturalist.org/observations/19224887	iNaturalist	1	\N	\N	\N	\N	\N	2374	\N	iNaturalist	f
19.3944250	-81.381920	2018-12-24	Porcellionides	https://www.inaturalist.org/observations/19224851	https://www.inaturalist.org/observations/19224851	iNaturalist	1	\N	\N	\N	\N	\N	2375	\N	iNaturalist	f
19.3948950	-81.379822	2018-12-24	Porcellionides	https://www.inaturalist.org/observations/19222207	https://www.inaturalist.org/observations/19222207	iNaturalist	1	\N	\N	\N	\N	\N	2376	\N	iNaturalist	f
19.3950867	-81.384170	2018-12-24	Littorophiloscia culebrae	https://www.inaturalist.org/observations/19222062	https://www.inaturalist.org/observations/19222062	iNaturalist	1	\N	\N	\N	\N	\N	2377	\N	iNaturalist	f
13.7820000	109.219000	2022-03-27	Bathynomus vaderi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	Offshore Quy Nhơn City, Bình Định Province, 50 nautical miles from shore	NA	NA	\N	\N	3780	male, holotype, ZRC 2022.0621; coordinates approximate, no depth/gear given	literature	f
13.7820000	109.219000	2022-03-27	Bathynomus vaderi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	Offshore Quy Nhơn City, Bình Định Province, 50 nautical miles from shore	NA	NA	\N	\N	3781	male, paratype, ZRC 2024.0176; coordinates approximate, no depth/gear given	literature	f
13.7820000	109.219000	2022-03-27	Bathynomus vaderi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	Offshore Quy Nhơn City, Bình Định Province, 50 nautical miles from shore	NA	NA	\N	\N	3782	male, paratype, ZVNU 110001; coordinates approximate, no depth/gear given	literature	f
13.7820000	109.219000	2022-03-27	Bathynomus vaderi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	Offshore Quy Nhơn City, Bình Định Province, 50 nautical miles from shore	NA	NA	\N	\N	3783	male, paratype, ZVNU 110002; coordinates approximate, no depth/gear given	literature	f
13.7820000	109.219000	2024-09-01	Bathynomus vaderi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	Off Quảng Ngãi, Bình Định, Khánh Hòa, and/or Phú Yên Provinces, Đà Nẵng City, Vietnam	NA	trawl	\N	\N	3784	male, paratype, ZRC 2024.0180, restaurant purchase; coordinates approximate	literature	f
13.7820000	109.219000	2024-09-01	Bathynomus vaderi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	Off Quảng Ngãi, Bình Định, Khánh Hòa, and/or Phú Yên Provinces, Đà Nẵng City, Vietnam	NA	trawl	\N	\N	3785	male, paratype, ZRC 2024.0180, restaurant purchase; coordinates approximate	literature	f
13.7820000	109.219000	2024-04-01	Bathynomus jamesi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	central Vietnam, seafood market in Hanoi	NA	trawl	\N	\N	3786	male, 300 mm, ZRC 2024.0088; trawlers operating off Quảng Ngãi, Bình Định, Khánh Hòa, and/or Phú Yên	literature	f
13.7820000	109.219000	2024-04-01	Bathynomus jamesi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	central Vietnam, seafood market in Hanoi	NA	trawl	\N	\N	3787	female, 280 mm, ZRC 2024.0088; trawlers operating off Quảng Ngãi, Bình Định, Khánh Hòa, and/or Phú Yên	literature	f
13.8500000	120.500000	1976-03-25	Bathynomus jamesi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	off Manila, Luzon Island, MUSORSTOM 2 station CP75	300-330	NA	\N	\N	3788	male, 320 mm, MNHN IS.2290	literature	f
21.0610000	116.109000	2019-06-17	Bathynomus jamesi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	North Vereker Bank to Pratas Island, South China Sea	NA	bottom trawl	\N	\N	3789	female, 303 mm, TMCD 3326; Jin Ruiyi 37	literature	f
19.0840000	115.250000	2020-05-12	Bathynomus jamesi	https://doi.org/10.3897/zookeys.1223.139335	\N	Ng2025	1	300 km SW of Pratas Island, South China Sea	NA	bottom trawl	\N	\N	3790	female, 260 mm, TMCD 3331; Jing Yang	literature	f
19.3553780	-81.282158	2024-01-01	Stenopus hispidus		\N	GBIF	1	\N	\N	\N	\N	\N	1775	\N	GBIF	f
35.0244791	139.765328	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465241	https://inaturalist-open-data.s3.amazonaws.com/photos/368843535/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	263	\N	iNaturalist	f
25.2472388	-80.316436	2023-10-09	Ligia exotica	https://www.inaturalist.org/observations/187047654	https://www.inaturalist.org/observations/187047654	iNaturalist	1	\N	\N	\N	\N	\N	1664	\N	iNaturalist	f
35.0150428	139.613629	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465239	https://inaturalist-open-data.s3.amazonaws.com/photos/368840254/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	264	\N	iNaturalist	f
19.3949500	-81.383942	2018-12-24	Littorophiloscia	https://www.inaturalist.org/observations/19195303	https://www.inaturalist.org/observations/19195303	iNaturalist	1	\N	\N	\N	\N	\N	2378	\N	iNaturalist	f
19.3950833	-81.384208	2018-12-24	Littorophiloscia	https://www.inaturalist.org/observations/19195294	https://www.inaturalist.org/observations/19195294	iNaturalist	1	\N	\N	\N	\N	\N	2379	\N	iNaturalist	f
19.3411800	-81.381333	2018-12-23	Trichorhina	https://www.inaturalist.org/observations/19188130	https://www.inaturalist.org/observations/19188130	iNaturalist	1	\N	\N	\N	\N	\N	2380	\N	iNaturalist	f
19.3412133	-81.381338	2018-12-23	Ctenorillo	https://www.inaturalist.org/observations/19188118	https://www.inaturalist.org/observations/19188118	iNaturalist	1	\N	\N	\N	\N	\N	2381	\N	iNaturalist	f
25.7380203	-80.169407	2018-11-11	Paracerceis	https://www.inaturalist.org/observations/18346889	https://www.inaturalist.org/observations/18346889	iNaturalist	1	\N	\N	\N	\N	\N	2391	\N	iNaturalist	f
25.4005130	-80.234619	2018-11-10	Ligia exotica	https://www.inaturalist.org/observations/18329154	https://www.inaturalist.org/observations/18329154	iNaturalist	1	\N	\N	\N	\N	\N	2392	\N	iNaturalist	f
26.6121250	-80.038672	2018-10-14	Ligia exotica	https://www.inaturalist.org/observations/17894647	https://www.inaturalist.org/observations/17894647	iNaturalist	1	\N	\N	\N	\N	\N	2393	\N	iNaturalist	f
26.3672117	-80.070358	2018-09-09	Venezillo parvus	https://www.inaturalist.org/observations/16611047	https://www.inaturalist.org/observations/16611047	iNaturalist	1	\N	\N	\N	\N	\N	2394	\N	iNaturalist	f
28.3186590	-80.685437	2018-09-11	Armadillidium vulgare	https://www.inaturalist.org/observations/16414780	https://www.inaturalist.org/observations/16414780	iNaturalist	1	\N	\N	\N	\N	\N	2395	\N	iNaturalist	f
25.7705995	-80.139481	2018-09-10	Ligia exotica	https://www.inaturalist.org/observations/16408685	https://www.inaturalist.org/observations/16408685	iNaturalist	1	\N	\N	\N	\N	\N	2396	\N	iNaturalist	f
27.8607638	-80.448874	2018-09-03	Ligia exotica	https://www.inaturalist.org/observations/16166993	https://www.inaturalist.org/observations/16166993	iNaturalist	1	\N	\N	\N	\N	\N	2397	\N	iNaturalist	f
25.1904792	-80.874114	2024-03-25	Ligia exotica	https://www.inaturalist.org/observations/206820452	https://www.inaturalist.org/observations/206820452	iNaturalist	1	\N	\N	\N	\N	\N	1489	\N	iNaturalist	f
25.1417914	-80.925349	2024-03-28	Ligia exotica	https://www.inaturalist.org/observations/206189632	https://www.inaturalist.org/observations/206189632	iNaturalist	1	\N	\N	\N	\N	\N	1490	\N	iNaturalist	f
34.6450931	137.053683	2024-09-12	Ligia	https://www.inaturalist.org/observations/241270996	https://inaturalist-open-data.s3.amazonaws.com/photos/429979237/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	39	\N	iNaturalist	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3659		expedition	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3660		expedition	f
22.4667000	120.433300	1990-08-01	Bathynomus doederleini	https://brill.com/view/journals/cr/61/2/article-p141_3.xml	\N	Tso&Mok1991	172	Tungkang, Taiwan	350	Traps	\N	Fish	3655	\N	\N	f
22.8000000	121.183300	1990-09-01	Bathynomus doederleini	https://brill.com/view/journals/cr/61/2/article-p141_3.xml	\N	Tso&Mok1991	173	Tungkang, Taiwan	200	Traps	\N	Fish	3656	\N	\N	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3661		expedition	f
23.3666700	-81.083330	1938-03-16	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:80828	\N	\N	1	\N	1037.845	\N	\N	\N	2725	PRESERVED_SPECIMEN	GBIF	f
24.6300000	-82.920000	1931-07-07	Bathynomus giganteus	\N	\N	\N	1	\N	518	\N	\N	\N	2730	PRESERVED_SPECIMEN	GBIF	f
16.7636100	-87.954170	1925-04-20	Bathynomus giganteus	http://collections.peabody.yale.edu/search/Record/YPM-IZ-005915.CR	\N	Bathynomus giganteus (YPM IZ 005915.CR)	1	\N	669	\N	\N	\N	3296	PRESERVED_SPECIMEN	GBIF	f
28.8500000	-88.300000	1885-03-03	Bathynomus giganteus	\N	\N	\N	1	\N	1335	\N	\N	\N	3297	PRESERVED_SPECIMEN	GBIF	f
15.5138900	-61.548610	1879-01-24	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:30890	\N	\N	1	\N	1506.93	\N	\N	\N	3298	PRESERVED_SPECIMEN	GBIF	f
24.6000000	-84.083330	1878-02-15	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:CRU-6689	\N	\N	1	\N	1746.5	\N	\N	\N	2739	PRESERVED_SPECIMEN	GBIF	f
24.5495860	123.977928	2024-01-05	Biston robustum		\N	GBIF	1	\N	\N	\N	\N	\N	1012	\N	GBIF	f
20.6167000	115.717000	1908-08-08	Bathynomus doederleini	\N	\N	\N	1	\N	380	\N	\N	\N	2829	PRESERVED_SPECIMEN	GBIF	f
10.9625000	118.638000	1908-12-27	Bathynomus doederleini	\N	\N	\N	1	\N	686	\N	\N	\N	2830	PRESERVED_SPECIMEN	GBIF	f
24.3117450	123.959385	2024-01-04	Papilio polytes		\N	GBIF	1	\N	\N	\N	\N	\N	1004	\N	GBIF	f
25.3263580	-90.139833	\N	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3276	\N	GBIF	f
13.2167000	-82.216700	\N	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3293	\N	GBIF	f
16.0083000	-88.008300	\N	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3299	\N	GBIF	f
16.1975900	-61.539770	\N	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3301	\N	GBIF	f
27.3916670	-93.501667	\N	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3302	\N	GBIF	f
16.1976100	-61.539800	\N	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3303	\N	GBIF	f
13.3447100	124.239580	1995-09-24	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3410	\N	GBIF	f
-16.6301600	146.384660	1993-06-07	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3411	\N	GBIF	f
-17.8250000	148.658333	1986-05-08	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3413	\N	GBIF	f
-17.8666670	147.133333	1986-05-17	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3414	\N	GBIF	f
-16.9166670	151.566667	1985-10-06	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3415	\N	GBIF	f
-22.9200000	154.350000	1985-11-17	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3416	\N	GBIF	f
13.8800000	120.496666	1980-12-01	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3417	\N	GBIF	f
13.8100000	120.014999	1976-03-25	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3418	\N	GBIF	f
24.1333330	-80.666667	1963-06-22	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3419	\N	GBIF	f
28.4482000	-89.672020	2000-06-17	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3105	PRESERVED_SPECIMEN	GBIF	f
28.7502700	-85.747660	2000-06-11	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3115	PRESERVED_SPECIMEN	GBIF	f
28.5539100	-87.766870	2000-06-13	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3116	PRESERVED_SPECIMEN	GBIF	f
28.2802400	-87.327600	2000-06-14	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3117	PRESERVED_SPECIMEN	GBIF	f
27.8397900	-86.751400	2000-06-07	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3118	PRESERVED_SPECIMEN	GBIF	f
-19.9008330	-38.882778	2000-06-27	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3119	PRESERVED_SPECIMEN	GBIF	f
-19.8216670	-39.050833	2000-06-29	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3120	PRESERVED_SPECIMEN	GBIF	f
-14.7608330	-38.967778	2000-06-10	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3121	PRESERVED_SPECIMEN	GBIF	f
-13.6127780	-38.766944	2000-06-08	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3122	PRESERVED_SPECIMEN	GBIF	f
-14.7683330	-38.912500	2000-06-10	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3123	PRESERVED_SPECIMEN	GBIF	f
-13.4147220	-38.757222	2000-06-19	Bathynomus giganteus	\N	\N	\N	1	\N	750	\N	\N	\N	3124	PRESERVED_SPECIMEN	GBIF	f
25.7215820	-80.147720	2024-01-01	Panulirus argus		\N	GBIF	1	\N	\N	\N	\N	\N	1352	\N	GBIF	f
-14.4788890	-38.905000	2000-06-09	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3126	PRESERVED_SPECIMEN	GBIF	f
-14.8483330	-38.874722	2000-06-10	Bathynomus giganteus	\N	\N	\N	1	\N	740	\N	\N	\N	3127	PRESERVED_SPECIMEN	GBIF	f
24.5399510	123.924032	2024-01-13	Oxya chinensis		\N	GBIF	1	\N	\N	\N	\N	\N	498	\N	GBIF	f
28.2490000	-86.410900	2000-06-10	Bathynomus giganteus	\N	\N	\N	1	\N	785	\N	\N	\N	3128	PRESERVED_SPECIMEN	GBIF	f
-21.3955560	-40.241944	2000-07-04	Bathynomus giganteus	\N	\N	\N	1	\N	573	\N	\N	\N	3129	PRESERVED_SPECIMEN	GBIF	f
27.8866670	-86.001667	1987-04-21	Bathynomus giganteus	\N	\N	\N	1	\N	1725	\N	\N	\N	3160	PRESERVED_SPECIMEN	GBIF	f
12.3200000	-82.450000	1957-09-11	Bathynomus giganteus	\N	\N	\N	1	\N	594	\N	\N	\N	3288	PRESERVED_SPECIMEN	GBIF	f
24.5293940	123.858402	2024-01-12	Sinopodisma aurata		\N	GBIF	1	\N	\N	\N	\N	\N	383	\N	GBIF	f
24.5572620	123.896896	2024-01-05	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1006	\N	GBIF	f
17.9554290	-76.723558	2024-01-01	Trichomyrmex destructor		\N	GBIF	1	\N	\N	\N	\N	\N	2462	\N	GBIF	f
19.2851870	-69.228977	2024-01-01	Leucauge licina		\N	GBIF	1	\N	\N	\N	\N	\N	2459	\N	GBIF	f
27.8483120	-82.599525	2024-01-01	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2460	\N	GBIF	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3662		expedition	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3663		expedition	f
15.0833330	72.633333	\N	Bathynomus sp.		\N	GBIF	1	\N	\N	\N	\N	\N	3300	\N	GBIF	f
29.9538441	122.218475	2023-10-22	Bathynomus doederleini	https://www.inaturalist.org/observations/255186235	https://inaturalist-open-data.s3.amazonaws.com/photos/457261304/medium.jpg	Alex Pintsen JIN	1	\N	\N	\N	\N	\N	2814	NA NA	iNaturalist	f
28.3858552	121.644753	2022-01-24	Bathynomus doederleini	https://www.inaturalist.org/observations/199119395	https://inaturalist-open-data.s3.amazonaws.com/photos/351093477/medium.jpeg	李博恒	1	\N	\N	\N	\N	\N	2816	NA NA	iNaturalist	f
26.2814375	127.731813	2024-08-31	Ligia exotica	https://www.inaturalist.org/observations/241469967	https://inaturalist-open-data.s3.amazonaws.com/photos/430635833/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	37	\N	iNaturalist	f
31.1233300	-78.535000	1985-10-16	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	710	\N	\N	\N	3175	HUMAN_OBSERVATION	GBIF	f
13.6500000	-81.870000	1957-09-13	Bathynomus giganteus	\N	\N	\N	1	\N	503	\N	\N	\N	3290	PRESERVED_SPECIMEN	GBIF	f
26.1863230	127.675610	2024-01-13	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	890	\N	GBIF	f
21.6833330	-96.850000	1969-08-25	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6519	\N	\N	1	\N	1024	\N	\N	\N	3232	PRESERVED_SPECIMEN	GBIF	f
17.6833330	-62.841667	1968-05-18	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6501	\N	\N	1	\N	558	\N	\N	\N	3233	PRESERVED_SPECIMEN	GBIF	f
11.4133000	-67.168300	1968-07-25	Bathynomus giganteus	\N	\N	\N	1	\N	1825.5	\N	\N	\N	3236	PRESERVED_SPECIMEN	GBIF	f
7.9417000	-54.650000	1968-07-11	Bathynomus giganteus	\N	\N	\N	1	\N	1056	\N	\N	\N	3237	PRESERVED_SPECIMEN	GBIF	f
1.8500000	-46.830000	1957-11-17	Bathynomus giganteus	\N	\N	\N	1	\N	366	\N	\N	\N	3292	PRESERVED_SPECIMEN	GBIF	f
26.5200000	-79.770000	1956-03-29	Bathynomus giganteus	\N	\N	\N	1	\N	430	\N	\N	\N	2702	PRESERVED_SPECIMEN	GBIF	f
24.6650000	-82.856100	1956-06-15	Bathynomus giganteus	\N	\N	\N	1	\N	366	\N	\N	\N	2703	PRESERVED_SPECIMEN	GBIF	f
26.8925000	-96.288611	1989-06-13	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-8621	\N	\N	1	\N	482.5	\N	\N	\N	3157	PRESERVED_SPECIMEN	GBIF	f
24.4679010	123.891781	2024-01-03	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	992	\N	GBIF	f
26.1934530	127.683633	2024-01-14	Argynnis hyperbius		\N	GBIF	1	\N	\N	\N	\N	\N	970	\N	GBIF	f
24.5627710	124.286806	2024-01-01	Neptis hylas		\N	GBIF	1	\N	\N	\N	\N	\N	977	\N	GBIF	f
24.5627840	124.286686	2024-01-01	Cyrestis thyodamas		\N	GBIF	1	\N	\N	\N	\N	\N	978	\N	GBIF	f
25.1800690	-80.874186	2024-01-01	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	1818	\N	GBIF	f
24.1724050	-76.442978	2024-01-01	Latrodectus mactans		\N	GBIF	1	\N	\N	\N	\N	\N	2463	\N	GBIF	f
28.4366660	-86.768833	1987-04-23	Bathynomus giganteus	\N	\N	\N	1	\N	784	\N	\N	\N	3161	PRESERVED_SPECIMEN	GBIF	f
24.5758180	123.874975	2024-01-13	Pantala flavescens		\N	GBIF	1	\N	\N	\N	\N	\N	614	\N	GBIF	f
24.4921290	123.802951	2024-01-13	Marinemobius asahinai		\N	GBIF	1	\N	\N	\N	\N	\N	615	\N	GBIF	f
24.1719050	-76.444938	2024-01-01	Achelous sebae		\N	GBIF	1	\N	\N	\N	\N	\N	1861	\N	GBIF	f
24.5984450	123.899675	2024-01-03	Cantao ocellatus		\N	GBIF	1	\N	\N	\N	\N	\N	995	\N	GBIF	f
24.4230110	123.955245	2024-01-13	Atractomorpha sinensis		\N	GBIF	1	\N	\N	\N	\N	\N	654	\N	GBIF	f
24.5762880	123.827386	2024-01-03	Cantao ocellatus		\N	GBIF	1	\N	\N	\N	\N	\N	996	\N	GBIF	f
24.4428280	123.965179	2024-01-03	Danaus genutia		\N	GBIF	1	\N	\N	\N	\N	\N	997	\N	GBIF	f
24.5873480	123.885300	2024-01-03	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	998	\N	GBIF	f
24.5524190	124.290500	2024-01-02	Dysdercus decussatus		\N	GBIF	1	\N	\N	\N	\N	\N	979	\N	GBIF	f
24.5492340	124.293798	2024-01-02	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	980	\N	GBIF	f
24.2466790	123.927868	2024-01-02	Utetheisa inconstans		\N	GBIF	1	\N	\N	\N	\N	\N	981	\N	GBIF	f
24.2641020	123.839199	2024-01-02	Utetheisa inconstans		\N	GBIF	1	\N	\N	\N	\N	\N	982	\N	GBIF	f
26.4352190	-82.043757	2024-01-01	Menippe mercenaria		\N	GBIF	1	\N	\N	\N	\N	\N	2461	\N	GBIF	f
19.9245590	-75.145178	2024-01-01	Ectopsocus richardsi		\N	GBIF	1	\N	\N	\N	\N	\N	2467	\N	GBIF	f
24.2822000	-82.482200	1998-05-06	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2655	PRESERVED_SPECIMEN	GBIF	f
24.0000000	-82.000000	1987-08-04	Bathynomus giganteus	\N	\N	\N	1	\N	500	\N	\N	\N	2656	PRESERVED_SPECIMEN	GBIF	f
27.0991670	-82.460289	2024-01-03	Emerita talpoida		\N	GBIF	1	\N	\N	\N	\N	\N	2563	\N	GBIF	f
12.8095700	-71.582930	2016-01-08	Bathynomus giganteus	\N	\N	\N	1	\N	770	\N	\N	\N	2774	HUMAN_OBSERVATION	GBIF	f
12.8098300	-71.610540	2016-01-09	Bathynomus giganteus	\N	\N	\N	1	\N	750	\N	\N	\N	2775	HUMAN_OBSERVATION	GBIF	f
12.7556500	-71.611060	2016-01-10	Bathynomus giganteus	\N	\N	\N	1	\N	750	\N	\N	\N	2776	HUMAN_OBSERVATION	GBIF	f
12.7826100	-71.597000	2016-01-07	Bathynomus giganteus	\N	\N	\N	1	\N	750	\N	\N	\N	2777	HUMAN_OBSERVATION	GBIF	f
9.1377400	-76.818300	2016-09-09	Bathynomus giganteus	\N	\N	\N	1	\N	2300	\N	\N	\N	2778	HUMAN_OBSERVATION	GBIF	f
12.8112500	-71.686160	2016-11-28	Bathynomus giganteus	\N	\N	\N	1	\N	787.5	\N	\N	\N	2779	HUMAN_OBSERVATION	GBIF	f
12.8384700	-71.699710	2016-12-03	Bathynomus giganteus	\N	\N	\N	1	\N	854	\N	\N	\N	2780	HUMAN_OBSERVATION	GBIF	f
9.1109440	-77.147972	2015-04-23	Bathynomus giganteus	\N	\N	\N	1	\N	3097	\N	\N	\N	2781	HUMAN_OBSERVATION	GBIF	f
9.0498060	-77.007083	2015-04-24	Bathynomus giganteus	\N	\N	\N	1	\N	3097	\N	\N	\N	2782	HUMAN_OBSERVATION	GBIF	f
6.7310000	-52.493332	2014-08-03	Bathynomus giganteus	\N	\N	\N	1	\N	305	\N	\N	\N	2794	PRESERVED_SPECIMEN	GBIF	f
6.7735000	-52.493999	2014-08-03	Bathynomus giganteus	\N	\N	\N	1	\N	396.5	\N	\N	\N	2795	PRESERVED_SPECIMEN	GBIF	f
7.2603340	-53.019001	2014-08-02	Bathynomus giganteus	\N	\N	\N	1	\N	502.5	\N	\N	\N	2796	PRESERVED_SPECIMEN	GBIF	f
6.9596670	-52.612835	2014-08-09	Bathynomus giganteus	\N	\N	\N	1	\N	537	\N	\N	\N	2797	PRESERVED_SPECIMEN	GBIF	f
9.1919600	-76.818800	2014-10-15	Bathynomus giganteus	\N	\N	\N	1	\N	1700	\N	\N	\N	2800	HUMAN_OBSERVATION	GBIF	f
29.3100000	-86.680000	2012-04-05	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229071	\N	\N	1	\N	\N	\N	\N	\N	2801	PRESERVED_SPECIMEN	GBIF	f
29.1400000	-87.010000	2012-04-04	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229083	\N	\N	1	\N	\N	\N	\N	\N	2803	PRESERVED_SPECIMEN	GBIF	f
29.4500000	-86.890000	2012-04-06	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229104	\N	\N	1	\N	\N	\N	\N	\N	2804	PRESERVED_SPECIMEN	GBIF	f
29.4900000	-87.110000	2012-04-06	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229108	\N	\N	1	\N	\N	\N	\N	\N	2805	PRESERVED_SPECIMEN	GBIF	f
29.1400000	-86.810000	2012-04-04	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229112	\N	\N	1	\N	\N	\N	\N	\N	2806	PRESERVED_SPECIMEN	GBIF	f
-21.6779110	-40.475950	2008-04-09	Bathynomus giganteus	\N	\N	\N	1	\N	989	\N	\N	\N	3076	PRESERVED_SPECIMEN	GBIF	f
24.9827000	-77.556400	2022-07-29	Bathynomus apothecarus	\N	\N	BTW expedition	1	\N	720	traps	\N	Eel	2894	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2895	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2896	\N	\N	f
35.9447577	126.525002	2024-09-08	Ligia exotica	https://www.inaturalist.org/observations/241234727	https://static.inaturalist.org/photos/429902587/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	40	\N	iNaturalist	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3664		expedition	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3665		expedition	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2938	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2939	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2940	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2941	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2942	\N	\N	f
23.7177000	-75.946270	2023-02-18	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	786	traps	8.60	Eel	2943	\N	\N	f
23.7177000	-75.946270	2023-02-18	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	786	traps	8.60	Amphipod	2944	\N	\N	f
23.7177000	-75.946270	2023-02-18	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	786	traps	8.60	Eel	2945	\N	\N	f
23.7118000	-75.882670	2023-02-19	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	785	traps	9.00	Square	2946	\N	\N	f
23.7118000	-75.882670	2023-02-19	Heterocarpus ensifer	\N	\N	BTW expedition	1	\N	785	traps	9.00	Eel	2947	\N	\N	f
24.1931600	-76.410540	2023-02-22	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	801	traps	\N	Square	2948	\N	\N	f
24.1931600	-76.410540	2023-02-22	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	801	traps	\N	Square	2949	\N	\N	f
24.1931600	-76.410540	2023-02-22	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	801	traps	\N	Square	2950	\N	\N	f
24.1931600	-76.410540	2023-02-22	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	801	traps	\N	Square	2951	\N	\N	f
24.1931600	-76.410540	2023-02-22	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	801	traps	\N	Square	2952	\N	\N	f
24.1931600	-76.410540	2023-02-22	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	801	traps	\N	Square	2953	\N	\N	f
24.1931600	-76.410540	2023-02-22	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	801	traps	\N	Square	2954	\N	\N	f
24.1931600	-76.410540	2023-02-22	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	801	traps	\N	Square	2955	\N	\N	f
24.1931600	-76.410540	2023-02-22	Bathynomus sp.	\N	\N	BTW expedition	1	\N	801	traps	\N	Square	2956	\N	\N	f
24.1931600	-76.410540	2023-02-22	 	\N	\N	BTW expedition	1	\N	801	traps	\N	Large amphipod	2957	\N	\N	f
24.1931600	-76.410540	2023-02-22	 	\N	\N	BTW expedition	1	\N	801	traps	\N	Small amphipod	2958	\N	\N	f
24.2289000	-76.425550	2023-02-23	Bathynomus maxeyorum	\N	\N	BTW expedition	1	\N	755	traps	\N	Eel	2960	\N	\N	f
24.2289000	-76.425550	2023-02-23	Bathynomus sp.	\N	\N	BTW expedition	1	\N	755	traps	\N	Large amphipod	2961	\N	\N	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3666		expedition	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3667		expedition	f
34.8615000	138.375317	2025-03-07	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	-	traps	\N	Large amphipod - Bonito	3668		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3669		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3670		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3671		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3672		expedition	f
36.5383333	141.103333	2005-11-01	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	481	OT	4.10	\N	1253	\N	\N	f
40.2483333	142.255000	2006-10-13	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	461	OT	2.80	\N	1254	\N	\N	f
38.3766667	142.105000	2006-11-03	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	514	OT	3.40	\N	1255	\N	\N	f
38.4966667	142.360000	2006-11-02	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	905	OT	2.80	\N	1256	\N	\N	f
37.5883333	141.553333	2006-10-29	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	150	OT	13.70	\N	1257	\N	\N	f
37.6416667	141.841667	2006-10-30	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	386	OT	3.80	\N	1258	\N	\N	f
37.6950000	141.983333	2006-10-31	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	483	OT	3.60	\N	1259	\N	\N	f
36.9683333	141.646667	2006-10-28	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	558	OT	4.20	\N	1260	\N	\N	f
36.8366667	141.571667	2006-10-28	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	648	OT	3.80	\N	1261	\N	\N	f
36.5300000	141.145000	2006-11-14	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	561	OT	4.10	\N	1262	\N	\N	f
40.2666667	142.266667	2007-10-12	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	510	OT	3.40	\N	1263	\N	\N	f
40.2816667	142.276667	2007-10-12	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	544	OT	3.40	\N	1264	\N	\N	f
39.8383333	142.298333	2007-10-14	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	409	OT	3.70	\N	1265	\N	\N	f
39.7050000	142.300000	2007-10-17	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	467	OT	3.70	\N	1266	\N	\N	f
39.5916667	142.310000	2007-10-16	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	552	OT	3.60	\N	1267	\N	\N	f
39.0700000	142.196667	2007-10-17	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	505	OT	3.60	\N	1268	\N	\N	f
39.0383333	142.248333	2007-10-05	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	640	OT	\N	\N	1269	\N	\N	f
38.3916667	142.081667	2007-10-27	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	475	OT	4.20	\N	1270	\N	\N	f
37.6383333	142.018333	2007-10-27	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	506	OT	4.00	\N	1271	\N	\N	f
36.9933333	141.290000	2007-11-02	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	151	OT	12.90	\N	1272	\N	\N	f
42.7451333	141.412506	2017-07-28	Ligidium	\N	\N	Harigai2020	4	\N	336	\N	\N	\N	1273	\N	\N	f
42.7361194	141.411150	2017-07-28	Ligidium	\N	\N	Harigai2020	4	\N	360	\N	\N	\N	1274	\N	\N	f
42.7444389	141.413992	2017-07-28	Ligidium	\N	\N	Harigai2020	3	\N	393	\N	\N	\N	1275	\N	\N	f
34.9166670	138.733333	2001-03-21	Bathynomus doederleini	\N	\N	\N	1	\N	450	\N	\N	\N	2826	PRESERVED_SPECIMEN	GBIF	f
35.1166670	139.383333	1973-08-04	Bathynomus doederleini	http://sesam.senckenberg.de/page/index.asp?objekt_id=1358995&sprache_kurz=en	\N	\N	1	\N	\N	\N	\N	\N	2827	PRESERVED_SPECIMEN	GBIF	f
13.8833000	120.446000	1908-07-18	Bathynomus doederleini	\N	\N	\N	1	\N	454	\N	\N	\N	2828	PRESERVED_SPECIMEN	GBIF	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2897	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2898	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2899	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2900	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2901	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2902	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2903	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2904	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2905	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2906	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2907	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2908	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Large Amphipod	2909	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Eel	2910	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Eel	2911	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Eel	2912	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Eel	2913	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Eel	2914	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Square	2915	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Square	2916	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Square	2917	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Square	2918	\N	\N	f
25.1425800	-77.280160	2022-11-14	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	886	traps	7.17	Square	2919	\N	\N	f
25.1594200	-77.231000	2022-11-16	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	990	traps	6.41	Eel	2921	\N	\N	f
25.1594200	-77.231000	2022-11-16	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	990	traps	6.41	Eel	2922	\N	\N	f
25.1594200	-77.231000	2022-11-16	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	990	traps	6.41	Eel	2923	\N	\N	f
25.1594200	-77.231000	2022-11-16	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	990	traps	6.41	Eel	2924	\N	\N	f
25.1594200	-77.231000	2022-11-16	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	990	traps	6.41	Eel	2925	\N	\N	f
25.1594200	-77.231000	2022-11-16	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	990	traps	6.41	Eel	2926	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Large Amphipod	2927	\N	\N	f
29.1900000	-87.400000	2012-04-05	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229527	\N	\N	1	\N	\N	\N	\N	\N	3047	PRESERVED_SPECIMEN	GBIF	f
11.5610000	-83.196900	2011-01-16	Bathynomus giganteus	\N	\N	\N	1	\N	436.5	\N	\N	\N	3049	PRESERVED_SPECIMEN	GBIF	f
10.1276000	-82.886500	2011-01-14	Bathynomus giganteus	\N	\N	\N	1	\N	1016.5	\N	\N	\N	3050	PRESERVED_SPECIMEN	GBIF	f
17.0887000	-87.772900	2011-01-29	Bathynomus giganteus	\N	\N	\N	1	\N	753.5	\N	\N	\N	3051	PRESERVED_SPECIMEN	GBIF	f
11.5318000	-83.141400	2011-01-16	Bathynomus giganteus	\N	\N	\N	1	\N	826	\N	\N	\N	3052	PRESERVED_SPECIMEN	GBIF	f
9.1254300	-76.601550	2008-06-06	Bathynomus giganteus	\N	\N	\N	1	\N	500	\N	\N	\N	3078	HUMAN_OBSERVATION	GBIF	f
24.2504200	-85.499940	2002-06-10	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3082	PRESERVED_SPECIMEN	GBIF	f
24.4477850	123.865388	2024-01-13	Oxya chinensis		\N	GBIF	1	\N	\N	\N	\N	\N	537	\N	GBIF	f
23.5004700	-92.000160	2002-06-06	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3083	PRESERVED_SPECIMEN	GBIF	f
25.0004100	-92.000130	2002-06-03	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3084	PRESERVED_SPECIMEN	GBIF	f
21.2083330	-96.812222	2002-07-09	Bathynomus giganteus	\N	\N	Escobar-Briones E. G. 2006. Base de datos de fauna batial, abisopelágica y abisal del Golfo de México. Instituto de Ciencias del Mar y Limnología. Universidad Nacional Autónoma de México. Bases de datos SNIB-CONABIO, proyecto BE013. México, D. F.	1	\N	305	\N	\N	\N	3085	PRESERVED_SPECIMEN	GBIF	f
21.2200000	-96.830000	2002-07-09	Bathynomus giganteus	\N	\N	\N	1	\N	600	\N	\N	\N	3086	PRESERVED_SPECIMEN	GBIF	f
24.7504200	-90.750100	2002-08-06	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3087	PRESERVED_SPECIMEN	GBIF	f
27.2336380	-92.398513	2002-10-12	Bathynomus giganteus	https://www.inaturalist.org/observations/103104210	\N	\N	1	\N	\N	\N	\N	\N	3088	HUMAN_OBSERVATION	GBIF	f
27.2028600	-91.405340	2000-05-06	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3089	PRESERVED_SPECIMEN	GBIF	f
26.5583700	-91.822680	2000-05-08	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3090	PRESERVED_SPECIMEN	GBIF	f
27.5774700	-93.551190	2000-05-13	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3091	PRESERVED_SPECIMEN	GBIF	f
27.1727100	-93.323470	2000-05-14	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3092	PRESERVED_SPECIMEN	GBIF	f
27.2543400	-95.747050	2000-05-22	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3093	PRESERVED_SPECIMEN	GBIF	f
27.1351500	-92.000200	2000-05-07	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3094	PRESERVED_SPECIMEN	GBIF	f
26.9383330	-84.851667	1982-07-08	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2658	PRESERVED_SPECIMEN	GBIF	f
23.9500000	-77.270000	1980-09-15	Bathynomus giganteus	\N	\N	\N	1	\N	1378	\N	\N	\N	2659	PRESERVED_SPECIMEN	GBIF	f
30.3820260	-88.889096	1976-01-06	Bathynomus giganteus	https://emu-prod.amnh.org/imulive/iz/iz.html#details=ecatalogue.	\N	\N	1	\N	610	\N	\N	\N	3184	PRESERVED_SPECIMEN	GBIF	f
17.6800000	-62.847200	1976-05-18	Bathynomus giganteus	\N	\N	\N	1	\N	567	\N	\N	\N	3185	PRESERVED_SPECIMEN	GBIF	f
17.7700000	-62.980000	1976-05-18	Bathynomus giganteus	\N	\N	\N	1	\N	658.5	\N	\N	\N	3186	PRESERVED_SPECIMEN	GBIF	f
23.6666670	-76.700000	1975-04-08	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7911874	\N	\N	1	\N	\N	\N	\N	\N	2660	PRESERVED_SPECIMEN	GBIF	f
11.6700000	-62.550000	1964-09-24	Bathynomus giganteus	\N	\N	\N	1	\N	603.5	\N	\N	\N	3263	PRESERVED_SPECIMEN	GBIF	f
24.5833330	-77.533333	1975-04-19	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7912031	\N	\N	1	\N	\N	\N	\N	\N	2661	PRESERVED_SPECIMEN	GBIF	f
24.2750000	-77.340000	1975-04-07	Bathynomus giganteus	\N	\N	\N	1	\N	1464	\N	\N	\N	2662	PRESERVED_SPECIMEN	GBIF	f
24.6483000	-76.437500	1975-04-15	Bathynomus giganteus	\N	\N	\N	1	\N	1628	\N	\N	\N	2663	PRESERVED_SPECIMEN	GBIF	f
19.0800000	115.250000	2023-02-18	Bathynomus doederleini	https://www.ebi.ac.uk/ena/browser/view/OQ910110	\N	\N	1	\N	\N	\N	\N	\N	2820	MATERIAL_SAMPLE	GBIF	f
34.7864905	137.135231	2024-09-12	Alloniscus	https://www.inaturalist.org/observations/241271224	https://inaturalist-open-data.s3.amazonaws.com/photos/429979447/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	38	\N	iNaturalist	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2929	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus maxeyorum	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2930	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2931	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2932	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2933	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2934	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2935	\N	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2936	\N	\N	f
28.3858550	121.644753	2022-01-24	Bathynomus doederleini	https://www.inaturalist.org/observations/199119395	\N	\N	1	\N	\N	\N	\N	\N	2823	HUMAN_OBSERVATION	GBIF	f
22.9200000	-79.450000	1955-07-15	Bathynomus giganteus	\N	\N	\N	1	\N	439	\N	\N	\N	2704	PRESERVED_SPECIMEN	GBIF	f
16.3079171	-86.541984	2022-05-30	Bathynomus giganteus	https://www.inaturalist.org/observations/238073296	https://inaturalist-open-data.s3.amazonaws.com/photos/423794448/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2741	isopod, giant isopod, roatan, idabel, submarine Approaching depth 2000 in Stanley Submarine Idabel Roatan Institute of Deepsea Exploration 	iNaturalist	f
13.6566670	120.485333	2011-05-31	Bathynomus doederleini	\N	\N	\N	1	\N	595.5	\N	\N	\N	2824	PRESERVED_SPECIMEN	GBIF	f
34.9050000	138.743333	2001-03-21	Bathynomus doederleini	\N	\N	\N	1	\N	300	\N	\N	\N	2825	PRESERVED_SPECIMEN	GBIF	f
24.1666670	-80.966667	1975-07-27	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7915523	\N	\N	1	\N	\N	\N	\N	\N	2664	PRESERVED_SPECIMEN	GBIF	f
24.1718970	-76.444947	2024-01-01	Calcinus tibicen		\N	GBIF	1	\N	\N	\N	\N	\N	1904	\N	GBIF	f
24.1333330	-81.216667	1975-07-27	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7915552	\N	\N	1	\N	\N	\N	\N	\N	2665	PRESERVED_SPECIMEN	GBIF	f
24.1711300	-76.444633	2024-01-01	Pachygrapsus transversus		\N	GBIF	1	\N	\N	\N	\N	\N	1947	\N	GBIF	f
33.4892160	126.498302	\N	Ligia	https://www.inaturalist.org/observations/86959721	https://static.inaturalist.org/photos/143347625/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	742	\N	iNaturalist	f
10.2833300	-75.998333	1966-07-14	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	660	\N	\N	\N	3253	HUMAN_OBSERVATION	GBIF	f
24.6916500	-81.087019	2024-06-03	Ligia exotica	https://www.inaturalist.org/observations/228809625	https://www.inaturalist.org/observations/228809625	iNaturalist	1	\N	\N	\N	\N	\N	1429	\N	iNaturalist	f
16.3079170	-86.541984	2022-05-30	Bathynomus giganteus	https://www.inaturalist.org/observations/238073296	\N	\N	1	\N	\N	\N	\N	\N	2768	HUMAN_OBSERVATION	GBIF	f
11.2833300	-76.998333	1966-07-14	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	660	\N	\N	\N	3254	HUMAN_OBSERVATION	GBIF	f
9.1683300	-80.926667	1966-07-21	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	869	\N	\N	\N	3255	HUMAN_OBSERVATION	GBIF	f
10.2666670	-75.983333	1966-07-14	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7915242	\N	\N	1	\N	\N	\N	\N	\N	3256	PRESERVED_SPECIMEN	GBIF	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2937	\N	\N	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3673		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3674		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3675		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3676		expedition	f
9.8700000	-76.176700	1966-07-14	Bathynomus giganteus	\N	\N	\N	1	\N	403.5	\N	\N	\N	3258	PRESERVED_SPECIMEN	GBIF	f
-18.7816700	117.115000	1984-01-31	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3335	\N	GBIF	f
-17.9833000	118.183300	1984-02-24	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3346	\N	GBIF	f
-18.1000000	118.100000	1983-02-28	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3347	\N	GBIF	f
-18.5533300	117.515000	1983-04-25	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3348	\N	GBIF	f
-18.6933300	117.310000	1983-04-25	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3349	\N	GBIF	f
-17.8500000	118.416700	1983-08-18	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3350	\N	GBIF	f
-18.1333000	118.216700	1983-08-17	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3351	\N	GBIF	f
-16.8166000	119.983300	1983-08-19	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3352	\N	GBIF	f
17.9352161	-67.190560	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105684234	https://www.inaturalist.org/observations/105684234	iNaturalist	1	\N	\N	\N	\N	\N	2078	\N	iNaturalist	f
7.2333300	-52.916667	1963-03-21	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	728	\N	\N	\N	3264	HUMAN_OBSERVATION	GBIF	f
7.2300000	-52.920000	1963-03-21	Bathynomus giganteus	\N	\N	\N	1	\N	732	\N	\N	\N	3266	PRESERVED_SPECIMEN	GBIF	f
24.5000000	-80.850000	1963-06-21	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7914255	\N	\N	1	\N	\N	\N	\N	\N	2691	PRESERVED_SPECIMEN	GBIF	f
27.0720000	-85.129000	1962-12-02	Bathynomus giganteus	https://emu-prod.amnh.org/imulive/iz/iz.html#details=ecatalogue.	\N	\N	1	\N	480	\N	\N	\N	3275	PRESERVED_SPECIMEN	GBIF	f
11.5000000	-62.480000	1960-04-18	Bathynomus giganteus	\N	\N	\N	1	\N	329	\N	\N	\N	3277	PRESERVED_SPECIMEN	GBIF	f
11.6000000	-62.700000	1960-04-19	Bathynomus giganteus	\N	\N	\N	1	\N	430	\N	\N	\N	3278	PRESERVED_SPECIMEN	GBIF	f
27.7097750	-82.688295	2024-02-16	Isopoda	https://www.inaturalist.org/observations/199497432	https://www.inaturalist.org/observations/199497432	iNaturalist	1	\N	\N	\N	\N	\N	1556	\N	iNaturalist	f
26.3020640	-80.077808	2024-01-01	Urbanus proteus		\N	GBIF	1	\N	\N	\N	\N	\N	2466	\N	GBIF	f
28.3833300	-88.350000	1960-07-15	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	1820	\N	\N	\N	3279	HUMAN_OBSERVATION	GBIF	f
26.4167000	-79.020000	1960-11-09	Bathynomus giganteus	\N	\N	\N	1	\N	549	\N	\N	\N	2699	PRESERVED_SPECIMEN	GBIF	f
29.0500000	-88.330000	1959-06-03	Bathynomus giganteus	\N	\N	\N	1	\N	732	\N	\N	\N	3280	PRESERVED_SPECIMEN	GBIF	f
24.4700000	-83.420000	1954-04-14	Bathynomus giganteus	\N	\N	\N	1	\N	366	\N	\N	\N	2710	PRESERVED_SPECIMEN	GBIF	f
27.6367000	-94.990000	1952-04-16	Bathynomus giganteus	\N	\N	\N	1	\N	686	\N	\N	\N	3294	PRESERVED_SPECIMEN	GBIF	f
29.1800000	-86.875000	1951-02-24	Bathynomus giganteus	\N	\N	\N	1	\N	558	\N	\N	\N	3295	PRESERVED_SPECIMEN	GBIF	f
33.5156639	126.957914	2024-06-19	Ligia exotica	https://www.inaturalist.org/observations/223697387	https://static.inaturalist.org/photos/396398336/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	189	\N	iNaturalist	f
32.5283667	130.427872	2024-06-10	Ligiidae	https://www.inaturalist.org/observations/221922708	https://static.inaturalist.org/photos/393051768/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	208	\N	iNaturalist	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3677		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3678		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3679		expedition	f
26.2822217	127.731388	2024-09-06	Ligia exotica	https://www.inaturalist.org/observations/241124045	https://static.inaturalist.org/photos/429695247/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	41	\N	iNaturalist	f
26.2365681	127.310697	2024-09-11	Ligia	https://www.inaturalist.org/observations/241094259	https://inaturalist-open-data.s3.amazonaws.com/photos/429965982/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	42	\N	iNaturalist	f
26.6799217	127.881988	2024-09-09	Ligia exotica	https://www.inaturalist.org/observations/240710839	https://inaturalist-open-data.s3.amazonaws.com/photos/428893079/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	43	\N	iNaturalist	f
26.7136000	128.014328	2024-09-06	Ligia exotica	https://www.inaturalist.org/observations/240567168	https://inaturalist-open-data.s3.amazonaws.com/photos/428615394/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	44	\N	iNaturalist	f
43.0875807	131.879161	2024-09-08	Ligia cinerascens	https://www.inaturalist.org/observations/240512710	https://inaturalist-open-data.s3.amazonaws.com/photos/428511746/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	45	\N	iNaturalist	f
26.2237367	127.295495	2024-09-08	Ligia	https://www.inaturalist.org/observations/240511599	https://inaturalist-open-data.s3.amazonaws.com/photos/428509351/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	46	\N	iNaturalist	f
26.7097944	127.880000	2024-09-08	Ligia	https://www.inaturalist.org/observations/240508653	https://inaturalist-open-data.s3.amazonaws.com/photos/428504026/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	47	\N	iNaturalist	f
27.7671000	-91.110100	2006-08-10	Bathynomus giganteus	\N	\N	\N	1	\N	540	\N	\N	\N	3079	PRESERVED_SPECIMEN	GBIF	f
26.6951561	127.876717	2024-09-06	Ligia exotica	https://www.inaturalist.org/observations/240235984	https://static.inaturalist.org/photos/427977208/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	48	\N	iNaturalist	f
39.6474773	141.979413	2024-09-04	Ligia cinerascens	https://www.inaturalist.org/observations/239778456	https://inaturalist-open-data.s3.amazonaws.com/photos/427101132/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	49	\N	iNaturalist	f
34.1054425	139.596611	2024-06-11	Ligia exotica	https://www.inaturalist.org/observations/239400111	https://inaturalist-open-data.s3.amazonaws.com/photos/426367638/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	51	\N	iNaturalist	f
26.2733389	127.708472	2024-08-31	Ligia exotica	https://www.inaturalist.org/observations/239378829	https://inaturalist-open-data.s3.amazonaws.com/photos/426329887/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	52	\N	iNaturalist	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3680		expedition	f
42.7143556	141.403533	2017-07-28	Ligidium	\N	\N	Harigai2020	4	\N	467	\N	\N	\N	1276	\N	\N	f
42.6252194	141.456058	2017-07-28	Ligidium	\N	\N	Harigai2020	2	\N	92	\N	\N	\N	1277	\N	\N	f
42.6184333	141.415558	2017-07-28	Ligidium	\N	\N	Harigai2020	2	\N	66	\N	\N	\N	1278	\N	\N	f
27.7762100	-91.765810	2000-05-04	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3095	PRESERVED_SPECIMEN	GBIF	f
24.5465420	123.820421	2024-01-12	Biston robustum		\N	GBIF	1	\N	\N	\N	\N	\N	192	\N	GBIF	f
-27.2166670	153.500000	1982-10-02	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2867	\N	GBIF	f
-27.9166670	154.116667	1982-11-30	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2868	\N	GBIF	f
-27.6666670	153.935833	1982-11-22	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2869	\N	GBIF	f
-26.5166670	153.800000	1982-12-13	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2870	\N	GBIF	f
-28.0749900	153.966000	1978-06-01	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2871	\N	GBIF	f
22.5750000	-78.266670	1939-04-28	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:80356	\N	\N	1	\N	329.18	\N	\N	\N	2711	PRESERVED_SPECIMEN	GBIF	f
23.3500000	-79.950000	1939-05-03	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:73052	\N	\N	1	\N	713.23	\N	\N	\N	2712	PRESERVED_SPECIMEN	GBIF	f
23.3416700	-79.966670	1939-05-03	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:80351	\N	\N	1	\N	713.23	\N	\N	\N	2713	PRESERVED_SPECIMEN	GBIF	f
23.3666700	-79.883330	1939-05-03	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:80354	\N	\N	1	\N	594.36	\N	\N	\N	2714	PRESERVED_SPECIMEN	GBIF	f
24.4446750	123.995098	2024-01-05	Hermetia illucens		\N	GBIF	1	\N	\N	\N	\N	\N	1013	\N	GBIF	f
24.5743230	123.846845	2024-01-05	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	1014	\N	GBIF	f
24.4629570	123.815129	2024-01-05	Atractomorpha sinensis		\N	GBIF	1	\N	\N	\N	\N	\N	1015	\N	GBIF	f
24.5725750	123.734520	2024-01-05	Psacothea hilaris		\N	GBIF	1	\N	\N	\N	\N	\N	1016	\N	GBIF	f
26.1144670	127.734620	2024-01-05	Coccinella septempunctata		\N	GBIF	1	\N	\N	\N	\N	\N	1017	\N	GBIF	f
26.1145030	127.734820	2024-01-05	Agonoscelis Spinola		\N	GBIF	1	\N	\N	\N	\N	\N	1018	\N	GBIF	f
24.2632030	124.034723	2024-01-06	Pseudozizeeria maha		\N	GBIF	1	\N	\N	\N	\N	\N	1019	\N	GBIF	f
24.2703680	124.026010	2024-01-06	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	1020	\N	GBIF	f
24.2185950	124.008166	2024-01-06	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	1021	\N	GBIF	f
24.3500610	124.009230	2024-01-06	Utetheisa inconstans		\N	GBIF	1	\N	\N	\N	\N	\N	1022	\N	GBIF	f
24.2863730	123.924974	2024-01-07	Utetheisa inconstans		\N	GBIF	1	\N	\N	\N	\N	\N	1023	\N	GBIF	f
24.2287930	123.818795	2024-01-07	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	1024	\N	GBIF	f
26.2969720	127.623181	2024-01-07	Oxya intricata		\N	GBIF	1	\N	\N	\N	\N	\N	1025	\N	GBIF	f
26.2602670	127.716042	2024-01-07	Oxya intricata		\N	GBIF	1	\N	\N	\N	\N	\N	1026	\N	GBIF	f
26.3754880	127.758093	2024-01-07	Oxya intricata		\N	GBIF	1	\N	\N	\N	\N	\N	1027	\N	GBIF	f
26.3248240	127.707462	2024-01-07	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	1028	\N	GBIF	f
26.3946380	127.685119	2024-01-07	Argiope aemula		\N	GBIF	1	\N	\N	\N	\N	\N	1029	\N	GBIF	f
26.2513090	127.649517	2024-01-07	Delta esuriens		\N	GBIF	1	\N	\N	\N	\N	\N	1030	\N	GBIF	f
26.2666700	127.686393	2024-01-07	Delta esuriens		\N	GBIF	1	\N	\N	\N	\N	\N	1031	\N	GBIF	f
26.2079320	127.697839	2024-01-07	Eocanthecona furcellata		\N	GBIF	1	\N	\N	\N	\N	\N	1032	\N	GBIF	f
26.2406650	127.706851	2024-01-07	Delta esuriens		\N	GBIF	1	\N	\N	\N	\N	\N	1033	\N	GBIF	f
26.2150780	127.700656	2024-01-08	Atractomorpha sinensis		\N	GBIF	1	\N	\N	\N	\N	\N	1034	\N	GBIF	f
26.3154950	127.724152	2024-01-08	Carbula crassiventris		\N	GBIF	1	\N	\N	\N	\N	\N	1035	\N	GBIF	f
26.3019460	127.698747	2024-01-08	Euproctis taiwana		\N	GBIF	1	\N	\N	\N	\N	\N	1036	\N	GBIF	f
10.4262600	-76.243210	2015-04-20	Bathynomus giganteus	\N	\N	\N	1	\N	1700	\N	\N	\N	2783	HUMAN_OBSERVATION	GBIF	f
9.7086110	-76.384444	2009-10-27	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3073	PRESERVED_SPECIMEN	GBIF	f
26.2985220	127.649372	2024-01-08	Euproctis taiwana		\N	GBIF	1	\N	\N	\N	\N	\N	1037	\N	GBIF	f
26.2721880	127.682928	2024-01-08	Syntomoides imaon		\N	GBIF	1	\N	\N	\N	\N	\N	1038	\N	GBIF	f
26.6945800	127.877725	2024-09-01	Ligia exotica	https://www.inaturalist.org/observations/239163040	https://inaturalist-open-data.s3.amazonaws.com/photos/425904809/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	53	\N	iNaturalist	f
35.0116299	139.768319	2015-06-09	Tylos granuliferus	https://www.inaturalist.org/observations/239119302	https://inaturalist-open-data.s3.amazonaws.com/photos/425815022/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	54	\N	iNaturalist	f
27.9110000	-85.540000	2011-04-10	Bathynomus giganteus	\N	\N	Timm2018	6	NW Florida Slope	200-600	longline	\N	\N	3455	157 total individuals from this survey	\N	f
24.5343270	123.857553	2024-01-09	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	1039	\N	GBIF	f
29.3080000	-86.678000	2012-04-05	Bathynomus giganteus	\N	\N	Timm2018	6	East wall of De Soto Canyon	200-600	longline	\N	\N	3456	157 total individuals from this survey	\N	f
26.9230000	-84.922000	2012-04-02	Bathynomus giganteus	\N	\N	Timm2018	6	West Florida Slope	200-600	longline	\N	\N	3457	157 total individuals from this survey	\N	f
29.4540000	-86.895000	2012-04-06	Bathynomus giganteus	\N	\N	Timm2018	6	De Soto Canyon Groove	200-600	longline	\N	\N	3486	157 total individuals from this survey	\N	f
29.0290000	-87.295000	2012-04-10	Bathynomus giganteus	\N	\N	Timm2018	6	East wall of De Soto Canyon	200-600	longline	\N	\N	3490	157 total individuals from this survey	\N	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3681		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3682		expedition	f
36.9000000	138.500000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1241	\N	\N	f
36.8000000	138.200000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1242	\N	\N	f
35.2000000	136.500000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1243	\N	\N	f
32.9000000	130.000000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1244	\N	\N	f
31.2000000	128.000000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1245	\N	\N	f
40.8000000	137.500000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1246	\N	\N	f
37.6833333	142.078333	2005-10-27	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	551	OT	4.20	\N	1249	\N	\N	f
36.9383333	141.515000	2005-11-03	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	373	OT	4.00	\N	1250	\N	\N	f
19.1000000	-87.516667	1986-08-17	Bathynomus giganteus	https://doi.org/10.2307/1548472	\N	Briones-Fourzan&Lozano-Alvarez1991	\N	Yucatan Peninsula	449	traps	\N	rectangular	2971	cruise 3	no data recorded for individuals	f
42.6888250	141.547225	2017-07-28	Ligidium	\N	\N	Harigai2020	3	\N	93	\N	\N	\N	1279	\N	\N	f
42.7457778	141.967303	2018-09-26	Ligidium	\N	\N	Harigai2020	40	\N	61	\N	\N	\N	1299	\N	\N	f
37.9071806	139.001589	2019-05-02	Ligidium	\N	\N	Harigai2020	22	\N	19	\N	\N	\N	1300	\N	\N	f
38.3194722	139.414658	2019-05-03	Ligidium	\N	\N	Harigai2020	37	\N	111	\N	\N	\N	1301	\N	\N	f
38.2806667	139.712444	2019-05-04	Ligidium	\N	\N	Harigai2020	40	\N	59	\N	\N	\N	1302	\N	\N	f
37.8346500	138.999686	2019-05-05	Ligidium	\N	\N	Harigai2020	22	\N	4	\N	\N	\N	1303	\N	\N	f
28.1921892	-82.785949	2024-09-29	Ligia exotica	https://www.inaturalist.org/observations/248614248	https://www.inaturalist.org/observations/248614248	iNaturalist	1	\N	\N	\N	\N	\N	1306	\N	iNaturalist	f
26.2261250	127.293892	2024-08-31	Ligia exotica	https://www.inaturalist.org/observations/238950918	https://inaturalist-open-data.s3.amazonaws.com/photos/425492124/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	55	\N	iNaturalist	f
38.1879133	138.576582	2024-06-02	Porcellio scaber	https://www.inaturalist.org/observations/238909553	https://inaturalist-open-data.s3.amazonaws.com/photos/425411857/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	56	\N	iNaturalist	f
24.4521600	123.887011	2024-01-09	Parantica aglea		\N	GBIF	1	\N	\N	\N	\N	\N	1040	\N	GBIF	f
24.5147940	123.998080	2024-01-09	Spilostethus hospes		\N	GBIF	1	\N	\N	\N	\N	\N	1041	\N	GBIF	f
24.4645880	123.902606	2024-01-09	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	1042	\N	GBIF	f
29.9594470	122.187685	2024-01-09	Hemigrapsus takanoi		\N	GBIF	1	\N	\N	\N	\N	\N	1043	\N	GBIF	f
33.2281680	126.254157	2024-01-10	Coccinella septempunctata		\N	GBIF	1	\N	\N	\N	\N	\N	1044	\N	GBIF	f
24.4997370	123.702660	2024-01-10	Morphosphaera caerulea		\N	GBIF	1	\N	\N	\N	\N	\N	1045	\N	GBIF	f
24.5620560	123.853753	2024-01-10	Marinemobius asahinai		\N	GBIF	1	\N	\N	\N	\N	\N	1046	\N	GBIF	f
24.4553010	123.909235	2024-01-10	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1047	\N	GBIF	f
24.5900810	123.901767	2024-01-10	Conocephalus maculatus		\N	GBIF	1	\N	\N	\N	\N	\N	1048	\N	GBIF	f
24.5023680	123.925704	2024-01-10	Problepsis albidior		\N	GBIF	1	\N	\N	\N	\N	\N	1049	\N	GBIF	f
24.5485710	123.968230	2024-01-11	Amegilla dulcifera		\N	GBIF	1	\N	\N	\N	\N	\N	1050	\N	GBIF	f
24.4714590	123.896920	2024-01-11	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	1051	\N	GBIF	f
24.5665740	123.941357	2024-01-11	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	1052	\N	GBIF	f
24.5539720	123.810563	2024-01-11	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	1053	\N	GBIF	f
24.2188710	124.038192	2024-01-14	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	1054	\N	GBIF	f
24.2845470	124.133284	2024-01-14	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	1055	\N	GBIF	f
24.3942030	124.029638	2024-01-14	Asota egens		\N	GBIF	1	\N	\N	\N	\N	\N	1056	\N	GBIF	f
26.1861870	127.675622	2024-01-13	Junonia almana		\N	GBIF	1	\N	\N	\N	\N	\N	1057	\N	GBIF	f
26.7510500	128.298628	2024-01-15	Papilio helenus		\N	GBIF	1	\N	\N	\N	\N	\N	1058	\N	GBIF	f
26.7515130	128.298692	2024-01-15	Papilio helenus		\N	GBIF	1	\N	\N	\N	\N	\N	1059	\N	GBIF	f
24.5750030	123.859363	2024-01-15	Nevrina procopia		\N	GBIF	1	\N	\N	\N	\N	\N	1060	\N	GBIF	f
24.5148940	123.811667	2024-01-15	Pachynoa sabelialis		\N	GBIF	1	\N	\N	\N	\N	\N	1061	\N	GBIF	f
24.2433400	123.806100	2024-01-13	Mictyris guinotae		\N	GBIF	1	\N	\N	\N	\N	\N	1062	\N	GBIF	f
24.2522680	123.922886	2024-01-16	Cyrestis thyodamas		\N	GBIF	1	\N	\N	\N	\N	\N	1063	\N	GBIF	f
24.2140740	123.832256	2024-01-16	Aiolopus thalassinus		\N	GBIF	1	\N	\N	\N	\N	\N	1064	\N	GBIF	f
24.4312060	123.894603	2024-01-16	Acrida cinerea		\N	GBIF	1	\N	\N	\N	\N	\N	1065	\N	GBIF	f
30.2468080	122.209787	2024-01-16	Apis cerana		\N	GBIF	1	\N	\N	\N	\N	\N	1066	\N	GBIF	f
24.4178550	123.918885	2024-01-16	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	1067	\N	GBIF	f
24.5480860	123.919682	2024-01-17	Cardiodactylus guttulus		\N	GBIF	1	\N	\N	\N	\N	\N	1068	\N	GBIF	f
24.4173310	123.886612	2024-01-17	Oreta insignis		\N	GBIF	1	\N	\N	\N	\N	\N	1069	\N	GBIF	f
20.5800000	115.880000	1991-08-01	Bathynomus sp.	\N	\N	Soong1992	2	\N	497	\N	\N	\N	1247	\N	\N	f
29.9538440	122.218475	2023-10-22	Bathynomus doederleini	https://www.inaturalist.org/observations/255186235	\N	\N	1	\N	\N	\N	\N	\N	3311	HUMAN_OBSERVATION	GBIF	f
29.8887450	122.114364	2024-01-12	Polyura narcaeus		\N	GBIF	1	\N	\N	\N	\N	\N	270	\N	GBIF	f
24.5245270	123.826115	2024-01-17	Cirrhochrista kosemponialis		\N	GBIF	1	\N	\N	\N	\N	\N	1070	\N	GBIF	f
24.5024300	123.980402	2024-01-17	Henosepilachna vigintioctopunctata		\N	GBIF	1	\N	\N	\N	\N	\N	1071	\N	GBIF	f
24.4894330	123.829023	2024-01-17	Hyposidra talaca		\N	GBIF	1	\N	\N	\N	\N	\N	1072	\N	GBIF	f
30.2535910	122.157907	2024-01-18	Hierodula patellifera		\N	GBIF	1	\N	\N	\N	\N	\N	1073	\N	GBIF	f
24.4151810	123.874742	2024-01-18	Physopelta parviceps		\N	GBIF	1	\N	\N	\N	\N	\N	1074	\N	GBIF	f
24.4745600	123.901064	2024-01-18	Cirrhochrista kosemponialis		\N	GBIF	1	\N	\N	\N	\N	\N	1075	\N	GBIF	f
24.5422130	123.986881	2024-01-18	Pachynoa sabelialis		\N	GBIF	1	\N	\N	\N	\N	\N	1076	\N	GBIF	f
24.5921040	123.850490	2024-01-18	Epidaus sexspinus		\N	GBIF	1	\N	\N	\N	\N	\N	1077	\N	GBIF	f
24.5644660	123.836640	2024-01-18	Problepsis albidior		\N	GBIF	1	\N	\N	\N	\N	\N	1078	\N	GBIF	f
24.5990420	123.981651	2024-01-18	Cirrhochrista kosemponialis		\N	GBIF	1	\N	\N	\N	\N	\N	1079	\N	GBIF	f
24.5324930	123.928689	2024-01-18	Oxya chinensis		\N	GBIF	1	\N	\N	\N	\N	\N	1082	\N	GBIF	f
24.4514970	123.871655	2024-01-18	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	1083	\N	GBIF	f
29.9660580	122.207895	2024-01-15	Tubuca arcuata		\N	GBIF	1	\N	\N	\N	\N	\N	1084	\N	GBIF	f
28.4739690	129.698189	2024-01-19	Trichonephila clavata		\N	GBIF	1	\N	\N	\N	\N	\N	1085	\N	GBIF	f
28.4740050	129.698163	2024-01-19	Trichonephila clavata		\N	GBIF	1	\N	\N	\N	\N	\N	1086	\N	GBIF	f
24.5858880	123.816379	2024-01-19	Spilostethus hospes		\N	GBIF	1	\N	\N	\N	\N	\N	1087	\N	GBIF	f
24.4615940	124.144043	2024-01-19	Ocypode ceratophthalmus		\N	GBIF	1	\N	\N	\N	\N	\N	1088	\N	GBIF	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3683		expedition	f
29.4920000	-87.109000	2012-04-06	Bathynomus giganteus	\N	\N	Timm2018	6	West wall of De Soto Canyon	200-600	longline	\N	\N	3491	157 total individuals from this survey	\N	f
26.0911710	127.702501	2024-01-19	Mecopoda elongata		\N	GBIF	1	\N	\N	\N	\N	\N	1089	\N	GBIF	f
29.1430000	-86.808000	2012-04-04	Bathynomus giganteus	\N	\N	Timm2018	6	East wall of De Soto Canyon	200-600	longline	\N	\N	3495	157 total individuals from this survey	\N	f
29.4490000	-87.951000	2012-04-06	Bathynomus giganteus	\N	\N	Timm2018	6	De Soto Canyon Groove	200-600	longline	\N	\N	3498	157 total individuals from this survey	\N	f
29.1890000	-87.403000	2012-04-05	Bathynomus giganteus	\N	\N	Timm2018	6	West wall of De Soto Canyon	200-600	longline	\N	\N	3507	157 total individuals from this survey	\N	f
29.3010000	-87.330000	2012-04-05	Bathynomus giganteus	\N	\N	Timm2018	6	West wall of De Soto Canyon	200-600	longline	\N	\N	3508	157 total individuals from this survey	\N	f
29.1620000	-87.124000	2012-04-05	Bathynomus giganteus	\N	\N	Timm2018	6	East wall of De Soto Canyon	200-600	longline	\N	\N	3529	157 total individuals from this survey	\N	f
28.7500000	-88.593000	2012-04-13	Bathynomus giganteus	\N	\N	Timm2018	6	Western Desoto	200-600	longline	\N	\N	3531	157 total individuals from this survey	\N	f
28.8240000	-88.840000	2012-04-12	Bathynomus giganteus	\N	\N	Timm2018	6	Western Desoto	200-600	longline	\N	\N	3533	157 total individuals from this survey	\N	f
28.9240000	-88.516000	2012-04-12	Bathynomus giganteus	\N	\N	Timm2018	6	Western Desoto	200-600	longline	\N	\N	3552	157 total individuals from this survey	\N	f
26.7190000	-84.907000	2011-04-07	Bathynomus giganteus	\N	\N	Timm2018	6	West Florida Slope	200-600	longline	\N	\N	3602	157 total individuals from this survey	\N	f
24.5694100	123.872238	2024-01-19	Tartessus ferrugineus		\N	GBIF	1	\N	\N	\N	\N	\N	1090	\N	GBIF	f
29.1820000	-87.215000	2011-04-14	Bathynomus giganteus	\N	\N	Timm2018	6	West wall of De Soto Canyon	200-600	longline	\N	\N	3627	157 total individuals from this survey	\N	f
28.8480000	-88.831000	2011-08-29	Bathynomus giganteus	\N	\N	Timm2018	6	Western Desoto	200-600	longline	\N	\N	3634	157 total individuals from this survey	\N	f
28.9270000	-83.507000	2011-08-28	Bathynomus giganteus	\N	\N	Timm2018	6	Western Desoto	200-600	longline	\N	\N	3637	157 total individuals from this survey	\N	f
29.1860000	-87.427000	2011-08-27	Bathynomus giganteus	\N	\N	Timm2018	6	West wall of De Soto Canyon	200-600	longline	\N	\N	3650	157 total individuals from this survey	\N	f
29.1360000	-85.957000	2011-08-25	Bathynomus giganteus	\N	\N	Timm2018	6	North Slope	200-600	longline	\N	\N	3651	157 total individuals from this survey	\N	f
29.0200000	-87.308000	2011-08-27	Bathynomus giganteus	\N	\N	Timm2018	6	West wall of De Soto Canyon	200-600	longline	\N	\N	3652	157 total individuals from this survey	\N	f
29.3740000	-87.060000	2011-08-23	Bathynomus giganteus	\N	\N	Timm2018	6	West wall of De Soto Canyon	200-600	longline	\N	\N	3654	157 total individuals from this survey	\N	f
24.5177240	123.905233	2024-01-19	Atrophaneura alcinous		\N	GBIF	1	\N	\N	\N	\N	\N	1091	\N	GBIF	f
24.4555230	123.811775	2024-01-19	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1092	\N	GBIF	f
24.5718210	123.993806	2024-01-20	Arcte coerula		\N	GBIF	1	\N	\N	\N	\N	\N	1095	\N	GBIF	f
24.5663190	123.803211	2024-01-20	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1096	\N	GBIF	f
24.4095350	123.822041	2024-01-20	Aulacophora indica		\N	GBIF	1	\N	\N	\N	\N	\N	1097	\N	GBIF	f
24.5460460	123.904344	2024-01-20	Oxya chinensis		\N	GBIF	1	\N	\N	\N	\N	\N	1098	\N	GBIF	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3684		expedition	f
24.5045950	123.896372	2024-01-20	Atractomorpha sinensis		\N	GBIF	1	\N	\N	\N	\N	\N	1099	\N	GBIF	f
24.4320070	123.898136	2024-01-20	Atractomorpha sinensis		\N	GBIF	1	\N	\N	\N	\N	\N	1100	\N	GBIF	f
24.5036250	123.839126	2024-01-20	Hypolimnas anomala		\N	GBIF	1	\N	\N	\N	\N	\N	1101	\N	GBIF	f
24.4292090	123.913274	2024-01-20	Kallima inachus		\N	GBIF	1	\N	\N	\N	\N	\N	1102	\N	GBIF	f
24.5794300	123.952894	2024-01-20	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	1103	\N	GBIF	f
24.4904030	123.855372	2024-01-20	Rhabdoscelus similis		\N	GBIF	1	\N	\N	\N	\N	\N	1104	\N	GBIF	f
24.5049600	123.993533	2024-01-20	Henosepilachna vigintioctopunctata		\N	GBIF	1	\N	\N	\N	\N	\N	1105	\N	GBIF	f
24.5801350	123.807950	2024-01-20	Saptha beryllitis		\N	GBIF	1	\N	\N	\N	\N	\N	1106	\N	GBIF	f
24.5121000	123.962606	2024-01-21	Ropalidia fasciata		\N	GBIF	1	\N	\N	\N	\N	\N	1107	\N	GBIF	f
24.8296750	-76.328217	2017-01-25	Bathynomus giganteus	https://www.inaturalist.org/observations/35713277	\N	\N	1	\N	\N	\N	\N	\N	1194	HUMAN_OBSERVATION	GBIF	f
9.1016100	-77.144880	2015-04-15	Bathynomus giganteus	\N	\N	\N	1	\N	1408	\N	\N	\N	2784	HUMAN_OBSERVATION	GBIF	f
29.1519600	-86.584780	2015-09-30	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=10812069	\N	\N	1	\N	\N	\N	\N	\N	2785	PRESERVED_SPECIMEN	GBIF	f
29.1367800	-86.796365	2015-09-30	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=10812070	\N	\N	1	\N	\N	\N	\N	\N	2786	PRESERVED_SPECIMEN	GBIF	f
36.4833333	140.991667	2005-10-30	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	311	OT	4.50	\N	1251	\N	\N	f
11.3043300	-75.284110	2015-09-22	Bathynomus giganteus	\N	\N	\N	1	\N	1200	\N	\N	\N	2787	HUMAN_OBSERVATION	GBIF	f
11.4072800	-74.899780	2015-10-01	Bathynomus giganteus	\N	\N	\N	1	\N	1300	\N	\N	\N	2788	HUMAN_OBSERVATION	GBIF	f
19.9874750	-92.313819	2014-07-07	Bathynomus giganteus	\N	\N	\N	1	\N	600	\N	\N	\N	2789	PRESERVED_SPECIMEN	GBIF	f
6.8850000	-52.557667	2014-08-09	Bathynomus giganteus	\N	\N	\N	1	\N	498.5	\N	\N	\N	2790	PRESERVED_SPECIMEN	GBIF	f
18.6174000	-74.564100	2014-08-26	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:43650	\N	\N	1	\N	609.6	\N	\N	\N	1195	PRESERVED_SPECIMEN	GBIF	f
25.5977500	-84.665870	2014-09-09	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	1196	PRESERVED_SPECIMEN	GBIF	f
26.9200000	-84.920000	2012-04-02	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229075	\N	\N	1	\N	\N	\N	\N	\N	1197	PRESERVED_SPECIMEN	GBIF	f
28.7500000	-88.590000	2012-04-13	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229145	\N	\N	1	\N	\N	\N	\N	\N	2809	PRESERVED_SPECIMEN	GBIF	f
28.8200000	-88.840000	2012-04-12	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229146	\N	\N	1	\N	\N	\N	\N	\N	2810	PRESERVED_SPECIMEN	GBIF	f
28.9200000	-88.520000	2012-04-12	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229166	\N	\N	1	\N	\N	\N	\N	\N	2811	PRESERVED_SPECIMEN	GBIF	f
29.1600000	-87.120000	2012-04-05	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229348	\N	\N	1	\N	\N	\N	\N	\N	2812	PRESERVED_SPECIMEN	GBIF	f
9.3462000	-81.621200	2011-01-12	Bathynomus giganteus	\N	\N	\N	1	\N	1224.5	\N	\N	\N	3053	PRESERVED_SPECIMEN	GBIF	f
8.9927500	-81.154400	2011-01-11	Bathynomus giganteus	\N	\N	\N	1	\N	585	\N	\N	\N	3054	PRESERVED_SPECIMEN	GBIF	f
9.0347500	-81.061000	2011-01-11	Bathynomus giganteus	\N	\N	\N	1	\N	742	\N	\N	\N	3055	PRESERVED_SPECIMEN	GBIF	f
9.3001000	-81.615400	2011-01-12	Bathynomus giganteus	\N	\N	\N	1	\N	704	\N	\N	\N	3056	PRESERVED_SPECIMEN	GBIF	f
27.9100000	-85.540000	2011-04-10	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229179	\N	\N	1	\N	\N	\N	\N	\N	3057	PRESERVED_SPECIMEN	GBIF	f
26.9400000	-85.020000	2011-04-08	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229203	\N	\N	1	\N	\N	\N	\N	\N	3058	PRESERVED_SPECIMEN	GBIF	f
29.1800000	-87.220000	2011-04-14	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229243	\N	\N	1	\N	\N	\N	\N	\N	3059	PRESERVED_SPECIMEN	GBIF	f
29.0300000	-87.300000	2011-04-10	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229513	\N	\N	1	\N	\N	\N	\N	\N	3060	PRESERVED_SPECIMEN	GBIF	f
28.8500000	-88.830000	2011-08-29	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229248	\N	\N	1	\N	\N	\N	\N	\N	3062	PRESERVED_SPECIMEN	GBIF	f
28.9300000	-83.510000	2011-08-28	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229250	\N	\N	1	\N	\N	\N	\N	\N	3063	PRESERVED_SPECIMEN	GBIF	f
29.1400000	-85.960000	2011-08-25	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229466	\N	\N	1	\N	\N	\N	\N	\N	3067	PRESERVED_SPECIMEN	GBIF	f
62.5500000	-20.390000	2011-09-02	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MZ151087	\N	\N	1	\N	\N	\N	\N	\N	3068	PRESERVED_SPECIMEN	GBIF	f
27.5979000	-91.826400	2010-10-18	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3069	PRESERVED_SPECIMEN	GBIF	f
28.4302000	-89.416200	2010-12-02	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3070	PRESERVED_SPECIMEN	GBIF	f
24.4731290	123.862851	2024-01-22	Atrophaneura alcinous		\N	GBIF	1	\N	\N	\N	\N	\N	1108	\N	GBIF	f
24.4691440	123.961806	2024-01-22	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1109	\N	GBIF	f
24.5158470	123.938254	2024-01-22	Atrophaneura alcinous		\N	GBIF	1	\N	\N	\N	\N	\N	1110	\N	GBIF	f
24.5166070	123.913067	2024-01-22	Atrophaneura alcinous		\N	GBIF	1	\N	\N	\N	\N	\N	1111	\N	GBIF	f
24.4178460	123.856527	2024-01-23	Sphenocorynes ocellatus		\N	GBIF	1	\N	\N	\N	\N	\N	1112	\N	GBIF	f
24.4196860	123.986175	2024-01-23	Ropalidia fasciata		\N	GBIF	1	\N	\N	\N	\N	\N	1113	\N	GBIF	f
24.5945990	123.972899	2024-01-24	Eucriotettix oculatus		\N	GBIF	1	\N	\N	\N	\N	\N	1114	\N	GBIF	f
24.5209470	123.799189	2024-01-25	Morphosphaera caerulea		\N	GBIF	1	\N	\N	\N	\N	\N	1115	\N	GBIF	f
36.4850000	141.013333	2005-11-01	Ceratothoa oxyrrhynchaena	\N	\N	Yamauchi2009	\N	\N	380	OT	4.00	\N	1252	\N	\N	f
24.4065500	123.831127	2024-01-25	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1116	\N	GBIF	f
24.5798790	123.891663	2024-01-25	Neophisis iriomotensis		\N	GBIF	1	\N	\N	\N	\N	\N	1117	\N	GBIF	f
24.4201670	123.989957	2024-01-25	Danaus genutia		\N	GBIF	1	\N	\N	\N	\N	\N	1118	\N	GBIF	f
24.4828630	123.978272	2024-01-25	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1119	\N	GBIF	f
29.9622720	122.210555	2024-01-26	Amphibalanus amphitrite		\N	GBIF	1	\N	\N	\N	\N	\N	1120	\N	GBIF	f
24.4964570	123.815175	2024-01-26	Atrophaneura alcinous		\N	GBIF	1	\N	\N	\N	\N	\N	1121	\N	GBIF	f
24.4221100	123.978166	2024-01-26	Harmonia yedoensis		\N	GBIF	1	\N	\N	\N	\N	\N	1122	\N	GBIF	f
24.5352040	123.899830	2024-01-26	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1123	\N	GBIF	f
24.5538240	123.922665	2024-01-26	Oxya chinensis		\N	GBIF	1	\N	\N	\N	\N	\N	1124	\N	GBIF	f
24.2173430	124.144846	2024-01-27	Dysdercus cingulatus		\N	GBIF	1	\N	\N	\N	\N	\N	1125	\N	GBIF	f
24.2492400	124.108094	2024-01-27	Suastus gremius		\N	GBIF	1	\N	\N	\N	\N	\N	1126	\N	GBIF	f
24.2854860	124.097945	2024-01-27	Saptha beryllitis		\N	GBIF	1	\N	\N	\N	\N	\N	1127	\N	GBIF	f
24.2426140	124.063829	2024-01-27	Dysdercus cingulatus		\N	GBIF	1	\N	\N	\N	\N	\N	1128	\N	GBIF	f
24.3840490	124.025641	2024-01-27	Plinachtus basalis		\N	GBIF	1	\N	\N	\N	\N	\N	1129	\N	GBIF	f
9.2888890	-76.532778	2009-10-26	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3071	PRESERVED_SPECIMEN	GBIF	f
9.5736110	-76.459167	2009-10-26	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3072	PRESERVED_SPECIMEN	GBIF	f
10.7344440	-75.620833	2009-11-16	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3075	PRESERVED_SPECIMEN	GBIF	f
28.0601300	-90.250010	2000-05-30	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3096	PRESERVED_SPECIMEN	GBIF	f
27.4534600	-89.763160	2000-05-31	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3097	PRESERVED_SPECIMEN	GBIF	f
26.1648000	-91.735230	2000-05-10	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3098	PRESERVED_SPECIMEN	GBIF	f
26.2471000	-92.392430	2000-05-11	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3099	PRESERVED_SPECIMEN	GBIF	f
27.5004400	-96.003100	2000-05-23	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3100	PRESERVED_SPECIMEN	GBIF	f
26.2457500	-91.210020	2000-05-08	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3101	PRESERVED_SPECIMEN	GBIF	f
27.5695000	-93.540800	2000-05-14	Bathynomus giganteus	\N	\N	\N	1	\N	400	\N	\N	\N	3102	PRESERVED_SPECIMEN	GBIF	f
28.9187900	-87.672170	2000-06-12	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3103	PRESERVED_SPECIMEN	GBIF	f
29.3354100	-87.046360	2000-06-11	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3104	PRESERVED_SPECIMEN	GBIF	f
27.0019900	-87.999150	2000-06-04	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3106	PRESERVED_SPECIMEN	GBIF	f
27.4840000	-86.999810	2000-06-06	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3107	PRESERVED_SPECIMEN	GBIF	f
27.8279100	-89.166200	2000-06-15	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3108	PRESERVED_SPECIMEN	GBIF	f
26.9385800	-89.572570	2000-06-01	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3109	PRESERVED_SPECIMEN	GBIF	f
26.3800900	-89.240360	2000-06-02	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3110	PRESERVED_SPECIMEN	GBIF	f
27.3331600	-88.656110	2000-06-03	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3111	PRESERVED_SPECIMEN	GBIF	f
28.2218100	-89.494110	2000-06-16	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3112	PRESERVED_SPECIMEN	GBIF	f
28.5032300	-86.076760	2000-06-10	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3113	PRESERVED_SPECIMEN	GBIF	f
28.0139500	-86.573330	2000-06-08	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3114	PRESERVED_SPECIMEN	GBIF	f
22.4400000	-91.650000	1999-05-20	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	704.5	\N	\N	\N	3130	HUMAN_OBSERVATION	GBIF	f
24.3800000	-83.370000	1955-07-08	Bathynomus giganteus	\N	\N	\N	1	\N	366	\N	\N	\N	2707	PRESERVED_SPECIMEN	GBIF	f
-21.9377780	-39.350278	1999-06-22	Bathynomus giganteus	\N	\N	\N	1	\N	605.6	\N	\N	\N	3131	PRESERVED_SPECIMEN	GBIF	f
24.2568000	-82.658300	1998-05-02	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	1231	PRESERVED_SPECIMEN	GBIF	f
21.8800000	-91.120000	1990-01-30	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	556	\N	\N	\N	3133	HUMAN_OBSERVATION	GBIF	f
27.5869000	-92.377800	1985-06-09	Bathynomus giganteus	\N	\N	\N	1	\N	774.5	\N	\N	\N	3174	PRESERVED_SPECIMEN	GBIF	f
23.1700000	-79.550000	1955-07-16	Bathynomus giganteus	\N	\N	\N	1	\N	512	\N	\N	\N	2708	PRESERVED_SPECIMEN	GBIF	f
27.4633330	-92.266667	1971-07-22	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6502	\N	\N	1	\N	992	\N	\N	\N	3196	PRESERVED_SPECIMEN	GBIF	f
26.5483330	-96.106667	1971-07-14	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6516	\N	\N	1	\N	937	\N	\N	\N	3197	PRESERVED_SPECIMEN	GBIF	f
26.9166670	-92.965000	1971-07-24	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6953	\N	\N	1	\N	1225	\N	\N	\N	3198	PRESERVED_SPECIMEN	GBIF	f
19.0050000	-95.195000	1971-08-12	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6493	\N	\N	1	\N	1123	\N	\N	\N	3199	PRESERVED_SPECIMEN	GBIF	f
20.1016670	-92.336667	1971-08-15	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6495	\N	\N	1	\N	1329	\N	\N	\N	3200	PRESERVED_SPECIMEN	GBIF	f
20.0833330	-92.333333	1971-08-15	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6503	\N	\N	1	\N	1329	\N	\N	\N	3201	PRESERVED_SPECIMEN	GBIF	f
21.5616670	-96.818333	1971-08-08	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6505	\N	\N	1	\N	1217	\N	\N	\N	3202	PRESERVED_SPECIMEN	GBIF	f
19.3579670	-81.274850	2024-01-01	Erinnyis ello		\N	GBIF	1	\N	\N	\N	\N	\N	1990	\N	GBIF	f
19.0050000	-95.185000	1971-08-12	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6506	\N	\N	1	\N	1123	\N	\N	\N	3203	PRESERVED_SPECIMEN	GBIF	f
23.9116670	-96.998333	1971-08-04	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6517	\N	\N	1	\N	937	\N	\N	\N	3204	PRESERVED_SPECIMEN	GBIF	f
23.9466670	-97.083333	1971-08-03	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6521	\N	\N	1	\N	677	\N	\N	\N	3205	PRESERVED_SPECIMEN	GBIF	f
19.9300000	-92.640000	1971-08-14	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6954	\N	\N	1	\N	1003	\N	\N	\N	3206	PRESERVED_SPECIMEN	GBIF	f
22.3916670	-91.585000	1990-05-24	Bathynomus giganteus	\N	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	364.5	\N	\N	\N	3138	HUMAN_OBSERVATION	GBIF	f
23.9016670	-97.000000	1971-08-04	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-7328	\N	\N	1	\N	937	\N	\N	\N	3207	PRESERVED_SPECIMEN	GBIF	f
22.4183330	-91.645000	1990-05-29	Bathynomus giganteus	\N	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	523	\N	\N	\N	3143	HUMAN_OBSERVATION	GBIF	f
26.3333000	-96.216000	1990-06-01	Bathynomus giganteus	\N	\N	\N	1	\N	554	\N	\N	\N	3151	PRESERVED_SPECIMEN	GBIF	f
22.0200000	-91.150000	1990-09-12	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	461.5	\N	\N	\N	3152	HUMAN_OBSERVATION	GBIF	f
24.3363960	124.077079	2024-01-27	Plinachtus basalis		\N	GBIF	1	\N	\N	\N	\N	\N	1130	\N	GBIF	f
21.5050000	-96.195000	1971-08-09	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-7447	\N	\N	1	\N	2245	\N	\N	\N	3208	PRESERVED_SPECIMEN	GBIF	f
24.3200000	-83.330000	1954-04-14	Bathynomus giganteus	\N	\N	\N	1	\N	329	\N	\N	\N	2709	PRESERVED_SPECIMEN	GBIF	f
29.4500000	-86.950000	1967-07-19	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-7347	\N	\N	1	\N	752	\N	\N	\N	3249	PRESERVED_SPECIMEN	GBIF	f
25.6500000	-79.533300	1964-08-24	Bathynomus giganteus	\N	\N	\N	1	\N	817.5	\N	\N	\N	2687	PRESERVED_SPECIMEN	GBIF	f
23.8333000	-81.616700	1964-09-17	Bathynomus giganteus	\N	\N	\N	1	\N	1224.5	\N	\N	\N	2688	PRESERVED_SPECIMEN	GBIF	f
24.4806000	-83.550000	1959-06-08	Bathynomus giganteus	\N	\N	\N	1	\N	549	\N	\N	\N	2700	PRESERVED_SPECIMEN	GBIF	f
17.6700000	-63.670000	1959-09-30	Bathynomus giganteus	\N	\N	\N	1	\N	676.5	\N	\N	\N	3281	PRESERVED_SPECIMEN	GBIF	f
21.0300000	-91.930000	1958-03-08	Bathynomus giganteus	\N	\N	\N	1	\N	48	\N	\N	\N	3282	PRESERVED_SPECIMEN	GBIF	f
7.0833000	-52.783300	1958-09-14	Bathynomus giganteus	\N	\N	\N	1	\N	366	\N	\N	\N	3283	PRESERVED_SPECIMEN	GBIF	f
7.4300000	-54.820000	1958-09-08	Bathynomus giganteus	\N	\N	\N	1	\N	205.5	\N	\N	\N	3284	PRESERVED_SPECIMEN	GBIF	f
23.9800000	-79.720000	1957-07-24	Bathynomus giganteus	\N	\N	\N	1	\N	640	\N	\N	\N	2701	PRESERVED_SPECIMEN	GBIF	f
16.6500000	-81.020000	1957-08-24	Bathynomus giganteus	\N	\N	\N	1	\N	457	\N	\N	\N	3286	PRESERVED_SPECIMEN	GBIF	f
16.6500000	-82.480000	1957-08-21	Bathynomus giganteus	\N	\N	\N	1	\N	411	\N	\N	\N	3287	PRESERVED_SPECIMEN	GBIF	f
24.6700000	-77.541700	1974-02-08	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2667	PRESERVED_SPECIMEN	GBIF	f
24.9914300	-76.938760	1974-02-03	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2668	PRESERVED_SPECIMEN	GBIF	f
25.2666670	-77.700000	1974-11-10	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7912095	\N	\N	1	\N	\N	\N	\N	\N	2669	PRESERVED_SPECIMEN	GBIF	f
24.0833000	-77.383300	1973-02-27	Bathynomus giganteus	\N	\N	\N	1	\N	1400	\N	\N	\N	2670	PRESERVED_SPECIMEN	GBIF	f
23.9330000	-77.292000	1973-02-26	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2671	PRESERVED_SPECIMEN	GBIF	f
23.6170000	-77.075000	1973-02-25	Bathynomus giganteus	\N	\N	\N	1	\N	850	\N	\N	\N	2672	PRESERVED_SPECIMEN	GBIF	f
23.6200000	-77.020000	1973-03-08	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2673	PRESERVED_SPECIMEN	GBIF	f
24.1333330	-77.366667	1973-09-21	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7915942	\N	\N	1	\N	\N	\N	\N	\N	2674	PRESERVED_SPECIMEN	GBIF	f
27.4066670	-94.941667	1972-07-17	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6500	\N	\N	1	\N	1161	\N	\N	\N	3187	PRESERVED_SPECIMEN	GBIF	f
26.9266670	-95.175000	1972-07-17	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6508	\N	\N	1	\N	1376	\N	\N	\N	3188	PRESERVED_SPECIMEN	GBIF	f
23.2766670	-97.043333	1972-07-12	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6510	\N	\N	1	\N	1043	\N	\N	\N	3189	PRESERVED_SPECIMEN	GBIF	f
23.5750000	-97.030000	1972-07-12	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6513	\N	\N	1	\N	787	\N	\N	\N	3190	PRESERVED_SPECIMEN	GBIF	f
23.4600000	-97.205000	1972-07-11	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6520	\N	\N	1	\N	677	\N	\N	\N	3191	PRESERVED_SPECIMEN	GBIF	f
27.7783330	-94.791667	1972-07-16	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-7343	\N	\N	1	\N	412	\N	\N	\N	3192	PRESERVED_SPECIMEN	GBIF	f
14.5833300	-81.533333	1971-01-31	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	608	\N	\N	\N	3193	HUMAN_OBSERVATION	GBIF	f
14.5833330	-81.533333	1971-01-31	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7915061	\N	\N	1	\N	\N	\N	\N	\N	3194	PRESERVED_SPECIMEN	GBIF	f
28.9650170	-87.211207	1971-01-08	Bathynomus giganteus	https://emu-prod.amnh.org/imulive/iz/iz.html#details=ecatalogue.	\N	\N	1	\N	350	\N	\N	\N	3195	PRESERVED_SPECIMEN	GBIF	f
17.5366700	-77.820000	1970-07-06	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	878	\N	\N	\N	2675	HUMAN_OBSERVATION	GBIF	f
17.2850000	-79.843333	1970-07-26	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6507	\N	\N	1	\N	1097	\N	\N	\N	2678	PRESERVED_SPECIMEN	GBIF	f
12.6666670	-72.000000	1970-07-18	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6523	\N	\N	1	\N	640.5	\N	\N	\N	3209	PRESERVED_SPECIMEN	GBIF	f
15.0833330	-81.166667	1970-07-13	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6952	\N	\N	1	\N	535	\N	\N	\N	3210	PRESERVED_SPECIMEN	GBIF	f
11.5633330	-73.750000	1970-07-17	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-7333	\N	\N	1	\N	732	\N	\N	\N	3211	PRESERVED_SPECIMEN	GBIF	f
16.7166670	-82.633333	1970-07-12	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-7445	\N	\N	1	\N	521.5	\N	\N	\N	3212	PRESERVED_SPECIMEN	GBIF	f
19.3604060	-81.274181	2023-06-03	Cirolanidae	https://www.inaturalist.org/observations/165654388	https://www.inaturalist.org/observations/165654388	iNaturalist	1	\N	\N	\N	\N	\N	1708	\N	iNaturalist	f
7.5666700	-57.083333	1970-08-07	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	310	\N	\N	\N	3213	HUMAN_OBSERVATION	GBIF	f
14.3700000	-81.820000	1970-10-26	Bathynomus giganteus	\N	\N	\N	1	\N	604	\N	\N	\N	3214	PRESERVED_SPECIMEN	GBIF	f
9.9700000	-76.480000	1970-11-04	Bathynomus giganteus	\N	\N	\N	1	\N	1271	\N	\N	\N	3215	PRESERVED_SPECIMEN	GBIF	f
10.1500000	-76.230000	1970-11-05	Bathynomus giganteus	\N	\N	\N	1	\N	914	\N	\N	\N	3216	PRESERVED_SPECIMEN	GBIF	f
11.2200000	-74.430000	1970-11-09	Bathynomus giganteus	\N	\N	\N	1	\N	631	\N	\N	\N	3217	PRESERVED_SPECIMEN	GBIF	f
16.0966700	-61.311667	1969-07-12	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	630	\N	\N	\N	3218	HUMAN_OBSERVATION	GBIF	f
24.2314070	124.148467	2024-01-27	Plinachtus basalis		\N	GBIF	1	\N	\N	\N	\N	\N	1131	\N	GBIF	f
37.8019785	138.247184	2024-06-01	Ligia exotica	https://www.inaturalist.org/observations/238907844	https://inaturalist-open-data.s3.amazonaws.com/photos/425408035/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	58	\N	iNaturalist	f
-18.1616700	118.161670	1984-01-27	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3334	\N	GBIF	f
28.0178000	-85.660600	1985-05-16	Bathynomus giganteus	\N	\N	\N	1	\N	629	\N	\N	\N	3169	PRESERVED_SPECIMEN	GBIF	f
16.0833300	-61.400000	1969-07-14	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	600	\N	\N	\N	3219	HUMAN_OBSERVATION	GBIF	f
15.4916700	-61.191667	1969-07-15	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	458	\N	\N	\N	3220	HUMAN_OBSERVATION	GBIF	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3685		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3686		expedition	f
16.0416700	-61.385000	1969-07-16	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	500	\N	\N	\N	3221	HUMAN_OBSERVATION	GBIF	f
18.5000000	-63.396667	1969-07-23	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	664	\N	\N	\N	3222	HUMAN_OBSERVATION	GBIF	f
18.4883300	-63.410000	1969-07-23	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	686	\N	\N	\N	3223	HUMAN_OBSERVATION	GBIF	f
16.0833000	-61.400000	1969-07-14	Bathynomus giganteus	\N	\N	\N	1	\N	617.5	\N	\N	\N	3226	PRESERVED_SPECIMEN	GBIF	f
18.4883000	-63.410000	1969-07-23	Bathynomus giganteus	\N	\N	\N	1	\N	695	\N	\N	\N	3227	PRESERVED_SPECIMEN	GBIF	f
16.0417000	-61.385000	1969-07-16	Bathynomus giganteus	\N	\N	\N	1	\N	553	\N	\N	\N	3228	PRESERVED_SPECIMEN	GBIF	f
16.0967000	-61.311700	1969-07-12	Bathynomus giganteus	\N	\N	\N	1	\N	667.5	\N	\N	\N	3229	PRESERVED_SPECIMEN	GBIF	f
21.5000000	-96.916667	1969-08-23	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6514	\N	\N	1	\N	704.5	\N	\N	\N	3230	PRESERVED_SPECIMEN	GBIF	f
11.4133300	-67.168333	1968-07-25	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	1000	\N	\N	\N	3235	HUMAN_OBSERVATION	GBIF	f
8.4333000	-54.283300	1968-07-12	Bathynomus giganteus	\N	\N	\N	1	\N	1253.5	\N	\N	\N	3238	PRESERVED_SPECIMEN	GBIF	f
28.8500000	-87.600000	1968-08-08	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6494	\N	\N	1	\N	2070	\N	\N	\N	3239	PRESERVED_SPECIMEN	GBIF	f
28.0000000	-86.141667	1968-08-01	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6497	\N	\N	1	\N	1080	\N	\N	\N	3240	PRESERVED_SPECIMEN	GBIF	f
28.7800000	-87.606667	1968-08-10	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6504	\N	\N	1	\N	2140	\N	\N	\N	3241	PRESERVED_SPECIMEN	GBIF	f
25.3833330	-95.950000	1968-11-17	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6498	\N	\N	1	\N	1216.5	\N	\N	\N	3242	PRESERVED_SPECIMEN	GBIF	f
25.5166670	-95.850000	1968-11-17	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6509	\N	\N	1	\N	1189	\N	\N	\N	3243	PRESERVED_SPECIMEN	GBIF	f
27.5833330	-95.383333	1968-11-20	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6515	\N	\N	1	\N	732	\N	\N	\N	3244	PRESERVED_SPECIMEN	GBIF	f
17.6833000	-62.841700	1967-05-18	Bathynomus giganteus	\N	\N	\N	1	\N	567	\N	\N	\N	3245	PRESERVED_SPECIMEN	GBIF	f
16.8800000	-61.880000	1967-05-21	Bathynomus giganteus	\N	\N	\N	1	\N	795.5	\N	\N	\N	3246	PRESERVED_SPECIMEN	GBIF	f
23.9333300	-82.216667	1967-08-29	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	965	\N	\N	\N	2679	HUMAN_OBSERVATION	GBIF	f
23.9333300	-82.216670	1967-08-29	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2680	PRESERVED_SPECIMEN	GBIF	f
15.6300000	-61.200000	1966-03-04	Bathynomus giganteus	\N	\N	\N	1	\N	585	\N	\N	\N	3250	PRESERVED_SPECIMEN	GBIF	f
15.6300000	-61.120000	1966-03-05	Bathynomus giganteus	\N	\N	\N	1	\N	808	\N	\N	\N	3251	PRESERVED_SPECIMEN	GBIF	f
9.9500000	-76.176667	1966-07-14	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	400	\N	\N	\N	3252	HUMAN_OBSERVATION	GBIF	f
28.2250000	-87.066667	1966-07-11	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6512	\N	\N	1	\N	1000	\N	\N	\N	3259	PRESERVED_SPECIMEN	GBIF	f
11.5733000	-62.178300	1966-08-02	Bathynomus giganteus	\N	\N	\N	1	\N	597.5	\N	\N	\N	3260	PRESERVED_SPECIMEN	GBIF	f
26.4666700	-78.666667	1965-07-21	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	622	\N	\N	\N	2681	HUMAN_OBSERVATION	GBIF	f
26.4333300	-78.650000	1965-07-24	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	724	\N	\N	\N	2682	HUMAN_OBSERVATION	GBIF	f
26.4500000	-78.700000	1965-07-21	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7915221	\N	\N	1	\N	\N	\N	\N	\N	2683	PRESERVED_SPECIMEN	GBIF	f
23.0916700	-79.666670	1939-05-02	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:80355	\N	\N	1	\N	539.5	\N	\N	\N	2715	PRESERVED_SPECIMEN	GBIF	f
27.6250000	-92.391700	1964-02-27	Bathynomus giganteus	\N	\N	\N	1	\N	732	\N	\N	\N	3262	PRESERVED_SPECIMEN	GBIF	f
24.6700000	-81.580000	1930-07-31	Bathynomus giganteus	\N	\N	\N	1	\N	329	\N	\N	\N	2734	PRESERVED_SPECIMEN	GBIF	f
24.4000000	-80.000000	1901-11-09	Bathynomus giganteus	\N	\N	\N	1	\N	796	\N	\N	\N	2736	PRESERVED_SPECIMEN	GBIF	f
23.8111000	-75.177800	1886-03-08	Bathynomus giganteus	\N	\N	\N	1	\N	2138	\N	\N	\N	2737	PRESERVED_SPECIMEN	GBIF	f
24.2507320	124.045846	2024-01-27	Saptha beryllitis		\N	GBIF	1	\N	\N	\N	\N	\N	1133	\N	GBIF	f
24.2479800	124.187220	2024-01-27	Morphosphaera caerulea		\N	GBIF	1	\N	\N	\N	\N	\N	1134	\N	GBIF	f
28.3749260	129.885263	2024-01-21	Oxya chinensis		\N	GBIF	1	\N	\N	\N	\N	\N	1135	\N	GBIF	f
37.8236255	138.228720	2024-06-01	Ligia exotica	https://www.inaturalist.org/observations/238907299	https://inaturalist-open-data.s3.amazonaws.com/photos/425407429/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	59	\N	iNaturalist	f
28.2076100	129.829554	2024-01-21	Pieris rapae		\N	GBIF	1	\N	\N	\N	\N	\N	1136	\N	GBIF	f
26.4083450	127.741587	2024-01-28	Erebus ephesperis		\N	GBIF	1	\N	\N	\N	\N	\N	1137	\N	GBIF	f
26.4087530	127.742020	2024-01-28	Vanessa cardui		\N	GBIF	1	\N	\N	\N	\N	\N	1138	\N	GBIF	f
24.4636950	123.889723	2024-01-27	Zizina otis		\N	GBIF	1	\N	\N	\N	\N	\N	1139	\N	GBIF	f
24.4423760	123.757933	2024-01-28	Metaemene atrigutta		\N	GBIF	1	\N	\N	\N	\N	\N	1140	\N	GBIF	f
24.4416360	123.770494	2024-01-28	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1141	\N	GBIF	f
24.4379790	123.715643	2024-01-28	Utetheisa inconstans		\N	GBIF	1	\N	\N	\N	\N	\N	1142	\N	GBIF	f
24.5957430	123.635601	2024-01-28	Utetheisa inconstans		\N	GBIF	1	\N	\N	\N	\N	\N	1143	\N	GBIF	f
24.4051350	123.734201	2024-01-28	Aiolopus thalassinus		\N	GBIF	1	\N	\N	\N	\N	\N	1144	\N	GBIF	f
24.5353230	123.839752	2024-01-28	Atrophaneura alcinous		\N	GBIF	1	\N	\N	\N	\N	\N	1145	\N	GBIF	f
24.5688070	123.981806	2024-01-28	Neophisis iriomotensis		\N	GBIF	1	\N	\N	\N	\N	\N	1146	\N	GBIF	f
24.5040410	123.659977	2024-01-29	Morphosphaera caerulea		\N	GBIF	1	\N	\N	\N	\N	\N	1147	\N	GBIF	f
24.4378050	123.945856	2024-01-29	Cyrestis thyodamas		\N	GBIF	1	\N	\N	\N	\N	\N	1148	\N	GBIF	f
24.5861450	123.979943	2024-01-29	Lampromicra miyakona		\N	GBIF	1	\N	\N	\N	\N	\N	1149	\N	GBIF	f
24.4067920	123.968550	2024-01-29	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1150	\N	GBIF	f
24.4199060	123.927153	2024-01-03	Hierodula patellifera		\N	GBIF	1	\N	\N	\N	\N	\N	1001	\N	GBIF	f
24.5628910	123.863193	2024-01-30	Atrophaneura alcinous		\N	GBIF	1	\N	\N	\N	\N	\N	1163	\N	GBIF	f
24.4644350	123.802859	2024-01-30	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	1164	\N	GBIF	f
24.4762550	123.897895	2024-01-31	Lampromicra miyakona		\N	GBIF	1	\N	\N	\N	\N	\N	1165	\N	GBIF	f
24.5149200	123.755585	2024-01-29	Oxya yezoensis		\N	GBIF	1	\N	\N	\N	\N	\N	1151	\N	GBIF	f
24.5851820	123.804837	2024-01-30	Oxya chinensis		\N	GBIF	1	\N	\N	\N	\N	\N	1152	\N	GBIF	f
24.5597200	123.892304	2024-01-30	Lampromicra miyakona		\N	GBIF	1	\N	\N	\N	\N	\N	1153	\N	GBIF	f
24.5422860	123.972288	2024-01-30	Epidaus sexspinus		\N	GBIF	1	\N	\N	\N	\N	\N	1158	\N	GBIF	f
24.4360470	123.958231	2024-01-30	Borbacha pardaria		\N	GBIF	1	\N	\N	\N	\N	\N	1159	\N	GBIF	f
24.5760480	123.921392	2024-01-30	Perisphaerus pygmaea		\N	GBIF	1	\N	\N	\N	\N	\N	1160	\N	GBIF	f
24.5524730	123.897338	2024-01-30	Ischyja ferrifracta		\N	GBIF	1	\N	\N	\N	\N	\N	1161	\N	GBIF	f
24.2585590	123.987236	2024-01-30	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	1162	\N	GBIF	f
24.4221990	123.944750	2024-01-31	Vitellus Stl		\N	GBIF	1	\N	\N	\N	\N	\N	1166	\N	GBIF	f
24.5638090	123.962419	2024-01-31	Perisphaerus pygmaea		\N	GBIF	1	\N	\N	\N	\N	\N	1167	\N	GBIF	f
24.4220210	123.891412	2024-01-31	Cirrhochrista kosemponialis		\N	GBIF	1	\N	\N	\N	\N	\N	1168	\N	GBIF	f
24.4200360	123.807082	2024-01-31	Hierodula patellifera		\N	GBIF	1	\N	\N	\N	\N	\N	1169	\N	GBIF	f
26.1944450	127.682966	2024-01-14	Argynnis hyperbius		\N	GBIF	1	\N	\N	\N	\N	\N	1170	\N	GBIF	f
26.7651260	128.257889	2024-01-15	Kaniska canace		\N	GBIF	1	\N	\N	\N	\N	\N	1171	\N	GBIF	f
34.9702370	138.776638	2024-01-30	Heterocarpus hayashii		\N	GBIF	1	\N	\N	\N	\N	\N	1172	\N	GBIF	f
27.4968110	-80.298507	2024-01-01	Ocypode quadrata		\N	GBIF	1	\N	\N	\N	\N	\N	2500	\N	GBIF	f
37.8227131	138.349972	2024-06-01	Ligia exotica	https://www.inaturalist.org/observations/238907298	https://inaturalist-open-data.s3.amazonaws.com/photos/425407301/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	60	\N	iNaturalist	f
25.1389330	-80.935883	2024-01-02	Callinectes sapidus		\N	GBIF	1	\N	\N	\N	\N	\N	2501	\N	GBIF	f
19.7608530	-70.486672	2024-01-01	Lagocheirus araneiformis		\N	GBIF	1	\N	\N	\N	\N	\N	2502	\N	GBIF	f
19.7606970	-70.486733	2024-01-02	Anartia jatrophae		\N	GBIF	1	\N	\N	\N	\N	\N	2503	\N	GBIF	f
17.9527580	-66.848172	2024-01-02	Heliconius charithonia		\N	GBIF	1	\N	\N	\N	\N	\N	2504	\N	GBIF	f
19.9149100	-75.148755	2024-01-02	Polistes poeyi		\N	GBIF	1	\N	\N	\N	\N	\N	2508	\N	GBIF	f
19.9151090	-75.148973	2024-01-02	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	2509	\N	GBIF	f
19.9147870	-75.148654	2024-01-02	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	2510	\N	GBIF	f
19.9146290	-75.148533	2024-01-02	Erythemis vesiculosa		\N	GBIF	1	\N	\N	\N	\N	\N	2511	\N	GBIF	f
25.6714970	-80.155681	2024-01-02	Leptoglossus phyllopus		\N	GBIF	1	\N	\N	\N	\N	\N	2512	\N	GBIF	f
25.6686480	-80.157866	2024-01-02	Dielis Saussure		\N	GBIF	1	\N	\N	\N	\N	\N	2513	\N	GBIF	f
25.6698390	-80.157571	2024-01-02	Cedusa Fowler		\N	GBIF	1	\N	\N	\N	\N	\N	2514	\N	GBIF	f
25.6732350	-80.159107	2024-01-02	Dysdercus suturellus		\N	GBIF	1	\N	\N	\N	\N	\N	2515	\N	GBIF	f
27.6491690	-82.747264	2024-01-02	Hepatus epheliticus		\N	GBIF	1	\N	\N	\N	\N	\N	2516	\N	GBIF	f
18.4399430	-66.044466	2024-01-02	Lepidopa benedicti		\N	GBIF	1	\N	\N	\N	\N	\N	2517	\N	GBIF	f
19.2910890	-81.139949	2024-01-02	Maguimithrax spinosissimus		\N	GBIF	1	\N	\N	\N	\N	\N	2518	\N	GBIF	f
19.2911710	-81.139948	2024-01-02	Panulirus argus		\N	GBIF	1	\N	\N	\N	\N	\N	2519	\N	GBIF	f
18.3932710	-77.060277	2024-01-02	Cyclocephala amazona		\N	GBIF	1	\N	\N	\N	\N	\N	2520	\N	GBIF	f
18.3931980	-77.059875	2024-01-02	Solenopsis geminata		\N	GBIF	1	\N	\N	\N	\N	\N	2526	\N	GBIF	f
18.3937570	-77.059797	2024-01-02	Toxomerus arcifer		\N	GBIF	1	\N	\N	\N	\N	\N	2527	\N	GBIF	f
18.3936100	-77.059725	2024-01-02	Polistes crinitus		\N	GBIF	1	\N	\N	\N	\N	\N	2528	\N	GBIF	f
18.3936170	-77.059892	2024-01-02	Argiope argentata		\N	GBIF	1	\N	\N	\N	\N	\N	2529	\N	GBIF	f
18.3935370	-77.060095	2024-01-02	Paratrechina longicornis		\N	GBIF	1	\N	\N	\N	\N	\N	2530	\N	GBIF	f
18.3931680	-77.060156	2024-01-02	Polistes crinitus		\N	GBIF	1	\N	\N	\N	\N	\N	2531	\N	GBIF	f
18.3932730	-77.059848	2024-01-02	Omophoita cyanipennis		\N	GBIF	1	\N	\N	\N	\N	\N	2533	\N	GBIF	f
18.3930890	-77.060582	2024-01-02	Gasteracantha cancriformis		\N	GBIF	1	\N	\N	\N	\N	\N	2534	\N	GBIF	f
18.3930350	-77.060535	2024-01-02	Erythrodiplax umbrata		\N	GBIF	1	\N	\N	\N	\N	\N	2536	\N	GBIF	f
24.7032320	-81.080596	2024-01-01	Anadenobolus monilicornis		\N	GBIF	1	\N	\N	\N	\N	\N	2539	\N	GBIF	f
18.4444550	-66.028289	2024-01-03	Pseudosphinx tetrio		\N	GBIF	1	\N	\N	\N	\N	\N	2540	\N	GBIF	f
27.6166930	-80.374871	2024-01-03	Leucauge argyra		\N	GBIF	1	\N	\N	\N	\N	\N	2541	\N	GBIF	f
27.4603980	-80.314485	2024-01-03	Platynus cincticollis		\N	GBIF	1	\N	\N	\N	\N	\N	2542	\N	GBIF	f
27.7921680	-80.474475	2024-01-03	Danaus plexippus		\N	GBIF	1	\N	\N	\N	\N	\N	2543	\N	GBIF	f
19.3478570	-81.207994	2024-01-03	Pycnoscelus surinamensis		\N	GBIF	1	\N	\N	\N	\N	\N	2544	\N	GBIF	f
19.3244550	-69.279808	2024-01-03	Latrodectus geometricus		\N	GBIF	1	\N	\N	\N	\N	\N	2545	\N	GBIF	f
25.1374390	-80.935372	2024-01-03	Chauliognathus marginatus		\N	GBIF	1	\N	\N	\N	\N	\N	2546	\N	GBIF	f
27.7550830	-82.630133	2024-01-03	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2547	\N	GBIF	f
26.8692590	-82.032305	2024-01-03	Romalea microptera		\N	GBIF	1	\N	\N	\N	\N	\N	2548	\N	GBIF	f
25.9237210	-81.711697	2024-01-03	Leptotes cassius		\N	GBIF	1	\N	\N	\N	\N	\N	2549	\N	GBIF	f
25.9237090	-81.711703	2024-01-03	Hylephila phyleus		\N	GBIF	1	\N	\N	\N	\N	\N	2550	\N	GBIF	f
28.3442841	129.570435	2024-05-24	Ligia exotica	https://www.inaturalist.org/observations/217907673	https://inaturalist-open-data.s3.amazonaws.com/photos/385545395/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	228	\N	iNaturalist	f
27.7487720	-82.629333	2024-01-03	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2551	\N	GBIF	f
27.7487780	-82.629303	2024-01-03	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2552	\N	GBIF	f
27.7493700	-82.629670	2024-01-03	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2553	\N	GBIF	f
27.7495220	-82.629525	2024-01-03	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2554	\N	GBIF	f
27.7486220	-82.629250	2024-01-03	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2555	\N	GBIF	f
27.7502630	-82.629800	2024-01-03	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2556	\N	GBIF	f
27.7502370	-82.629822	2024-01-03	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2557	\N	GBIF	f
27.7555120	-82.629883	2024-01-03	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2558	\N	GBIF	f
26.4485110	-82.115718	2024-01-04	Gasteracantha cancriformis		\N	GBIF	1	\N	\N	\N	\N	\N	2582	\N	GBIF	f
18.9029350	-74.607496	2024-01-02	Electrostrymon angelia		\N	GBIF	1	\N	\N	\N	\N	\N	2583	\N	GBIF	f
27.7555920	-82.629805	2024-01-04	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2584	\N	GBIF	f
27.7550380	-82.629120	2024-01-04	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2585	\N	GBIF	f
27.7550000	-82.629112	2024-01-04	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2586	\N	GBIF	f
27.7549750	-82.629075	2024-01-04	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2587	\N	GBIF	f
27.7551700	-82.630013	2024-01-04	Callinectes sapidus		\N	GBIF	1	\N	\N	\N	\N	\N	2599	\N	GBIF	f
27.7147940	-82.686211	2024-01-03	Phocides pigmalion		\N	GBIF	1	\N	\N	\N	\N	\N	2600	\N	GBIF	f
18.3932900	-77.060378	2024-01-04	Leptoglossus gonagra		\N	GBIF	1	\N	\N	\N	\N	\N	2601	\N	GBIF	f
18.4346140	-77.168122	2024-01-04	Mithraculus sculptus		\N	GBIF	1	\N	\N	\N	\N	\N	2602	\N	GBIF	f
18.3920830	-77.060532	2024-01-04	Argiope argentata		\N	GBIF	1	\N	\N	\N	\N	\N	2604	\N	GBIF	f
24.6275110	-82.868116	2024-01-04	Coenobita clypeatus		\N	GBIF	1	\N	\N	\N	\N	\N	2605	\N	GBIF	f
26.4925800	-81.968742	2024-01-04	Rhynchophorus cruentatus		\N	GBIF	1	\N	\N	\N	\N	\N	2606	\N	GBIF	f
25.1971970	-80.874156	2024-01-04	Composia fidelissima		\N	GBIF	1	\N	\N	\N	\N	\N	2607	\N	GBIF	f
18.4654430	-66.086255	2024-01-04	Panulirus argus		\N	GBIF	1	\N	\N	\N	\N	\N	2608	\N	GBIF	f
18.4652300	-66.085429	2024-01-04	Panulirus argus		\N	GBIF	1	\N	\N	\N	\N	\N	2609	\N	GBIF	f
18.3927020	-77.060416	2024-01-04	Peregrinus maidis		\N	GBIF	1	\N	\N	\N	\N	\N	2610	\N	GBIF	f
25.1363470	-80.948525	2024-01-03	Callinectes sapidus		\N	GBIF	1	\N	\N	\N	\N	\N	2612	\N	GBIF	f
19.3872830	-81.383980	2024-01-04	Gecarcinus lateralis		\N	GBIF	1	\N	\N	\N	\N	\N	2613	\N	GBIF	f
26.4927950	-81.968667	2024-01-05	Pycnoscelus surinamensis		\N	GBIF	1	\N	\N	\N	\N	\N	2614	\N	GBIF	f
19.2897220	-81.108889	2024-01-04	Panulirus argus		\N	GBIF	1	\N	\N	\N	\N	\N	2615	\N	GBIF	f
25.1392470	-80.937229	2024-01-03	Corixidae		\N	GBIF	1	\N	\N	\N	\N	\N	2639	\N	GBIF	f
27.8914440	-82.531463	2024-01-05	Anartia jatrophae		\N	GBIF	1	\N	\N	\N	\N	\N	2640	\N	GBIF	f
27.3078550	-80.260462	2024-01-01	Gerstaeckeria hubbardi		\N	GBIF	1	\N	\N	\N	\N	\N	2641	\N	GBIF	f
24.9597430	-80.568155	2024-01-05	Halysidota cinctipes		\N	GBIF	1	\N	\N	\N	\N	\N	2642	\N	GBIF	f
26.9181120	-80.093461	2024-01-05	Gasteracantha cancriformis		\N	GBIF	1	\N	\N	\N	\N	\N	2643	\N	GBIF	f
18.4102020	-76.944290	2024-01-05	Heliconius charithonia		\N	GBIF	1	\N	\N	\N	\N	\N	2644	\N	GBIF	f
18.4110090	-76.945877	2024-01-05	Coenobita clypeatus		\N	GBIF	1	\N	\N	\N	\N	\N	2645	\N	GBIF	f
24.4726980	123.759678	2024-01-03	Pyrocoelia atripennis		\N	GBIF	1	\N	\N	\N	\N	\N	1002	\N	GBIF	f
27.2355850	123.880999	2022-01-24	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2821	\N	GBIF	f
27.3624530	125.044851	2022-01-24	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2822	\N	GBIF	f
22.2800000	120.380000	\N	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2831	\N	GBIF	f
20.4300000	116.420000	\N	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2832	\N	GBIF	f
22.4800000	121.110000	\N	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2833	\N	GBIF	f
34.6957970	138.411588	\N	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2834	\N	GBIF	f
34.7122250	138.438067	\N	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2835	\N	GBIF	f
34.7106700	138.400245	\N	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2836	\N	GBIF	f
34.9673000	138.596900	\N	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2837	\N	GBIF	f
34.9675000	138.599700	\N	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2838	\N	GBIF	f
34.9673000	138.596800	\N	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	2839	\N	GBIF	f
-26.3778960	153.848157	2023-02-17	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2841	\N	GBIF	f
27.7544720	-82.629525	2024-01-04	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2588	\N	GBIF	f
27.7555370	-82.629662	2024-01-04	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2589	\N	GBIF	f
17.9355120	-67.190487	2024-01-04	Coenobita clypeatus		\N	GBIF	1	\N	\N	\N	\N	\N	2590	\N	GBIF	f
-26.5909900	153.733000	1995-07-03	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2843	\N	GBIF	f
-34.5399900	151.379990	1994-03-28	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2844	\N	GBIF	f
-34.5343300	151.289990	1994-03-28	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2845	\N	GBIF	f
-29.8660000	153.700000	1977-08-23	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2872	\N	GBIF	f
-33.4500000	152.083000	1976-11-17	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2873	\N	GBIF	f
-33.6000000	151.950000	1976-12-21	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2874	\N	GBIF	f
-33.0660000	152.474990	1975-08-18	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2875	\N	GBIF	f
-33.4583300	152.083000	1975-08-19	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2876	\N	GBIF	f
-33.7000000	151.858330	1972-08-01	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2877	\N	GBIF	f
-33.9500000	151.750000	1972-11-06	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2878	\N	GBIF	f
-33.7416600	152.841660	1971-04-06	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2879	\N	GBIF	f
-33.6416600	152.016000	1971-04-21	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2880	\N	GBIF	f
-33.7083300	151.900000	1971-04-20	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2881	\N	GBIF	f
-32.8083300	152.733000	1971-05-07	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2882	\N	GBIF	f
-34.2660000	151.433000	1971-06-28	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2883	\N	GBIF	f
-34.9749900	151.141660	1971-07-07	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2884	\N	GBIF	f
-33.6249900	151.941660	1971-07-14	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2885	\N	GBIF	f
-34.4416600	151.308330	1971-07-06	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2886	\N	GBIF	f
-35.5660000	150.724990	1971-07-08	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2887	\N	GBIF	f
-33.6250000	151.942000	1971-07-14	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2888	\N	GBIF	f
-34.9750000	151.142000	1971-07-07	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2889	\N	GBIF	f
-37.5660000	149.916000	\N	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2890	\N	GBIF	f
-26.2500000	153.850000	\N	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2891	\N	GBIF	f
-35.5667000	150.716700	\N	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2892	\N	GBIF	f
-16.6653300	146.345160	1994-05-18	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2846	\N	GBIF	f
-26.5903300	153.691660	1994-08-03	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2847	\N	GBIF	f
-34.5501600	151.275660	1993-05-07	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2848	\N	GBIF	f
-18.0283330	147.341667	1986-05-17	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2849	\N	GBIF	f
-22.9500000	154.425000	1985-11-18	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2850	\N	GBIF	f
-22.9183300	154.354170	1985-11-17	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2851	\N	GBIF	f
-17.6333330	149.383333	1985-12-03	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2852	\N	GBIF	f
-27.5844440	153.950833	1983-03-31	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2853	\N	GBIF	f
-27.2166670	153.366667	1983-03-25	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2854	\N	GBIF	f
-27.5666670	153.933333	1983-03-24	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2855	\N	GBIF	f
-27.8858330	154.000833	1983-03-30	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2856	\N	GBIF	f
-27.2186110	153.902500	1983-03-31	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2857	\N	GBIF	f
-27.3191670	153.884444	1983-05-10	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2858	\N	GBIF	f
26.1981350	127.685272	2024-01-12	Argynnis hyperbius		\N	GBIF	1	\N	\N	\N	\N	\N	231	\N	GBIF	f
24.3651050	123.932678	2024-01-04	Coraebus hastanus		\N	GBIF	1	\N	\N	\N	\N	\N	1003	\N	GBIF	f
7.8333330	-54.283333	1980-04-24	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3181	\N	GBIF	f
7.8833330	-54.116667	1980-04-06	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3182	\N	GBIF	f
7.8833330	-54.083333	1980-06-27	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3183	\N	GBIF	f
-27.2022220	153.868889	1983-05-10	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2859	\N	GBIF	f
-27.2166670	153.868056	1983-05-09	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2860	\N	GBIF	f
-38.2700000	149.620000	\N	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2861	\N	GBIF	f
-23.7500000	153.233333	1983-11-29	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2862	\N	GBIF	f
-37.0000000	152.000000	1982-01-24	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2863	\N	GBIF	f
-27.3000000	153.900000	1982-08-13	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2864	\N	GBIF	f
-28.0166670	153.983333	1982-08-01	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2865	\N	GBIF	f
-27.3333330	153.900000	1982-09-26	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2866	\N	GBIF	f
-21.5961000	152.899000	1995-09-15	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3365	\N	GBIF	f
-21.9419400	153.072210	1995-09-15	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3366	\N	GBIF	f
-21.9180400	152.984440	1995-09-11	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3367	\N	GBIF	f
-16.6689900	146.333830	1994-05-18	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3368	\N	GBIF	f
-16.6803200	146.313500	1994-05-19	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3369	\N	GBIF	f
-23.5409900	152.274160	1994-06-02	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3372	\N	GBIF	f
-23.4361600	152.474320	1993-06-16	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3377	\N	GBIF	f
-23.5076600	152.038660	1993-06-16	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3378	\N	GBIF	f
-16.0000000	146.000000	1993-06-07	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3379	\N	GBIF	f
-5.1566600	145.851660	1991-03-09	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3383	\N	GBIF	f
-5.1399900	145.821660	1989-04-28	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3384	\N	GBIF	f
-18.0083300	147.120000	1986-01-11	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3385	\N	GBIF	f
-18.0016700	147.021670	1986-01-09	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3386	\N	GBIF	f
-18.0000000	147.033330	1986-01-08	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3387	\N	GBIF	f
-17.9933300	147.101670	1986-01-14	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3388	\N	GBIF	f
-18.0019440	147.017222	1986-01-12	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3389	\N	GBIF	f
-17.9766700	147.041670	1986-01-10	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3390	\N	GBIF	f
-17.9850000	147.005000	1986-01-09	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3391	\N	GBIF	f
-21.4633300	153.471670	1985-11-21	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3392	\N	GBIF	f
-22.9858300	152.975830	1985-11-18	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3393	\N	GBIF	f
-23.7500000	153.116667	1983-11-29	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3394	\N	GBIF	f
-23.5500000	152.383333	1983-12-01	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3395	\N	GBIF	f
-18.2500000	147.420000	\N	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3396	\N	GBIF	f
-23.5000000	153.066667	1980-09-20	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3397	\N	GBIF	f
-23.1833330	153.000000	1980-09-20	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3398	\N	GBIF	f
-23.0008330	153.302222	1980-10-03	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3400	\N	GBIF	f
-18.0500000	147.166000	1979-02-27	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3401	\N	GBIF	f
-18.0333330	147.200000	1979-02-27	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3402	\N	GBIF	f
-21.7000000	152.916667	\N	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3403	\N	GBIF	f
19.6333330	113.516667	1963-12-19	Bathynomus affinis		\N	GBIF	1	\N	\N	\N	\N	\N	3406	\N	GBIF	f
24.4450120	123.828114	2024-01-02	Oxya chinensis		\N	GBIF	1	\N	\N	\N	\N	\N	985	\N	GBIF	f
24.5829370	123.975624	2024-01-02	Oxya chinensis		\N	GBIF	1	\N	\N	\N	\N	\N	986	\N	GBIF	f
24.5914080	123.975556	2024-01-03	Phaulula daitoensis		\N	GBIF	1	\N	\N	\N	\N	\N	987	\N	GBIF	f
24.5246470	123.875321	2024-01-03	Amantis nawai		\N	GBIF	1	\N	\N	\N	\N	\N	988	\N	GBIF	f
24.5877940	123.887815	2024-01-03	Metaemene atrigutta		\N	GBIF	1	\N	\N	\N	\N	\N	989	\N	GBIF	f
24.4810840	123.869022	2024-01-03	Arcte coerula		\N	GBIF	1	\N	\N	\N	\N	\N	990	\N	GBIF	f
24.4475810	123.828132	2024-01-20	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	1093	\N	GBIF	f
24.4205890	123.901397	2024-01-20	Entoria ishigakiensis		\N	GBIF	1	\N	\N	\N	\N	\N	1094	\N	GBIF	f
4.0000000	-88.001400	\N	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3304	\N	GBIF	f
28.3815000	-86.233333	\N	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3305	\N	GBIF	f
9.9500000	-76.168300	\N	Bathynomus giganteus		\N	GBIF	1	\N	\N	\N	\N	\N	3306	\N	GBIF	f
29.8335840	122.207338	2022-12-15	Bathynomus doederleini		\N	GBIF	1	\N	\N	\N	\N	\N	3312	\N	GBIF	f
19.0840000	115.250000	2020-05-12	Bathynomus jamesi		\N	GBIF	1	\N	\N	\N	\N	\N	3316	\N	GBIF	f
20.7170000	116.700000	2019-06-17	Bathynomus jamesi		\N	GBIF	1	\N	\N	\N	\N	\N	3318	\N	GBIF	f
13.8500000	120.500000	1976-03-25	Bathynomus jamesi		\N	GBIF	1	\N	\N	\N	\N	\N	3320	\N	GBIF	f
17.7800000	110.640000	\N	BOLDADK0348		\N	GBIF	1	\N	\N	\N	\N	\N	3321	\N	GBIF	f
-13.2120000	96.241600	2022-10-22	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3323	\N	GBIF	f
-20.7500000	114.166700	\N	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3324	\N	GBIF	f
-18.6100000	118.250000	1991-09-26	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3325	\N	GBIF	f
-26.1163000	113.150000	1990-01-15	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3326	\N	GBIF	f
-13.0000000	123.000000	\N	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3327	\N	GBIF	f
-19.0166000	115.883300	1987-02-27	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3328	\N	GBIF	f
-9.7666700	129.900000	1987-09-22	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3329	\N	GBIF	f
-17.8616670	147.165000	1986-05-17	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3330	\N	GBIF	f
37.0368897	122.556832	2024-10-04	Isopoda	https://www.inaturalist.org/observations/246282626	https://inaturalist-open-data.s3.amazonaws.com/photos/439637039/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	1	\N	iNaturalist	f
10.0041670	-76.255000	2009-10-28	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3074	PRESERVED_SPECIMEN	GBIF	f
-21.8308200	152.963050	1995-09-11	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3363	\N	GBIF	f
24.5488630	123.864894	2024-01-13	Neurothemis taiwanensis		\N	GBIF	1	\N	\N	\N	\N	\N	576	\N	GBIF	f
-17.8500000	118.483330	1985-11-07	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3331	\N	GBIF	f
-17.3666700	118.633330	1985-11-02	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3332	\N	GBIF	f
-18.0633300	118.233330	1984-01-28	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3333	\N	GBIF	f
-18.6660000	116.500000	1982-04-05	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3354	\N	GBIF	f
-18.6660000	116.700000	1982-04-04	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3355	\N	GBIF	f
-30.5327000	115.050000	\N	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3356	\N	GBIF	f
-18.3000000	108.133300	1978-05-20	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3357	\N	GBIF	f
-17.6000000	146.800000	2000-08-19	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3359	\N	GBIF	f
-22.2430000	153.205317	1997-02-15	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3360	\N	GBIF	f
-21.7177700	152.955830	1995-09-16	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3361	\N	GBIF	f
-21.9201300	153.066520	1995-09-10	Bathynomus immanis		\N	GBIF	1	\N	\N	\N	\N	\N	3362	\N	GBIF	f
27.8036940	-82.596251	2024-01-01	Tozeuma carolinense		\N	GBIF	1	\N	\N	\N	\N	\N	2471	\N	GBIF	f
25.7167790	-80.150026	2024-01-01	Tanaostigmodes pithecellobiae		\N	GBIF	1	\N	\N	\N	\N	\N	2245	\N	GBIF	f
37.8278986	138.210454	2024-06-01	Ligia exotica	https://www.inaturalist.org/observations/238906839	https://inaturalist-open-data.s3.amazonaws.com/photos/425405549/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	61	\N	iNaturalist	f
37.8129465	138.270649	2024-06-01	Ligia exotica	https://www.inaturalist.org/observations/238903159	https://inaturalist-open-data.s3.amazonaws.com/photos/425398422/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	62	\N	iNaturalist	f
25.1785370	-80.874248	2024-01-01	Danaus plexippus		\N	GBIF	1	\N	\N	\N	\N	\N	2331	\N	GBIF	f
25.1737170	-80.899620	2024-01-01	Megalopyge opercularis		\N	GBIF	1	\N	\N	\N	\N	\N	2332	\N	GBIF	f
35.0510165	126.097073	2024-08-25	Ligia exotica	https://www.inaturalist.org/observations/238599804	https://inaturalist-open-data.s3.amazonaws.com/photos/424809340/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	63	\N	iNaturalist	f
34.7912060	126.411082	2024-07-06	Armadillidium vulgare	https://www.inaturalist.org/observations/238597754	https://inaturalist-open-data.s3.amazonaws.com/photos/424794431/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	64	\N	iNaturalist	f
27.8044240	-82.594730	2024-01-01	Pagurus longicarpus		\N	GBIF	1	\N	\N	\N	\N	\N	2468	\N	GBIF	f
27.8027650	-82.596249	2024-01-01	Pagurus maclaughlinae		\N	GBIF	1	\N	\N	\N	\N	\N	2469	\N	GBIF	f
19.7605700	-70.486763	2024-01-01	Dryas iulia		\N	GBIF	1	\N	\N	\N	\N	\N	2446	\N	GBIF	f
24.1712470	-76.444113	2024-01-01	Erinnyis ello		\N	GBIF	1	\N	\N	\N	\N	\N	2447	\N	GBIF	f
17.9558250	-76.723361	2024-01-01	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	2448	\N	GBIF	f
17.9559730	-76.723465	2024-01-01	Solenopsis geminata		\N	GBIF	1	\N	\N	\N	\N	\N	2449	\N	GBIF	f
17.9558320	-76.723303	2024-01-01	Polistes dorsalis		\N	GBIF	1	\N	\N	\N	\N	\N	2450	\N	GBIF	f
17.9558200	-76.723327	2024-01-01	Pachodynerus nasidens		\N	GBIF	1	\N	\N	\N	\N	\N	2451	\N	GBIF	f
34.7900759	126.409452	2024-08-28	Armadillidium vulgare	https://www.inaturalist.org/observations/238385933	https://inaturalist-open-data.s3.amazonaws.com/photos/424400744/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	65	\N	iNaturalist	f
42.9763694	131.898689	2024-08-12	Ligia cinerascens	https://www.inaturalist.org/observations/238385336	https://inaturalist-open-data.s3.amazonaws.com/photos/424399694/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	66	\N	iNaturalist	f
17.9559070	-76.723503	2024-01-01	Pachodynerus nasidens		\N	GBIF	1	\N	\N	\N	\N	\N	2452	\N	GBIF	f
17.9558150	-76.723435	2024-01-01	Paratrechina longicornis		\N	GBIF	1	\N	\N	\N	\N	\N	2453	\N	GBIF	f
17.9558630	-76.723340	2024-01-01	Polistes dorsalis		\N	GBIF	1	\N	\N	\N	\N	\N	2454	\N	GBIF	f
35.1326965	139.619838	2024-08-24	Ligia	https://www.inaturalist.org/observations/237823464	https://inaturalist-open-data.s3.amazonaws.com/photos/423310865/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	67	\N	iNaturalist	f
34.6733833	138.974903	2024-08-24	Ligia exotica	https://www.inaturalist.org/observations/237779915	https://static.inaturalist.org/photos/423226015/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	69	\N	iNaturalist	f
35.0792968	128.895503	2024-08-24	Ligia exotica	https://www.inaturalist.org/observations/237638218	https://inaturalist-open-data.s3.amazonaws.com/photos/422954468/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	70	\N	iNaturalist	f
35.0625398	139.797754	2014-11-01	Tylos granuliferus	https://www.inaturalist.org/observations/233823397	https://inaturalist-open-data.s3.amazonaws.com/photos/415346417/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	113	\N	iNaturalist	f
35.0794187	128.895467	2024-08-24	Ligia exotica	https://www.inaturalist.org/observations/237638169	https://inaturalist-open-data.s3.amazonaws.com/photos/422954429/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	71	\N	iNaturalist	f
35.0799471	128.895404	2024-08-24	Ligia exotica	https://www.inaturalist.org/observations/237638089	https://inaturalist-open-data.s3.amazonaws.com/photos/422954218/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	72	\N	iNaturalist	f
33.3062667	134.110275	2024-08-07	Ligia exotica	https://www.inaturalist.org/observations/237634107	https://inaturalist-open-data.s3.amazonaws.com/photos/422946847/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	73	\N	iNaturalist	f
35.2754223	139.702057	2024-08-24	Ligia	https://www.inaturalist.org/observations/237589715	https://inaturalist-open-data.s3.amazonaws.com/photos/422863691/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	74	\N	iNaturalist	f
33.4625800	126.938470	2018-09-01	Ligia	https://www.inaturalist.org/observations/237537798	https://static.inaturalist.org/photos/422758800/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	75	\N	iNaturalist	f
36.6699693	126.394379	2024-08-21	Porcellionides pruinosus	https://www.inaturalist.org/observations/237056061	https://static.inaturalist.org/photos/421830809/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	76	\N	iNaturalist	f
35.1297194	139.627172	2024-08-19	Ligia	https://www.inaturalist.org/observations/236953527	https://static.inaturalist.org/photos/421631293/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	77	\N	iNaturalist	f
43.0298501	131.896683	2024-08-19	Ligia cinerascens	https://www.inaturalist.org/observations/236685822	https://inaturalist-open-data.s3.amazonaws.com/photos/421114793/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	78	\N	iNaturalist	f
30.7347640	122.443564	2024-08-16	Ligia	https://www.inaturalist.org/observations/236668619	https://static.inaturalist.org/photos/421080149/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	79	\N	iNaturalist	f
17.9558770	-76.723328	2024-01-01	Orphulella punctata		\N	GBIF	1	\N	\N	\N	\N	\N	2455	\N	GBIF	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3687		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3688		expedition	f
26.2130323	127.678547	2024-08-17	Ligia exotica	https://www.inaturalist.org/observations/236496313	https://inaturalist-open-data.s3.amazonaws.com/photos/420748320/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	80	\N	iNaturalist	f
42.9450750	131.871095	2024-08-17	Ligia cinerascens	https://www.inaturalist.org/observations/236393124	https://inaturalist-open-data.s3.amazonaws.com/photos/420550425/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	81	\N	iNaturalist	f
37.2174768	126.181952	2024-08-17	Ligia exotica	https://www.inaturalist.org/observations/236247542	https://inaturalist-open-data.s3.amazonaws.com/photos/420278538/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	82	\N	iNaturalist	f
24.5365360	123.945300	2024-01-05	Acrida cinerea		\N	GBIF	1	\N	\N	\N	\N	\N	1005	\N	GBIF	f
17.9557520	-76.722988	2024-01-01	Anartia jatrophae		\N	GBIF	1	\N	\N	\N	\N	\N	2456	\N	GBIF	f
27.2592050	-80.240233	2024-01-01	Acacesia hamata		\N	GBIF	1	\N	\N	\N	\N	\N	2473	\N	GBIF	f
30.3155593	130.651617	2024-08-17	Ligia	https://www.inaturalist.org/observations/236232545	https://inaturalist-open-data.s3.amazonaws.com/photos/420249670/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	83	\N	iNaturalist	f
30.3152739	130.654882	2024-08-17	Ligia	https://www.inaturalist.org/observations/236223556	https://inaturalist-open-data.s3.amazonaws.com/photos/420232838/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	84	\N	iNaturalist	f
41.7715373	140.716244	2024-08-06	Armadillidium vulgare	https://www.inaturalist.org/observations/235763144	https://inaturalist-open-data.s3.amazonaws.com/photos/419332369/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	85	\N	iNaturalist	f
31.7903559	129.782649	2024-07-22	Ligia	https://www.inaturalist.org/observations/235532628	https://inaturalist-open-data.s3.amazonaws.com/photos/418894394/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	86	\N	iNaturalist	f
34.2676873	133.184184	2024-08-13	Ligia exotica	https://www.inaturalist.org/observations/235524239	https://static.inaturalist.org/photos/418882116/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	87	\N	iNaturalist	f
35.6380926	139.929285	2024-08-13	Ligia exotica	https://www.inaturalist.org/observations/235484643	https://inaturalist-open-data.s3.amazonaws.com/photos/418805687/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	88	\N	iNaturalist	f
34.2975172	132.319243	2024-08-12	Ligia exotica	https://www.inaturalist.org/observations/235314114	https://static.inaturalist.org/photos/418474677/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	89	\N	iNaturalist	f
38.7254417	139.683155	2024-08-02	Ligia exotica	https://www.inaturalist.org/observations/235206221	https://inaturalist-open-data.s3.amazonaws.com/photos/418256078/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	90	\N	iNaturalist	f
33.3940588	126.237638	2023-07-03	Ligia exotica	https://www.inaturalist.org/observations/234870435	https://static.inaturalist.org/photos/417615812/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	92	\N	iNaturalist	f
35.0990478	139.632335	2014-11-30	Armadilloniscus	https://www.inaturalist.org/observations/234853579	https://inaturalist-open-data.s3.amazonaws.com/photos/417582308/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	93	\N	iNaturalist	f
37.9000615	138.986588	2014-11-23	Ligiidae	https://www.inaturalist.org/observations/234685459	https://inaturalist-open-data.s3.amazonaws.com/photos/417246613/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	94	\N	iNaturalist	f
34.3002890	130.800493	2024-06-07	Alloniscus	https://www.inaturalist.org/observations/234679877	https://inaturalist-open-data.s3.amazonaws.com/photos/417241670/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	95	\N	iNaturalist	f
34.3789125	130.885227	2024-06-07	Tylos granuliferus	https://www.inaturalist.org/observations/234679871	https://inaturalist-open-data.s3.amazonaws.com/photos/417241632/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	96	\N	iNaturalist	f
34.3327559	130.961031	2024-06-07	Sphaeromatidae	https://www.inaturalist.org/observations/234679861	https://inaturalist-open-data.s3.amazonaws.com/photos/417240537/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	97	\N	iNaturalist	f
37.4872435	130.825794	2024-07-11	Armadillidium	https://www.inaturalist.org/observations/234651619	https://inaturalist-open-data.s3.amazonaws.com/photos/417166562/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	98	\N	iNaturalist	f
37.8060833	138.241622	2024-08-03	Ligia exotica	https://www.inaturalist.org/observations/234503416	https://inaturalist-open-data.s3.amazonaws.com/photos/416900354/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	99	\N	iNaturalist	f
36.9906833	126.918617	2024-08-07	Armadillidium	https://www.inaturalist.org/observations/234435059	https://inaturalist-open-data.s3.amazonaws.com/photos/416765696/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	100	\N	iNaturalist	f
35.0411395	139.606165	2014-11-03	Tylos granuliferus	https://www.inaturalist.org/observations/234151216	https://inaturalist-open-data.s3.amazonaws.com/photos/416216213/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	101	\N	iNaturalist	f
35.1738014	139.799055	2014-11-03	Tylos granuliferus	https://www.inaturalist.org/observations/234149863	https://inaturalist-open-data.s3.amazonaws.com/photos/416210220/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	102	\N	iNaturalist	f
26.6394250	127.869135	2024-08-04	Ligia	https://www.inaturalist.org/observations/234098102	https://static.inaturalist.org/photos/416116327/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	103	\N	iNaturalist	f
37.5328028	122.064583	2024-06-21	Ligia exotica	https://www.inaturalist.org/observations/239621411	https://static.inaturalist.org/photos/426792505/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	50	\N	iNaturalist	f
34.9073332	138.794188	2024-08-03	Agnaridae	https://www.inaturalist.org/observations/233929550	https://inaturalist-open-data.s3.amazonaws.com/photos/415788666/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	104	\N	iNaturalist	f
35.0439705	139.743065	2014-11-02	Tylos granuliferus	https://www.inaturalist.org/observations/233823427	https://inaturalist-open-data.s3.amazonaws.com/photos/415348800/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	105	\N	iNaturalist	f
35.0611999	139.672946	2014-11-02	Tylos granuliferus	https://www.inaturalist.org/observations/233823420	https://inaturalist-open-data.s3.amazonaws.com/photos/415348392/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	106	\N	iNaturalist	f
35.0801720	139.712875	2014-11-01	Tylos granuliferus	https://www.inaturalist.org/observations/233823419	https://inaturalist-open-data.s3.amazonaws.com/photos/415347557/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	107	\N	iNaturalist	f
35.1402113	139.650367	2014-11-01	Tylos granuliferus	https://www.inaturalist.org/observations/233823418	https://inaturalist-open-data.s3.amazonaws.com/photos/415348045/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	108	\N	iNaturalist	f
35.0002479	139.767488	2014-11-01	Tylos granuliferus	https://www.inaturalist.org/observations/233823412	https://inaturalist-open-data.s3.amazonaws.com/photos/415347194/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	109	\N	iNaturalist	f
35.1313420	139.640866	2014-11-01	Tylos granuliferus	https://www.inaturalist.org/observations/233823408	https://inaturalist-open-data.s3.amazonaws.com/photos/415347009/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	110	\N	iNaturalist	f
28.0755110	-82.835792	2024-01-01	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2474	\N	GBIF	f
24.6551700	-81.278900	2024-01-01	Automeris io		\N	GBIF	1	\N	\N	\N	\N	\N	2475	\N	GBIF	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3689		expedition	f
35.0162215	139.793217	2014-11-01	Tylos granuliferus	https://www.inaturalist.org/observations/233823403	https://inaturalist-open-data.s3.amazonaws.com/photos/415346810/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	111	\N	iNaturalist	f
35.0442580	139.643748	2014-11-01	Tylos granuliferus	https://www.inaturalist.org/observations/233823402	https://inaturalist-open-data.s3.amazonaws.com/photos/415346585/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	112	\N	iNaturalist	f
25.1413870	-80.925175	2024-01-01	Erythrodiplax berenice		\N	GBIF	1	\N	\N	\N	\N	\N	2477	\N	GBIF	f
25.1761760	-80.874272	2024-01-01	Junonia neildi		\N	GBIF	1	\N	\N	\N	\N	\N	2478	\N	GBIF	f
30.1925050	122.685150	2024-08-04	Ligia exotica	https://www.inaturalist.org/observations/233623127	https://inaturalist-open-data.s3.amazonaws.com/photos/415211137/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	114	\N	iNaturalist	f
36.2376861	136.125958	2024-07-31	Ligia exotica	https://www.inaturalist.org/observations/232857282	https://static.inaturalist.org/photos/413756763/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	115	\N	iNaturalist	f
33.2448521	126.571803	2024-07-30	Ligia exotica	https://www.inaturalist.org/observations/232821298	https://inaturalist-open-data.s3.amazonaws.com/photos/413684004/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	116	\N	iNaturalist	f
45.1852455	141.131730	2024-07-30	Ligia	https://www.inaturalist.org/observations/232682038	https://static.inaturalist.org/photos/413415857/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	117	\N	iNaturalist	f
32.6093980	130.174948	2024-07-29	Ligia exotica	https://www.inaturalist.org/observations/232480444	https://inaturalist-open-data.s3.amazonaws.com/photos/413032228/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	118	\N	iNaturalist	f
34.5936841	127.507881	2024-07-29	Ligia exotica	https://www.inaturalist.org/observations/232449286	https://inaturalist-open-data.s3.amazonaws.com/photos/412972471/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	119	\N	iNaturalist	f
26.2009501	127.682821	2024-07-28	Ligiidae	https://www.inaturalist.org/observations/232225575	https://inaturalist-open-data.s3.amazonaws.com/photos/412549699/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	120	\N	iNaturalist	f
34.5089660	136.788638	2023-09-19	Ligia	https://www.inaturalist.org/observations/232182103	https://inaturalist-open-data.s3.amazonaws.com/photos/412463609/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	121	\N	iNaturalist	f
30.2406264	122.321508	2024-07-22	Ligia	https://www.inaturalist.org/observations/231368493	https://inaturalist-open-data.s3.amazonaws.com/photos/410925616/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	122	\N	iNaturalist	f
42.8147690	132.453423	2024-07-21	Ligia cinerascens	https://www.inaturalist.org/observations/230998018	https://static.inaturalist.org/photos/410216918/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	124	\N	iNaturalist	f
33.5150000	126.514167	2024-07-22	Ligia exotica	https://www.inaturalist.org/observations/230936003	https://inaturalist-open-data.s3.amazonaws.com/photos/410103868/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	125	\N	iNaturalist	f
34.7872268	126.410368	2024-07-21	Armadillidium nasatum	https://www.inaturalist.org/observations/230876160	https://inaturalist-open-data.s3.amazonaws.com/photos/409986089/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	126	\N	iNaturalist	f
37.3122250	126.606133	2024-07-21	Ligia	https://www.inaturalist.org/observations/230708939	https://inaturalist-open-data.s3.amazonaws.com/photos/412951431/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	127	\N	iNaturalist	f
31.5822117	130.591767	2024-07-14	Ligia exotica	https://www.inaturalist.org/observations/230465327	https://inaturalist-open-data.s3.amazonaws.com/photos/409221207/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	128	\N	iNaturalist	f
29.9780032	122.394573	2024-07-20	Ligia exotica	https://www.inaturalist.org/observations/230413445	https://static.inaturalist.org/photos/409126054/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	129	\N	iNaturalist	f
42.8279023	131.616265	2024-07-17	Ligia cinerascens	https://www.inaturalist.org/observations/229865527	https://inaturalist-open-data.s3.amazonaws.com/photos/408079624/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	130	\N	iNaturalist	f
35.1535461	129.146211	2024-07-17	Ligia exotica	https://www.inaturalist.org/observations/229859537	https://static.inaturalist.org/photos/408068371/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	131	\N	iNaturalist	f
35.1525361	129.152664	2024-07-17	Porcellionides pruinosus	https://www.inaturalist.org/observations/229848835	https://inaturalist-open-data.s3.amazonaws.com/photos/408049291/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	132	\N	iNaturalist	f
30.1879327	122.688614	2024-07-17	Ligia exotica	https://www.inaturalist.org/observations/229820270	https://inaturalist-open-data.s3.amazonaws.com/photos/407992073/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	133	\N	iNaturalist	f
42.8278960	131.616296	2024-07-17	Ligia cinerascens	https://www.inaturalist.org/observations/229819475	https://static.inaturalist.org/photos/407990642/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	134	\N	iNaturalist	f
29.8066818	122.347420	2024-07-15	Ligia exotica	https://www.inaturalist.org/observations/229643094	https://inaturalist-open-data.s3.amazonaws.com/photos/407656598/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	135	\N	iNaturalist	f
43.1451560	132.057705	2024-07-15	Idotea ochotensis	https://www.inaturalist.org/observations/229491477	https://inaturalist-open-data.s3.amazonaws.com/photos/407367258/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	136	\N	iNaturalist	f
35.1587406	129.169382	2024-07-14	Ligia	https://www.inaturalist.org/observations/229251977	https://inaturalist-open-data.s3.amazonaws.com/photos/406915967/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	137	\N	iNaturalist	f
36.0770761	129.569630	2024-08-11	Ligia	https://www.inaturalist.org/observations/234966833	https://static.inaturalist.org/photos/417798013/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	91	\N	iNaturalist	f
34.7902526	126.409663	2024-07-14	Armadillidium vulgare	https://www.inaturalist.org/observations/229240185	https://inaturalist-open-data.s3.amazonaws.com/photos/406894722/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	138	\N	iNaturalist	f
30.1671310	122.191220	2022-01-16	Sphaeromatidae	https://www.inaturalist.org/observations/229239350	https://inaturalist-open-data.s3.amazonaws.com/photos/406895398/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	139	\N	iNaturalist	f
35.1584528	129.169128	2024-07-14	Ligia	https://www.inaturalist.org/observations/229209089	https://inaturalist-open-data.s3.amazonaws.com/photos/406839899/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	140	\N	iNaturalist	f
35.1588250	129.169725	2024-07-14	Ligia	https://www.inaturalist.org/observations/229208845	https://inaturalist-open-data.s3.amazonaws.com/photos/406839258/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	141	\N	iNaturalist	f
35.1589250	129.169664	2024-07-14	Ligia	https://www.inaturalist.org/observations/229208200	https://inaturalist-open-data.s3.amazonaws.com/photos/407155606/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	142	\N	iNaturalist	f
35.0796778	129.042831	2024-07-13	Ligia exotica	https://www.inaturalist.org/observations/228984678	https://inaturalist-open-data.s3.amazonaws.com/photos/406418738/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	143	\N	iNaturalist	f
35.0796138	129.043214	2024-07-13	Armadillidium vulgare	https://www.inaturalist.org/observations/228984657	https://inaturalist-open-data.s3.amazonaws.com/photos/406418690/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	144	\N	iNaturalist	f
35.0791972	129.044297	2024-07-13	Armadillidium vulgare	https://www.inaturalist.org/observations/228983733	https://inaturalist-open-data.s3.amazonaws.com/photos/406416983/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	145	\N	iNaturalist	f
33.5228717	126.850687	2024-07-12	Ligia	https://www.inaturalist.org/observations/228834921	https://inaturalist-open-data.s3.amazonaws.com/photos/406128564/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	146	\N	iNaturalist	f
43.1221458	131.874705	2024-07-11	Ligia	https://www.inaturalist.org/observations/228606491	\N	iNaturalist	1	\N	\N	\N	\N	\N	147	\N	iNaturalist	f
19.3810370	-81.383177	2024-01-01	Panulirus argus		\N	GBIF	1	\N	\N	\N	\N	\N	2479	\N	GBIF	f
27.8513030	-82.601578	2024-01-01	Trichonephila clavipes		\N	GBIF	1	\N	\N	\N	\N	\N	2480	\N	GBIF	f
25.7148370	-80.151296	2024-01-01	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	2481	\N	GBIF	f
35.0412140	128.966732	2024-07-07	Ligia	https://www.inaturalist.org/observations/228599996	https://inaturalist-open-data.s3.amazonaws.com/photos/405679365/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	148	\N	iNaturalist	f
25.1374192	-80.951750	2024-03-13	Ligia	https://www.inaturalist.org/observations/202605041	https://www.inaturalist.org/observations/202605041	iNaturalist	1	\N	\N	\N	\N	\N	1521	\N	iNaturalist	f
26.3636056	127.737762	2024-07-11	Ligia	https://www.inaturalist.org/observations/228581858	https://static.inaturalist.org/photos/405645780/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	149	\N	iNaturalist	f
30.2704950	130.414318	2024-07-09	Ligia exotica	https://www.inaturalist.org/observations/228522831	https://inaturalist-open-data.s3.amazonaws.com/photos/405528898/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	150	\N	iNaturalist	f
33.5055272	135.599692	2024-07-06	Ligia	https://www.inaturalist.org/observations/227435565	https://inaturalist-open-data.s3.amazonaws.com/photos/403476574/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	152	\N	iNaturalist	f
34.7948593	126.410072	2024-07-04	Armadillidium vulgare	https://www.inaturalist.org/observations/227064144	https://inaturalist-open-data.s3.amazonaws.com/photos/402773837/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	154	\N	iNaturalist	f
36.3230667	126.503662	2024-07-03	Ligia exotica	https://www.inaturalist.org/observations/226902979	https://inaturalist-open-data.s3.amazonaws.com/photos/402466570/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	155	\N	iNaturalist	f
37.4923972	126.579359	2024-07-03	Ligia exotica	https://www.inaturalist.org/observations/226820016	https://static.inaturalist.org/photos/402314845/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	156	\N	iNaturalist	f
36.6699924	126.394523	2024-07-03	Oniscidea	https://www.inaturalist.org/observations/226799732	https://static.inaturalist.org/photos/402273899/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	157	\N	iNaturalist	f
34.4587033	133.999192	2024-06-26	Ligia exotica	https://www.inaturalist.org/observations/226779774	https://static.inaturalist.org/photos/402235948/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	158	\N	iNaturalist	f
34.5299819	135.075071	2024-07-01	Armadillidium vulgare	https://www.inaturalist.org/observations/226369657	https://static.inaturalist.org/photos/401462636/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	159	\N	iNaturalist	f
42.9481722	131.874497	2024-06-18	Ligia cinerascens	https://www.inaturalist.org/observations/226214695	https://inaturalist-open-data.s3.amazonaws.com/photos/401162180/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	160	\N	iNaturalist	f
34.6306503	135.307900	2024-06-20	Armadillidium vulgare	https://www.inaturalist.org/observations/226166891	https://static.inaturalist.org/photos/401075697/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	161	\N	iNaturalist	f
35.6777661	134.609276	2024-06-22	Ligia	https://www.inaturalist.org/observations/226159830	https://static.inaturalist.org/photos/401062558/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	162	\N	iNaturalist	f
33.5613147	126.814703	2024-06-08	Ligia exotica	https://www.inaturalist.org/observations/221728466	https://inaturalist-open-data.s3.amazonaws.com/photos/392688358/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	211	\N	iNaturalist	f
34.3568127	134.110289	2024-06-09	Porcellionides pruinosus	https://www.inaturalist.org/observations/221606412	https://static.inaturalist.org/photos/392457906/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	212	\N	iNaturalist	f
34.7869583	126.411407	2024-06-09	Ligia exotica	https://www.inaturalist.org/observations/221575399	https://inaturalist-open-data.s3.amazonaws.com/photos/392390845/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	214	\N	iNaturalist	f
26.6920166	127.929782	2024-05-12	Armadillidium	https://www.inaturalist.org/observations/221341612	https://inaturalist-open-data.s3.amazonaws.com/photos/391950548/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	216	\N	iNaturalist	f
36.6699193	126.394559	2024-06-08	Porcellio scaber	https://www.inaturalist.org/observations/221247065	https://static.inaturalist.org/photos/391804932/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	217	\N	iNaturalist	f
30.0095252	122.332088	\N	Ligia exotica	https://www.inaturalist.org/observations/221082242	https://inaturalist-open-data.s3.amazonaws.com/photos/392155028/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	218	\N	iNaturalist	f
33.3792222	126.215450	2024-06-05	Ligia exotica	https://www.inaturalist.org/observations/220692961	https://inaturalist-open-data.s3.amazonaws.com/photos/390759079/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	219	\N	iNaturalist	f
45.0388828	136.677041	2024-06-02	Idotea ochotensis	https://www.inaturalist.org/observations/219982640	https://static.inaturalist.org/photos/389427136/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	220	\N	iNaturalist	f
24.7624213	-80.892935	2024-01-14	Ligia exotica	https://www.inaturalist.org/observations/196841496	https://www.inaturalist.org/observations/196841496	iNaturalist	1	\N	\N	\N	\N	\N	1584	\N	iNaturalist	f
33.3304133	129.467072	2023-03-16	Ligidium koreanum	https://www.inaturalist.org/observations/219980200	https://static.inaturalist.org/photos/389422352/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	221	\N	iNaturalist	f
42.6208685	131.129499	2024-05-27	Porcellio scaber	https://www.inaturalist.org/observations/218513423	https://inaturalist-open-data.s3.amazonaws.com/photos/386673332/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	227	\N	iNaturalist	f
28.4691367	129.669175	2021-12-25	Ligia ryukyuensis	https://www.inaturalist.org/observations/219496269	https://static.inaturalist.org/photos/388519807/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	222	\N	iNaturalist	f
28.4590335	129.765514	2022-02-27	Cymothooidea	https://www.inaturalist.org/observations/219395868	https://static.inaturalist.org/photos/388328651/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	223	\N	iNaturalist	f
28.0553217	129.386729	2022-03-12	Ligia ryukyuensis	https://www.inaturalist.org/observations/219292446	https://static.inaturalist.org/photos/388139150/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	224	\N	iNaturalist	f
28.1247833	129.362828	2022-03-12	Alloniscus ryukyuensis	https://www.inaturalist.org/observations/219289065	https://static.inaturalist.org/photos/388132962/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	225	\N	iNaturalist	f
43.0778453	131.955555	2024-05-28	Porcellio scaber	https://www.inaturalist.org/observations/218860896	https://inaturalist-open-data.s3.amazonaws.com/photos/387331669/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	226	\N	iNaturalist	f
30.4315000	130.456362	2023-05-20	Ligia exotica	https://www.inaturalist.org/observations/162588997	https://inaturalist-open-data.s3.amazonaws.com/photos/281144917/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	563	\N	iNaturalist	f
24.3967578	123.883703	2012-03-25	Burmoniscus	https://www.inaturalist.org/observations/162582800	https://inaturalist-open-data.s3.amazonaws.com/photos/280928345/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	564	\N	iNaturalist	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3690		expedition	f
35.6947129	140.865294	2023-03-11	Idotea	https://www.inaturalist.org/observations/162492174	https://inaturalist-open-data.s3.amazonaws.com/photos/280969645/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	565	\N	iNaturalist	f
25.7166340	-80.150109	2024-01-01	Ischnura ramburii		\N	GBIF	1	\N	\N	\N	\N	\N	2482	\N	GBIF	f
25.7146850	-80.151584	2024-01-01	Apis mellifera		\N	GBIF	1	\N	\N	\N	\N	\N	2483	\N	GBIF	f
26.5243910	-82.193830	2024-01-01	Hepatus epheliticus		\N	GBIF	1	\N	\N	\N	\N	\N	2484	\N	GBIF	f
17.9448200	-76.728028	2024-01-02	Dysdercus andreae		\N	GBIF	1	\N	\N	\N	\N	\N	2486	\N	GBIF	f
28.3630300	-80.607925	2024-04-17	Armadillidium vulgare	https://www.inaturalist.org/observations/207751836	https://www.inaturalist.org/observations/207751836	iNaturalist	1	\N	\N	\N	\N	\N	1484	\N	iNaturalist	f
27.4522131	-82.689207	2024-04-11	Ligia exotica	https://www.inaturalist.org/observations/207656331	https://www.inaturalist.org/observations/207656331	iNaturalist	1	\N	\N	\N	\N	\N	1485	\N	iNaturalist	f
18.4135167	-77.092378	2024-04-07	Ligia exotica	https://www.inaturalist.org/observations/207316022	https://www.inaturalist.org/observations/207316022	iNaturalist	1	\N	\N	\N	\N	\N	1486	\N	iNaturalist	f
27.7086111	-82.681356	2024-04-12	Porcellionides pruinosus	https://www.inaturalist.org/observations/207015467	https://www.inaturalist.org/observations/207015467	iNaturalist	1	\N	\N	\N	\N	\N	1487	\N	iNaturalist	f
17.9450180	-76.727850	2024-01-02	Dysdercus andreae		\N	GBIF	1	\N	\N	\N	\N	\N	2487	\N	GBIF	f
17.9442980	-76.760145	2024-01-02	Aphis nerii		\N	GBIF	1	\N	\N	\N	\N	\N	2488	\N	GBIF	f
17.9447560	-76.753312	2024-01-02	Spilostethus pandurus		\N	GBIF	1	\N	\N	\N	\N	\N	2489	\N	GBIF	f
17.9467000	-76.724892	2024-01-02	Minuca rapax		\N	GBIF	1	\N	\N	\N	\N	\N	2494	\N	GBIF	f
18.3603980	-67.270450	2024-01-01	Dysdercus andreae		\N	GBIF	1	\N	\N	\N	\N	\N	2498	\N	GBIF	f
25.1382050	-80.929758	2024-04-10	Ligia exotica	https://www.inaturalist.org/observations/206996626	https://www.inaturalist.org/observations/206996626	iNaturalist	1	\N	\N	\N	\N	\N	1488	\N	iNaturalist	f
33.2446297	126.231309	2023-05-20	Ligiidae	https://www.inaturalist.org/observations/162618133	https://static.inaturalist.org/photos/281197675/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	562	\N	iNaturalist	f
35.6652500	134.762914	2024-05-24	Ligia exotica	https://www.inaturalist.org/observations/217824571	https://static.inaturalist.org/photos/385392334/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	229	\N	iNaturalist	f
34.4431500	133.991303	2024-05-23	Ligia exotica	https://www.inaturalist.org/observations/217672153	https://static.inaturalist.org/photos/385104945/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	230	\N	iNaturalist	f
42.7565773	132.826390	2024-05-21	Armadillidium versicolor	https://www.inaturalist.org/observations/217249260	https://inaturalist-open-data.s3.amazonaws.com/photos/384309773/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	232	\N	iNaturalist	f
33.9566533	130.946757	2023-09-18	Ligia exotica	https://www.inaturalist.org/observations/217149498	https://inaturalist-open-data.s3.amazonaws.com/photos/384112457/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	233	\N	iNaturalist	f
34.5063820	136.777328	2024-05-14	Ligia	https://www.inaturalist.org/observations/215665583	https://inaturalist-open-data.s3.amazonaws.com/photos/381329101/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	234	\N	iNaturalist	f
34.6876031	125.447275	2024-05-11	Isopoda	https://www.inaturalist.org/observations/215397647	https://inaturalist-open-data.s3.amazonaws.com/photos/380807189/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	235	\N	iNaturalist	f
33.8708028	130.035913	2024-04-20	Armadillidium vulgare	https://www.inaturalist.org/observations/215190180	https://inaturalist-open-data.s3.amazonaws.com/photos/380430937/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	236	\N	iNaturalist	f
34.7966915	139.360576	2024-04-14	Ligia exotica	https://www.inaturalist.org/observations/215183105	https://inaturalist-open-data.s3.amazonaws.com/photos/380413846/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	237	\N	iNaturalist	f
27.9633530	-82.832010	2024-01-01	Areopaguristes hummi		\N	GBIF	1	\N	\N	\N	\N	\N	2444	\N	GBIF	f
33.4627533	126.938758	2024-05-11	Ligia exotica	https://www.inaturalist.org/observations/214934352	https://inaturalist-open-data.s3.amazonaws.com/photos/379960084/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	239	\N	iNaturalist	f
33.2061111	126.291111	2024-05-09	Ligia exotica	https://www.inaturalist.org/observations/214536226	https://inaturalist-open-data.s3.amazonaws.com/photos/379218934/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	240	\N	iNaturalist	f
29.1875246	122.041890	2024-04-22	Porcellio	https://www.inaturalist.org/observations/214250032	https://static.inaturalist.org/photos/378677867/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	241	\N	iNaturalist	f
26.7541454	128.325449	2024-04-24	Ligia exotica	https://www.inaturalist.org/observations/214026448	https://inaturalist-open-data.s3.amazonaws.com/photos/378261389/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	244	\N	iNaturalist	f
35.1396278	129.116125	2024-05-06	Ligia exotica	https://www.inaturalist.org/observations/213941698	https://static.inaturalist.org/photos/378334335/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	245	\N	iNaturalist	f
34.2768867	135.070267	2024-05-05	Ligia exotica	https://www.inaturalist.org/observations/213580137	https://static.inaturalist.org/photos/377463880/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	246	\N	iNaturalist	f
34.2770367	135.070222	2024-05-05	Ligia exotica	https://www.inaturalist.org/observations/213579179	https://static.inaturalist.org/photos/377462298/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	247	\N	iNaturalist	f
34.2820533	135.074233	2024-05-04	Ligia	https://www.inaturalist.org/observations/213338347	https://static.inaturalist.org/photos/377029463/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	248	\N	iNaturalist	f
34.2821000	135.074264	2024-05-04	Ligia exotica	https://www.inaturalist.org/observations/213336843	https://static.inaturalist.org/photos/377026362/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	249	\N	iNaturalist	f
19.2785533	-81.248992	2023-12-14	Porcellionides pruinosus	https://www.inaturalist.org/observations/193959171	https://www.inaturalist.org/observations/193959171	iNaturalist	1	\N	\N	\N	\N	\N	1622	\N	iNaturalist	f
19.3354210	-81.085197	2023-12-08	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/193459713	https://www.inaturalist.org/observations/193459713	iNaturalist	1	\N	\N	\N	\N	\N	1623	\N	iNaturalist	f
28.4080480	-80.590394	2023-12-08	Ligia exotica	https://www.inaturalist.org/observations/193435587	https://www.inaturalist.org/observations/193435587	iNaturalist	1	\N	\N	\N	\N	\N	1625	\N	iNaturalist	f
19.2776370	-81.308403	2023-12-07	Trichorhina tomentosa	https://www.inaturalist.org/observations/193351081	https://www.inaturalist.org/observations/193351081	iNaturalist	1	\N	\N	\N	\N	\N	1626	\N	iNaturalist	f
25.1367920	-80.948235	2023-11-08	Oniscidea	https://www.inaturalist.org/observations/193097098	https://www.inaturalist.org/observations/193097098	iNaturalist	1	\N	\N	\N	\N	\N	1637	\N	iNaturalist	f
27.7120867	-82.684937	2023-12-01	Ligia exotica	https://www.inaturalist.org/observations/193028092	https://www.inaturalist.org/observations/193028092	iNaturalist	1	\N	\N	\N	\N	\N	1638	\N	iNaturalist	f
27.9369617	-80.529883	2023-12-02	Porcellionides pruinosus	https://www.inaturalist.org/observations/192875527	https://www.inaturalist.org/observations/192875527	iNaturalist	1	\N	\N	\N	\N	\N	1639	\N	iNaturalist	f
27.4964570	-80.298719	2024-01-01	Ocypode quadrata		\N	GBIF	1	\N	\N	\N	\N	\N	2499	\N	GBIF	f
27.7541250	-82.630233	2024-01-03	Pagurus longicarpus		\N	GBIF	1	\N	\N	\N	\N	\N	2559	\N	GBIF	f
27.7541420	-82.630225	2024-01-03	Pagurus longicarpus		\N	GBIF	1	\N	\N	\N	\N	\N	2560	\N	GBIF	f
18.3925360	-77.060713	2024-01-03	Mocis marcida		\N	GBIF	1	\N	\N	\N	\N	\N	2565	\N	GBIF	f
25.6878520	-80.160481	2024-01-03	Cycloneda sanguinea		\N	GBIF	1	\N	\N	\N	\N	\N	2568	\N	GBIF	f
25.6737810	-80.154472	2024-01-02	Pseudomyrmex pallidus		\N	GBIF	1	\N	\N	\N	\N	\N	2569	\N	GBIF	f
25.6753120	-80.160050	2024-01-02	Cycloneda sanguinea		\N	GBIF	1	\N	\N	\N	\N	\N	2570	\N	GBIF	f
18.3934000	-77.059860	2024-01-04	Solenopsis geminata		\N	GBIF	1	\N	\N	\N	\N	\N	2571	\N	GBIF	f
18.3934380	-77.059948	2024-01-04	Leucauge argyra		\N	GBIF	1	\N	\N	\N	\N	\N	2572	\N	GBIF	f
18.3935320	-77.059970	2024-01-04	Leucauge argyra		\N	GBIF	1	\N	\N	\N	\N	\N	2573	\N	GBIF	f
18.5155783	-77.766603	2023-11-29	Porcellio laevis	https://www.inaturalist.org/observations/192612178	https://www.inaturalist.org/observations/192612178	iNaturalist	1	\N	\N	\N	\N	\N	1640	\N	iNaturalist	f
27.7121883	-82.690850	2024-04-07	Cubaris murina	https://www.inaturalist.org/observations/205955927	https://www.inaturalist.org/observations/205955927	iNaturalist	1	\N	\N	\N	\N	\N	1491	\N	iNaturalist	f
25.1378083	-80.931945	2023-11-21	Ligia exotica	https://www.inaturalist.org/observations/191757091	https://www.inaturalist.org/observations/191757091	iNaturalist	1	\N	\N	\N	\N	\N	1641	\N	iNaturalist	f
19.9243882	-75.145094	2023-11-21	Agnaridae	https://www.inaturalist.org/observations/191695816	https://www.inaturalist.org/observations/191695816	iNaturalist	1	\N	\N	\N	\N	\N	1642	\N	iNaturalist	f
27.7159583	-82.683547	2023-11-20	Trichorhina	https://www.inaturalist.org/observations/191620080	https://www.inaturalist.org/observations/191620080	iNaturalist	1	\N	\N	\N	\N	\N	1643	\N	iNaturalist	f
18.3935480	-77.060033	2024-01-04	Polistes crinitus		\N	GBIF	1	\N	\N	\N	\N	\N	2574	\N	GBIF	f
18.3922540	-77.060630	2024-01-04	Dryas iulia		\N	GBIF	1	\N	\N	\N	\N	\N	2575	\N	GBIF	f
17.9378030	-67.194392	2024-01-04	Ascia monuste		\N	GBIF	1	\N	\N	\N	\N	\N	2581	\N	GBIF	f
27.8475890	-82.608663	2024-01-05	Trichonephila clavipes		\N	GBIF	1	\N	\N	\N	\N	\N	2646	\N	GBIF	f
18.3933720	-77.059810	2024-01-05	Toxomerus arcifer		\N	GBIF	1	\N	\N	\N	\N	\N	2648	\N	GBIF	f
26.9520200	-80.072258	2024-01-02	Pseudomopsis inflatus		\N	GBIF	1	\N	\N	\N	\N	\N	2649	\N	GBIF	f
18.3930730	-77.060635	2024-01-05	Caribovia intensa		\N	GBIF	1	\N	\N	\N	\N	\N	2650	\N	GBIF	f
-17.9950000	118.316670	1984-01-27	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3336	\N	GBIF	f
-16.8500000	119.850000	1984-02-22	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3337	\N	GBIF	f
-16.9566000	119.863300	1984-02-22	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3338	\N	GBIF	f
-13.8383000	122.308300	1984-02-13	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3339	\N	GBIF	f
-17.9833000	118.383300	1984-02-24	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3340	\N	GBIF	f
-16.9200000	119.880000	1984-02-20	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3341	\N	GBIF	f
-14.8366000	121.523300	1984-02-12	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3342	\N	GBIF	f
-16.9233000	119.901700	1984-02-19	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3343	\N	GBIF	f
-16.9233000	119.871700	1984-02-23	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3344	\N	GBIF	f
-18.4830000	116.600000	1982-04-06	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3353	\N	GBIF	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3691		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3692		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3693		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3694		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3695		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3696		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3697		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3698		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3699		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3700		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3701		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3702		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3703		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3704		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3705		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3706		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3707		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3708		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3709		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3710		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3711		expedition	f
34.8682670	138.374333	2025-03-10	Bathynomus doederleini	\N	\N	BTW expedition	1	\N	487	traps	\N	Large amphipod - Bonito	3712		expedition	f
34.8932670	138.449900	2025-03-12		\N	\N	BTW expedition	1	\N	436	traps	\N	Large amphipod - Bonito	3713	parasitizing a kitefin A, unknown isopod species	expedition	f
34.8932670	138.449900	2025-03-12		\N	\N	BTW expedition	1	\N	436	traps	\N	Large amphipod - Bonito	3714	parasitizing a kitefin A, unknown isopod species	expedition	f
36.2048000	138.252900	1975-01-01	Bathynomus doederleini	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	15	Japan	100-700	\N	\N	\N	3722	Reported during 1975-1999	\N	f
23.6978000	120.960500	1975-01-01	Bathynomus doederleini	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	13	Taiwan	100-700	\N	\N	\N	3723	Reported during 1975-1999	\N	f
12.8797000	121.774000	1975-01-01	Bathynomus doederleini	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	13	Philippines	100-700	\N	\N	\N	3724	Reported during 1975-1999	\N	f
11.8745000	75.370400	1898-01-01	Bathynomus keablei	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	3	Malabar Coast, India	400-1330	\N	\N	\N	3725	Reported during 1898-1908	\N	f
7.8731000	80.771800	1898-01-01	Bathynomus keablei	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	2	Sri Lanka	400-1330	\N	\N	\N	3726	Reported during 1898-1908	\N	f
21.9162000	95.956000	1898-01-01	Bathynomus keablei	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	2	Burma (Myanmar)	400-1330	\N	\N	\N	3727	Reported during 1898-1908	\N	f
25.0000000	-90.000000	1985-01-01	Bathynomus giganteus	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	1	Gulf of Mexico	200-1800	\N	\N	\N	3728	Reported during 1985-1989	\N	f
31.0000000	-80.000000	1985-01-01	Bathynomus giganteus	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	1	off Georgia, USA	200-1800	\N	\N	\N	3729	Reported during 1985-1989	\N	f
-21.2990000	165.300000	1993-01-01	Bathynomus richeri	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	30	New Caledonia	530-950	\N	\N	\N	3730	Reported during 1993-1995	\N	f
-18.0000000	152.000000	1993-01-01	Bathynomus richeri	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	25	Coral Sea	530-950	\N	\N	\N	3731	Reported during 1993-1995	\N	f
13.0000000	49.000000	1971-01-01	Bathynomus sp.	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	21	Gulf of Aden	563-605	\N	\N	\N	3733	Reported during 1971-1972	\N	f
-18.7669000	46.869100	1969-01-01	Bathynomus crosnieri	https://pubmed.ncbi.nlm.nih.gov/38222481/		Lowry&Dempsey2010	8	Madagascar	150-705	\N	\N	\N	3732	Reported during 1969-1972	\N	f
33.2212600	126.245324	2024-05-02	Ligia	https://www.inaturalist.org/observations/212771588	https://static.inaturalist.org/photos/376006965/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	252	\N	iNaturalist	f
24.5733920	123.950151	2024-01-03	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	991	\N	GBIF	f
27.4150000	-94.741667	1969-08-07	Bathynomus giganteus	http://portal.vertnet.org/o/tcwc/marine-invertebrates?id=2-6518	\N	\N	1	\N	1006	\N	\N	\N	3231	PRESERVED_SPECIMEN	GBIF	f
35.0836266	139.790911	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465232	https://inaturalist-open-data.s3.amazonaws.com/photos/368838890/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	265	\N	iNaturalist	f
37.1271087	136.752682	2017-05-11	Ligia exotica	https://www.inaturalist.org/observations/194881512	https://inaturalist-open-data.s3.amazonaws.com/photos/342687316/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	375	\N	iNaturalist	f
33.3321342	126.843268	2023-10-25	Ligia exotica	https://www.inaturalist.org/observations/194875622	https://inaturalist-open-data.s3.amazonaws.com/photos/342673495/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	376	\N	iNaturalist	f
27.7122167	-82.690828	2024-04-07	Cubaris murina	https://www.inaturalist.org/observations/205955730	https://www.inaturalist.org/observations/205955730	iNaturalist	1	\N	\N	\N	\N	\N	1492	\N	iNaturalist	f
27.7123500	-82.690758	2024-04-07	Porcellionides pruinosus	https://www.inaturalist.org/observations/205955619	https://www.inaturalist.org/observations/205955619	iNaturalist	1	\N	\N	\N	\N	\N	1493	\N	iNaturalist	f
35.1739384	139.709355	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465226	https://inaturalist-open-data.s3.amazonaws.com/photos/368838595/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	266	\N	iNaturalist	f
35.0839030	139.724702	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465222	https://inaturalist-open-data.s3.amazonaws.com/photos/368838213/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	267	\N	iNaturalist	f
24.7371811	-80.885815	2024-01-14	Tylos	https://www.inaturalist.org/observations/196841495	https://www.inaturalist.org/observations/196841495	iNaturalist	1	\N	\N	\N	\N	\N	1585	\N	iNaturalist	f
35.0141671	139.771307	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465221	https://inaturalist-open-data.s3.amazonaws.com/photos/368837569/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	268	\N	iNaturalist	f
27.8941000	-85.267200	1988-01-01	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3158	PRESERVED_SPECIMEN	GBIF	f
35.0867255	139.726729	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465216	https://inaturalist-open-data.s3.amazonaws.com/photos/368837294/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	269	\N	iNaturalist	f
35.1504012	139.695568	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465215	https://inaturalist-open-data.s3.amazonaws.com/photos/368837141/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	271	\N	iNaturalist	f
24.5505810	123.902129	2024-01-03	Aulacophora indica		\N	GBIF	1	\N	\N	\N	\N	\N	994	\N	GBIF	f
35.0074182	139.615045	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465211	https://inaturalist-open-data.s3.amazonaws.com/photos/368836812/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	272	\N	iNaturalist	f
35.0948287	139.769022	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465209	https://inaturalist-open-data.s3.amazonaws.com/photos/368836564/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	273	\N	iNaturalist	f
35.1522417	139.686382	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465207	https://inaturalist-open-data.s3.amazonaws.com/photos/368836260/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	274	\N	iNaturalist	f
35.1378663	139.795460	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465206	https://inaturalist-open-data.s3.amazonaws.com/photos/368836172/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	275	\N	iNaturalist	f
35.0386669	139.677283	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465202	https://inaturalist-open-data.s3.amazonaws.com/photos/368836075/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	276	\N	iNaturalist	f
35.1557700	139.646079	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465201	https://inaturalist-open-data.s3.amazonaws.com/photos/368835928/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	277	\N	iNaturalist	f
35.0384368	139.633565	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465198	https://inaturalist-open-data.s3.amazonaws.com/photos/368835719/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	278	\N	iNaturalist	f
35.1633243	139.613847	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465197	https://inaturalist-open-data.s3.amazonaws.com/photos/368835569/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	279	\N	iNaturalist	f
35.1900279	139.616812	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465195	https://inaturalist-open-data.s3.amazonaws.com/photos/368835398/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	280	\N	iNaturalist	f
35.0789548	139.785912	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465192	https://inaturalist-open-data.s3.amazonaws.com/photos/368835247/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	281	\N	iNaturalist	f
35.1841297	139.770481	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465190	https://inaturalist-open-data.s3.amazonaws.com/photos/368834586/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	282	\N	iNaturalist	f
35.1117441	139.712763	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465188	https://inaturalist-open-data.s3.amazonaws.com/photos/368834551/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	283	\N	iNaturalist	f
35.1116820	139.773484	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465187	https://inaturalist-open-data.s3.amazonaws.com/photos/368834500/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	284	\N	iNaturalist	f
35.1738264	139.703815	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465181	https://inaturalist-open-data.s3.amazonaws.com/photos/368834349/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	285	\N	iNaturalist	f
35.1927546	139.789699	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465180	https://inaturalist-open-data.s3.amazonaws.com/photos/368834142/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	286	\N	iNaturalist	f
35.0861032	139.753995	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465178	https://inaturalist-open-data.s3.amazonaws.com/photos/368834114/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	287	\N	iNaturalist	f
35.0264780	139.626352	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465170	https://inaturalist-open-data.s3.amazonaws.com/photos/368834111/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	288	\N	iNaturalist	f
35.0413716	139.726414	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465169	https://inaturalist-open-data.s3.amazonaws.com/photos/368834016/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	289	\N	iNaturalist	f
35.1308095	139.680005	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465168	https://inaturalist-open-data.s3.amazonaws.com/photos/368834113/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	290	\N	iNaturalist	f
35.1501714	139.664094	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465166	https://inaturalist-open-data.s3.amazonaws.com/photos/368833865/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	291	\N	iNaturalist	f
26.5485500	-81.978745	2024-04-05	Cubaris murina	https://www.inaturalist.org/observations/205602129	https://www.inaturalist.org/observations/205602129	iNaturalist	1	\N	\N	\N	\N	\N	1494	\N	iNaturalist	f
35.0857316	139.742019	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465162	https://inaturalist-open-data.s3.amazonaws.com/photos/368833358/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	292	\N	iNaturalist	f
35.1636860	139.617604	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465161	https://inaturalist-open-data.s3.amazonaws.com/photos/368833268/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	293	\N	iNaturalist	f
23.3333300	-79.983330	1939-05-03	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:80827	\N	\N	1	\N	740.66	\N	\N	\N	2716	PRESERVED_SPECIMEN	GBIF	f
26.2333300	-78.716670	1938-02-03	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:57346	\N	\N	1	\N	521.21	\N	\N	\N	2718	PRESERVED_SPECIMEN	GBIF	f
23.2750000	-80.183330	1938-03-14	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:80347	\N	\N	1	\N	758.95	\N	\N	\N	2719	PRESERVED_SPECIMEN	GBIF	f
23.2500000	-79.950000	1938-03-14	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:80348	\N	\N	1	\N	694.94	\N	\N	\N	2720	PRESERVED_SPECIMEN	GBIF	f
23.3500000	-80.383330	1938-03-14	Bathynomus giganteus	http://mczbase.mcz.harvard.edu/guid/MCZ:IZ:80352	\N	\N	1	\N	868.68	\N	\N	\N	2723	PRESERVED_SPECIMEN	GBIF	f
24.5679600	123.925813	2024-01-03	Aulacophora indica		\N	GBIF	1	\N	\N	\N	\N	\N	993	\N	GBIF	f
24.6667000	-81.583300	1931-07-03	Bathynomus giganteus	\N	\N	\N	1	\N	389.5	\N	\N	\N	2728	PRESERVED_SPECIMEN	GBIF	f
24.4192270	123.965648	2024-01-05	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	1007	\N	GBIF	f
24.4984400	123.973101	2024-01-05	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	1008	\N	GBIF	f
24.5689560	123.962846	2024-01-05	Riptortus linearis		\N	GBIF	1	\N	\N	\N	\N	\N	1009	\N	GBIF	f
24.5125860	123.885311	2024-01-05	Biston robustum		\N	GBIF	1	\N	\N	\N	\N	\N	1011	\N	GBIF	f
24.4858430	123.831488	2024-01-18	Saptha divitiosa		\N	GBIF	1	\N	\N	\N	\N	\N	1080	\N	GBIF	f
35.0874651	139.605492	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465158	https://inaturalist-open-data.s3.amazonaws.com/photos/368833261/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	294	\N	iNaturalist	f
35.1069104	139.730945	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465156	https://inaturalist-open-data.s3.amazonaws.com/photos/368833240/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	295	\N	iNaturalist	f
35.0452319	139.612545	2014-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/208465155	https://inaturalist-open-data.s3.amazonaws.com/photos/368833234/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	296	\N	iNaturalist	f
35.1168217	139.700639	2014-07-26	Ligia exotica	https://www.inaturalist.org/observations/208465146	https://inaturalist-open-data.s3.amazonaws.com/photos/368831440/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	297	\N	iNaturalist	f
35.0691768	139.740711	2014-07-26	Ligia exotica	https://www.inaturalist.org/observations/208465143	https://inaturalist-open-data.s3.amazonaws.com/photos/368831165/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	298	\N	iNaturalist	f
35.0784982	139.645726	2014-07-26	Ligia exotica	https://www.inaturalist.org/observations/208465142	https://inaturalist-open-data.s3.amazonaws.com/photos/368831172/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	299	\N	iNaturalist	f
29.9803711	122.195159	2024-10-03	Armadilloniscus	https://www.inaturalist.org/observations/246269668	https://static.inaturalist.org/photos/439611797/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2	\N	iNaturalist	f
29.9229590	122.301183	2022-12-15	Bathynomus doederleini	https://www.inaturalist.org/observations/255190576	https://inaturalist-open-data.s3.amazonaws.com/photos/457270406/medium.jpg	Alex Pintsen JIN	1	\N	\N	\N	\N	\N	3307	NA NA	iNaturalist	f
42.9613222	131.888986	2024-10-06	Porcellio scaber	https://www.inaturalist.org/observations/246240153	https://static.inaturalist.org/photos/439550609/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	3	\N	iNaturalist	f
34.0044441	131.374542	2024-10-07	Ligia exotica	https://www.inaturalist.org/observations/246119574	https://inaturalist-open-data.s3.amazonaws.com/photos/439317705/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	4	\N	iNaturalist	f
37.0718912	126.732019	2024-10-06	Ligia	https://www.inaturalist.org/observations/245924867	https://inaturalist-open-data.s3.amazonaws.com/photos/438932198/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	5	\N	iNaturalist	f
33.1238888	139.817092	2024-10-04	Ligia exotica	https://www.inaturalist.org/observations/245902142	https://inaturalist-open-data.s3.amazonaws.com/photos/438886311/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	6	\N	iNaturalist	f
34.9256967	128.094884	2024-10-05	Ligia exotica	https://www.inaturalist.org/observations/245849890	https://inaturalist-open-data.s3.amazonaws.com/photos/438781650/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	7	\N	iNaturalist	f
35.2058161	129.227836	2024-09-16	Ligia	https://www.inaturalist.org/observations/242003213	https://static.inaturalist.org/photos/431384111/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	29	\N	iNaturalist	f
40.3000000	142.000000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1227	\N	\N	f
24.5765150	123.913401	2024-01-18	Acanthocoris sordidus		\N	GBIF	1	\N	\N	\N	\N	\N	1081	\N	GBIF	f
24.4543740	123.853836	2024-01-30	Cheilomenes sexmaculata		\N	GBIF	1	\N	\N	\N	\N	\N	1154	\N	GBIF	f
24.4993260	123.902094	2024-01-30	Traulia ornata		\N	GBIF	1	\N	\N	\N	\N	\N	1155	\N	GBIF	f
24.5198470	123.994556	2024-01-30	Pingasa ruginaria		\N	GBIF	1	\N	\N	\N	\N	\N	1156	\N	GBIF	f
24.5135210	123.993785	2024-01-30	Hyposidra talaca		\N	GBIF	1	\N	\N	\N	\N	\N	1157	\N	GBIF	f
29.3000000	-87.330000	2012-04-05	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229121	\N	\N	1	\N	\N	\N	\N	\N	2808	PRESERVED_SPECIMEN	GBIF	f
17.9356100	-67.190466	2024-01-04	Coenobita clypeatus		\N	GBIF	1	\N	\N	\N	\N	\N	2591	\N	GBIF	f
17.9355700	-67.190436	2024-01-04	Coenobita clypeatus		\N	GBIF	1	\N	\N	\N	\N	\N	2592	\N	GBIF	f
24.6413530	-76.177737	2024-01-04	Dielis Saussure		\N	GBIF	1	\N	\N	\N	\N	\N	2593	\N	GBIF	f
25.1441290	-80.922471	2024-01-02	Hemiargus ceraunus		\N	GBIF	1	\N	\N	\N	\N	\N	2594	\N	GBIF	f
24.7032500	-81.080536	2024-01-04	Megalopyge opercularis		\N	GBIF	1	\N	\N	\N	\N	\N	2595	\N	GBIF	f
28.0640750	-82.833442	2024-01-04	Limulus polyphemus		\N	GBIF	1	\N	\N	\N	\N	\N	2596	\N	GBIF	f
18.4704070	-66.123792	2024-01-01	Coenobita clypeatus		\N	GBIF	1	\N	\N	\N	\N	\N	2597	\N	GBIF	f
27.7165130	-82.682458	2024-01-04	Pseudomethoca sanbornii		\N	GBIF	1	\N	\N	\N	\N	\N	2598	\N	GBIF	f
-36.7160000	150.350000	2000-02-15	Bathynomus kapala		\N	GBIF	1	\N	\N	\N	\N	\N	2842	\N	GBIF	f
33.4804565	126.372817	2024-06-29	Ligia	https://www.inaturalist.org/observations/226146029	https://inaturalist-open-data.s3.amazonaws.com/photos/401036747/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	163	\N	iNaturalist	f
33.4500694	126.303325	2024-06-30	Ligia exotica	https://www.inaturalist.org/observations/226118191	https://inaturalist-open-data.s3.amazonaws.com/photos/400984810/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	164	\N	iNaturalist	f
34.8336162	139.075897	2024-06-30	Ligia exotica	https://www.inaturalist.org/observations/226097659	https://static.inaturalist.org/photos/400944128/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	165	\N	iNaturalist	f
34.4764210	134.188571	2024-06-29	Ligia exotica	https://www.inaturalist.org/observations/225876036	https://inaturalist-open-data.s3.amazonaws.com/photos/400524993/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	166	\N	iNaturalist	f
39.0675862	122.048722	2024-06-28	Armadillidium vulgare	https://www.inaturalist.org/observations/225719654	https://static.inaturalist.org/photos/400228568/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	167	\N	iNaturalist	f
42.9452851	131.870579	2024-04-20	Ligia cinerascens	https://www.inaturalist.org/observations/208206357	https://inaturalist-open-data.s3.amazonaws.com/photos/368359020/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	300	\N	iNaturalist	f
30.4349528	130.556939	2024-04-19	Armadillidium vulgare	https://www.inaturalist.org/observations/208078792	https://static.inaturalist.org/photos/368124054/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	301	\N	iNaturalist	f
37.5968168	126.422539	2024-04-17	Anthuroidea	https://www.inaturalist.org/observations/207762232	https://inaturalist-open-data.s3.amazonaws.com/photos/367526695/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	302	\N	iNaturalist	f
24.4515019	122.942868	2024-04-12	Ligia	https://www.inaturalist.org/observations/207161182	https://static.inaturalist.org/photos/366402701/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	303	\N	iNaturalist	f
34.7847059	138.761806	2024-04-12	Ligia exotica	https://www.inaturalist.org/observations/207081467	https://inaturalist-open-data.s3.amazonaws.com/photos/366252128/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	304	\N	iNaturalist	f
33.3007206	126.167475	2024-04-07	Ligia	https://www.inaturalist.org/observations/205822656	https://inaturalist-open-data.s3.amazonaws.com/photos/363975897/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	305	\N	iNaturalist	f
33.4727243	126.935106	2024-04-04	Ligia exotica	https://www.inaturalist.org/observations/205372282	https://inaturalist-open-data.s3.amazonaws.com/photos/363129164/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	306	\N	iNaturalist	f
44.0401833	145.860244	2024-04-03	Porcellio scaber	https://www.inaturalist.org/observations/205363164	https://inaturalist-open-data.s3.amazonaws.com/photos/363111158/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	307	\N	iNaturalist	f
35.6437312	139.945272	2023-02-22	Porcellio scaber	https://www.inaturalist.org/observations/205213286	https://inaturalist-open-data.s3.amazonaws.com/photos/362822828/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	308	\N	iNaturalist	f
35.6195883	139.902990	2023-03-13	Armadillidium vulgare	https://www.inaturalist.org/observations/205072499	https://inaturalist-open-data.s3.amazonaws.com/photos/362552593/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	309	\N	iNaturalist	f
29.8480090	122.269413	2024-04-01	Isopoda	https://www.inaturalist.org/observations/205023281	https://inaturalist-open-data.s3.amazonaws.com/photos/362453107/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	310	\N	iNaturalist	f
35.1427851	139.673933	2014-07-06	Ligia exotica	https://www.inaturalist.org/observations/204719813	https://inaturalist-open-data.s3.amazonaws.com/photos/361889016/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	311	\N	iNaturalist	f
35.0436528	139.754813	2014-07-06	Armadillidium vulgare	https://www.inaturalist.org/observations/204719806	https://inaturalist-open-data.s3.amazonaws.com/photos/361884671/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	312	\N	iNaturalist	f
36.3745025	126.423722	2016-08-14	Ligia exotica	https://www.inaturalist.org/observations/204554456	https://inaturalist-open-data.s3.amazonaws.com/photos/361581067/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	313	\N	iNaturalist	f
42.7012861	141.522569	2017-07-28	Ligidium	\N	\N	Harigai2020	2	\N	114	\N	\N	\N	1280	\N	\N	f
35.0597468	139.667628	2014-06-24	Tylos granuliferus	https://www.inaturalist.org/observations/204550308	https://inaturalist-open-data.s3.amazonaws.com/photos/361568608/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	314	\N	iNaturalist	f
30.0283409	122.321379	2023-08-28	Ligia exotica	https://www.inaturalist.org/observations/180750092	https://inaturalist-open-data.s3.amazonaws.com/photos/314883171/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	449	\N	iNaturalist	f
39.7769376	123.560404	2023-08-05	Isopoda	https://www.inaturalist.org/observations/176749154	https://static.inaturalist.org/photos/307330137/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	477	\N	iNaturalist	f
35.1661283	139.758781	2014-06-24	Ligia exotica	https://www.inaturalist.org/observations/204550298	https://inaturalist-open-data.s3.amazonaws.com/photos/361563238/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	315	\N	iNaturalist	f
27.7128000	-82.688178	2023-04-17	Atlantoscia floridana	https://www.inaturalist.org/observations/155326591	https://www.inaturalist.org/observations/155326591	iNaturalist	1	\N	\N	\N	\N	\N	1746	\N	iNaturalist	f
27.7127467	-82.688117	2023-04-17	Atlantoscia floridana	https://www.inaturalist.org/observations/155326577	https://www.inaturalist.org/observations/155326577	iNaturalist	1	\N	\N	\N	\N	\N	1747	\N	iNaturalist	f
33.5181333	126.516275	2024-06-28	Ligia exotica	https://www.inaturalist.org/observations/225679953	https://inaturalist-open-data.s3.amazonaws.com/photos/400156627/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	168	\N	iNaturalist	f
34.5951397	138.225282	2015-05-26	Porcellio scaber	https://www.inaturalist.org/observations/225418764	https://inaturalist-open-data.s3.amazonaws.com/photos/399652586/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	169	\N	iNaturalist	f
43.0860977	131.847916	2024-06-01	Porcellio spinicornis	https://www.inaturalist.org/observations/225276234	https://inaturalist-open-data.s3.amazonaws.com/photos/399385855/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	170	\N	iNaturalist	f
35.0171114	139.775953	2014-06-05	Tylos granuliferus	https://www.inaturalist.org/observations/204536105	https://inaturalist-open-data.s3.amazonaws.com/photos/361541319/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	316	\N	iNaturalist	f
35.0448068	139.779899	2014-06-05	Ligia exotica	https://www.inaturalist.org/observations/204536102	https://inaturalist-open-data.s3.amazonaws.com/photos/361540007/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	317	\N	iNaturalist	f
35.0515333	139.798896	2014-06-05	Tylos granuliferus	https://www.inaturalist.org/observations/204536100	https://inaturalist-open-data.s3.amazonaws.com/photos/361539639/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	318	\N	iNaturalist	f
35.0889828	139.653778	2014-06-05	Tylos granuliferus	https://www.inaturalist.org/observations/204536096	https://inaturalist-open-data.s3.amazonaws.com/photos/361538569/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	319	\N	iNaturalist	f
35.1785682	139.728085	2014-06-04	Armadillidium vulgare	https://www.inaturalist.org/observations/204536091	https://inaturalist-open-data.s3.amazonaws.com/photos/361536260/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	320	\N	iNaturalist	f
27.6973413	-82.572285	2022-07-11	Ligia	https://www.inaturalist.org/observations/125965948	https://www.inaturalist.org/observations/125965948	iNaturalist	1	\N	\N	\N	\N	\N	1895	\N	iNaturalist	f
35.1882634	139.724422	2014-06-04	Armadillidium vulgare	https://www.inaturalist.org/observations/204536088	https://inaturalist-open-data.s3.amazonaws.com/photos/361534238/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	321	\N	iNaturalist	f
26.3940957	127.861201	2024-03-28	Ligia	https://www.inaturalist.org/observations/204241925	https://inaturalist-open-data.s3.amazonaws.com/photos/360983057/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	322	\N	iNaturalist	f
35.6446366	139.908881	2023-06-03	Armadillidium vulgare	https://www.inaturalist.org/observations/204099375	https://inaturalist-open-data.s3.amazonaws.com/photos/360706611/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	323	\N	iNaturalist	f
24.4419967	124.099450	2023-04-07	Burmoniscus ocellatus	https://www.inaturalist.org/observations/203935115	https://static.inaturalist.org/photos/360390009/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	326	\N	iNaturalist	f
24.4182280	124.031207	2023-04-10	Ligia ryukyuensis	https://www.inaturalist.org/observations/203894901	https://static.inaturalist.org/photos/360314277/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	328	\N	iNaturalist	f
35.1217923	139.738628	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857543	https://inaturalist-open-data.s3.amazonaws.com/photos/360240797/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	329	\N	iNaturalist	f
35.0542506	139.660474	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857536	https://inaturalist-open-data.s3.amazonaws.com/photos/360239566/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	330	\N	iNaturalist	f
35.1385564	139.670740	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857534	https://inaturalist-open-data.s3.amazonaws.com/photos/360239486/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	331	\N	iNaturalist	f
35.0483981	139.666949	2014-05-04	Alloniscus balssi	https://www.inaturalist.org/observations/203857526	https://inaturalist-open-data.s3.amazonaws.com/photos/360238923/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	332	\N	iNaturalist	f
13.9170000	120.076167	2011-06-02	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3409	\N	GBIF	f
35.0424275	139.616646	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857519	https://inaturalist-open-data.s3.amazonaws.com/photos/360237752/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	333	\N	iNaturalist	f
35.1365717	139.728923	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857514	https://inaturalist-open-data.s3.amazonaws.com/photos/360236133/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	334	\N	iNaturalist	f
35.0753430	129.022149	2024-06-15	Ligia exotica	https://www.inaturalist.org/observations/225104976	https://inaturalist-open-data.s3.amazonaws.com/photos/399061625/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	171	\N	iNaturalist	f
33.5025024	126.453491	2024-06-08	Ligia	https://www.inaturalist.org/observations/225062775	https://static.inaturalist.org/photos/398982666/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	172	\N	iNaturalist	f
33.4238853	126.928467	2024-06-09	Armadillidium vulgare	https://www.inaturalist.org/observations/225062766	https://static.inaturalist.org/photos/398982654/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	173	\N	iNaturalist	f
34.4703424	135.213478	2024-06-22	Armadillidium vulgare	https://www.inaturalist.org/observations/225038035	https://inaturalist-open-data.s3.amazonaws.com/photos/398935149/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	174	\N	iNaturalist	f
35.1079694	129.112314	2024-04-19	Armadillidium nasatum	https://www.inaturalist.org/observations/224689158	https://inaturalist-open-data.s3.amazonaws.com/photos/398242245/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	175	\N	iNaturalist	f
35.0508814	139.678392	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857513	https://inaturalist-open-data.s3.amazonaws.com/photos/360235603/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	335	\N	iNaturalist	f
35.0174659	139.790854	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857509	https://inaturalist-open-data.s3.amazonaws.com/photos/360235612/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	336	\N	iNaturalist	f
35.0268172	139.753217	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857506	https://inaturalist-open-data.s3.amazonaws.com/photos/360235520/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	337	\N	iNaturalist	f
35.0201396	139.610868	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857502	https://inaturalist-open-data.s3.amazonaws.com/photos/360234682/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	338	\N	iNaturalist	f
35.0326868	139.716498	2014-05-04	Tylos granuliferus	https://www.inaturalist.org/observations/203857499	https://inaturalist-open-data.s3.amazonaws.com/photos/360234683/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	339	\N	iNaturalist	f
35.0865162	139.766965	2014-05-04	Armadillidium vulgare	https://www.inaturalist.org/observations/203857477	https://inaturalist-open-data.s3.amazonaws.com/photos/360225247/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	340	\N	iNaturalist	f
33.4648783	126.308687	2023-07-22	Ligia exotica	https://www.inaturalist.org/observations/174263195	https://inaturalist-open-data.s3.amazonaws.com/photos/302724844/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	486	\N	iNaturalist	f
33.5275929	126.882830	2023-07-22	Ligia exotica	https://www.inaturalist.org/observations/174222350	https://inaturalist-open-data.s3.amazonaws.com/photos/302651967/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	487	\N	iNaturalist	f
35.1061557	139.736271	2014-05-04	Porcellio	https://www.inaturalist.org/observations/203857474	https://inaturalist-open-data.s3.amazonaws.com/photos/360225227/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	341	\N	iNaturalist	f
43.0495156	131.880753	2021-12-07	Porcellio spinicornis	https://www.inaturalist.org/observations/203210205	https://inaturalist-open-data.s3.amazonaws.com/photos/359002463/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	342	\N	iNaturalist	f
32.9637101	132.996884	2002-08-06	Ligia	https://www.inaturalist.org/observations/203187771	https://inaturalist-open-data.s3.amazonaws.com/photos/358958345/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	343	\N	iNaturalist	f
33.5147472	126.957969	2023-10-02	Ligia exotica	https://www.inaturalist.org/observations/202480847	https://inaturalist-open-data.s3.amazonaws.com/photos/357609725/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	344	\N	iNaturalist	f
26.7829774	-80.044122	2023-03-02	Rocinela signata	https://www.inaturalist.org/observations/150200704	https://www.inaturalist.org/observations/150200704	iNaturalist	1	\N	\N	\N	\N	\N	1787	\N	iNaturalist	f
33.4951346	126.435913	2002-08-01	Ligia exotica	https://www.inaturalist.org/observations/202250815	https://inaturalist-open-data.s3.amazonaws.com/photos/357168539/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	346	\N	iNaturalist	f
24.5118812	124.025454	2014-03-14	Cubaris	https://www.inaturalist.org/observations/201140238	https://inaturalist-open-data.s3.amazonaws.com/photos/355004721/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	347	\N	iNaturalist	f
28.2862994	129.891190	2024-03-03	Porcellionidae	https://www.inaturalist.org/observations/201125713	https://inaturalist-open-data.s3.amazonaws.com/photos/354980861/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	348	\N	iNaturalist	f
33.4120626	126.227928	2023-08-26	Ligia exotica	https://www.inaturalist.org/observations/200863329	https://inaturalist-open-data.s3.amazonaws.com/photos/354464826/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	349	\N	iNaturalist	f
35.1530912	129.151059	2011-08-29	Ligia exotica	https://www.inaturalist.org/observations/200222951	https://inaturalist-open-data.s3.amazonaws.com/photos/353213011/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	350	\N	iNaturalist	f
35.1530912	129.151081	2011-08-29	Ligia exotica	https://www.inaturalist.org/observations/200222948	https://inaturalist-open-data.s3.amazonaws.com/photos/353213000/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	351	\N	iNaturalist	f
-15.2986110	-38.843889	2000-06-11	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3125	PRESERVED_SPECIMEN	GBIF	f
35.2458695	132.527604	2023-06-02	Ligia	https://www.inaturalist.org/observations/167831066	https://inaturalist-open-data.s3.amazonaws.com/photos/290789446/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	524	\N	iNaturalist	f
27.4083000	-93.315000	1984-04-07	Bathynomus giganteus	\N	\N	\N	1	\N	654	\N	\N	\N	3176	PRESERVED_SPECIMEN	GBIF	f
28.1000000	-86.588300	1984-04-18	Bathynomus giganteus	\N	\N	\N	1	\N	1170	\N	\N	\N	3177	PRESERVED_SPECIMEN	GBIF	f
13.3300000	-82.030000	1957-09-12	Bathynomus giganteus	\N	\N	\N	1	\N	594	\N	\N	\N	3289	PRESERVED_SPECIMEN	GBIF	f
35.1531281	129.151167	2011-08-29	Ligia exotica	https://www.inaturalist.org/observations/200222947	https://inaturalist-open-data.s3.amazonaws.com/photos/353212997/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	352	\N	iNaturalist	f
35.3133063	139.716698	2024-02-12	Porcellio scaber	https://www.inaturalist.org/observations/200177820	https://inaturalist-open-data.s3.amazonaws.com/photos/353125927/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	353	\N	iNaturalist	f
35.2026618	139.781448	2024-02-12	Porcellio scaber	https://www.inaturalist.org/observations/200177819	https://inaturalist-open-data.s3.amazonaws.com/photos/353124967/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	354	\N	iNaturalist	f
33.5225351	126.559245	2023-06-15	Ligia exotica	https://www.inaturalist.org/observations/200175281	https://inaturalist-open-data.s3.amazonaws.com/photos/353121343/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	355	\N	iNaturalist	f
35.1163750	129.127164	2024-04-18	Armadillidium	https://www.inaturalist.org/observations/224555047	https://inaturalist-open-data.s3.amazonaws.com/photos/398005429/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	176	\N	iNaturalist	f
35.1273792	129.122421	2024-04-18	Ligia exotica	https://www.inaturalist.org/observations/224544836	https://inaturalist-open-data.s3.amazonaws.com/photos/397979795/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	177	\N	iNaturalist	f
34.6226804	135.224071	2024-06-23	Armadillidium vulgare	https://www.inaturalist.org/observations/224530587	https://inaturalist-open-data.s3.amazonaws.com/photos/397963589/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	178	\N	iNaturalist	f
44.0211028	145.877425	2024-06-22	Ligia cinerascens	https://www.inaturalist.org/observations/224318717	https://inaturalist-open-data.s3.amazonaws.com/photos/397560260/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	179	\N	iNaturalist	f
29.9780805	122.169040	2024-06-22	Armadillidium vulgare	https://www.inaturalist.org/observations/224287534	https://static.inaturalist.org/photos/397499192/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	180	\N	iNaturalist	f
35.1543168	129.151781	2011-08-26	Armadillidium vulgare	https://www.inaturalist.org/observations/200158026	https://inaturalist-open-data.s3.amazonaws.com/photos/353089272/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	356	\N	iNaturalist	f
37.4436289	126.370578	2023-09-17	Ligia exotica	https://www.inaturalist.org/observations/200051648	https://inaturalist-open-data.s3.amazonaws.com/photos/352877070/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	357	\N	iNaturalist	f
36.5016667	126.332222	2022-04-30	Ligia exotica	https://www.inaturalist.org/observations/200045685	https://inaturalist-open-data.s3.amazonaws.com/photos/352866827/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	358	\N	iNaturalist	f
35.1250208	129.118877	2006-02-28	Ligidium koreanum	https://www.inaturalist.org/observations/199445509	https://inaturalist-open-data.s3.amazonaws.com/photos/351729606/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	359	\N	iNaturalist	f
35.1250362	129.118890	2006-02-28	Isopoda	https://www.inaturalist.org/observations/199445508	https://inaturalist-open-data.s3.amazonaws.com/photos/351729520/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	360	\N	iNaturalist	f
35.3590395	139.701257	2024-02-12	Spherillo	https://www.inaturalist.org/observations/199272838	https://inaturalist-open-data.s3.amazonaws.com/photos/351397509/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	361	\N	iNaturalist	f
35.2658255	139.775478	2024-02-12	Armadillidium vulgare	https://www.inaturalist.org/observations/199272834	https://inaturalist-open-data.s3.amazonaws.com/photos/351397179/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	362	\N	iNaturalist	f
35.2953087	139.768608	2024-02-12	Oniscidea	https://www.inaturalist.org/observations/199272833	https://inaturalist-open-data.s3.amazonaws.com/photos/351396884/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	363	\N	iNaturalist	f
35.3387902	139.762411	2024-02-12	Spherillo	https://www.inaturalist.org/observations/199272807	https://inaturalist-open-data.s3.amazonaws.com/photos/351390174/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	364	\N	iNaturalist	f
35.3904217	139.691149	2024-02-12	Spherillo	https://www.inaturalist.org/observations/199272806	https://inaturalist-open-data.s3.amazonaws.com/photos/351390014/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	365	\N	iNaturalist	f
35.2766266	139.765349	2024-02-12	Spherillo	https://www.inaturalist.org/observations/199272805	https://inaturalist-open-data.s3.amazonaws.com/photos/351390002/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	366	\N	iNaturalist	f
35.3626601	139.779318	2024-02-12	Porcellio	https://www.inaturalist.org/observations/199272804	https://inaturalist-open-data.s3.amazonaws.com/photos/351389923/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	367	\N	iNaturalist	f
35.2874692	139.686971	2024-02-12	Spherillo	https://www.inaturalist.org/observations/199272803	https://inaturalist-open-data.s3.amazonaws.com/photos/351389982/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	368	\N	iNaturalist	f
35.3686722	139.738515	2024-02-12	Quelpartoniscus nipponensis	https://www.inaturalist.org/observations/199272802	https://inaturalist-open-data.s3.amazonaws.com/photos/351389907/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	369	\N	iNaturalist	f
36.5238639	126.329597	2024-02-14	Ligia exotica	https://www.inaturalist.org/observations/199254659	https://inaturalist-open-data.s3.amazonaws.com/photos/351362941/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	370	\N	iNaturalist	f
42.9486163	131.874836	2023-05-25	Ligia cinerascens	https://www.inaturalist.org/observations/198436033	https://inaturalist-open-data.s3.amazonaws.com/photos/349749169/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	371	\N	iNaturalist	f
34.0683306	139.480403	2024-02-04	Ligia exotica	https://www.inaturalist.org/observations/198356384	https://inaturalist-open-data.s3.amazonaws.com/photos/349593103/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	372	\N	iNaturalist	f
40.0027167	139.699233	2023-09-23	Ligia exotica	https://www.inaturalist.org/observations/198047534	https://static.inaturalist.org/photos/348973313/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	373	\N	iNaturalist	f
33.3000549	126.167581	2023-11-04	Ligia exotica	https://www.inaturalist.org/observations/194884604	https://inaturalist-open-data.s3.amazonaws.com/photos/342682013/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	374	\N	iNaturalist	f
35.6328964	139.880394	2024-06-12	Porcellionidae	https://www.inaturalist.org/observations/224184574	https://static.inaturalist.org/photos/397301044/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	181	\N	iNaturalist	f
43.0284241	131.885867	2024-06-21	Idotea	https://www.inaturalist.org/observations/224164162	https://inaturalist-open-data.s3.amazonaws.com/photos/397264237/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	183	\N	iNaturalist	f
36.3226827	126.504143	2024-06-19	Ligia exotica	https://www.inaturalist.org/observations/224136891	https://inaturalist-open-data.s3.amazonaws.com/photos/397212393/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	184	\N	iNaturalist	f
9.1500000	-80.930000	1966-07-21	Bathynomus giganteus	\N	\N	\N	1	\N	920	\N	\N	\N	3257	PRESERVED_SPECIMEN	GBIF	f
34.1242282	133.054166	2023-10-28	Ligia exotica	https://www.inaturalist.org/observations/194772463	https://inaturalist-open-data.s3.amazonaws.com/photos/342459888/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	377	\N	iNaturalist	f
34.1238522	133.053785	2023-10-28	Ligia exotica	https://www.inaturalist.org/observations/194772462	https://inaturalist-open-data.s3.amazonaws.com/photos/342459858/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	378	\N	iNaturalist	f
32.7861212	132.866140	2023-09-24	Ligia exotica	https://www.inaturalist.org/observations/194751623	https://inaturalist-open-data.s3.amazonaws.com/photos/342417603/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	379	\N	iNaturalist	f
40.7353518	139.996889	2013-07-14	Tylos granuliferus	https://www.inaturalist.org/observations/194645470	https://inaturalist-open-data.s3.amazonaws.com/photos/342198252/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	380	\N	iNaturalist	f
34.5079859	136.792231	2023-09-17	Ligia exotica	https://www.inaturalist.org/observations/194009211	https://inaturalist-open-data.s3.amazonaws.com/photos/340911887/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	381	\N	iNaturalist	f
33.2281677	126.254157	2023-12-15	Crinocheta	https://www.inaturalist.org/observations/194008233	https://inaturalist-open-data.s3.amazonaws.com/photos/340911923/medium.png	iNaturalist	1	\N	\N	\N	\N	\N	382	\N	iNaturalist	f
42.6166389	131.140386	2022-05-15	Trachelipus rathkii	https://www.inaturalist.org/observations/117608443	https://inaturalist-open-data.s3.amazonaws.com/photos/198639651/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	677	\N	iNaturalist	f
42.6263761	131.137787	2022-05-19	Trachelipus rathkii	https://www.inaturalist.org/observations/117605070	https://inaturalist-open-data.s3.amazonaws.com/photos/198634956/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	678	\N	iNaturalist	f
30.7135311	122.778009	2020-08-18	Ligia	https://www.inaturalist.org/observations/100595508	https://inaturalist-open-data.s3.amazonaws.com/photos/167912973/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	720	\N	iNaturalist	f
33.2212250	126.245388	2021-10-14	Ligia exotica	https://www.inaturalist.org/observations/98156817	https://static.inaturalist.org/photos/163370823/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	721	\N	iNaturalist	f
37.4428477	126.365524	2021-09-22	Ligia exotica	https://www.inaturalist.org/observations/97411910	https://inaturalist-open-data.s3.amazonaws.com/photos/162000635/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	722	\N	iNaturalist	f
37.4442807	126.371177	2021-09-22	Ligia exotica	https://www.inaturalist.org/observations/97308908	https://inaturalist-open-data.s3.amazonaws.com/photos/161810423/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	723	\N	iNaturalist	f
36.1211850	125.986077	2019-07-25	Ligia exotica	https://www.inaturalist.org/observations/29507829	https://inaturalist-open-data.s3.amazonaws.com/photos/46057338/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	867	\N	iNaturalist	f
36.1211783	125.986223	2019-07-25	Ligia exotica	https://www.inaturalist.org/observations/29507822	https://inaturalist-open-data.s3.amazonaws.com/photos/46057314/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	868	\N	iNaturalist	f
36.1211850	125.986267	2019-07-25	Ligia exotica	https://www.inaturalist.org/observations/29507814	https://inaturalist-open-data.s3.amazonaws.com/photos/46057296/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	869	\N	iNaturalist	f
33.4143184	129.797086	2018-06-24	Sphaeromatidae	https://www.inaturalist.org/observations/18049725	https://inaturalist-open-data.s3.amazonaws.com/photos/27593245/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	906	\N	iNaturalist	f
25.1241585	-80.519312	2024-01-07	Tylos	https://www.inaturalist.org/observations/233838309	https://www.inaturalist.org/observations/233838309	iNaturalist	1	\N	\N	\N	\N	\N	1415	\N	iNaturalist	f
27.7111417	-82.691155	2024-03-31	Ligia exotica	https://www.inaturalist.org/observations/204765644	https://www.inaturalist.org/observations/204765644	iNaturalist	1	\N	\N	\N	\N	\N	1499	\N	iNaturalist	f
29.9803472	122.327192	2023-08-27	Ligia exotica	https://www.inaturalist.org/observations/180750106	https://inaturalist-open-data.s3.amazonaws.com/photos/314883338/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	445	\N	iNaturalist	f
29.9507304	122.406611	2023-08-27	Ligia exotica	https://www.inaturalist.org/observations/180750105	https://inaturalist-open-data.s3.amazonaws.com/photos/314883315/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	446	\N	iNaturalist	f
30.0299753	122.320609	2023-08-28	Ligia exotica	https://www.inaturalist.org/observations/180750098	https://inaturalist-open-data.s3.amazonaws.com/photos/314883242/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	447	\N	iNaturalist	f
30.0283249	122.321993	2023-08-28	Ligia exotica	https://www.inaturalist.org/observations/180750094	https://inaturalist-open-data.s3.amazonaws.com/photos/314883211/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	448	\N	iNaturalist	f
30.0252582	122.324367	2023-08-28	Ligia exotica	https://www.inaturalist.org/observations/180750086	https://inaturalist-open-data.s3.amazonaws.com/photos/314882388/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	450	\N	iNaturalist	f
33.4120087	126.227878	2023-08-26	Ligia exotica	https://www.inaturalist.org/observations/180222689	https://inaturalist-open-data.s3.amazonaws.com/photos/313895535/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	452	\N	iNaturalist	f
35.5096895	133.492629	2023-08-22	Ligia exotica	https://www.inaturalist.org/observations/179685695	https://static.inaturalist.org/photos/312867242/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	453	\N	iNaturalist	f
29.9329325	123.149801	2023-04-09	Livoneca	https://www.inaturalist.org/observations/176567302	https://inaturalist-open-data.s3.amazonaws.com/photos/306988834/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	479	\N	iNaturalist	f
33.2277384	126.305264	2023-08-04	Ligia	https://www.inaturalist.org/observations/176546198	https://inaturalist-open-data.s3.amazonaws.com/photos/306948890/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	480	\N	iNaturalist	f
24.5130590	123.832684	2024-01-03	Mimegralla albimanus		\N	GBIF	1	\N	\N	\N	\N	\N	999	\N	GBIF	f
17.4500000	-78.166667	1970-07-14	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7915165	\N	\N	1	\N	\N	\N	\N	\N	2676	PRESERVED_SPECIMEN	GBIF	f
25.1754090	-80.874255	2024-01-01	Leucauge argyra		\N	GBIF	1	\N	\N	\N	\N	\N	1479	\N	GBIF	f
7.9416700	-54.650000	1968-07-11	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	1042	\N	\N	\N	3234	HUMAN_OBSERVATION	GBIF	f
35.6348400	126.465620	2024-06-20	Ligia exotica	https://www.inaturalist.org/observations/223980128	https://static.inaturalist.org/photos/396916110/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	185	\N	iNaturalist	f
35.1527445	129.128494	2024-06-19	Ligia exotica	https://www.inaturalist.org/observations/223968853	https://inaturalist-open-data.s3.amazonaws.com/photos/396896639/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	186	\N	iNaturalist	f
33.2455368	126.566641	2024-06-20	Ligia exotica	https://www.inaturalist.org/observations/223883951	https://inaturalist-open-data.s3.amazonaws.com/photos/396733389/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	187	\N	iNaturalist	f
34.6438309	135.275851	2024-06-18	Armadillidium	https://www.inaturalist.org/observations/223700794	https://inaturalist-open-data.s3.amazonaws.com/photos/396545485/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	188	\N	iNaturalist	f
33.0671622	132.002518	2024-06-18	Ligia	https://www.inaturalist.org/observations/223475148	https://inaturalist-open-data.s3.amazonaws.com/photos/395977517/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	190	\N	iNaturalist	f
33.4627200	126.938517	2024-06-18	Ligia exotica	https://www.inaturalist.org/observations/223474903	https://static.inaturalist.org/photos/395977031/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	191	\N	iNaturalist	f
34.6430617	135.095339	2024-06-16	Armadillidium vulgare	https://www.inaturalist.org/observations/223393359	https://inaturalist-open-data.s3.amazonaws.com/photos/395816368/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	193	\N	iNaturalist	f
35.1981726	129.230010	2024-06-16	Ligia exotica	https://www.inaturalist.org/observations/223261713	https://inaturalist-open-data.s3.amazonaws.com/photos/395566895/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	194	\N	iNaturalist	f
35.6748793	135.287935	2024-06-15	Ligiidae	https://www.inaturalist.org/observations/223059947	https://inaturalist-open-data.s3.amazonaws.com/photos/395190903/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	195	\N	iNaturalist	f
35.6751035	135.287893	2024-06-15	Ligiidae	https://www.inaturalist.org/observations/223059944	https://inaturalist-open-data.s3.amazonaws.com/photos/395190862/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	196	\N	iNaturalist	f
35.6750964	135.287987	2024-06-15	Ligiidae	https://www.inaturalist.org/observations/223059943	https://inaturalist-open-data.s3.amazonaws.com/photos/395190812/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	197	\N	iNaturalist	f
33.2253223	126.241204	2023-07-21	Ligia exotica	https://www.inaturalist.org/observations/176360829	https://inaturalist-open-data.s3.amazonaws.com/photos/306602466/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	481	\N	iNaturalist	f
30.5078387	122.036529	2022-02-26	Ligidium	https://www.inaturalist.org/observations/176292715	https://inaturalist-open-data.s3.amazonaws.com/photos/306475407/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	483	\N	iNaturalist	f
35.6751065	135.287979	2024-06-15	Ligiidae	https://www.inaturalist.org/observations/223059940	https://inaturalist-open-data.s3.amazonaws.com/photos/395190792/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	198	\N	iNaturalist	f
35.6751049	135.287952	2024-06-15	Ligiidae	https://www.inaturalist.org/observations/223059937	https://inaturalist-open-data.s3.amazonaws.com/photos/395190770/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	199	\N	iNaturalist	f
39.0659586	122.060552	2023-08-01	Ligia	https://www.inaturalist.org/observations/176064523	https://inaturalist-open-data.s3.amazonaws.com/photos/306053470/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	484	\N	iNaturalist	f
43.2384450	141.015808	2023-07-31	Ligia	https://www.inaturalist.org/observations/175887084	https://inaturalist-open-data.s3.amazonaws.com/photos/305721917/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	485	\N	iNaturalist	f
33.5439438	126.670043	2022-09-17	Ligia	https://www.inaturalist.org/observations/135331820	https://static.inaturalist.org/photos/230833839/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	638	\N	iNaturalist	f
28.2803483	129.582412	2023-06-17	Oniscidea	https://www.inaturalist.org/observations/174216132	https://inaturalist-open-data.s3.amazonaws.com/photos/302722949/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	488	\N	iNaturalist	f
39.2064502	139.894447	2021-07-22	Ligia exotica	https://www.inaturalist.org/observations/174054111	https://static.inaturalist.org/photos/302339004/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	489	\N	iNaturalist	f
33.5180690	126.527208	2023-07-21	Ligia exotica	https://www.inaturalist.org/observations/174042988	https://static.inaturalist.org/photos/302316630/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	490	\N	iNaturalist	f
29.3820640	122.220215	2023-07-20	Porcellionides	https://www.inaturalist.org/observations/173893052	https://inaturalist-open-data.s3.amazonaws.com/photos/302041888/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	491	\N	iNaturalist	f
28.5351680	129.746607	2023-06-17	Ligia ryukyuensis	https://www.inaturalist.org/observations/173743559	https://inaturalist-open-data.s3.amazonaws.com/photos/301761787/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	492	\N	iNaturalist	f
28.4744100	129.717067	2023-06-17	Alloniscus	https://www.inaturalist.org/observations/173564721	https://inaturalist-open-data.s3.amazonaws.com/photos/301428764/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	493	\N	iNaturalist	f
28.4743300	129.716932	2023-06-17	Alloniscus	https://www.inaturalist.org/observations/173564707	https://inaturalist-open-data.s3.amazonaws.com/photos/301428079/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	494	\N	iNaturalist	f
33.7992454	130.450474	2023-07-18	Ligia exotica	https://www.inaturalist.org/observations/173563688	https://inaturalist-open-data.s3.amazonaws.com/photos/301429230/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	495	\N	iNaturalist	f
42.8838594	131.471315	2023-07-17	Ligia cinerascens	https://www.inaturalist.org/observations/173360554	https://inaturalist-open-data.s3.amazonaws.com/photos/301055765/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	496	\N	iNaturalist	f
34.9088706	128.313593	2023-07-17	Ligia	https://www.inaturalist.org/observations/173334280	https://static.inaturalist.org/photos/301005142/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	497	\N	iNaturalist	f
30.2336890	130.487354	2023-07-02	Armadillidae	https://www.inaturalist.org/observations/172818347	https://inaturalist-open-data.s3.amazonaws.com/photos/300051118/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	499	\N	iNaturalist	f
35.1919828	129.220221	2023-07-13	Armadillidium vulgare	https://www.inaturalist.org/observations/172698948	https://inaturalist-open-data.s3.amazonaws.com/photos/299830809/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	500	\N	iNaturalist	f
29.9214956	122.409823	2023-07-02	Ligia exotica	https://www.inaturalist.org/observations/172452605	https://static.inaturalist.org/photos/299375386/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	501	\N	iNaturalist	f
34.5464533	134.989547	2023-07-09	Armadillidium vulgare	https://www.inaturalist.org/observations/172436435	https://inaturalist-open-data.s3.amazonaws.com/photos/299346451/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	505	\N	iNaturalist	f
29.9521263	122.451696	2023-07-02	Ligia exotica	https://www.inaturalist.org/observations/172100918	https://static.inaturalist.org/photos/298699866/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	506	\N	iNaturalist	f
43.0960062	131.865316	2023-07-10	Porcellio scaber	https://www.inaturalist.org/observations/171963497	https://inaturalist-open-data.s3.amazonaws.com/photos/298457610/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	507	\N	iNaturalist	f
43.0731201	131.843094	2023-07-09	Ligia cinerascens	https://www.inaturalist.org/observations/171928834	https://inaturalist-open-data.s3.amazonaws.com/photos/298405054/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	508	\N	iNaturalist	f
33.3723450	129.556763	2023-07-09	Ligia exotica	https://www.inaturalist.org/observations/171900989	https://inaturalist-open-data.s3.amazonaws.com/photos/298342928/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	509	\N	iNaturalist	f
35.0524333	129.091247	2023-07-05	Armadillidium vulgare	https://www.inaturalist.org/observations/171691845	https://inaturalist-open-data.s3.amazonaws.com/photos/297961810/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	510	\N	iNaturalist	f
36.6839833	126.129305	2023-06-11	Ligia exotica	https://www.inaturalist.org/observations/166775461	https://inaturalist-open-data.s3.amazonaws.com/photos/288836182/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	531	\N	iNaturalist	f
33.4663999	126.349647	2023-06-06	Armadillidiidae	https://www.inaturalist.org/observations/165850181	https://static.inaturalist.org/photos/287139709/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	532	\N	iNaturalist	f
36.6222925	126.376728	2023-06-05	Ligia exotica	https://www.inaturalist.org/observations/165638445	https://static.inaturalist.org/photos/286743909/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	533	\N	iNaturalist	f
42.9604633	131.880076	2023-06-03	Porcellio scaber	https://www.inaturalist.org/observations/165487386	https://inaturalist-open-data.s3.amazonaws.com/photos/286468782/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	534	\N	iNaturalist	f
43.0125944	131.933158	2023-06-02	Ligia cinerascens	https://www.inaturalist.org/observations/165288540	https://inaturalist-open-data.s3.amazonaws.com/photos/286103611/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	535	\N	iNaturalist	f
42.9604400	131.880080	2023-06-03	Porcellio scaber	https://www.inaturalist.org/observations/165253908	https://inaturalist-open-data.s3.amazonaws.com/photos/286040737/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	536	\N	iNaturalist	f
35.6751081	135.287939	2024-06-15	Ligiidae	https://www.inaturalist.org/observations/223059936	https://inaturalist-open-data.s3.amazonaws.com/photos/395190754/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	200	\N	iNaturalist	f
35.6751034	135.287924	2024-06-15	Ligiidae	https://www.inaturalist.org/observations/223059934	https://inaturalist-open-data.s3.amazonaws.com/photos/395190732/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	201	\N	iNaturalist	f
35.6751047	135.287918	2024-06-15	Ligiidae	https://www.inaturalist.org/observations/223059931	https://inaturalist-open-data.s3.amazonaws.com/photos/395190707/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	202	\N	iNaturalist	f
35.2597283	139.737510	2024-06-16	Oniscidea	https://www.inaturalist.org/observations/223001648	https://inaturalist-open-data.s3.amazonaws.com/photos/395082042/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	203	\N	iNaturalist	f
26.1198967	127.663602	2024-06-02	Ligia exotica	https://www.inaturalist.org/observations/222943302	https://inaturalist-open-data.s3.amazonaws.com/photos/394967703/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	204	\N	iNaturalist	f
29.9999619	122.392107	2023-10-03	Ligia exotica	https://www.inaturalist.org/observations/222163314	https://inaturalist-open-data.s3.amazonaws.com/photos/393505049/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	205	\N	iNaturalist	f
33.4968333	126.968825	2024-06-11	Ligia	https://www.inaturalist.org/observations/221990444	https://inaturalist-open-data.s3.amazonaws.com/photos/393185227/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	206	\N	iNaturalist	f
33.4972883	126.968103	2024-06-11	Ligia	https://www.inaturalist.org/observations/221963485	https://inaturalist-open-data.s3.amazonaws.com/photos/393132972/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	207	\N	iNaturalist	f
33.4967887	126.451147	2024-06-09	Ligia exotica	https://www.inaturalist.org/observations/221800475	https://inaturalist-open-data.s3.amazonaws.com/photos/392824118/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	209	\N	iNaturalist	f
34.0788310	139.517818	2024-06-10	Ligia exotica	https://www.inaturalist.org/observations/221768564	https://inaturalist-open-data.s3.amazonaws.com/photos/392767794/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	210	\N	iNaturalist	f
24.3638800	123.928900	2024-01-02	Utetheisa inconstans		\N	GBIF	1	\N	\N	\N	\N	\N	983	\N	GBIF	f
39.9000000	141.800000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1228	\N	\N	f
39.7000000	141.500000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1232	\N	\N	f
39.5000000	141.400000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1233	\N	\N	f
39.4000000	141.200000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1234	\N	\N	f
38.8000000	140.800000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1235	\N	\N	f
38.6000000	140.600000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1236	\N	\N	f
38.5000000	140.400000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1237	\N	\N	f
37.9000000	139.800000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1238	\N	\N	f
37.6000000	139.500000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1239	\N	\N	f
37.2000000	138.900000	\N	Nerocila phaiopleura	\N	\N	Nagasawa2017_2020	\N	\N	\N	\N	\N	\N	1240	\N	\N	f
42.7292167	141.468019	2017-07-28	Ligidium	\N	\N	Harigai2020	3	\N	197	\N	\N	\N	1281	\N	\N	f
42.7473139	141.449722	2017-07-28	Ligidium	\N	\N	Harigai2020	2	\N	236	\N	\N	\N	1282	\N	\N	f
42.7555778	141.439678	2017-07-28	Ligidium	\N	\N	Harigai2020	2	\N	242	\N	\N	\N	1283	\N	\N	f
42.9719806	141.148561	2017-08-09	Ligidium	\N	\N	Harigai2020	4	\N	318	\N	\N	\N	1284	\N	\N	f
43.0029000	141.149975	2017-08-09	Ligidium	\N	\N	Harigai2020	3	\N	402	\N	\N	\N	1285	\N	\N	f
43.0227639	141.133853	2017-08-09	Ligidium	\N	\N	Harigai2020	3	\N	399	\N	\N	\N	1286	\N	\N	f
43.0330528	141.128231	2017-08-09	Ligidium	\N	\N	Harigai2020	3	\N	409	\N	\N	\N	1287	\N	\N	f
43.0522083	141.114189	2017-08-09	Ligidium	\N	\N	Harigai2020	3	\N	456	\N	\N	\N	1288	\N	\N	f
43.0699139	141.109872	2017-08-09	Ligidium	\N	\N	Harigai2020	3	\N	507	\N	\N	\N	1289	\N	\N	f
43.0853861	141.082597	2017-08-09	Ligidium	\N	\N	Harigai2020	3	\N	660	\N	\N	\N	1290	\N	\N	f
43.0918889	141.065003	2017-08-09	Ligidium	\N	\N	Harigai2020	4	\N	654	\N	\N	\N	1291	\N	\N	f
43.0981556	141.051614	2017-08-09	Ligidium	\N	\N	Harigai2020	5	\N	494	\N	\N	\N	1292	\N	\N	f
43.1076361	141.036667	2017-08-09	Ligidium	\N	\N	Harigai2020	4	\N	373	\N	\N	\N	1293	\N	\N	f
43.1197250	141.033047	2017-08-09	Ligidium	\N	\N	Harigai2020	3	\N	241	\N	\N	\N	1294	\N	\N	f
42.7210417	141.484617	2018-05-08	Ligidium	\N	\N	Harigai2020	16	\N	173	\N	\N	\N	1295	\N	\N	f
42.6307194	141.401644	2018-05-08	Ligidium	\N	\N	Harigai2020	16	\N	144	\N	\N	\N	1296	\N	\N	f
42.7170389	141.407953	2018-09-26	Ligidium	\N	\N	Harigai2020	3	\N	437	\N	\N	\N	1297	\N	\N	f
42.5673667	141.367228	2018-09-26	Ligidium	\N	\N	Harigai2020	20	\N	66	\N	\N	\N	1298	\N	\N	f
26.6033684	128.319806	2022-10-02	Armadillidae	https://www.inaturalist.org/observations/204098441	https://static.inaturalist.org/photos/360704709/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	324	\N	iNaturalist	f
24.4658167	124.124258	2021-09-13	Alloniscus ryukyuensis	https://www.inaturalist.org/observations/204002096	https://static.inaturalist.org/photos/360518674/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	325	\N	iNaturalist	f
24.6690210	-81.259051	2024-08-02	Ligia exotica	https://www.inaturalist.org/observations/233524890	https://www.inaturalist.org/observations/233524890	iNaturalist	1	\N	\N	\N	\N	\N	1416	\N	iNaturalist	f
27.7109250	-82.690942	2024-03-31	Ligia exotica	https://www.inaturalist.org/observations/204765827	https://www.inaturalist.org/observations/204765827	iNaturalist	1	\N	\N	\N	\N	\N	1498	\N	iNaturalist	f
37.5640330	126.637793	2023-06-02	Armadillidium vulgare	https://www.inaturalist.org/observations/165107997	https://static.inaturalist.org/photos/285767938/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	538	\N	iNaturalist	f
43.0129500	131.932840	2023-06-02	Ligia cinerascens	https://www.inaturalist.org/observations/165103607	https://inaturalist-open-data.s3.amazonaws.com/photos/285759565/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	539	\N	iNaturalist	f
33.3000946	126.167519	2023-06-01	Ligia	https://www.inaturalist.org/observations/164970199	https://inaturalist-open-data.s3.amazonaws.com/photos/285506686/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	540	\N	iNaturalist	f
33.3270771	126.846647	2023-05-20	Ligia exotica	https://www.inaturalist.org/observations/164944508	https://inaturalist-open-data.s3.amazonaws.com/photos/285460717/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	541	\N	iNaturalist	f
43.0731124	131.843186	2022-09-05	Ligia cinerascens	https://www.inaturalist.org/observations/133865779	https://static.inaturalist.org/photos/228085637/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	641	\N	iNaturalist	f
42.9446621	131.870717	2021-07-31	Ligia cinerascens	https://www.inaturalist.org/observations/133385374	https://inaturalist-open-data.s3.amazonaws.com/photos/227192224/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	642	\N	iNaturalist	f
33.2467530	126.555073	2018-07-13	Armadillidium	https://www.inaturalist.org/observations/132973530	https://static.inaturalist.org/photos/226429303/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	643	\N	iNaturalist	f
26.3702726	126.616325	2022-08-19	Ligia exotica	https://www.inaturalist.org/observations/131432449	https://inaturalist-open-data.s3.amazonaws.com/photos/223670457/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	644	\N	iNaturalist	f
35.1602481	139.611393	2015-05-06	Sphaeroma	https://www.inaturalist.org/observations/130351914	https://inaturalist-open-data.s3.amazonaws.com/photos/221670519/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	645	\N	iNaturalist	f
24.5836810	123.830830	2024-01-02	Illeis koebelei		\N	GBIF	1	\N	\N	\N	\N	\N	984	\N	GBIF	f
26.7200000	-84.910000	2011-04-07	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229216	\N	\N	1	\N	\N	\N	\N	\N	1206	PRESERVED_SPECIMEN	GBIF	f
26.8200000	-84.820000	2011-04-08	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229236	\N	\N	1	\N	\N	\N	\N	\N	1212	PRESERVED_SPECIMEN	GBIF	f
29.1900000	-87.430000	2011-08-27	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229262	\N	\N	1	\N	\N	\N	\N	\N	3064	PRESERVED_SPECIMEN	GBIF	f
29.0200000	-87.310000	2011-08-27	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229264	\N	\N	1	\N	\N	\N	\N	\N	3065	PRESERVED_SPECIMEN	GBIF	f
29.3700000	-87.060000	2011-08-23	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229266	\N	\N	1	\N	\N	\N	\N	\N	3066	PRESERVED_SPECIMEN	GBIF	f
19.3581590	-81.275305	2024-01-01	Stenopus hispidus		\N	GBIF	1	\N	\N	\N	\N	\N	1522	\N	GBIF	f
35.1599236	139.611807	2015-05-06	Cirolana harfordi	https://www.inaturalist.org/observations/130351755	https://inaturalist-open-data.s3.amazonaws.com/photos/221670075/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	646	\N	iNaturalist	f
37.9242919	139.026975	2022-08-07	Ligia exotica	https://www.inaturalist.org/observations/129818077	https://inaturalist-open-data.s3.amazonaws.com/photos/220668840/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	647	\N	iNaturalist	f
33.4592913	126.310497	2022-06-12	Ligia	https://www.inaturalist.org/observations/121373886	https://static.inaturalist.org/photos/205381854/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	665	\N	iNaturalist	f
42.6272175	131.139508	2022-05-22	Trachelipus rathkii	https://www.inaturalist.org/observations/118182972	https://inaturalist-open-data.s3.amazonaws.com/photos/199648287/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	674	\N	iNaturalist	f
35.1586968	129.160384	2022-05-20	Ligia exotica	https://www.inaturalist.org/observations/117828897	https://static.inaturalist.org/photos/199030489/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	675	\N	iNaturalist	f
42.6264457	131.137906	2022-05-19	Ligia cinerascens	https://www.inaturalist.org/observations/117732560	https://inaturalist-open-data.s3.amazonaws.com/photos/198860849/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	676	\N	iNaturalist	f
42.6210028	131.138531	2022-05-15	Trachelipus rathkii	https://www.inaturalist.org/observations/117589479	https://inaturalist-open-data.s3.amazonaws.com/photos/198608350/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	679	\N	iNaturalist	f
42.6269958	131.137642	2022-05-16	Trachelipus rathkii	https://www.inaturalist.org/observations/117380776	https://inaturalist-open-data.s3.amazonaws.com/photos/198228283/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	680	\N	iNaturalist	f
42.6263950	131.136577	2022-05-17	Ligia cinerascens	https://www.inaturalist.org/observations/117327612	https://inaturalist-open-data.s3.amazonaws.com/photos/198134459/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	681	\N	iNaturalist	f
42.6268291	131.137627	2022-05-14	Armadillidium versicolor	https://www.inaturalist.org/observations/116974033	https://inaturalist-open-data.s3.amazonaws.com/photos/197497843/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	683	\N	iNaturalist	f
42.6264944	131.136697	2022-05-14	Ligia cinerascens	https://www.inaturalist.org/observations/116957374	https://inaturalist-open-data.s3.amazonaws.com/photos/197470521/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	684	\N	iNaturalist	f
33.9134745	132.233303	2019-04-08	Cleantiella	https://www.inaturalist.org/observations/114355570	https://static.inaturalist.org/photos/193115444/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	685	\N	iNaturalist	f
33.5188917	126.713570	2022-04-30	Oniscidea	https://www.inaturalist.org/observations/113703550	https://inaturalist-open-data.s3.amazonaws.com/photos/192087900/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	686	\N	iNaturalist	f
33.5186108	126.714717	2022-04-30	Isopoda	https://www.inaturalist.org/observations/113702447	https://inaturalist-open-data.s3.amazonaws.com/photos/192084866/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	687	\N	iNaturalist	f
33.2395341	126.557595	2022-04-30	Ligia	https://www.inaturalist.org/observations/113698242	https://inaturalist-open-data.s3.amazonaws.com/photos/192078234/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	688	\N	iNaturalist	f
27.4730407	-80.223379	2018-03-20	Paradella dianae	https://www.inaturalist.org/observations/73750060	https://www.inaturalist.org/observations/73750060	iNaturalist	1	\N	\N	\N	\N	\N	2200	\N	iNaturalist	f
25.0145280	122.001321	2022-04-10	Ligia exotica	https://www.inaturalist.org/observations/113083346	https://inaturalist-open-data.s3.amazonaws.com/photos/191062807/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	689	\N	iNaturalist	f
36.5201554	126.438688	2022-04-06	Ligia exotica	https://www.inaturalist.org/observations/110566229	https://inaturalist-open-data.s3.amazonaws.com/photos/186535945/medium.png	iNaturalist	1	\N	\N	\N	\N	\N	690	\N	iNaturalist	f
35.0824965	129.062799	2022-03-31	Armadillidium vulgare	https://www.inaturalist.org/observations/110077358	https://static.inaturalist.org/photos/185635643/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	691	\N	iNaturalist	f
35.2039755	139.162215	2021-05-08	Ceratothoa verrucosa	https://www.inaturalist.org/observations/109624213	https://inaturalist-open-data.s3.amazonaws.com/photos/184796338/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	692	\N	iNaturalist	f
35.1936761	139.601934	2015-12-16	Cymothoidae	https://www.inaturalist.org/observations/109534462	https://inaturalist-open-data.s3.amazonaws.com/photos/184629969/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	693	\N	iNaturalist	f
26.3554510	127.674262	2022-03-26	Armadillidae	https://www.inaturalist.org/observations/109519022	https://inaturalist-open-data.s3.amazonaws.com/photos/184601277/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	694	\N	iNaturalist	f
25.0143517	122.001364	2019-07-20	Ligia exotica	https://www.inaturalist.org/observations/109224460	https://inaturalist-open-data.s3.amazonaws.com/photos/184049107/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	695	\N	iNaturalist	f
34.7013909	136.997817	2021-08-12	Ligia exotica	https://www.inaturalist.org/observations/108941054	https://inaturalist-open-data.s3.amazonaws.com/photos/183521176/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	696	\N	iNaturalist	f
34.7077340	137.000064	2021-08-12	Ligia exotica	https://www.inaturalist.org/observations/108872933	https://inaturalist-open-data.s3.amazonaws.com/photos/183391449/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	697	\N	iNaturalist	f
25.0157217	122.000232	2020-07-04	Isopoda	https://www.inaturalist.org/observations/108365164	https://inaturalist-open-data.s3.amazonaws.com/photos/182435895/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	698	\N	iNaturalist	f
36.5789782	126.314005	2022-03-09	Ligia exotica	https://www.inaturalist.org/observations/108217128	https://inaturalist-open-data.s3.amazonaws.com/photos/182159564/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	699	\N	iNaturalist	f
30.6109735	130.950097	2018-05-23	Ligia	https://www.inaturalist.org/observations/108008436	https://inaturalist-open-data.s3.amazonaws.com/photos/181764762/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	700	\N	iNaturalist	f
34.2686498	133.353219	2019-10-31	Armadillidium vulgare	https://www.inaturalist.org/observations/105829239	https://static.inaturalist.org/photos/177657838/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	701	\N	iNaturalist	f
34.3196316	133.389642	2019-10-04	Armadillidium vulgare	https://www.inaturalist.org/observations/105828485	https://static.inaturalist.org/photos/177656259/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	702	\N	iNaturalist	f
18.5229633	-77.808822	2022-03-13	Isopoda	https://www.inaturalist.org/observations/108665722	https://www.inaturalist.org/observations/108665722	iNaturalist	1	\N	\N	\N	\N	\N	1954	\N	iNaturalist	f
37.2906262	126.577417	2021-09-19	Ligia exotica	https://www.inaturalist.org/observations/95537167	https://inaturalist-open-data.s3.amazonaws.com/photos/158617501/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	726	\N	iNaturalist	f
34.9072448	128.152440	2021-09-20	Ligia exotica	https://www.inaturalist.org/observations/95497419	https://inaturalist-open-data.s3.amazonaws.com/photos/158547491/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	727	\N	iNaturalist	f
34.0629500	130.901866	2021-09-19	Ligia	https://www.inaturalist.org/observations/95367995	https://static.inaturalist.org/photos/158316849/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	728	\N	iNaturalist	f
42.8693860	131.452954	2021-09-10	Ligia cinerascens	https://www.inaturalist.org/observations/95273113	https://inaturalist-open-data.s3.amazonaws.com/photos/158145718/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	729	\N	iNaturalist	f
42.6694722	131.213981	2021-09-18	Ligia cinerascens	https://www.inaturalist.org/observations/95258053	https://inaturalist-open-data.s3.amazonaws.com/photos/158120929/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	730	\N	iNaturalist	f
37.1906179	125.983271	2021-08-20	Ligia exotica	https://www.inaturalist.org/observations/92861252	https://inaturalist-open-data.s3.amazonaws.com/photos/153819414/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	732	\N	iNaturalist	f
26.9219800	-82.077933	2020-08-17	Ligia	https://www.inaturalist.org/observations/56763360	https://www.inaturalist.org/observations/56763360	iNaturalist	1	\N	\N	\N	\N	\N	2241	\N	iNaturalist	f
26.9185915	-82.057579	2020-08-10	Ligia	https://www.inaturalist.org/observations/56018426	https://www.inaturalist.org/observations/56018426	iNaturalist	1	\N	\N	\N	\N	\N	2242	\N	iNaturalist	f
33.4274644	126.933578	2021-08-15	Ligia	https://www.inaturalist.org/observations/91391574	https://inaturalist-open-data.s3.amazonaws.com/photos/151162737/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	733	\N	iNaturalist	f
35.1994633	129.229753	2021-08-10	Ligia	https://www.inaturalist.org/observations/90744271	https://static.inaturalist.org/photos/150006265/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	734	\N	iNaturalist	f
44.0269812	145.859542	2021-08-05	Porcellio scaber	https://www.inaturalist.org/observations/90732833	https://inaturalist-open-data.s3.amazonaws.com/photos/149985080/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	735	\N	iNaturalist	f
33.2424646	126.567838	2020-06-07	Ligia	https://www.inaturalist.org/observations/89877962	https://inaturalist-open-data.s3.amazonaws.com/photos/148468625/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	736	\N	iNaturalist	f
33.2510553	126.195862	2020-06-07	Ligia	https://www.inaturalist.org/observations/89877948	https://inaturalist-open-data.s3.amazonaws.com/photos/148468566/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	737	\N	iNaturalist	f
33.2466272	126.202561	2020-06-07	Ligia	https://www.inaturalist.org/observations/89877935	https://inaturalist-open-data.s3.amazonaws.com/photos/148468485/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	738	\N	iNaturalist	f
34.1676797	133.085510	2019-07-23	Ligia	https://www.inaturalist.org/observations/89405930	https://inaturalist-open-data.s3.amazonaws.com/photos/147629601/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	739	\N	iNaturalist	f
34.2735000	133.139858	2023-06-22	Ligia exotica	https://www.inaturalist.org/observations/168791426	https://inaturalist-open-data.s3.amazonaws.com/photos/292573044/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	520	\N	iNaturalist	f
33.5436403	126.669061	2020-11-07	Ligia	https://www.inaturalist.org/observations/64348019	https://inaturalist-open-data.s3.amazonaws.com/photos/103438304/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	772	\N	iNaturalist	f
33.5434937	126.670182	2020-11-07	Ligia	https://www.inaturalist.org/observations/64347960	https://inaturalist-open-data.s3.amazonaws.com/photos/103438130/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	773	\N	iNaturalist	f
33.5436141	126.670316	2020-11-07	Ligia	https://www.inaturalist.org/observations/64347957	https://inaturalist-open-data.s3.amazonaws.com/photos/103438119/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	774	\N	iNaturalist	f
33.5435933	126.670270	2020-11-07	Ligia	https://www.inaturalist.org/observations/64347952	https://inaturalist-open-data.s3.amazonaws.com/photos/103438100/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	775	\N	iNaturalist	f
33.5435239	126.670031	2020-11-07	Ligia	https://www.inaturalist.org/observations/64347934	https://inaturalist-open-data.s3.amazonaws.com/photos/103438019/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	776	\N	iNaturalist	f
33.5437674	126.669168	2020-11-07	Ligia	https://www.inaturalist.org/observations/64347765	https://inaturalist-open-data.s3.amazonaws.com/photos/103437595/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	777	\N	iNaturalist	f
33.5437048	126.669212	2020-11-07	Ligia	https://www.inaturalist.org/observations/64347749	https://inaturalist-open-data.s3.amazonaws.com/photos/103437558/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	778	\N	iNaturalist	f
31.2620440	130.281847	2020-10-31	Cymothoidae	https://www.inaturalist.org/observations/63880583	https://static.inaturalist.org/photos/102601157/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	779	\N	iNaturalist	f
36.6287654	126.377427	2020-10-28	Armadillidium nasatum	https://www.inaturalist.org/observations/63690015	https://static.inaturalist.org/photos/102260779/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	780	\N	iNaturalist	f
36.6286256	126.378238	2020-10-17	Armadillidium nasatum	https://www.inaturalist.org/observations/62772467	https://static.inaturalist.org/photos/100635714/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	782	\N	iNaturalist	f
36.6301024	126.379266	2020-10-17	Armadillidium	https://www.inaturalist.org/observations/62772303	https://static.inaturalist.org/photos/100635268/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	783	\N	iNaturalist	f
36.6699443	126.394394	2020-10-03	Oniscidea	https://www.inaturalist.org/observations/61528124	https://static.inaturalist.org/photos/98473177/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	784	\N	iNaturalist	f
37.9543324	124.692677	2020-10-01	Ligia	https://www.inaturalist.org/observations/61380976	https://inaturalist-open-data.s3.amazonaws.com/photos/98217485/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	785	\N	iNaturalist	f
37.4714820	126.524601	2020-10-01	Ligia	https://www.inaturalist.org/observations/61367701	https://inaturalist-open-data.s3.amazonaws.com/photos/98193462/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	786	\N	iNaturalist	f
37.4559391	126.524384	2020-10-01	Ligia	https://www.inaturalist.org/observations/61367669	https://inaturalist-open-data.s3.amazonaws.com/photos/98193398/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	787	\N	iNaturalist	f
36.6225010	126.376549	2020-09-30	Ligia exotica	https://www.inaturalist.org/observations/61282420	https://static.inaturalist.org/photos/98049423/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	788	\N	iNaturalist	f
36.6296789	126.379048	2020-09-29	Armadillidium nasatum	https://www.inaturalist.org/observations/61197666	https://static.inaturalist.org/photos/97903332/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	789	\N	iNaturalist	f
36.6306798	126.377948	2020-09-26	Armadillidium vulgare	https://www.inaturalist.org/observations/60806051	https://static.inaturalist.org/photos/97253410/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	790	\N	iNaturalist	f
36.6308406	126.378028	2020-09-26	Armadillidium	https://www.inaturalist.org/observations/60805931	https://static.inaturalist.org/photos/97253138/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	791	\N	iNaturalist	f
34.6889140	125.438810	2020-09-19	Ligia exotica	https://www.inaturalist.org/observations/60071798	https://static.inaturalist.org/photos/96029919/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	792	\N	iNaturalist	f
33.3902570	126.229255	2020-07-13	Ligiidae	https://www.inaturalist.org/observations/60041732	https://static.inaturalist.org/photos/95980888/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	793	\N	iNaturalist	f
29.0083000	-88.370000	1962-07-30	Bathynomus giganteus	\N	\N	\N	1	\N	732	\N	\N	\N	3273	PRESERVED_SPECIMEN	GBIF	f
32.7671936	130.374359	2018-07-21	Ligia	https://www.inaturalist.org/observations/59989230	https://inaturalist-open-data.s3.amazonaws.com/photos/95883721/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	794	\N	iNaturalist	f
36.6220045	126.381799	2020-09-16	Armadillidium	https://www.inaturalist.org/observations/59762244	https://static.inaturalist.org/photos/95513407/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	795	\N	iNaturalist	f
35.2619750	139.733485	2023-05-17	Ligia exotica	https://www.inaturalist.org/observations/164929144	https://static.inaturalist.org/photos/285432650/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	542	\N	iNaturalist	f
35.0680200	129.065062	2022-08-13	Ligia exotica	https://www.inaturalist.org/observations/164810570	https://inaturalist-open-data.s3.amazonaws.com/photos/285209482/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	543	\N	iNaturalist	f
42.8993690	131.725690	2023-05-29	Ligia cinerascens	https://www.inaturalist.org/observations/164582650	https://static.inaturalist.org/photos/284783206/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	544	\N	iNaturalist	f
33.2759399	126.719635	2023-05-28	Ligia	https://www.inaturalist.org/observations/164149583	https://static.inaturalist.org/photos/285145924/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	545	\N	iNaturalist	f
35.0271678	139.627702	2012-05-26	Ligia exotica	https://www.inaturalist.org/observations/163960642	https://inaturalist-open-data.s3.amazonaws.com/photos/283644441/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	546	\N	iNaturalist	f
35.5496117	135.357462	2023-05-05	Ligia exotica	https://www.inaturalist.org/observations/159999947	https://inaturalist-open-data.s3.amazonaws.com/photos/276463531/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	584	\N	iNaturalist	f
35.5496550	135.358720	2023-05-05	Ligia exotica	https://www.inaturalist.org/observations/159999525	https://inaturalist-open-data.s3.amazonaws.com/photos/276462670/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	585	\N	iNaturalist	f
19.3621172	-81.388199	2019-05-31	Porcellionides	https://www.inaturalist.org/observations/26131008	https://www.inaturalist.org/observations/26131008	iNaturalist	1	\N	\N	\N	\N	\N	2325	\N	iNaturalist	f
25.0273360	-81.535751	2019-05-28	Glossobius hemiramphi	https://www.inaturalist.org/observations/25960726	https://www.inaturalist.org/observations/25960726	iNaturalist	1	\N	\N	\N	\N	\N	2326	\N	iNaturalist	f
25.7582603	-80.148147	2019-04-27	Ligia exotica	https://www.inaturalist.org/observations/24710949	https://www.inaturalist.org/observations/24710949	iNaturalist	1	\N	\N	\N	\N	\N	2327	\N	iNaturalist	f
25.7154100	-80.151860	2019-04-28	Venezillo parvus	https://www.inaturalist.org/observations/24125943	https://www.inaturalist.org/observations/24125943	iNaturalist	1	\N	\N	\N	\N	\N	2328	\N	iNaturalist	f
36.6287878	126.377024	2020-09-08	Armadillidium nasatum	https://www.inaturalist.org/observations/58915952	https://static.inaturalist.org/photos/94094489/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	796	\N	iNaturalist	f
24.4060349	123.806206	2019-04-07	Venezillo oharaensis	https://www.inaturalist.org/observations/58313398	https://inaturalist-open-data.s3.amazonaws.com/photos/93088209/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	797	\N	iNaturalist	f
36.6302931	126.376302	2020-09-02	Armadillidium nasatum	https://www.inaturalist.org/observations/58312861	https://static.inaturalist.org/photos/93087736/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	798	\N	iNaturalist	f
33.5216845	126.521501	2020-08-29	Ligia exotica	https://www.inaturalist.org/observations/57915314	https://static.inaturalist.org/photos/92422189/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	799	\N	iNaturalist	f
34.5087650	136.786388	2020-08-27	Ligia exotica	https://www.inaturalist.org/observations/57785635	https://static.inaturalist.org/photos/92202897/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	800	\N	iNaturalist	f
32.7871158	132.863718	2020-08-21	Ligia exotica	https://www.inaturalist.org/observations/57442381	https://inaturalist-open-data.s3.amazonaws.com/photos/91624646/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	801	\N	iNaturalist	f
32.7860185	132.866502	2020-08-21	Ligia exotica	https://www.inaturalist.org/observations/57310147	https://inaturalist-open-data.s3.amazonaws.com/photos/91403281/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	802	\N	iNaturalist	f
32.7897222	132.874722	2020-08-21	Ligia exotica	https://www.inaturalist.org/observations/57309980	https://inaturalist-open-data.s3.amazonaws.com/photos/91403067/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	803	\N	iNaturalist	f
35.1891417	129.223358	2020-06-27	Ligia exotica	https://www.inaturalist.org/observations/56697896	https://inaturalist-open-data.s3.amazonaws.com/photos/90369524/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	804	\N	iNaturalist	f
36.1107382	133.127091	2020-08-13	Ligia exotica	https://www.inaturalist.org/observations/56299820	https://inaturalist-open-data.s3.amazonaws.com/photos/89710906/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	805	\N	iNaturalist	f
36.1094444	133.131111	2020-08-13	Ligia	https://www.inaturalist.org/observations/56299666	https://inaturalist-open-data.s3.amazonaws.com/photos/89710597/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	806	\N	iNaturalist	f
36.5014430	126.325902	2020-08-10	Ligia	https://www.inaturalist.org/observations/56201517	https://inaturalist-open-data.s3.amazonaws.com/photos/89546541/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	807	\N	iNaturalist	f
36.5013380	126.325661	2020-08-10	Ligia	https://www.inaturalist.org/observations/56201516	https://inaturalist-open-data.s3.amazonaws.com/photos/89546507/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	808	\N	iNaturalist	f
36.4058333	126.422222	2020-08-09	Armadillidium vulgare	https://www.inaturalist.org/observations/56199721	https://inaturalist-open-data.s3.amazonaws.com/photos/89807060/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	809	\N	iNaturalist	f
40.9013833	140.856430	2020-08-09	Ligia exotica	https://www.inaturalist.org/observations/55971337	https://static.inaturalist.org/photos/89157959/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	810	\N	iNaturalist	f
34.6514863	138.964873	2020-08-01	Ligia exotica	https://www.inaturalist.org/observations/55152196	https://inaturalist-open-data.s3.amazonaws.com/photos/87799346/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	811	\N	iNaturalist	f
34.6518750	138.965482	2020-08-01	Ligia exotica	https://www.inaturalist.org/observations/55152194	https://inaturalist-open-data.s3.amazonaws.com/photos/87799296/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	812	\N	iNaturalist	f
34.0347740	132.842313	2020-07-19	Ligia exotica	https://www.inaturalist.org/observations/53808020	https://inaturalist-open-data.s3.amazonaws.com/photos/85593674/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	813	\N	iNaturalist	f
34.0579599	133.017436	2020-07-13	Armadillidium vulgare	https://www.inaturalist.org/observations/53808012	https://inaturalist-open-data.s3.amazonaws.com/photos/85593178/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	814	\N	iNaturalist	f
36.9756336	126.386375	2020-07-14	Armadillidium nasatum	https://www.inaturalist.org/observations/53029095	https://static.inaturalist.org/photos/84327646/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	815	\N	iNaturalist	f
26.4912720	127.995373	2020-07-12	Ligia ryukyuensis	https://www.inaturalist.org/observations/52796406	https://inaturalist-open-data.s3.amazonaws.com/photos/83948866/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	816	\N	iNaturalist	f
34.8894444	139.123889	2020-07-04	Ligia exotica	https://www.inaturalist.org/observations/52630411	https://inaturalist-open-data.s3.amazonaws.com/photos/83676196/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	817	\N	iNaturalist	f
34.9044444	139.135278	2020-07-04	Ligia exotica	https://www.inaturalist.org/observations/51989396	https://inaturalist-open-data.s3.amazonaws.com/photos/82627378/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	818	\N	iNaturalist	f
33.6320184	130.183239	2020-07-04	Ligia	https://www.inaturalist.org/observations/51882498	https://inaturalist-open-data.s3.amazonaws.com/photos/83028047/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	819	\N	iNaturalist	f
26.9430198	-80.075880	2018-12-30	Ligia exotica	https://www.inaturalist.org/observations/19323626	https://www.inaturalist.org/observations/19323626	iNaturalist	1	\N	\N	\N	\N	\N	2367	\N	iNaturalist	f
36.3000050	126.517783	2020-06-28	Ligia exotica	https://www.inaturalist.org/observations/51190629	https://static.inaturalist.org/photos/81316939/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	820	\N	iNaturalist	f
36.2999833	126.517830	2020-06-28	Ligia exotica	https://www.inaturalist.org/observations/51190543	https://static.inaturalist.org/photos/81316771/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	821	\N	iNaturalist	f
36.3000217	126.517395	2020-06-28	Ligia exotica	https://www.inaturalist.org/observations/51190478	https://static.inaturalist.org/photos/81316690/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	822	\N	iNaturalist	f
36.3028967	126.517333	2020-06-28	Ligia exotica	https://www.inaturalist.org/observations/51190421	https://static.inaturalist.org/photos/81316624/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	823	\N	iNaturalist	f
33.5603000	126.730103	2020-06-24	Ligia	https://www.inaturalist.org/observations/50754465	https://static.inaturalist.org/photos/80614303/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	824	\N	iNaturalist	f
35.6360122	139.909746	2020-06-15	Armadillidium vulgare	https://www.inaturalist.org/observations/49795077	https://inaturalist-open-data.s3.amazonaws.com/photos/79056741/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	825	\N	iNaturalist	f
34.9463457	136.826142	2020-06-06	Ligia exotica	https://www.inaturalist.org/observations/49122154	https://inaturalist-open-data.s3.amazonaws.com/photos/77966825/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	826	\N	iNaturalist	f
33.2407232	126.566517	2020-06-07	Ligia	https://www.inaturalist.org/observations/48757074	https://inaturalist-open-data.s3.amazonaws.com/photos/77384947/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	827	\N	iNaturalist	f
37.0041350	126.499677	2020-06-04	Armadillidium	https://www.inaturalist.org/observations/48436155	https://inaturalist-open-data.s3.amazonaws.com/photos/76855056/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	828	\N	iNaturalist	f
34.1787389	133.076033	2019-05-18	Ligia exotica	https://www.inaturalist.org/observations/47499658	https://static.inaturalist.org/photos/75339234/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	829	\N	iNaturalist	f
33.2597635	126.625613	2019-11-23	Ligia	https://www.inaturalist.org/observations/46608358	https://inaturalist-open-data.s3.amazonaws.com/photos/73923452/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	830	\N	iNaturalist	f
34.0788424	139.517819	2018-07-19	Ligia	https://www.inaturalist.org/observations/46582140	https://inaturalist-open-data.s3.amazonaws.com/photos/73883808/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	831	\N	iNaturalist	f
37.4950000	130.810000	2020-04-30	Armadillidium	https://www.inaturalist.org/observations/44361834	https://inaturalist-open-data.s3.amazonaws.com/photos/70335289/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	832	\N	iNaturalist	f
33.7970383	130.454025	2020-04-25	Armadillidium vulgare	https://www.inaturalist.org/observations/43286275	https://static.inaturalist.org/photos/68705192/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	833	\N	iNaturalist	f
35.9334402	126.529243	2010-10-25	Ligia	https://www.inaturalist.org/observations/42888294	https://inaturalist-open-data.s3.amazonaws.com/photos/68103526/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	834	\N	iNaturalist	f
37.0775000	125.952222	2019-09-03	Ligia	https://www.inaturalist.org/observations/40894205	https://inaturalist-open-data.s3.amazonaws.com/photos/64829791/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	835	\N	iNaturalist	f
37.0769444	126.001111	2019-09-02	Ligia	https://www.inaturalist.org/observations/40894097	https://inaturalist-open-data.s3.amazonaws.com/photos/64828782/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	836	\N	iNaturalist	f
37.0780556	125.953056	2019-09-02	Ligia	https://www.inaturalist.org/observations/40894088	https://inaturalist-open-data.s3.amazonaws.com/photos/64828755/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	837	\N	iNaturalist	f
37.0775000	125.951667	2019-09-02	Ligia	https://www.inaturalist.org/observations/40894081	https://inaturalist-open-data.s3.amazonaws.com/photos/64828589/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	838	\N	iNaturalist	f
37.0819444	125.948056	2019-09-02	Armadillidium	https://www.inaturalist.org/observations/40893978	https://inaturalist-open-data.s3.amazonaws.com/photos/64827733/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	839	\N	iNaturalist	f
37.0758333	125.944722	2019-09-02	Ligia	https://www.inaturalist.org/observations/40893916	https://inaturalist-open-data.s3.amazonaws.com/photos/64827370/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	840	\N	iNaturalist	f
34.6455333	127.195236	2020-03-11	Tylos granuliferus	https://www.inaturalist.org/observations/39943771	https://inaturalist-open-data.s3.amazonaws.com/photos/63425219/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	841	\N	iNaturalist	f
33.5127945	126.720147	2020-02-01	Burmoniscus	https://www.inaturalist.org/observations/39609842	https://inaturalist-open-data.s3.amazonaws.com/photos/62858084/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	842	\N	iNaturalist	f
36.5233467	126.327187	2020-02-29	Isopoda	https://www.inaturalist.org/observations/39349088	https://inaturalist-open-data.s3.amazonaws.com/photos/62414423/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	843	\N	iNaturalist	f
36.5233767	126.327198	2020-02-29	Sphaeromatidea	https://www.inaturalist.org/observations/39349085	https://inaturalist-open-data.s3.amazonaws.com/photos/62414419/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	844	\N	iNaturalist	f
36.5233733	126.327192	2020-02-29	Sphaeromatidea	https://www.inaturalist.org/observations/39349083	https://inaturalist-open-data.s3.amazonaws.com/photos/62414405/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	845	\N	iNaturalist	f
1.8200000	-46.800000	1957-11-17	Bathynomus giganteus	\N	\N	\N	1	\N	411	\N	\N	\N	3291	PRESERVED_SPECIMEN	GBIF	f
26.1298689	127.667549	2019-10-27	Ligia	https://www.inaturalist.org/observations/36518765	https://inaturalist-open-data.s3.amazonaws.com/photos/57737140/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	847	\N	iNaturalist	f
43.2006242	132.150735	2018-09-19	Ligia cinerascens	https://www.inaturalist.org/observations/36368782	https://inaturalist-open-data.s3.amazonaws.com/photos/57482336/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	848	\N	iNaturalist	f
42.9422122	131.719700	2018-06-28	Ligia cinerascens	https://www.inaturalist.org/observations/36368626	https://inaturalist-open-data.s3.amazonaws.com/photos/57482017/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	849	\N	iNaturalist	f
33.0377650	139.750883	2013-05-05	Armadillidium vulgare	https://www.inaturalist.org/observations/193981175	https://inaturalist-open-data.s3.amazonaws.com/photos/340856646/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	385	\N	iNaturalist	f
43.0710620	131.962417	2022-05-06	Rocinela maculata	https://www.inaturalist.org/observations/193699413	https://inaturalist-open-data.s3.amazonaws.com/photos/340290395/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	386	\N	iNaturalist	f
35.0011889	139.660528	2018-02-10	Gnathiidae	https://www.inaturalist.org/observations/35484140	https://inaturalist-open-data.s3.amazonaws.com/photos/55955274/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	850	\N	iNaturalist	f
35.0794885	139.626028	2017-02-05	Gnathia	https://www.inaturalist.org/observations/35484138	https://inaturalist-open-data.s3.amazonaws.com/photos/55955014/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	851	\N	iNaturalist	f
33.2298022	126.461238	2019-11-02	Ligia	https://www.inaturalist.org/observations/35190503	https://static.inaturalist.org/photos/55464845/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	852	\N	iNaturalist	f
25.7378904	-80.168064	2018-06-01	Paracerceis	https://www.inaturalist.org/observations/13019737	https://www.inaturalist.org/observations/13019737	iNaturalist	1	\N	\N	\N	\N	\N	2408	\N	iNaturalist	f
25.7353085	-80.166364	2018-04-30	Ligia exotica	https://www.inaturalist.org/observations/11967285	https://www.inaturalist.org/observations/11967285	iNaturalist	1	\N	\N	\N	\N	\N	2409	\N	iNaturalist	f
25.7546367	-80.148200	2018-04-28	Porcellionides pruinosus	https://www.inaturalist.org/observations/11833285	https://www.inaturalist.org/observations/11833285	iNaturalist	1	\N	\N	\N	\N	\N	2410	\N	iNaturalist	f
32.6896633	126.620150	2019-09-18	Ligia	https://www.inaturalist.org/observations/32987891	https://static.inaturalist.org/photos/51776523/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	853	\N	iNaturalist	f
35.1556875	129.154657	\N	Ligia	https://www.inaturalist.org/observations/32395310	https://static.inaturalist.org/photos/50805805/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	854	\N	iNaturalist	f
37.0773694	125.951803	2019-09-03	Ligia exotica	https://www.inaturalist.org/observations/32047956	https://inaturalist-open-data.s3.amazonaws.com/photos/50225568/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	855	\N	iNaturalist	f
31.8047596	131.465436	2019-08-31	Cirolanidae	https://www.inaturalist.org/observations/31817559	https://inaturalist-open-data.s3.amazonaws.com/photos/49837717/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	856	\N	iNaturalist	f
33.4614792	126.938853	2019-08-24	Ligia exotica	https://www.inaturalist.org/observations/31542186	https://inaturalist-open-data.s3.amazonaws.com/photos/49374426/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	857	\N	iNaturalist	f
35.2938159	139.677105	2019-08-25	Ligia	https://www.inaturalist.org/observations/31450079	https://inaturalist-open-data.s3.amazonaws.com/photos/49222309/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	858	\N	iNaturalist	f
31.6489857	131.466438	2019-08-17	Ligia exotica	https://www.inaturalist.org/observations/30976594	https://inaturalist-open-data.s3.amazonaws.com/photos/48434674/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	859	\N	iNaturalist	f
37.2330987	126.161810	2019-08-03	Ligia	https://www.inaturalist.org/observations/30302199	https://inaturalist-open-data.s3.amazonaws.com/photos/47333802/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	860	\N	iNaturalist	f
37.2330543	126.161751	2019-08-03	Ligia	https://www.inaturalist.org/observations/30302198	https://inaturalist-open-data.s3.amazonaws.com/photos/47333793/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	861	\N	iNaturalist	f
35.0521667	129.092333	2013-07-27	Ligia exotica	https://www.inaturalist.org/observations/30237051	https://inaturalist-open-data.s3.amazonaws.com/photos/47230863/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	862	\N	iNaturalist	f
37.2229833	126.152751	2019-08-04	Armadillidium	https://www.inaturalist.org/observations/30134027	https://inaturalist-open-data.s3.amazonaws.com/photos/47060646/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	863	\N	iNaturalist	f
29.9808331	122.390274	2019-07-31	Ligia exotica	https://www.inaturalist.org/observations/29956967	https://static.inaturalist.org/photos/46781149/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	864	\N	iNaturalist	f
36.1216867	125.983315	2019-07-26	Armadillidium vulgare	https://www.inaturalist.org/observations/29575446	https://inaturalist-open-data.s3.amazonaws.com/photos/46162115/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	865	\N	iNaturalist	f
36.1181650	125.981113	2019-07-25	Armadillidium vulgare	https://www.inaturalist.org/observations/29509889	https://inaturalist-open-data.s3.amazonaws.com/photos/46060170/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	866	\N	iNaturalist	f
36.1251033	125.967730	2019-07-24	Ligia exotica	https://www.inaturalist.org/observations/29433273	https://inaturalist-open-data.s3.amazonaws.com/photos/45935900/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	870	\N	iNaturalist	f
34.1410112	132.940767	2019-07-21	Ligia exotica	https://www.inaturalist.org/observations/29374255	https://inaturalist-open-data.s3.amazonaws.com/photos/45841665/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	871	\N	iNaturalist	f
33.5951116	130.109944	2019-07-22	Ligia exotica	https://www.inaturalist.org/observations/29293037	https://static.inaturalist.org/photos/45709992/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	872	\N	iNaturalist	f
31.3620000	131.342408	2019-07-15	Ligia exotica	https://www.inaturalist.org/observations/28850700	https://static.inaturalist.org/photos/45004080/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	873	\N	iNaturalist	f
34.5090050	136.787492	2019-07-07	Ligia exotica	https://www.inaturalist.org/observations/28348821	https://static.inaturalist.org/photos/44186966/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	874	\N	iNaturalist	f
33.2390550	126.591378	2019-07-06	Ligia exotica	https://www.inaturalist.org/observations/28279959	https://inaturalist-open-data.s3.amazonaws.com/photos/44074018/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	875	\N	iNaturalist	f
35.1270532	129.122299	2019-07-06	Ligia	https://www.inaturalist.org/observations/28274865	https://inaturalist-open-data.s3.amazonaws.com/photos/44065796/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	876	\N	iNaturalist	f
33.5188026	126.518089	2019-07-01	Ligia exotica	https://www.inaturalist.org/observations/27987162	https://static.inaturalist.org/photos/43598090/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	877	\N	iNaturalist	f
35.1415981	139.159642	2019-06-16	Ligia exotica	https://www.inaturalist.org/observations/27143496	https://inaturalist-open-data.s3.amazonaws.com/photos/42201926/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	878	\N	iNaturalist	f
34.6430357	138.916206	2019-05-10	Isopoda	https://www.inaturalist.org/observations/26860909	https://inaturalist-open-data.s3.amazonaws.com/photos/41734476/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	879	\N	iNaturalist	f
35.4456673	126.449852	2019-06-08	Armadillidium vulgare	https://www.inaturalist.org/observations/26598055	https://static.inaturalist.org/photos/41312281/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	880	\N	iNaturalist	f
37.1674885	126.314762	2019-06-06	Ligia	https://www.inaturalist.org/observations/26479546	https://inaturalist-open-data.s3.amazonaws.com/photos/41122798/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	881	\N	iNaturalist	f
33.4608471	126.310205	2019-04-19	Ligiidae	https://www.inaturalist.org/observations/26035194	https://inaturalist-open-data.s3.amazonaws.com/photos/40390856/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	882	\N	iNaturalist	f
33.6813448	131.524209	2009-07-11	Oniscidea	https://www.inaturalist.org/observations/193300017	https://inaturalist-open-data.s3.amazonaws.com/photos/339548314/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	387	\N	iNaturalist	f
33.4607228	126.933867	2018-09-15	Ligia	https://www.inaturalist.org/observations/25012596	https://static.inaturalist.org/photos/38702071/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	883	\N	iNaturalist	f
43.2006033	132.149213	2019-04-24	Armadillidium versicolor	https://www.inaturalist.org/observations/23315931	https://inaturalist-open-data.s3.amazonaws.com/photos/36125318/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	884	\N	iNaturalist	f
30.3934751	130.382864	2013-08-25	Anilocra prionuri	https://www.inaturalist.org/observations/20500765	https://static.inaturalist.org/photos/31640951/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	885	\N	iNaturalist	f
30.4577426	130.489286	2013-05-20	Anilocra harazakii	https://www.inaturalist.org/observations/20474743	https://static.inaturalist.org/photos/31606815/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	886	\N	iNaturalist	f
33.9857715	126.920421	2012-07-20	Armadillidium vulgare	https://www.inaturalist.org/observations/19425330	https://static.inaturalist.org/photos/29881935/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	889	\N	iNaturalist	f
37.7724160	124.748989	2017-05-14	Armadillidium vulgare	https://www.inaturalist.org/observations/19425329	https://static.inaturalist.org/photos/29881929/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	891	\N	iNaturalist	f
37.5084103	130.806685	2008-07-17	Armadillidium vulgare	https://www.inaturalist.org/observations/19425327	https://static.inaturalist.org/photos/29881919/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	893	\N	iNaturalist	f
36.8441195	126.197127	2005-06-12	Armadillidium vulgare	https://www.inaturalist.org/observations/19425326	https://static.inaturalist.org/photos/29881912/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	894	\N	iNaturalist	f
33.1206371	126.267120	2003-01-16	Armadillidium vulgare	https://www.inaturalist.org/observations/19425325	https://static.inaturalist.org/photos/29881906/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	895	\N	iNaturalist	f
36.3992498	126.427027	2005-04-09	Ligia exotica	https://www.inaturalist.org/observations/19417612	https://static.inaturalist.org/photos/29868901/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	896	\N	iNaturalist	f
37.6569189	125.702089	2007-09-29	Ligia exotica	https://www.inaturalist.org/observations/19417611	https://static.inaturalist.org/photos/29868897/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	897	\N	iNaturalist	f
36.4144423	126.377170	2007-06-02	Ligia exotica	https://www.inaturalist.org/observations/19417610	https://static.inaturalist.org/photos/29868895/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	898	\N	iNaturalist	f
33.5031884	126.969197	1999-10-10	Ligia exotica	https://www.inaturalist.org/observations/19417607	https://static.inaturalist.org/photos/29868889/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	899	\N	iNaturalist	f
33.3947865	126.240520	1999-10-09	Ligia exotica	https://www.inaturalist.org/observations/19417606	https://static.inaturalist.org/photos/29868885/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	900	\N	iNaturalist	f
36.8964733	126.219220	2007-07-08	Porcellio scaber	https://www.inaturalist.org/observations/19416866	https://static.inaturalist.org/photos/29867286/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	901	\N	iNaturalist	f
37.5748058	126.654195	2007-09-15	Crinocheta	https://www.inaturalist.org/observations/19416864	https://static.inaturalist.org/photos/29867283/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	902	\N	iNaturalist	f
35.1598902	139.612725	2018-07-02	Cirolanidae	https://www.inaturalist.org/observations/18445552	https://static.inaturalist.org/photos/28200172/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	904	\N	iNaturalist	f
35.2567094	139.670175	2018-11-15	Armadillidiidae	https://www.inaturalist.org/observations/18405868	https://static.inaturalist.org/photos/28133615/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	905	\N	iNaturalist	f
42.9583830	131.878766	2017-06-12	Ligia cinerascens	https://www.inaturalist.org/observations/16858972	https://inaturalist-open-data.s3.amazonaws.com/photos/25460352/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	907	\N	iNaturalist	f
42.8020870	132.808160	2016-05-31	Porcellio scaber	https://www.inaturalist.org/observations/16858156	https://inaturalist-open-data.s3.amazonaws.com/photos/25458867/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	908	\N	iNaturalist	f
42.7486480	132.833670	2017-06-21	Ligia cinerascens	https://www.inaturalist.org/observations/16858007	https://inaturalist-open-data.s3.amazonaws.com/photos/25458477/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	909	\N	iNaturalist	f
32.7236154	133.020228	2015-07-31	Ligia exotica	https://www.inaturalist.org/observations/15971824	https://inaturalist-open-data.s3.amazonaws.com/photos/23907779/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	910	\N	iNaturalist	f
33.4969117	126.968833	2018-08-27	Ligia	https://www.inaturalist.org/observations/15964459	https://static.inaturalist.org/photos/23895559/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	911	\N	iNaturalist	f
35.1213188	139.723166	2018-08-19	Diplocheta	https://www.inaturalist.org/observations/15682713	https://inaturalist-open-data.s3.amazonaws.com/photos/23402953/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	912	\N	iNaturalist	f
37.8138376	138.278770	2018-08-18	Isopoda	https://www.inaturalist.org/observations/15609480	https://inaturalist-open-data.s3.amazonaws.com/photos/23333997/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	913	\N	iNaturalist	f
37.8138525	138.278730	2018-08-18	Armadillidium vulgare	https://www.inaturalist.org/observations/15609475	https://inaturalist-open-data.s3.amazonaws.com/photos/23333991/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	914	\N	iNaturalist	f
37.8137455	138.278750	2018-08-18	Armadillidium vulgare	https://www.inaturalist.org/observations/15609454	https://static.inaturalist.org/photos/23333966/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	915	\N	iNaturalist	f
37.8137252	138.278866	2018-08-18	Armadillidium vulgare	https://www.inaturalist.org/observations/15609450	https://static.inaturalist.org/photos/23333963/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	916	\N	iNaturalist	f
37.8060799	138.242786	2018-08-18	Ligia	https://www.inaturalist.org/observations/15609207	https://static.inaturalist.org/photos/23333626/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	917	\N	iNaturalist	f
37.8118381	138.280744	2018-08-18	Ligia exotica	https://www.inaturalist.org/observations/15601992	https://static.inaturalist.org/photos/23325273/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	918	\N	iNaturalist	f
37.8115489	138.280196	2018-08-18	Ligia exotica	https://www.inaturalist.org/observations/15600702	https://static.inaturalist.org/photos/23323910/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	919	\N	iNaturalist	f
34.2974970	132.340046	2020-07-26	Tylos granuliferus	https://www.inaturalist.org/observations/159479339	https://inaturalist-open-data.s3.amazonaws.com/photos/275539780/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	586	\N	iNaturalist	f
26.3694583	126.733667	2023-05-01	Ligia	https://www.inaturalist.org/observations/159372558	https://inaturalist-open-data.s3.amazonaws.com/photos/275353425/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	587	\N	iNaturalist	f
37.8151533	138.280374	2018-08-18	Porcellionidae	https://www.inaturalist.org/observations/15600008	https://inaturalist-open-data.s3.amazonaws.com/photos/23323142/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	920	\N	iNaturalist	f
37.8150914	138.280375	2018-08-18	Armadillidium vulgare	https://www.inaturalist.org/observations/15599932	https://static.inaturalist.org/photos/23323009/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	921	\N	iNaturalist	f
37.8151332	138.280297	2018-08-17	Porcellio scaber	https://www.inaturalist.org/observations/15547473	https://static.inaturalist.org/photos/23272789/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	922	\N	iNaturalist	f
37.8143533	138.281205	2018-08-17	Ligia exotica	https://www.inaturalist.org/observations/15525930	https://static.inaturalist.org/photos/23263377/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	923	\N	iNaturalist	f
33.2446121	126.572407	2018-08-12	Ligia	https://www.inaturalist.org/observations/15343044	https://inaturalist-open-data.s3.amazonaws.com/photos/23051644/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	924	\N	iNaturalist	f
35.2499711	139.711698	2018-06-21	Armadillidium vulgare	https://www.inaturalist.org/observations/15255067	https://static.inaturalist.org/photos/22825460/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	925	\N	iNaturalist	f
36.8403400	126.166053	2018-08-05	Ligia exotica	https://www.inaturalist.org/observations/15127295	https://inaturalist-open-data.s3.amazonaws.com/photos/22606235/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	926	\N	iNaturalist	f
32.7864333	132.859122	2018-07-14	Ligia exotica	https://www.inaturalist.org/observations/15010675	https://static.inaturalist.org/photos/22397663/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	927	\N	iNaturalist	f
35.1277454	129.122642	2018-07-30	Ligia exotica	https://www.inaturalist.org/observations/14939478	https://inaturalist-open-data.s3.amazonaws.com/photos/22286146/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	928	\N	iNaturalist	f
36.8251000	126.173885	2018-07-08	Ligia exotica	https://www.inaturalist.org/observations/14165146	https://inaturalist-open-data.s3.amazonaws.com/photos/20998873/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	929	\N	iNaturalist	f
36.8245033	126.173198	2018-07-08	Armadillidium	https://www.inaturalist.org/observations/14165107	https://inaturalist-open-data.s3.amazonaws.com/photos/20998662/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	930	\N	iNaturalist	f
36.8244400	126.171658	2018-07-08	Armadillidium	https://www.inaturalist.org/observations/14164727	https://inaturalist-open-data.s3.amazonaws.com/photos/20998214/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	931	\N	iNaturalist	f
31.7410129	131.469428	2018-06-30	Ligia exotica	https://www.inaturalist.org/observations/13903920	https://static.inaturalist.org/photos/20537604/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	932	\N	iNaturalist	f
34.7513096	139.003249	2018-06-29	Porcellio	https://www.inaturalist.org/observations/13872256	https://inaturalist-open-data.s3.amazonaws.com/photos/20479716/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	933	\N	iNaturalist	f
34.7512120	139.003426	2018-06-29	Armadillidium vulgare	https://www.inaturalist.org/observations/13872065	https://inaturalist-open-data.s3.amazonaws.com/photos/20479345/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	934	\N	iNaturalist	f
33.4728058	126.935628	2018-06-17	Ligia exotica	https://www.inaturalist.org/observations/13821933	https://inaturalist-open-data.s3.amazonaws.com/photos/20392854/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	935	\N	iNaturalist	f
33.2451482	134.176025	2018-04-19	Ligia exotica	https://www.inaturalist.org/observations/12784909	https://static.inaturalist.org/photos/18532479/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	938	\N	iNaturalist	f
37.1736107	126.616943	2018-05-22	Armadillidium vulgare	https://www.inaturalist.org/observations/12696405	https://inaturalist-open-data.s3.amazonaws.com/photos/18381871/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	939	\N	iNaturalist	f
36.6177039	-121.900914	2024-08-07	Bathynomus giganteus	https://www.inaturalist.org/observations/237712785	https://inaturalist-open-data.s3.amazonaws.com/photos/423091154/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2742	 Monterey bay aquarium \n\nGoofy critters\n\nSrsly go check this place out you get to pet one of them they're adorable 	iNaturalist	f
36.8113253	126.154642	2016-07-30	Ligia exotica	http://www.inaturalist.org/observations/3767696	https://inaturalist-open-data.s3.amazonaws.com/photos/4390892/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	961	\N	iNaturalist	f
34.9191998	126.208817	2016-07-28	Ligia exotica	http://www.inaturalist.org/observations/3758486	https://inaturalist-open-data.s3.amazonaws.com/photos/4376977/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	962	\N	iNaturalist	f
35.2029720	126.144569	2016-05-05	Armadillidium	http://www.inaturalist.org/observations/3118373	https://inaturalist-open-data.s3.amazonaws.com/photos/3605938/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	963	\N	iNaturalist	f
36.6253270	125.560405	2016-04-28	Armadillidium	http://www.inaturalist.org/observations/3048397	https://inaturalist-open-data.s3.amazonaws.com/photos/3511001/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	964	\N	iNaturalist	f
24.2594850	123.875658	2015-06-23	Ligia ryukyuensis	http://www.inaturalist.org/observations/2789609	https://inaturalist-open-data.s3.amazonaws.com/photos/3165292/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	965	\N	iNaturalist	f
36.9814380	126.343632	2016-02-10	Idotea	http://www.inaturalist.org/observations/2664295	https://inaturalist-open-data.s3.amazonaws.com/photos/2994759/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	966	\N	iNaturalist	f
36.6176757	-121.900939	2025-01-03	Bathynomus giganteus	https://www.inaturalist.org/observations/257319016	https://inaturalist-open-data.s3.amazonaws.com/photos/461578455/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	3010	 	iNaturalist	f
28.5836000	-86.762200	1985-05-13	Bathynomus giganteus	\N	\N	\N	1	\N	625	\N	\N	\N	3172	PRESERVED_SPECIMEN	GBIF	f
28.2933000	-86.246700	1984-04-16	Bathynomus giganteus	\N	\N	\N	1	\N	621.5	\N	\N	\N	3178	PRESERVED_SPECIMEN	GBIF	f
27.8161000	-90.130800	1984-11-18	Bathynomus giganteus	\N	\N	\N	1	\N	802.5	\N	\N	\N	3179	PRESERVED_SPECIMEN	GBIF	f
27.8883000	-90.088300	1983-11-27	Bathynomus giganteus	\N	\N	\N	1	\N	786	\N	\N	\N	3180	PRESERVED_SPECIMEN	GBIF	f
26.3866833	126.753862	2023-05-01	Ligia ryukyuensis	https://www.inaturalist.org/observations/159371742	https://inaturalist-open-data.s3.amazonaws.com/photos/275351598/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	588	\N	iNaturalist	f
36.9834950	126.340971	2016-02-10	Cleantiella isopus	http://www.inaturalist.org/observations/2663885	https://inaturalist-open-data.s3.amazonaws.com/photos/2994160/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	967	\N	iNaturalist	f
33.1219360	126.269710	2009-08-13	Ligia exotica	http://www.inaturalist.org/observations/2501313	https://inaturalist-open-data.s3.amazonaws.com/photos/2810072/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	968	\N	iNaturalist	f
36.2252690	126.074842	2006-09-23	Ligia exotica	http://www.inaturalist.org/observations/2469098	https://inaturalist-open-data.s3.amazonaws.com/photos/2763152/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	969	\N	iNaturalist	f
33.5160300	126.510519	2006-07-22	Ligia exotica	http://www.inaturalist.org/observations/2466747	https://inaturalist-open-data.s3.amazonaws.com/photos/2759605/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	971	\N	iNaturalist	f
34.6357330	135.103354	2015-09-20	Cymothoidae	http://www.inaturalist.org/observations/1965174	https://inaturalist-open-data.s3.amazonaws.com/photos/2407686/medium.JPG	iNaturalist	1	\N	\N	\N	\N	\N	972	\N	iNaturalist	f
34.6356880	135.103399	2015-09-20	Cymothoidae	http://www.inaturalist.org/observations/1965168	https://inaturalist-open-data.s3.amazonaws.com/photos/2407677/medium.JPG	iNaturalist	1	\N	\N	\N	\N	\N	973	\N	iNaturalist	f
35.1211930	129.125574	2015-06-12	Ligia exotica	http://www.inaturalist.org/observations/1621124	https://inaturalist-open-data.s3.amazonaws.com/photos/1993106/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	974	\N	iNaturalist	f
34.6656380	135.151026	2015-04-29	Armadillidium vulgare	http://www.inaturalist.org/observations/1435074	https://inaturalist-open-data.s3.amazonaws.com/photos/1775757/medium.JPG	iNaturalist	1	\N	\N	\N	\N	\N	975	\N	iNaturalist	f
36.2242650	126.081483	2008-06-15	Ligia exotica	http://www.inaturalist.org/observations/1249234	https://inaturalist-open-data.s3.amazonaws.com/photos/1568188/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	976	\N	iNaturalist	f
26.8850883	-80.055995	2024-10-19	Venezillo parvus	https://www.inaturalist.org/observations/248192583	https://www.inaturalist.org/observations/248192583	iNaturalist	1	\N	\N	\N	\N	\N	1307	\N	iNaturalist	f
25.7025550	-80.158478	2024-10-10	Cubaris murina	https://www.inaturalist.org/observations/246628433	https://www.inaturalist.org/observations/246628433	iNaturalist	1	\N	\N	\N	\N	\N	1308	\N	iNaturalist	f
24.6973717	-81.318071	2024-10-06	Halophilosciidae	https://www.inaturalist.org/observations/246480815	https://www.inaturalist.org/observations/246480815	iNaturalist	1	\N	\N	\N	\N	\N	1309	\N	iNaturalist	f
28.0812722	-80.595461	2024-09-29	Ligia exotica	https://www.inaturalist.org/observations/245801040	https://www.inaturalist.org/observations/245801040	iNaturalist	1	\N	\N	\N	\N	\N	1310	\N	iNaturalist	f
27.2283483	-80.212967	2024-10-05	Isopoda	https://www.inaturalist.org/observations/245751508	https://www.inaturalist.org/observations/245751508	iNaturalist	1	\N	\N	\N	\N	\N	1311	\N	iNaturalist	f
27.2284354	-80.212691	2024-10-05	Ligia exotica	https://www.inaturalist.org/observations/245744420	https://www.inaturalist.org/observations/245744420	iNaturalist	1	\N	\N	\N	\N	\N	1312	\N	iNaturalist	f
28.3066056	-80.622578	2024-09-29	Ligia exotica	https://www.inaturalist.org/observations/245505169	https://www.inaturalist.org/observations/245505169	iNaturalist	1	\N	\N	\N	\N	\N	1313	\N	iNaturalist	f
26.5852967	-80.040467	2024-09-29	Porcellionides pruinosus	https://www.inaturalist.org/observations/244807757	https://www.inaturalist.org/observations/244807757	iNaturalist	1	\N	\N	\N	\N	\N	1314	\N	iNaturalist	f
19.3860194	-81.385547	2024-09-27	Cubaris murina	https://www.inaturalist.org/observations/244424862	https://www.inaturalist.org/observations/244424862	iNaturalist	1	\N	\N	\N	\N	\N	1315	\N	iNaturalist	f
26.0983598	-80.100075	2024-08-22	Asellota	https://www.inaturalist.org/observations/243876801	https://www.inaturalist.org/observations/243876801	iNaturalist	1	\N	\N	\N	\N	\N	1316	\N	iNaturalist	f
26.9417883	-80.084419	2024-09-23	Ligia exotica	https://www.inaturalist.org/observations/243669437	https://www.inaturalist.org/observations/243669437	iNaturalist	1	\N	\N	\N	\N	\N	1317	\N	iNaturalist	f
28.4081191	-80.590632	2024-09-21	Ligia exotica	https://www.inaturalist.org/observations/243179740	https://www.inaturalist.org/observations/243179740	iNaturalist	1	\N	\N	\N	\N	\N	1318	\N	iNaturalist	f
24.7102112	-81.309496	2024-08-20	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/242802829	https://www.inaturalist.org/observations/242802829	iNaturalist	1	\N	\N	\N	\N	\N	1319	\N	iNaturalist	f
25.1541540	-80.922208	2024-07-21	Ligia exotica	https://www.inaturalist.org/observations/242372154	https://www.inaturalist.org/observations/242372154	iNaturalist	1	\N	\N	\N	\N	\N	1320	\N	iNaturalist	f
24.7485029	-81.317449	2024-08-20	Philosciidae	https://www.inaturalist.org/observations/242316007	https://www.inaturalist.org/observations/242316007	iNaturalist	1	\N	\N	\N	\N	\N	1321	\N	iNaturalist	f
24.6521648	-81.264708	2024-08-20	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/242315709	https://www.inaturalist.org/observations/242315709	iNaturalist	1	\N	\N	\N	\N	\N	1322	\N	iNaturalist	f
24.6717833	-81.539222	2024-09-16	Ligia exotica	https://www.inaturalist.org/observations/242149106	https://www.inaturalist.org/observations/242149106	iNaturalist	1	\N	\N	\N	\N	\N	1323	\N	iNaturalist	f
25.8648800	-80.120895	2024-09-15	Cubaris murina	https://www.inaturalist.org/observations/241967979	https://www.inaturalist.org/observations/241967979	iNaturalist	1	\N	\N	\N	\N	\N	1324	\N	iNaturalist	f
25.1826435	-80.897980	2024-09-02	Oniscidea	https://www.inaturalist.org/observations/241781535	https://www.inaturalist.org/observations/241781535	iNaturalist	1	\N	\N	\N	\N	\N	1325	\N	iNaturalist	f
27.6485866	-82.676159	2024-09-14	Ligia exotica	https://www.inaturalist.org/observations/241725392	https://www.inaturalist.org/observations/241725392	iNaturalist	1	\N	\N	\N	\N	\N	1326	\N	iNaturalist	f
26.4958436	-80.071151	2024-09-14	Atlantoscia floridana	https://www.inaturalist.org/observations/241690772	https://www.inaturalist.org/observations/241690772	iNaturalist	1	\N	\N	\N	\N	\N	1327	\N	iNaturalist	f
24.5756984	-81.731624	2024-09-13	Holoverticata	https://www.inaturalist.org/observations/241439279	https://www.inaturalist.org/observations/241439279	iNaturalist	1	\N	\N	\N	\N	\N	1328	\N	iNaturalist	f
27.7098117	-82.688470	2024-09-10	Paracerceis	https://www.inaturalist.org/observations/240998934	https://www.inaturalist.org/observations/240998934	iNaturalist	1	\N	\N	\N	\N	\N	1329	\N	iNaturalist	f
25.7171220	-80.149884	2024-01-01	Hemisphaerota cyanea		\N	GBIF	1	\N	\N	\N	\N	\N	2288	\N	GBIF	f
27.7098283	-82.688438	2024-09-10	Paracerceis	https://www.inaturalist.org/observations/240996971	https://www.inaturalist.org/observations/240996971	iNaturalist	1	\N	\N	\N	\N	\N	1330	\N	iNaturalist	f
26.6982827	-82.183622	2024-09-09	Paracerceis	https://www.inaturalist.org/observations/240815669	https://www.inaturalist.org/observations/240815669	iNaturalist	1	\N	\N	\N	\N	\N	1331	\N	iNaturalist	f
28.1531667	-82.794061	2024-09-08	Ligia exotica	https://www.inaturalist.org/observations/240674505	https://www.inaturalist.org/observations/240674505	iNaturalist	1	\N	\N	\N	\N	\N	1332	\N	iNaturalist	f
24.7353117	-81.036811	2024-09-08	Ligia exotica	https://www.inaturalist.org/observations/240639935	https://www.inaturalist.org/observations/240639935	iNaturalist	1	\N	\N	\N	\N	\N	1333	\N	iNaturalist	f
28.3985333	-80.595297	2024-09-08	Armadillidium vulgare	https://www.inaturalist.org/observations/240580821	https://www.inaturalist.org/observations/240580821	iNaturalist	1	\N	\N	\N	\N	\N	1334	\N	iNaturalist	f
25.1826558	-80.897997	2024-09-07	Ligia exotica	https://www.inaturalist.org/observations/240415561	https://www.inaturalist.org/observations/240415561	iNaturalist	1	\N	\N	\N	\N	\N	1335	\N	iNaturalist	f
27.4707917	-80.289817	2023-04-12	Ligia	https://www.inaturalist.org/observations/240395553	https://www.inaturalist.org/observations/240395553	iNaturalist	1	\N	\N	\N	\N	\N	1336	\N	iNaturalist	f
25.1376626	-80.958028	2021-01-06	Ligia exotica	https://www.inaturalist.org/observations/240388370	https://www.inaturalist.org/observations/240388370	iNaturalist	1	\N	\N	\N	\N	\N	1337	\N	iNaturalist	f
24.5458611	-81.812325	2024-09-06	Anilocra	https://www.inaturalist.org/observations/240222256	https://www.inaturalist.org/observations/240222256	iNaturalist	1	\N	\N	\N	\N	\N	1338	\N	iNaturalist	f
26.4810717	-82.169542	2024-09-05	Cubaris murina	https://www.inaturalist.org/observations/240050567	https://www.inaturalist.org/observations/240050567	iNaturalist	1	\N	\N	\N	\N	\N	1339	\N	iNaturalist	f
27.2159238	-80.178129	2024-07-30	Atlantoscia floridana	https://www.inaturalist.org/observations/239884401	https://www.inaturalist.org/observations/239884401	iNaturalist	1	\N	\N	\N	\N	\N	1340	\N	iNaturalist	f
27.7149967	-82.690575	2024-09-02	Crinocheta	https://www.inaturalist.org/observations/239483700	https://www.inaturalist.org/observations/239483700	iNaturalist	1	\N	\N	\N	\N	\N	1344	\N	iNaturalist	f
26.5847334	-80.041602	2024-08-31	Porcellionides floria	https://www.inaturalist.org/observations/239056616	https://www.inaturalist.org/observations/239056616	iNaturalist	1	\N	\N	\N	\N	\N	1345	\N	iNaturalist	f
26.5858818	-80.040890	2024-08-31	Porcellionides floria	https://www.inaturalist.org/observations/239053707	https://www.inaturalist.org/observations/239053707	iNaturalist	1	\N	\N	\N	\N	\N	1346	\N	iNaturalist	f
17.9746617	-67.050444	2024-08-31	Cubaris murina	https://www.inaturalist.org/observations/238982550	https://www.inaturalist.org/observations/238982550	iNaturalist	1	\N	\N	\N	\N	\N	1347	\N	iNaturalist	f
27.4362278	-82.673553	2023-12-30	Isopoda	https://www.inaturalist.org/observations/238742126	https://www.inaturalist.org/observations/238742126	iNaturalist	1	\N	\N	\N	\N	\N	1348	\N	iNaturalist	f
27.4362778	-82.673569	2023-12-30	Ligia	https://www.inaturalist.org/observations/238742123	https://www.inaturalist.org/observations/238742123	iNaturalist	1	\N	\N	\N	\N	\N	1349	\N	iNaturalist	f
27.4362167	-82.672928	2023-12-30	Cubaris murina	https://www.inaturalist.org/observations/238739699	https://www.inaturalist.org/observations/238739699	iNaturalist	1	\N	\N	\N	\N	\N	1350	\N	iNaturalist	f
25.1391833	-80.937042	2024-08-24	Ligia exotica	https://www.inaturalist.org/observations/237855162	https://www.inaturalist.org/observations/237855162	iNaturalist	1	\N	\N	\N	\N	\N	1351	\N	iNaturalist	f
35.0163913	139.709683	2012-12-14	Tylos granuliferus	https://www.inaturalist.org/observations/193036268	https://inaturalist-open-data.s3.amazonaws.com/photos/339018986/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	388	\N	iNaturalist	f
27.9379974	-82.868956	2024-07-24	Cubaris murina	https://www.inaturalist.org/observations/237788881	https://www.inaturalist.org/observations/237788881	iNaturalist	1	\N	\N	\N	\N	\N	1353	\N	iNaturalist	f
28.0344375	-80.588665	2024-08-22	Isopoda	https://www.inaturalist.org/observations/237453022	https://www.inaturalist.org/observations/237453022	iNaturalist	1	\N	\N	\N	\N	\N	1354	\N	iNaturalist	f
19.3728808	-81.422090	2024-08-19	Anilocra myripristis	https://www.inaturalist.org/observations/237002604	https://www.inaturalist.org/observations/237002604	iNaturalist	1	\N	\N	\N	\N	\N	1355	\N	iNaturalist	f
27.9786183	-82.820953	2024-08-20	Ligia exotica	https://www.inaturalist.org/observations/236987157	https://www.inaturalist.org/observations/236987157	iNaturalist	1	\N	\N	\N	\N	\N	1356	\N	iNaturalist	f
27.0113510	-82.413502	2024-08-20	Cubaris murina	https://www.inaturalist.org/observations/236924820	https://www.inaturalist.org/observations/236924820	iNaturalist	1	\N	\N	\N	\N	\N	1357	\N	iNaturalist	f
27.7079578	-82.695698	2024-02-17	Ligia exotica	https://www.inaturalist.org/observations/236649933	https://www.inaturalist.org/observations/236649933	iNaturalist	1	\N	\N	\N	\N	\N	1358	\N	iNaturalist	f
24.6449535	-81.292314	2024-08-17	Porcellionides virgatus	https://www.inaturalist.org/observations/236395142	https://www.inaturalist.org/observations/236395142	iNaturalist	1	\N	\N	\N	\N	\N	1359	\N	iNaturalist	f
25.8773097	-81.480044	2024-08-14	Cymothooidea	https://www.inaturalist.org/observations/235825588	https://www.inaturalist.org/observations/235825588	iNaturalist	1	\N	\N	\N	\N	\N	1360	\N	iNaturalist	f
24.6037388	-81.296347	2024-01-08	Porcellionides virgatus	https://www.inaturalist.org/observations/235048004	https://www.inaturalist.org/observations/235048004	iNaturalist	1	\N	\N	\N	\N	\N	1365	\N	iNaturalist	f
24.7529887	-81.216035	2024-01-08	Sphaeromatidae	https://www.inaturalist.org/observations/235038498	https://www.inaturalist.org/observations/235038498	iNaturalist	1	\N	\N	\N	\N	\N	1366	\N	iNaturalist	f
24.5508187	-81.513553	2024-08-10	Porcellionides virgatus	https://www.inaturalist.org/observations/234990990	https://www.inaturalist.org/observations/234990990	iNaturalist	1	\N	\N	\N	\N	\N	1367	\N	iNaturalist	f
24.6715689	-81.232123	2024-08-10	Delatorreiidae	https://www.inaturalist.org/observations/234989061	https://www.inaturalist.org/observations/234989061	iNaturalist	1	\N	\N	\N	\N	\N	1368	\N	iNaturalist	f
25.8712666	-80.068235	2024-08-10	Venezillo parvus	https://www.inaturalist.org/observations/234936964	https://www.inaturalist.org/observations/234936964	iNaturalist	1	\N	\N	\N	\N	\N	1369	\N	iNaturalist	f
24.7254518	-81.301031	2024-08-10	Delatorreiidae	https://www.inaturalist.org/observations/234892098	https://www.inaturalist.org/observations/234892098	iNaturalist	1	\N	\N	\N	\N	\N	1370	\N	iNaturalist	f
24.6169420	-81.255507	2024-08-10	Delatorreiidae	https://www.inaturalist.org/observations/234891869	https://www.inaturalist.org/observations/234891869	iNaturalist	1	\N	\N	\N	\N	\N	1371	\N	iNaturalist	f
24.6168832	-81.233549	2024-08-10	Trichorhina tomentosa	https://www.inaturalist.org/observations/234891136	https://www.inaturalist.org/observations/234891136	iNaturalist	1	\N	\N	\N	\N	\N	1372	\N	iNaturalist	f
26.7828255	-80.042041	2024-08-09	Ligia exotica	https://www.inaturalist.org/observations/234757526	https://www.inaturalist.org/observations/234757526	iNaturalist	1	\N	\N	\N	\N	\N	1373	\N	iNaturalist	f
26.7823660	-80.042108	2024-08-09	Ligia exotica	https://www.inaturalist.org/observations/234749109	https://www.inaturalist.org/observations/234749109	iNaturalist	1	\N	\N	\N	\N	\N	1374	\N	iNaturalist	f
24.7505039	-81.215365	2024-08-09	Stenoniscus nestori	https://www.inaturalist.org/observations/234683208	https://www.inaturalist.org/observations/234683208	iNaturalist	1	\N	\N	\N	\N	\N	1375	\N	iNaturalist	f
24.7164635	-81.332560	2024-08-08	Armadilloniscus luisi	https://www.inaturalist.org/observations/234570133	https://www.inaturalist.org/observations/234570133	iNaturalist	1	\N	\N	\N	\N	\N	1381	\N	iNaturalist	f
24.7527656	-81.379463	2024-08-08	Delatorreiidae	https://www.inaturalist.org/observations/234569703	https://www.inaturalist.org/observations/234569703	iNaturalist	1	\N	\N	\N	\N	\N	1382	\N	iNaturalist	f
24.6091886	-81.327876	2024-08-06	Cubaris murina	https://www.inaturalist.org/observations/234216556	https://www.inaturalist.org/observations/234216556	iNaturalist	1	\N	\N	\N	\N	\N	1383	\N	iNaturalist	f
24.7997958	-81.223139	2024-08-06	Cubaris murina	https://www.inaturalist.org/observations/234216481	https://www.inaturalist.org/observations/234216481	iNaturalist	1	\N	\N	\N	\N	\N	1384	\N	iNaturalist	f
24.7801164	-81.232134	2024-08-06	Delatorreiidae	https://www.inaturalist.org/observations/234086798	https://www.inaturalist.org/observations/234086798	iNaturalist	1	\N	\N	\N	\N	\N	1385	\N	iNaturalist	f
24.7331912	-81.212726	2024-08-06	Delatorreiidae	https://www.inaturalist.org/observations/234086512	https://www.inaturalist.org/observations/234086512	iNaturalist	1	\N	\N	\N	\N	\N	1386	\N	iNaturalist	f
24.6364932	-81.301805	2024-08-06	Delatorreiidae	https://www.inaturalist.org/observations/234086363	https://www.inaturalist.org/observations/234086363	iNaturalist	1	\N	\N	\N	\N	\N	1387	\N	iNaturalist	f
24.6759890	-81.394455	2024-08-06	Armadilloniscus luisi	https://www.inaturalist.org/observations/234085053	https://www.inaturalist.org/observations/234085053	iNaturalist	1	\N	\N	\N	\N	\N	1388	\N	iNaturalist	f
24.6271054	-81.356409	2024-08-06	Littorophiloscia culebrae	https://www.inaturalist.org/observations/234084788	https://www.inaturalist.org/observations/234084788	iNaturalist	1	\N	\N	\N	\N	\N	1389	\N	iNaturalist	f
24.7414894	-81.245285	2024-08-05	Tylos niveus	https://www.inaturalist.org/observations/233910234	https://www.inaturalist.org/observations/233910234	iNaturalist	1	\N	\N	\N	\N	\N	1390	\N	iNaturalist	f
24.7477778	-81.348512	2024-08-05	Trichorhina tomentosa	https://www.inaturalist.org/observations/233910152	https://www.inaturalist.org/observations/233910152	iNaturalist	1	\N	\N	\N	\N	\N	1391	\N	iNaturalist	f
24.6775311	-81.266393	2024-08-05	Littorophiloscia culebrae	https://www.inaturalist.org/observations/233910038	https://www.inaturalist.org/observations/233910038	iNaturalist	1	\N	\N	\N	\N	\N	1392	\N	iNaturalist	f
24.7479949	-81.290343	2024-08-05	Delatorreiidae	https://www.inaturalist.org/observations/233909894	https://www.inaturalist.org/observations/233909894	iNaturalist	1	\N	\N	\N	\N	\N	1393	\N	iNaturalist	f
35.0751516	139.715020	2012-12-14	Tylos granuliferus	https://www.inaturalist.org/observations/193036267	https://inaturalist-open-data.s3.amazonaws.com/photos/339018934/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	389	\N	iNaturalist	f
35.1924025	139.709167	2012-12-14	Tylos granuliferus	https://www.inaturalist.org/observations/193036266	https://inaturalist-open-data.s3.amazonaws.com/photos/339018899/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	390	\N	iNaturalist	f
35.0487465	139.614917	2012-12-14	Tylos granuliferus	https://www.inaturalist.org/observations/193036265	https://inaturalist-open-data.s3.amazonaws.com/photos/339018890/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	391	\N	iNaturalist	f
24.6388431	-81.326538	2024-08-05	Ligia exotica	https://www.inaturalist.org/observations/233909755	https://www.inaturalist.org/observations/233909755	iNaturalist	1	\N	\N	\N	\N	\N	1394	\N	iNaturalist	f
24.7470373	-81.273214	2024-08-05	Tylos niveus	https://www.inaturalist.org/observations/233909178	https://www.inaturalist.org/observations/233909178	iNaturalist	1	\N	\N	\N	\N	\N	1398	\N	iNaturalist	f
24.6105012	-81.398198	2024-08-05	Stenoniscus nestori	https://www.inaturalist.org/observations/233908991	https://www.inaturalist.org/observations/233908991	iNaturalist	1	\N	\N	\N	\N	\N	1399	\N	iNaturalist	f
24.7469085	-81.372877	2024-08-05	Stenoniscus nestori	https://www.inaturalist.org/observations/233908894	https://www.inaturalist.org/observations/233908894	iNaturalist	1	\N	\N	\N	\N	\N	1400	\N	iNaturalist	f
24.7229885	-81.233848	2024-08-05	Littorophiloscia culebrae	https://www.inaturalist.org/observations/233908747	https://www.inaturalist.org/observations/233908747	iNaturalist	1	\N	\N	\N	\N	\N	1401	\N	iNaturalist	f
24.6381363	-81.218693	2024-08-05	Littorophiloscia culebrae	https://www.inaturalist.org/observations/233908389	https://www.inaturalist.org/observations/233908389	iNaturalist	1	\N	\N	\N	\N	\N	1402	\N	iNaturalist	f
24.7963978	-81.347773	2024-08-05	Armadilloniscus luisi	https://www.inaturalist.org/observations/233907952	https://www.inaturalist.org/observations/233907952	iNaturalist	1	\N	\N	\N	\N	\N	1403	\N	iNaturalist	f
24.6631307	-81.226765	2024-08-05	Stenoniscus nestori	https://www.inaturalist.org/observations/233907373	https://www.inaturalist.org/observations/233907373	iNaturalist	1	\N	\N	\N	\N	\N	1404	\N	iNaturalist	f
24.7974129	-81.224120	2024-08-05	Venezillo parvus	https://www.inaturalist.org/observations/233906174	https://www.inaturalist.org/observations/233906174	iNaturalist	1	\N	\N	\N	\N	\N	1405	\N	iNaturalist	f
24.6077958	-81.366237	2024-08-05	Delatorreiidae	https://www.inaturalist.org/observations/233906017	https://www.inaturalist.org/observations/233906017	iNaturalist	1	\N	\N	\N	\N	\N	1406	\N	iNaturalist	f
27.1901167	-80.160406	2024-07-27	Ligia exotica	https://www.inaturalist.org/observations/232073074	https://www.inaturalist.org/observations/232073074	iNaturalist	1	\N	\N	\N	\N	\N	1419	\N	iNaturalist	f
27.9863916	-82.991565	2024-07-27	Ligia exotica	https://www.inaturalist.org/observations/232034439	https://www.inaturalist.org/observations/232034439	iNaturalist	1	\N	\N	\N	\N	\N	1420	\N	iNaturalist	f
25.1749367	-80.874162	2024-07-26	Ligia exotica	https://www.inaturalist.org/observations/231926179	https://www.inaturalist.org/observations/231926179	iNaturalist	1	\N	\N	\N	\N	\N	1421	\N	iNaturalist	f
19.1657238	-69.274758	2024-07-21	Philosciidae	https://www.inaturalist.org/observations/230745016	https://www.inaturalist.org/observations/230745016	iNaturalist	1	\N	\N	\N	\N	\N	1422	\N	iNaturalist	f
28.4314300	-80.755792	2024-07-15	Porcellionides floria	https://www.inaturalist.org/observations/229619778	https://www.inaturalist.org/observations/229619778	iNaturalist	1	\N	\N	\N	\N	\N	1423	\N	iNaturalist	f
27.6201488	-82.730466	2024-01-19	Ligia	https://www.inaturalist.org/observations/229524584	https://www.inaturalist.org/observations/229524584	iNaturalist	1	\N	\N	\N	\N	\N	1424	\N	iNaturalist	f
27.6488706	-82.676654	2024-07-13	Isopoda	https://www.inaturalist.org/observations/229175177	https://www.inaturalist.org/observations/229175177	iNaturalist	1	\N	\N	\N	\N	\N	1425	\N	iNaturalist	f
25.1387239	-80.927485	2024-03-24	Stenoniscus nestori	https://www.inaturalist.org/observations/228902940	https://www.inaturalist.org/observations/228902940	iNaturalist	1	\N	\N	\N	\N	\N	1426	\N	iNaturalist	f
25.1383111	-80.929290	2024-03-24	Armadilloniscus ellipticus	https://www.inaturalist.org/observations/228902252	https://www.inaturalist.org/observations/228902252	iNaturalist	1	\N	\N	\N	\N	\N	1427	\N	iNaturalist	f
25.1380145	-80.931242	2024-03-24	Trichorhina biocellata	https://www.inaturalist.org/observations/228897317	https://www.inaturalist.org/observations/228897317	iNaturalist	1	\N	\N	\N	\N	\N	1428	\N	iNaturalist	f
35.2031950	129.229095	2023-04-22	Armadillidium vulgare	https://www.inaturalist.org/observations/158136795	https://static.inaturalist.org/photos/273334668/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	589	\N	iNaturalist	f
24.7114611	-81.102975	2024-06-02	Ligia exotica	https://www.inaturalist.org/observations/228808648	https://www.inaturalist.org/observations/228808648	iNaturalist	1	\N	\N	\N	\N	\N	1430	\N	iNaturalist	f
25.0961872	-80.876626	2024-07-11	Ligia exotica	https://www.inaturalist.org/observations/228754518	https://www.inaturalist.org/observations/228754518	iNaturalist	1	\N	\N	\N	\N	\N	1431	\N	iNaturalist	f
35.1253709	139.613989	2012-09-24	Tylos granuliferus	https://www.inaturalist.org/observations/193035393	https://inaturalist-open-data.s3.amazonaws.com/photos/339016645/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	392	\N	iNaturalist	f
35.0569775	139.771589	2012-09-24	Tylos granuliferus	https://www.inaturalist.org/observations/193035392	https://inaturalist-open-data.s3.amazonaws.com/photos/339016650/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	393	\N	iNaturalist	f
25.1389872	-80.926581	2024-03-24	Armadilloniscus ellipticus	https://www.inaturalist.org/observations/228646567	https://www.inaturalist.org/observations/228646567	iNaturalist	1	\N	\N	\N	\N	\N	1436	\N	iNaturalist	f
25.8148831	-81.476167	2024-06-16	Ligia	https://www.inaturalist.org/observations/223163332	https://www.inaturalist.org/observations/223163332	iNaturalist	1	\N	\N	\N	\N	\N	1451	\N	iNaturalist	f
24.1252394	-74.475349	2024-06-14	Anilocra brillae	https://www.inaturalist.org/observations/222978696	https://www.inaturalist.org/observations/222978696	iNaturalist	1	\N	\N	\N	\N	\N	1452	\N	iNaturalist	f
26.4929000	-81.978685	2024-06-13	Venezillo parvus	https://www.inaturalist.org/observations/222930587	https://www.inaturalist.org/observations/222930587	iNaturalist	1	\N	\N	\N	\N	\N	1453	\N	iNaturalist	f
27.8901119	-82.531062	2024-06-14	Ligia exotica	https://www.inaturalist.org/observations/222621590	https://www.inaturalist.org/observations/222621590	iNaturalist	1	\N	\N	\N	\N	\N	1454	\N	iNaturalist	f
24.6515870	-81.472766	2024-06-13	Ligia exotica	https://www.inaturalist.org/observations/222549087	https://www.inaturalist.org/observations/222549087	iNaturalist	1	\N	\N	\N	\N	\N	1455	\N	iNaturalist	f
23.1732654	-82.131393	2024-06-11	Ligia exotica	https://www.inaturalist.org/observations/222073014	https://www.inaturalist.org/observations/222073014	iNaturalist	1	\N	\N	\N	\N	\N	1456	\N	iNaturalist	f
25.1430606	-80.923382	2024-06-06	Ligia exotica	https://www.inaturalist.org/observations/221176265	https://www.inaturalist.org/observations/221176265	iNaturalist	1	\N	\N	\N	\N	\N	1457	\N	iNaturalist	f
24.6275783	-82.874192	2024-06-03	Ligia exotica	https://www.inaturalist.org/observations/220453455	https://www.inaturalist.org/observations/220453455	iNaturalist	1	\N	\N	\N	\N	\N	1458	\N	iNaturalist	f
26.7728229	-80.043284	2024-05-31	Anilocra acanthuri	https://www.inaturalist.org/observations/219727683	https://www.inaturalist.org/observations/219727683	iNaturalist	1	\N	\N	\N	\N	\N	1459	\N	iNaturalist	f
25.1799006	-80.874519	2024-05-10	Ligia exotica	https://www.inaturalist.org/observations/218915413	https://www.inaturalist.org/observations/218915413	iNaturalist	1	\N	\N	\N	\N	\N	1460	\N	iNaturalist	f
23.1094971	-82.330818	2024-05-21	Porcellionides floria	https://www.inaturalist.org/observations/217278100	https://www.inaturalist.org/observations/217278100	iNaturalist	1	\N	\N	\N	\N	\N	1461	\N	iNaturalist	f
27.8229621	-82.484519	2021-03-20	Sphaeromatidae	https://www.inaturalist.org/observations/216679120	https://www.inaturalist.org/observations/216679120	iNaturalist	1	\N	\N	\N	\N	\N	1462	\N	iNaturalist	f
23.1188488	-82.323090	2024-05-09	Cubaris murina	https://www.inaturalist.org/observations/214697335	https://www.inaturalist.org/observations/214697335	iNaturalist	1	\N	\N	\N	\N	\N	1463	\N	iNaturalist	f
24.9124524	-80.787116	2024-04-20	Cubaris murina	https://www.inaturalist.org/observations/213110854	https://www.inaturalist.org/observations/213110854	iNaturalist	1	\N	\N	\N	\N	\N	1470	\N	iNaturalist	f
25.0237150	-80.493968	2024-04-29	Ligia exotica	https://www.inaturalist.org/observations/213018262	https://www.inaturalist.org/observations/213018262	iNaturalist	1	\N	\N	\N	\N	\N	1471	\N	iNaturalist	f
18.2499849	-68.800201	2024-04-28	Anilocra	https://www.inaturalist.org/observations/212589236	https://www.inaturalist.org/observations/212589236	iNaturalist	1	\N	\N	\N	\N	\N	1472	\N	iNaturalist	f
25.1514612	-80.918542	2024-04-27	Ligia exotica	https://www.inaturalist.org/observations/212558408	https://www.inaturalist.org/observations/212558408	iNaturalist	1	\N	\N	\N	\N	\N	1473	\N	iNaturalist	f
24.1336333	-74.475925	2024-04-30	Ligia exotica	https://www.inaturalist.org/observations/212454955	https://www.inaturalist.org/observations/212454955	iNaturalist	1	\N	\N	\N	\N	\N	1474	\N	iNaturalist	f
19.3768222	-81.310775	2024-04-22	Rocinela signata	https://www.inaturalist.org/observations/212105163	https://www.inaturalist.org/observations/212105163	iNaturalist	1	\N	\N	\N	\N	\N	1475	\N	iNaturalist	f
25.1712633	-80.888725	2024-04-28	Ligia exotica	https://www.inaturalist.org/observations/211330485	https://www.inaturalist.org/observations/211330485	iNaturalist	1	\N	\N	\N	\N	\N	1476	\N	iNaturalist	f
26.5003000	-80.063889	2024-04-28	Armadillidium vulgare	https://www.inaturalist.org/observations/211143878	https://www.inaturalist.org/observations/211143878	iNaturalist	1	\N	\N	\N	\N	\N	1477	\N	iNaturalist	f
25.0226978	-80.496726	2024-04-26	Ligia	https://www.inaturalist.org/observations/209807261	https://www.inaturalist.org/observations/209807261	iNaturalist	1	\N	\N	\N	\N	\N	1478	\N	iNaturalist	f
27.8109235	-82.874211	2024-04-21	Sphaeromatidae	https://www.inaturalist.org/observations/208902140	https://www.inaturalist.org/observations/208902140	iNaturalist	1	\N	\N	\N	\N	\N	1480	\N	iNaturalist	f
25.6727781	-80.162061	2024-04-22	Ligia exotica	https://www.inaturalist.org/observations/208767439	https://www.inaturalist.org/observations/208767439	iNaturalist	1	\N	\N	\N	\N	\N	1481	\N	iNaturalist	f
24.1201379	-74.470404	2024-04-20	Isopoda	https://www.inaturalist.org/observations/208296367	https://www.inaturalist.org/observations/208296367	iNaturalist	1	\N	\N	\N	\N	\N	1482	\N	iNaturalist	f
28.3281784	-87.895639	\N	Bathynomus giganteus	https://www.inaturalist.org/observations/20270136	https://www.inaturalist.org/observations/20270136	iNaturalist	1	\N	\N	\N	\N	\N	2764	\N	iNaturalist	f
24.2453000	-82.468600	1998-05-06	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2652	PRESERVED_SPECIMEN	GBIF	f
24.2964000	-82.468100	1998-05-06	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2651	PRESERVED_SPECIMEN	GBIF	f
24.2706000	-82.407800	1998-05-08	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	2654	PRESERVED_SPECIMEN	GBIF	f
17.9397623	-67.192165	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105632515	https://www.inaturalist.org/observations/105632515	iNaturalist	1	\N	\N	\N	\N	\N	2079	\N	iNaturalist	f
17.9397988	-67.192172	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105632464	https://www.inaturalist.org/observations/105632464	iNaturalist	1	\N	\N	\N	\N	\N	2080	\N	iNaturalist	f
27.5488344	124.330367	2022-01-10	Bathynomus doederleini	https://www.inaturalist.org/observations/193487567	https://www.inaturalist.org/observations/193487567	iNaturalist	1	\N	\N	\N	\N	\N	2817	\N	iNaturalist	f
27.3624526	125.044851	2022-01-24	Bathynomus doederleini	https://www.inaturalist.org/observations/188440885	https://www.inaturalist.org/observations/188440885	iNaturalist	1	\N	\N	\N	\N	\N	2818	\N	iNaturalist	f
27.2355851	123.880999	2022-01-24	Bathynomus doederleini	https://www.inaturalist.org/observations/188425270	https://www.inaturalist.org/observations/188425270	iNaturalist	1	\N	\N	\N	\N	\N	2819	\N	iNaturalist	f
-26.3778965	153.848157	2023-02-17	Bathynomus kapala	https://www.inaturalist.org/observations/148936510	https://www.inaturalist.org/observations/148936510	iNaturalist	1	\N	\N	\N	\N	\N	2840	\N	iNaturalist	f
22.1665439	-81.138577	2019-10-30	Isopoda	https://www.inaturalist.org/observations/205125443	https://www.inaturalist.org/observations/205125443	iNaturalist	1	\N	\N	\N	\N	\N	1495	\N	iNaturalist	f
24.5613417	-81.803138	2023-05-21	Rocinela	https://www.inaturalist.org/observations/205080677	https://www.inaturalist.org/observations/205080677	iNaturalist	1	\N	\N	\N	\N	\N	1496	\N	iNaturalist	f
27.7111367	-82.691147	2024-03-31	Ligia exotica	https://www.inaturalist.org/observations/204765965	https://www.inaturalist.org/observations/204765965	iNaturalist	1	\N	\N	\N	\N	\N	1497	\N	iNaturalist	f
26.8214588	-80.038596	2024-03-31	Porcellionides pruinosus	https://www.inaturalist.org/observations/204741271	https://www.inaturalist.org/observations/204741271	iNaturalist	1	\N	\N	\N	\N	\N	1500	\N	iNaturalist	f
25.1373945	-80.950783	2024-03-28	Ligia exotica	https://www.inaturalist.org/observations/204648895	https://www.inaturalist.org/observations/204648895	iNaturalist	1	\N	\N	\N	\N	\N	1501	\N	iNaturalist	f
27.8608028	-80.448811	2023-05-10	Ligia exotica	https://www.inaturalist.org/observations/204610660	https://www.inaturalist.org/observations/204610660	iNaturalist	1	\N	\N	\N	\N	\N	1502	\N	iNaturalist	f
27.8608194	-80.448628	2023-05-22	Ligia exotica	https://www.inaturalist.org/observations/204604387	https://www.inaturalist.org/observations/204604387	iNaturalist	1	\N	\N	\N	\N	\N	1503	\N	iNaturalist	f
17.9561837	-76.749044	2024-03-30	Isopoda	https://www.inaturalist.org/observations/204556088	https://www.inaturalist.org/observations/204556088	iNaturalist	1	\N	\N	\N	\N	\N	1504	\N	iNaturalist	f
25.1882256	-80.874211	2024-03-26	Ligia exotica	https://www.inaturalist.org/observations/204399007	https://www.inaturalist.org/observations/204399007	iNaturalist	1	\N	\N	\N	\N	\N	1505	\N	iNaturalist	f
27.7122800	-82.690820	2024-03-14	Porcellionides floria	https://www.inaturalist.org/observations/202444282	https://www.inaturalist.org/observations/202444282	iNaturalist	1	\N	\N	\N	\N	\N	1524	\N	iNaturalist	f
25.1381250	-80.930388	2024-03-12	Ligia exotica	https://www.inaturalist.org/observations/202240789	https://www.inaturalist.org/observations/202240789	iNaturalist	1	\N	\N	\N	\N	\N	1526	\N	iNaturalist	f
25.8539514	-80.084456	2024-03-12	Porcellionides pruinosus	https://www.inaturalist.org/observations/202209863	https://www.inaturalist.org/observations/202209863	iNaturalist	1	\N	\N	\N	\N	\N	1527	\N	iNaturalist	f
24.0325761	-74.422746	2024-03-09	Bahalana geracei	https://www.inaturalist.org/observations/202178311	https://www.inaturalist.org/observations/202178311	iNaturalist	1	\N	\N	\N	\N	\N	1528	\N	iNaturalist	f
12.7553900	-71.583460	2019-01-11	Bathynomus giganteus	\N	\N	\N	1	\N	770	\N	\N	\N	2769	HUMAN_OBSERVATION	GBIF	f
12.7842800	-71.700220	2018-09-18	Bathynomus giganteus	\N	\N	\N	1	\N	854	\N	\N	\N	2770	HUMAN_OBSERVATION	GBIF	f
12.8382200	-71.672000	2017-11-02	Bathynomus giganteus	\N	\N	\N	1	\N	860	\N	\N	\N	2772	HUMAN_OBSERVATION	GBIF	f
12.7840300	-71.672610	2017-11-05	Bathynomus giganteus	\N	\N	\N	1	\N	773	\N	\N	\N	2773	HUMAN_OBSERVATION	GBIF	f
19.9244740	-75.145514	2024-01-01	Schistocerca serialis		\N	GBIF	1	\N	\N	\N	\N	\N	2465	\N	GBIF	f
34.4918333	127.771122	2023-04-30	Armadillidium	https://www.inaturalist.org/observations/158043426	https://inaturalist-open-data.s3.amazonaws.com/photos/273178829/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	590	\N	iNaturalist	f
34.4919353	127.771052	2023-04-30	Tylidae	https://www.inaturalist.org/observations/157945451	https://inaturalist-open-data.s3.amazonaws.com/photos/273029761/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	592	\N	iNaturalist	f
24.9827000	-77.556400	2022-07-29	 	\N	\N	BTW expedition	1	\N	720	traps	\N	Square	2920	\N	\N	f
35.0564185	139.695694	2012-09-24	Tylos granuliferus	https://www.inaturalist.org/observations/193035390	https://inaturalist-open-data.s3.amazonaws.com/photos/339016660/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	394	\N	iNaturalist	f
24.2070000	-76.477570	2024-03-05	Cymothoida	https://www.inaturalist.org/observations/201477485	https://www.inaturalist.org/observations/201477485	iNaturalist	1	\N	\N	\N	\N	\N	1535	\N	iNaturalist	f
21.8160170	-72.254917	2023-07-25	Anthuroidea	https://www.inaturalist.org/observations/201470263	https://www.inaturalist.org/observations/201470263	iNaturalist	1	\N	\N	\N	\N	\N	1536	\N	iNaturalist	f
21.8143170	-72.253367	2023-08-25	Isopoda	https://www.inaturalist.org/observations/201363989	https://www.inaturalist.org/observations/201363989	iNaturalist	1	\N	\N	\N	\N	\N	1539	\N	iNaturalist	f
26.8058159	-83.097132	2024-03-03	Cymothooidea	https://www.inaturalist.org/observations/201339401	https://www.inaturalist.org/observations/201339401	iNaturalist	1	\N	\N	\N	\N	\N	1540	\N	iNaturalist	f
24.2071819	-76.477379	2024-03-03	Isopoda	https://www.inaturalist.org/observations/201200597	https://www.inaturalist.org/observations/201200597	iNaturalist	1	\N	\N	\N	\N	\N	1541	\N	iNaturalist	f
24.0421755	-74.546274	2024-03-03	Philosciidae	https://www.inaturalist.org/observations/201115228	https://www.inaturalist.org/observations/201115228	iNaturalist	1	\N	\N	\N	\N	\N	1542	\N	iNaturalist	f
24.1396434	-74.599258	2024-03-02	Porcellionides floria	https://www.inaturalist.org/observations/201071248	https://www.inaturalist.org/observations/201071248	iNaturalist	1	\N	\N	\N	\N	\N	1543	\N	iNaturalist	f
26.4485960	-82.115930	2024-03-02	Cubaris murina	https://www.inaturalist.org/observations/201048654	https://www.inaturalist.org/observations/201048654	iNaturalist	1	\N	\N	\N	\N	\N	1544	\N	iNaturalist	f
24.6283970	-82.872851	2023-07-06	Aegidae	https://www.inaturalist.org/observations/200779540	https://www.inaturalist.org/observations/200779540	iNaturalist	1	\N	\N	\N	\N	\N	1545	\N	iNaturalist	f
28.3310667	-80.694275	2024-02-27	Sphaeromatidae	https://www.inaturalist.org/observations/200631126	https://www.inaturalist.org/observations/200631126	iNaturalist	1	\N	\N	\N	\N	\N	1546	\N	iNaturalist	f
25.1378784	-80.931740	2024-02-27	Ligia exotica	https://www.inaturalist.org/observations/200629053	https://www.inaturalist.org/observations/200629053	iNaturalist	1	\N	\N	\N	\N	\N	1547	\N	iNaturalist	f
25.1815800	-80.876330	2024-02-20	Ligia exotica	https://www.inaturalist.org/observations/200537760	https://www.inaturalist.org/observations/200537760	iNaturalist	1	\N	\N	\N	\N	\N	1548	\N	iNaturalist	f
27.7138025	-82.686924	2024-02-25	Crinocheta	https://www.inaturalist.org/observations/200466470	https://www.inaturalist.org/observations/200466470	iNaturalist	1	\N	\N	\N	\N	\N	1549	\N	iNaturalist	f
33.7500000	136.053333	1978-07-30	Bathynomus doederleini	\N	\N	Sekiguchi1981	0	\N	21	\N	\N	18	1174	\N	\N	f
33.7550000	136.063333	1978-08-07	Bathynomus doederleini	\N	\N	Sekiguchi1981	0	\N	40	\N	\N	12	1175	\N	\N	f
33.8516667	136.145000	1978-10-25	Bathynomus doederleini	\N	\N	Sekiguchi1981	0	\N	78	\N	\N	20	1176	\N	\N	f
33.8466667	136.140000	1978-10-18	Bathynomus doederleini	\N	\N	Sekiguchi1981	0	\N	85	\N	\N	20	1177	\N	\N	f
33.8350000	136.135000	1980-03-20	Bathynomus doederleini	\N	\N	Sekiguchi1981	0	\N	85	\N	\N	13	1178	\N	\N	f
33.8683333	136.178333	1980-03-13	Bathynomus doederleini	\N	\N	Sekiguchi1981	0	\N	87	\N	\N	13	1179	\N	\N	f
33.8233333	136.145000	1980-03-14	Bathynomus doederleini	\N	\N	Sekiguchi1981	0	\N	97	\N	\N	13	1180	\N	\N	f
34.1200000	136.391667	1978-08-22	Bathynomus doederleini	\N	\N	Sekiguchi1981	0	\N	100	\N	\N	4	1181	\N	\N	f
33.9233333	136.266667	1978-08-23	Bathynomus doederleini	\N	\N	Sekiguchi1981	0	\N	105	\N	\N	4	1182	\N	\N	f
33.7750000	136.123333	1980-10-31	Bathynomus doederleini	\N	\N	Sekiguchi1981	9	\N	170	\N	\N	4	1183	\N	\N	f
33.8183333	136.180000	1980-03-21	Bathynomus doederleini	\N	\N	Sekiguchi1981	19	\N	178	\N	\N	13	1184	\N	\N	f
34.1533333	136.620000	1978-07-13	Bathynomus doederleini	\N	\N	Sekiguchi1981	9	\N	200	\N	\N	3	1185	\N	\N	f
33.8166667	136.168333	1979-03-13	Bathynomus doederleini	\N	\N	Sekiguchi1981	4	\N	200	\N	\N	13	1186	\N	\N	f
33.8250000	136.155000	1979-03-19	Bathynomus doederleini	\N	\N	Sekiguchi1981	36	\N	200	\N	\N	14	1187	\N	\N	f
33.7000000	136.090000	1980-11-01	Bathynomus doederleini	\N	\N	Sekiguchi1981	32	\N	260	\N	\N	10	1189	\N	\N	f
33.7716667	136.133333	1980-07-30	Bathynomus doederleini	\N	\N	Sekiguchi1981	133	\N	280	\N	\N	20	1190	\N	\N	f
34.1116667	136.780000	1978-07-25	Bathynomus doederleini	\N	\N	Sekiguchi1981	177	\N	365	\N	\N	3	1191	\N	\N	f
33.7716667	136.125000	1980-11-17	Bathynomus doederleini	\N	\N	Sekiguchi1981	46	\N	511	\N	\N	10	1192	\N	\N	f
34.2550000	137.111667	1978-11-21	Bathynomus doederleini	\N	\N	Sekiguchi1981	3	\N	725	\N	\N	4	1193	\N	\N	f
22.0100000	-89.410000	1985-10-25	Bathynomus giganteus	https://doi.org/10.2307/1548465	\N	Briones-Fourzan&Lozano-Alvarez1991	1	Yucatan Peninsula	349-391	traps	\N	rectangular	2964	cruise 1	\N	f
25.1890600	-77.114050	2022-11-17	Bathynomus giganteus	\N	\N	BTW expedition	1	\N	749	traps	9.96	Eel	2928	\N	\N	f
24.0547786	-74.541398	2024-02-22	Anilocra brillae	https://www.inaturalist.org/observations/200125543	https://www.inaturalist.org/observations/200125543	iNaturalist	1	\N	\N	\N	\N	\N	1550	\N	iNaturalist	f
21.9109670	-72.091533	2022-08-15	Anthuroidea	https://www.inaturalist.org/observations/200078408	https://www.inaturalist.org/observations/200078408	iNaturalist	1	\N	\N	\N	\N	\N	1551	\N	iNaturalist	f
27.0332851	-80.076931	2024-02-20	Porcellionides pruinosus	https://www.inaturalist.org/observations/199921426	https://www.inaturalist.org/observations/199921426	iNaturalist	1	\N	\N	\N	\N	\N	1552	\N	iNaturalist	f
27.6826760	-82.738278	2024-02-17	Ligia exotica	https://www.inaturalist.org/observations/199691078	https://www.inaturalist.org/observations/199691078	iNaturalist	1	\N	\N	\N	\N	\N	1553	\N	iNaturalist	f
25.8640705	-80.119190	2024-02-17	Isopoda	https://www.inaturalist.org/observations/199640338	https://www.inaturalist.org/observations/199640338	iNaturalist	1	\N	\N	\N	\N	\N	1554	\N	iNaturalist	f
24.8046000	-80.848495	2024-02-16	Ligia exotica	https://www.inaturalist.org/observations/199505947	https://www.inaturalist.org/observations/199505947	iNaturalist	1	\N	\N	\N	\N	\N	1555	\N	iNaturalist	f
27.7161283	-82.684805	2024-02-14	Porcellio laevis	https://www.inaturalist.org/observations/199301587	https://www.inaturalist.org/observations/199301587	iNaturalist	1	\N	\N	\N	\N	\N	1557	\N	iNaturalist	f
27.7143033	-82.680153	2024-02-14	Porcellionides pruinosus	https://www.inaturalist.org/observations/199301223	https://www.inaturalist.org/observations/199301223	iNaturalist	1	\N	\N	\N	\N	\N	1558	\N	iNaturalist	f
26.9729467	-82.375672	2024-02-14	Paracerceis	https://www.inaturalist.org/observations/199288426	https://www.inaturalist.org/observations/199288426	iNaturalist	1	\N	\N	\N	\N	\N	1559	\N	iNaturalist	f
25.7638789	-80.129759	2024-02-12	Ligia exotica	https://www.inaturalist.org/observations/199250569	https://www.inaturalist.org/observations/199250569	iNaturalist	1	\N	\N	\N	\N	\N	1560	\N	iNaturalist	f
21.7216670	-86.345000	1985-10-26	Bathynomus giganteus	https://doi.org/10.2307/1548466	\N	Briones-Fourzan&Lozano-Alvarez1991	48	Yucatan Peninsula	458-482	traps	\N	rectangular	2965	cruise 1	\N	f
24.1933330	-88.198333	1986-02-04	Bathynomus giganteus	https://doi.org/10.2307/1548467	\N	Briones-Fourzan&Lozano-Alvarez1991	23	Yucatan Peninsula	493-516	traps	\N	rectangular	2966	cruise 2	\N	f
23.2816670	-86.958333	1986-02-06	Bathynomus giganteus	https://doi.org/10.2307/1548468	\N	Briones-Fourzan&Lozano-Alvarez1991	14	Yucatan Peninsula	498-500	traps	\N	rectangular	2967	cruise 2	\N	f
22.8950000	-86.803333	1986-02-07	Bathynomus giganteus	https://doi.org/10.2307/1548469	\N	Briones-Fourzan&Lozano-Alvarez1991	6	Yucatan Peninsula	425-426	traps	\N	rectangular	2968	cruise 2	\N	f
21.9566670	-86.383333	1986-02-08	Bathynomus giganteus	https://doi.org/10.2307/1548470	\N	Briones-Fourzan&Lozano-Alvarez1991	27	Yucatan Peninsula	439-440	traps	\N	rectangular	2969	cruise 2	\N	f
18.6650000	-87.570667	1986-08-14	Bathynomus giganteus	https://doi.org/10.2307/1548471	\N	Briones-Fourzan&Lozano-Alvarez1991	3	Yucatan Peninsula	733	traps	\N	rectangular	2970	cruise 3	\N	f
25.7640380	-80.129988	2024-02-12	Ligia exotica	https://www.inaturalist.org/observations/199165993	https://www.inaturalist.org/observations/199165993	iNaturalist	1	\N	\N	\N	\N	\N	1561	\N	iNaturalist	f
20.3950000	-87.106667	1986-08-21	Bathynomus giganteus	https://doi.org/10.2307/1548473	\N	Briones-Fourzan&Lozano-Alvarez1991	4	Yucatan Peninsula	470	traps	\N	rectangular	2972	cruise 3	\N	f
19.8000000	-87.386667	1986-08-21	Bathynomus giganteus	https://doi.org/10.2307/1548474	\N	Briones-Fourzan&Lozano-Alvarez1991	57	Yucatan Peninsula	404	traps	\N	rectangular	2973	cruise 3	\N	f
20.1500000	-92.213333	1989-08-09	Bathynomus giganteus	https://doi.org/10.2307/1548475	\N	Briones-Fourzan&Lozano-Alvarez1991	30	Yucatan Peninsula	402-490	traps	\N	rectangular	2974	cruise 4	\N	f
21.9083330	-92.423333	1989-08-11	Bathynomus giganteus	https://doi.org/10.2307/1548476	\N	Briones-Fourzan&Lozano-Alvarez1991	11	Yucatan Peninsula	384-428	traps	\N	rectangular	2975	cruise 4	\N	f
22.6383330	-90.458333	1989-08-14	Bathynomus giganteus	https://doi.org/10.2307/1548477	\N	Briones-Fourzan&Lozano-Alvarez1991	1	Yucatan Peninsula	367-385	traps	\N	rectangular	2976	cruise 4	\N	f
23.3416670	-89.937000	1989-08-15	Bathynomus giganteus	https://doi.org/10.2307/1548478	\N	Briones-Fourzan&Lozano-Alvarez1991	17	Yucatan Peninsula	388-401	traps	\N	rectangular	2977	cruise 4	\N	f
23.3050000	-90.006667	1989-08-16	Bathynomus giganteus	https://doi.org/10.2307/1548479	\N	Briones-Fourzan&Lozano-Alvarez1991	32	Yucatan Peninsula	369-402	traps	\N	rectangular	2978	cruise 4	\N	f
23.3750000	-89.955000	1989-08-17	Bathynomus giganteus	https://doi.org/10.2307/1548480	\N	Briones-Fourzan&Lozano-Alvarez1991	2	Yucatan Peninsula	427-467	traps	\N	rectangular	2979	cruise 4	\N	f
22.7750000	-86.706667	1989-08-18	Bathynomus giganteus	https://doi.org/10.2307/1548481	\N	Briones-Fourzan&Lozano-Alvarez1991	70	Yucatan Peninsula	409-413	traps	\N	rectangular	2980	cruise 4	\N	f
20.3150000	-92.240000	1990-01-30	Bathynomus giganteus	https://doi.org/10.2307/1548482	\N	Briones-Fourzan&Lozano-Alvarez1991	6	Yucatan Peninsula	391-398	traps	\N	rectangular	2981	cruise 5	\N	f
20.6816670	-92.441667	1990-01-31	Bathynomus giganteus	https://doi.org/10.2307/1548483	\N	Briones-Fourzan&Lozano-Alvarez1991	111	Yucatan Peninsula	442-480	traps	\N	rectangular	2982	cruise 5	\N	f
22.5066670	-91.116667	1990-02-02	Bathynomus giganteus	https://doi.org/10.2307/1548484	\N	Briones-Fourzan&Lozano-Alvarez1991	41	Yucatan Peninsula	617-622	traps	\N	rectangular	2983	cruise 5	\N	f
23.4366670	-89.995000	1990-02-03	Bathynomus giganteus	https://doi.org/10.2307/1548485	\N	Briones-Fourzan&Lozano-Alvarez1991	1122	Yucatan Peninsula	717-721	traps	\N	rectangular	2984	cruise 5	\N	f
23.6633330	-89.285000	1985-10-22	Bathynomus giganteus	https://doi.org/10.2307/1548464	\N	Briones-Fourzan&Lozano-Alvarez1991	25	Yucatan Peninsula	439-485	traps	\N	rectangular	2963	cruise 1	\N	f
25.7653686	-80.131280	2024-02-12	Porcellionides pruinosus	https://www.inaturalist.org/observations/199163258	https://www.inaturalist.org/observations/199163258	iNaturalist	1	\N	\N	\N	\N	\N	1562	\N	iNaturalist	f
26.9497083	-80.082122	2024-02-11	Cubaris murina	https://www.inaturalist.org/observations/199030210	https://www.inaturalist.org/observations/199030210	iNaturalist	1	\N	\N	\N	\N	\N	1563	\N	iNaturalist	f
28.4407833	-80.634430	2024-02-08	Erichsonella attenuata	https://www.inaturalist.org/observations/198770275	https://www.inaturalist.org/observations/198770275	iNaturalist	1	\N	\N	\N	\N	\N	1564	\N	iNaturalist	f
24.7380341	-81.266271	2024-01-08	Porcellionides virgatus	https://www.inaturalist.org/observations/198622652	https://www.inaturalist.org/observations/198622652	iNaturalist	1	\N	\N	\N	\N	\N	1565	\N	iNaturalist	f
24.7748123	-81.236096	2024-01-08	Porcellionides virgatus	https://www.inaturalist.org/observations/198622633	https://www.inaturalist.org/observations/198622633	iNaturalist	1	\N	\N	\N	\N	\N	1566	\N	iNaturalist	f
22.4033330	-91.586667	1999-05-22	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	1	Yucatan Peninsula	549–555	trawl net	6–8.5	\N	2998	\N	\N	f
22.4050000	-91.628333	1999-05-27	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	13	Yucatan Peninsula	580–658	traps	6–8.5	rectangular	2999	\N	\N	f
37.4792213	137.334412	2023-04-29	Armadillidium vulgare	https://www.inaturalist.org/observations/157455877	https://inaturalist-open-data.s3.amazonaws.com/photos/272249486/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	593	\N	iNaturalist	f
24.6085637	-81.265039	2024-01-08	Porcellionides virgatus	https://www.inaturalist.org/observations/198622607	https://www.inaturalist.org/observations/198622607	iNaturalist	1	\N	\N	\N	\N	\N	1567	\N	iNaturalist	f
27.7098633	-82.688413	2024-02-02	Floridoscia fusca	https://www.inaturalist.org/observations/198236054	https://www.inaturalist.org/observations/198236054	iNaturalist	1	\N	\N	\N	\N	\N	1568	\N	iNaturalist	f
27.7144217	-82.690978	2024-02-01	Atlantoscia floridana	https://www.inaturalist.org/observations/198214054	https://www.inaturalist.org/observations/198214054	iNaturalist	1	\N	\N	\N	\N	\N	1569	\N	iNaturalist	f
27.6089594	-82.791272	2024-01-29	Cleantioides	https://www.inaturalist.org/observations/197916857	https://www.inaturalist.org/observations/197916857	iNaturalist	1	\N	\N	\N	\N	\N	1570	\N	iNaturalist	f
17.8149496	-71.140677	2023-12-25	Porcellionides pruinosus	https://www.inaturalist.org/observations/197839409	https://www.inaturalist.org/observations/197839409	iNaturalist	1	\N	\N	\N	\N	\N	1571	\N	iNaturalist	f
27.9862227	-82.825143	2024-01-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/197691278	https://www.inaturalist.org/observations/197691278	iNaturalist	1	\N	\N	\N	\N	\N	1572	\N	iNaturalist	f
25.1805399	-80.939163	2024-01-13	Delatorreiidae	https://www.inaturalist.org/observations/197144624	https://www.inaturalist.org/observations/197144624	iNaturalist	1	\N	\N	\N	\N	\N	1573	\N	iNaturalist	f
25.3970800	-80.233938	2024-01-17	Ligia exotica	https://www.inaturalist.org/observations/197112549	https://www.inaturalist.org/observations/197112549	iNaturalist	1	\N	\N	\N	\N	\N	1574	\N	iNaturalist	f
24.7227217	-81.452780	2024-01-14	Ligia exotica	https://www.inaturalist.org/observations/197110950	https://www.inaturalist.org/observations/197110950	iNaturalist	1	\N	\N	\N	\N	\N	1575	\N	iNaturalist	f
25.0597058	-80.882121	2024-01-13	Cymothooidea	https://www.inaturalist.org/observations/197109390	https://www.inaturalist.org/observations/197109390	iNaturalist	1	\N	\N	\N	\N	\N	1576	\N	iNaturalist	f
27.5331320	-82.730662	2024-01-19	Sphaeromatidae	https://www.inaturalist.org/observations/197095302	https://www.inaturalist.org/observations/197095302	iNaturalist	1	\N	\N	\N	\N	\N	1577	\N	iNaturalist	f
25.4693290	-80.269921	2024-01-16	Cubaris murina	https://www.inaturalist.org/observations/197079837	https://www.inaturalist.org/observations/197079837	iNaturalist	1	\N	\N	\N	\N	\N	1578	\N	iNaturalist	f
25.1921034	-80.895000	2024-01-13	Delatorreiidae	https://www.inaturalist.org/observations/196886873	https://www.inaturalist.org/observations/196886873	iNaturalist	1	\N	\N	\N	\N	\N	1579	\N	iNaturalist	f
25.0084995	-80.538004	2024-01-12	Venezillo parvus	https://www.inaturalist.org/observations/196734518	https://www.inaturalist.org/observations/196734518	iNaturalist	1	\N	\N	\N	\N	\N	1589	\N	iNaturalist	f
25.0945299	-80.490396	2024-01-12	Tylos	https://www.inaturalist.org/observations/196734517	https://www.inaturalist.org/observations/196734517	iNaturalist	1	\N	\N	\N	\N	\N	1590	\N	iNaturalist	f
25.1776238	-80.466396	2024-01-12	Tylos	https://www.inaturalist.org/observations/196734515	https://www.inaturalist.org/observations/196734515	iNaturalist	1	\N	\N	\N	\N	\N	1591	\N	iNaturalist	f
25.1353565	-80.953992	2023-03-10	Ligia exotica	https://www.inaturalist.org/observations/196505885	https://www.inaturalist.org/observations/196505885	iNaturalist	1	\N	\N	\N	\N	\N	1592	\N	iNaturalist	f
27.6898000	-91.541700	2006-08-12	Bathynomus giganteus	\N	\N	\N	1	\N	708	\N	\N	\N	3080	PRESERVED_SPECIMEN	GBIF	f
29.3903000	-86.980500	2004-08-04	Bathynomus giganteus	\N	\N	\N	1	\N	702	\N	\N	\N	3081	PRESERVED_SPECIMEN	GBIF	f
25.0396222	-80.977612	2024-01-04	Ligia exotica	https://www.inaturalist.org/observations/196390368	https://www.inaturalist.org/observations/196390368	iNaturalist	1	\N	\N	\N	\N	\N	1593	\N	iNaturalist	f
24.6262587	-82.872881	2015-04-27	Anilocra	https://www.inaturalist.org/observations/196287572	https://www.inaturalist.org/observations/196287572	iNaturalist	1	\N	\N	\N	\N	\N	1594	\N	iNaturalist	f
19.3607315	-81.249855	2024-01-04	Porcellionides pruinosus	https://www.inaturalist.org/observations/195772630	https://www.inaturalist.org/observations/195772630	iNaturalist	1	\N	\N	\N	\N	\N	1595	\N	iNaturalist	f
19.3476276	-81.207973	2024-01-03	Trichorhina tomentosa	https://www.inaturalist.org/observations/195684401	https://www.inaturalist.org/observations/195684401	iNaturalist	1	\N	\N	\N	\N	\N	1596	\N	iNaturalist	f
19.3477791	-81.207890	2024-01-03	Agnara	https://www.inaturalist.org/observations/195684301	https://www.inaturalist.org/observations/195684301	iNaturalist	1	\N	\N	\N	\N	\N	1597	\N	iNaturalist	f
25.7252582	-80.147900	2024-01-01	Sphaeromatidae	https://www.inaturalist.org/observations/195629622	https://www.inaturalist.org/observations/195629622	iNaturalist	1	\N	\N	\N	\N	\N	1598	\N	iNaturalist	f
19.3493029	-81.093449	2023-12-21	Ligia	https://www.inaturalist.org/observations/195010298	https://www.inaturalist.org/observations/195010298	iNaturalist	1	\N	\N	\N	\N	\N	1599	\N	iNaturalist	f
24.1706783	-76.444558	2023-12-27	Ligia	https://www.inaturalist.org/observations/195001644	https://www.inaturalist.org/observations/195001644	iNaturalist	1	\N	\N	\N	\N	\N	1600	\N	iNaturalist	f
24.7589038	-80.969456	2023-12-26	Sphaeromatoidea	https://www.inaturalist.org/observations/194954856	https://www.inaturalist.org/observations/194954856	iNaturalist	1	\N	\N	\N	\N	\N	1601	\N	iNaturalist	f
27.6488250	-80.370300	2023-12-26	Ligia exotica	https://www.inaturalist.org/observations/194919763	https://www.inaturalist.org/observations/194919763	iNaturalist	1	\N	\N	\N	\N	\N	1603	\N	iNaturalist	f
19.2719044	-81.085164	2023-12-11	Philosciidae	https://www.inaturalist.org/observations/194793804	https://www.inaturalist.org/observations/194793804	iNaturalist	1	\N	\N	\N	\N	\N	1604	\N	iNaturalist	f
19.3804127	-81.097335	2023-12-11	Philosciidae	https://www.inaturalist.org/observations/194793801	https://www.inaturalist.org/observations/194793801	iNaturalist	1	\N	\N	\N	\N	\N	1605	\N	iNaturalist	f
19.2436107	-81.173068	2023-12-11	Philosciidae	https://www.inaturalist.org/observations/194793799	https://www.inaturalist.org/observations/194793799	iNaturalist	1	\N	\N	\N	\N	\N	1606	\N	iNaturalist	f
19.3093196	-81.075553	2023-12-11	Cylindroniscus	https://www.inaturalist.org/observations/194793797	https://www.inaturalist.org/observations/194793797	iNaturalist	1	\N	\N	\N	\N	\N	1607	\N	iNaturalist	f
19.2624054	-81.174207	2023-12-11	Venezillo booneae	https://www.inaturalist.org/observations/194793796	https://www.inaturalist.org/observations/194793796	iNaturalist	1	\N	\N	\N	\N	\N	1608	\N	iNaturalist	f
19.2687044	-81.194896	2023-12-11	Cylindroniscus	https://www.inaturalist.org/observations/194793795	https://www.inaturalist.org/observations/194793795	iNaturalist	1	\N	\N	\N	\N	\N	1609	\N	iNaturalist	f
27.9164636	-82.992627	2023-10-22	Ligia exotica	https://www.inaturalist.org/observations/189494651	https://www.inaturalist.org/observations/189494651	iNaturalist	1	\N	\N	\N	\N	\N	1652	\N	iNaturalist	f
27.7389333	-82.674270	2023-10-27	Cubaris murina	https://www.inaturalist.org/observations/189199762	https://www.inaturalist.org/observations/189199762	iNaturalist	1	\N	\N	\N	\N	\N	1653	\N	iNaturalist	f
27.7108081	-82.689818	2023-10-23	Paracerceis	https://www.inaturalist.org/observations/189039940	https://www.inaturalist.org/observations/189039940	iNaturalist	1	\N	\N	\N	\N	\N	1654	\N	iNaturalist	f
27.0569222	-82.441628	2023-10-21	Ligia exotica	https://www.inaturalist.org/observations/188563135	https://www.inaturalist.org/observations/188563135	iNaturalist	1	\N	\N	\N	\N	\N	1659	\N	iNaturalist	f
17.9698300	-66.120620	2023-10-21	Cubaris murina	https://www.inaturalist.org/observations/188443270	https://www.inaturalist.org/observations/188443270	iNaturalist	1	\N	\N	\N	\N	\N	1660	\N	iNaturalist	f
18.4549417	-66.075364	2023-09-23	Cubaris murina	https://www.inaturalist.org/observations/187836840	https://www.inaturalist.org/observations/187836840	iNaturalist	1	\N	\N	\N	\N	\N	1661	\N	iNaturalist	f
26.9106217	-82.096244	2023-10-14	Ligia exotica	https://www.inaturalist.org/observations/187526658	https://www.inaturalist.org/observations/187526658	iNaturalist	1	\N	\N	\N	\N	\N	1662	\N	iNaturalist	f
18.4550217	-66.182420	2023-10-13	Porcellionides pruinosus	https://www.inaturalist.org/observations/187337329	https://www.inaturalist.org/observations/187337329	iNaturalist	1	\N	\N	\N	\N	\N	1663	\N	iNaturalist	f
27.8051100	-83.075920	2023-09-26	Cymothooidea	https://www.inaturalist.org/observations/185090834	https://www.inaturalist.org/observations/185090834	iNaturalist	1	\N	\N	\N	\N	\N	1665	\N	iNaturalist	f
18.4545450	-66.077325	2023-09-23	Porcellionides pruinosus	https://www.inaturalist.org/observations/184633832	https://www.inaturalist.org/observations/184633832	iNaturalist	1	\N	\N	\N	\N	\N	1666	\N	iNaturalist	f
36.1188139	125.975958	2021-10-09	Ligia exotica	https://www.inaturalist.org/observations/157055832	https://inaturalist-open-data.s3.amazonaws.com/photos/271612418/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	594	\N	iNaturalist	f
18.4549783	-66.075408	2023-09-23	Cubaris murina	https://www.inaturalist.org/observations/184576536	https://www.inaturalist.org/observations/184576536	iNaturalist	1	\N	\N	\N	\N	\N	1667	\N	iNaturalist	f
27.6207928	-82.722554	2023-09-19	Ligia exotica	https://www.inaturalist.org/observations/184576313	https://www.inaturalist.org/observations/184576313	iNaturalist	1	\N	\N	\N	\N	\N	1668	\N	iNaturalist	f
18.4550490	-66.076198	2023-09-23	Cubaris murina	https://www.inaturalist.org/observations/184535673	https://www.inaturalist.org/observations/184535673	iNaturalist	1	\N	\N	\N	\N	\N	1669	\N	iNaturalist	f
18.4549323	-66.075384	2023-09-23	Cubaris murina	https://www.inaturalist.org/observations/184525070	https://www.inaturalist.org/observations/184525070	iNaturalist	1	\N	\N	\N	\N	\N	1670	\N	iNaturalist	f
26.7835515	-80.044385	2023-09-20	Cymothoida	https://www.inaturalist.org/observations/184332742	https://www.inaturalist.org/observations/184332742	iNaturalist	1	\N	\N	\N	\N	\N	1671	\N	iNaturalist	f
17.8833363	-76.428939	2023-09-20	Porcellionides pruinosus	https://www.inaturalist.org/observations/184304997	https://www.inaturalist.org/observations/184304997	iNaturalist	1	\N	\N	\N	\N	\N	1672	\N	iNaturalist	f
27.7618750	-82.635138	2023-09-15	Ligia exotica	https://www.inaturalist.org/observations/183400079	https://www.inaturalist.org/observations/183400079	iNaturalist	1	\N	\N	\N	\N	\N	1673	\N	iNaturalist	f
24.5980063	-81.669660	2023-09-14	Ligia exotica	https://www.inaturalist.org/observations/183222970	https://www.inaturalist.org/observations/183222970	iNaturalist	1	\N	\N	\N	\N	\N	1674	\N	iNaturalist	f
26.9332550	-80.102425	2023-09-08	Porcellionides pruinosus	https://www.inaturalist.org/observations/182416870	https://www.inaturalist.org/observations/182416870	iNaturalist	1	\N	\N	\N	\N	\N	1675	\N	iNaturalist	f
27.7633407	-82.635201	2023-09-08	Ligia exotica	https://www.inaturalist.org/observations/182357766	https://www.inaturalist.org/observations/182357766	iNaturalist	1	\N	\N	\N	\N	\N	1676	\N	iNaturalist	f
27.7157050	-82.683455	2023-09-08	Porcellionides pruinosus	https://www.inaturalist.org/observations/182345870	https://www.inaturalist.org/observations/182345870	iNaturalist	1	\N	\N	\N	\N	\N	1677	\N	iNaturalist	f
26.9883700	-82.401488	2023-09-01	Paracerceis	https://www.inaturalist.org/observations/181283720	https://www.inaturalist.org/observations/181283720	iNaturalist	1	\N	\N	\N	\N	\N	1678	\N	iNaturalist	f
25.0702362	-77.307220	2023-08-20	Porcellio laevis	https://www.inaturalist.org/observations/179410512	https://www.inaturalist.org/observations/179410512	iNaturalist	1	\N	\N	\N	\N	\N	1679	\N	iNaturalist	f
25.7487795	-80.146038	2023-08-09	Crinocheta	https://www.inaturalist.org/observations/178104722	https://www.inaturalist.org/observations/178104722	iNaturalist	1	\N	\N	\N	\N	\N	1680	\N	iNaturalist	f
24.6274156	-82.873862	2023-08-02	Ligia exotica	https://www.inaturalist.org/observations/177328604	https://www.inaturalist.org/observations/177328604	iNaturalist	1	\N	\N	\N	\N	\N	1681	\N	iNaturalist	f
27.2054806	-80.168469	2023-07-29	Ligia exotica	https://www.inaturalist.org/observations/177284497	https://www.inaturalist.org/observations/177284497	iNaturalist	1	\N	\N	\N	\N	\N	1682	\N	iNaturalist	f
26.5233011	-82.193700	2023-05-17	Trichorhina	https://www.inaturalist.org/observations/176272554	https://www.inaturalist.org/observations/176272554	iNaturalist	1	\N	\N	\N	\N	\N	1683	\N	iNaturalist	f
25.1382250	-80.929962	2023-08-01	Ligia exotica	https://www.inaturalist.org/observations/176271439	https://www.inaturalist.org/observations/176271439	iNaturalist	1	\N	\N	\N	\N	\N	1684	\N	iNaturalist	f
27.8915555	-82.944688	2022-02-03	Ligia exotica	https://www.inaturalist.org/observations/176235096	https://www.inaturalist.org/observations/176235096	iNaturalist	1	\N	\N	\N	\N	\N	1685	\N	iNaturalist	f
26.5631617	-81.951630	2023-07-30	Cubaris murina	https://www.inaturalist.org/observations/175673013	https://www.inaturalist.org/observations/175673013	iNaturalist	1	\N	\N	\N	\N	\N	1686	\N	iNaturalist	f
26.7831262	-80.041671	2023-07-28	Isopoda	https://www.inaturalist.org/observations/175515328	https://www.inaturalist.org/observations/175515328	iNaturalist	1	\N	\N	\N	\N	\N	1687	\N	iNaturalist	f
29.8623167	122.394433	2023-12-01	Ligia	https://www.inaturalist.org/observations/192704159	https://inaturalist-open-data.s3.amazonaws.com/photos/338351175/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	397	\N	iNaturalist	f
34.5111273	127.778778	2023-11-27	Ligia exotica	https://www.inaturalist.org/observations/192315610	https://inaturalist-open-data.s3.amazonaws.com/photos/337580035/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	398	\N	iNaturalist	f
24.4158349	123.952896	2013-03-24	Armadillidae	https://www.inaturalist.org/observations/191712210	https://inaturalist-open-data.s3.amazonaws.com/photos/336384245/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	401	\N	iNaturalist	f
27.9770950	-82.819917	2023-07-28	Ligia exotica	https://www.inaturalist.org/observations/175378427	https://www.inaturalist.org/observations/175378427	iNaturalist	1	\N	\N	\N	\N	\N	1688	\N	iNaturalist	f
28.0587620	-82.809555	2023-07-25	Porcellionides pruinosus	https://www.inaturalist.org/observations/174965110	https://www.inaturalist.org/observations/174965110	iNaturalist	1	\N	\N	\N	\N	\N	1689	\N	iNaturalist	f
17.9449139	-76.754560	2023-07-23	Ligia exotica	https://www.inaturalist.org/observations/174468228	https://www.inaturalist.org/observations/174468228	iNaturalist	1	\N	\N	\N	\N	\N	1690	\N	iNaturalist	f
24.6408774	-81.411080	2023-07-04	Ligia exotica	https://www.inaturalist.org/observations/174048170	https://www.inaturalist.org/observations/174048170	iNaturalist	1	\N	\N	\N	\N	\N	1692	\N	iNaturalist	f
24.7586295	-80.969672	2023-07-20	Ligia exotica	https://www.inaturalist.org/observations/174036053	https://www.inaturalist.org/observations/174036053	iNaturalist	1	\N	\N	\N	\N	\N	1693	\N	iNaturalist	f
27.7161967	-82.691017	2023-07-13	Porcellionides pruinosus	https://www.inaturalist.org/observations/172725569	https://www.inaturalist.org/observations/172725569	iNaturalist	1	\N	\N	\N	\N	\N	1694	\N	iNaturalist	f
17.9454099	-76.726824	2023-07-12	Ligia exotica	https://www.inaturalist.org/observations/172498049	https://www.inaturalist.org/observations/172498049	iNaturalist	1	\N	\N	\N	\N	\N	1695	\N	iNaturalist	f
28.0560765	-80.550476	2023-07-10	Ancinus	https://www.inaturalist.org/observations/172254682	https://www.inaturalist.org/observations/172254682	iNaturalist	1	\N	\N	\N	\N	\N	1696	\N	iNaturalist	f
21.7565932	-72.276343	\N	Ligia exotica	https://www.inaturalist.org/observations/172016836	https://www.inaturalist.org/observations/172016836	iNaturalist	1	\N	\N	\N	\N	\N	1697	\N	iNaturalist	f
18.1519389	-68.761367	2023-07-06	Paracerceis	https://www.inaturalist.org/observations/171490209	https://www.inaturalist.org/observations/171490209	iNaturalist	1	\N	\N	\N	\N	\N	1698	\N	iNaturalist	f
28.1553805	-82.806847	2023-07-05	Ligia exotica	https://www.inaturalist.org/observations/171194340	https://www.inaturalist.org/observations/171194340	iNaturalist	1	\N	\N	\N	\N	\N	1699	\N	iNaturalist	f
24.9240543	125.044412	2012-03-14	Ligia ryukyuensis	https://www.inaturalist.org/observations/156231162	https://inaturalist-open-data.s3.amazonaws.com/photos/270125315/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	595	\N	iNaturalist	f
24.9703277	125.044459	2012-03-14	Tylos granuliferus	https://www.inaturalist.org/observations/156224195	https://inaturalist-open-data.s3.amazonaws.com/photos/270114939/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	596	\N	iNaturalist	f
24.5272675	124.273911	2023-04-23	Ligia exotica	https://www.inaturalist.org/observations/156182431	https://inaturalist-open-data.s3.amazonaws.com/photos/271272824/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	597	\N	iNaturalist	f
34.4351083	126.354392	2023-04-22	Ligia exotica	https://www.inaturalist.org/observations/156027878	https://inaturalist-open-data.s3.amazonaws.com/photos/269764017/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	598	\N	iNaturalist	f
24.2400468	123.979233	2022-09-22	Burmoniscus	https://www.inaturalist.org/observations/155886616	https://inaturalist-open-data.s3.amazonaws.com/photos/269506641/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	599	\N	iNaturalist	f
23.1700649	-82.288757	2023-07-04	Ligia	https://www.inaturalist.org/observations/170996096	https://www.inaturalist.org/observations/170996096	iNaturalist	1	\N	\N	\N	\N	\N	1700	\N	iNaturalist	f
25.0804426	-77.349078	2023-06-27	Ligia	https://www.inaturalist.org/observations/170691717	https://www.inaturalist.org/observations/170691717	iNaturalist	1	\N	\N	\N	\N	\N	1701	\N	iNaturalist	f
25.0783283	-77.356115	2023-07-01	Porcellio laevis	https://www.inaturalist.org/observations/170508231	https://www.inaturalist.org/observations/170508231	iNaturalist	1	\N	\N	\N	\N	\N	1702	\N	iNaturalist	f
25.7330167	-80.163619	2023-06-30	Sphaeromatidae	https://www.inaturalist.org/observations/170279184	https://www.inaturalist.org/observations/170279184	iNaturalist	1	\N	\N	\N	\N	\N	1703	\N	iNaturalist	f
25.6774867	-80.171120	2023-05-27	Ligia exotica	https://www.inaturalist.org/observations/164330088	https://www.inaturalist.org/observations/164330088	iNaturalist	1	\N	\N	\N	\N	\N	1711	\N	iNaturalist	f
23.1586917	-82.282717	2023-05-19	Porcellionides pruinosus	https://www.inaturalist.org/observations/163698750	https://www.inaturalist.org/observations/163698750	iNaturalist	1	\N	\N	\N	\N	\N	1712	\N	iNaturalist	f
25.6666250	-80.155578	2023-05-18	Ligia exotica	https://www.inaturalist.org/observations/162375054	https://www.inaturalist.org/observations/162375054	iNaturalist	1	\N	\N	\N	\N	\N	1713	\N	iNaturalist	f
19.9006996	-75.169212	2023-05-15	Cymothoida	https://www.inaturalist.org/observations/161983145	https://www.inaturalist.org/observations/161983145	iNaturalist	1	\N	\N	\N	\N	\N	1714	\N	iNaturalist	f
25.8989890	-81.715088	2023-05-11	Ligia	https://www.inaturalist.org/observations/161100884	https://www.inaturalist.org/observations/161100884	iNaturalist	1	\N	\N	\N	\N	\N	1715	\N	iNaturalist	f
27.7138050	-82.686913	2023-05-10	Atlantoscia floridana	https://www.inaturalist.org/observations/160914422	https://www.inaturalist.org/observations/160914422	iNaturalist	1	\N	\N	\N	\N	\N	1716	\N	iNaturalist	f
27.7100917	-82.689797	2023-05-08	Ligia exotica	https://www.inaturalist.org/observations/160656833	https://www.inaturalist.org/observations/160656833	iNaturalist	1	\N	\N	\N	\N	\N	1717	\N	iNaturalist	f
27.7149833	-82.684433	2023-05-08	Porcellio laevis	https://www.inaturalist.org/observations/160626429	https://www.inaturalist.org/observations/160626429	iNaturalist	1	\N	\N	\N	\N	\N	1718	\N	iNaturalist	f
27.9650833	-82.832542	2023-05-06	Ligia exotica	https://www.inaturalist.org/observations/160212656	https://www.inaturalist.org/observations/160212656	iNaturalist	1	\N	\N	\N	\N	\N	1719	\N	iNaturalist	f
17.9696917	-66.120505	2023-05-06	Cubaris murina	https://www.inaturalist.org/observations/160211577	https://www.inaturalist.org/observations/160211577	iNaturalist	1	\N	\N	\N	\N	\N	1720	\N	iNaturalist	f
25.6668602	-80.155724	2023-04-30	Ligia exotica	https://www.inaturalist.org/observations/160200928	https://www.inaturalist.org/observations/160200928	iNaturalist	1	\N	\N	\N	\N	\N	1721	\N	iNaturalist	f
25.7265179	-80.155350	2023-04-29	Ligia	https://www.inaturalist.org/observations/159651870	https://www.inaturalist.org/observations/159651870	iNaturalist	1	\N	\N	\N	\N	\N	1722	\N	iNaturalist	f
27.4384635	-82.683966	2023-05-01	Crinocheta	https://www.inaturalist.org/observations/158775929	https://www.inaturalist.org/observations/158775929	iNaturalist	1	\N	\N	\N	\N	\N	1723	\N	iNaturalist	f
27.4384540	-82.683876	2023-05-01	Armadillidiidae	https://www.inaturalist.org/observations/158767261	https://www.inaturalist.org/observations/158767261	iNaturalist	1	\N	\N	\N	\N	\N	1724	\N	iNaturalist	f
24.3585314	124.027250	2013-03-22	Cubaris	https://www.inaturalist.org/observations/191439983	https://inaturalist-open-data.s3.amazonaws.com/photos/335839484/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	402	\N	iNaturalist	f
27.0784590	-82.430554	2023-04-30	Ligia exotica	https://www.inaturalist.org/observations/158317871	https://www.inaturalist.org/observations/158317871	iNaturalist	1	\N	\N	\N	\N	\N	1725	\N	iNaturalist	f
27.6179250	-82.724487	2023-04-29	Armadillidium vulgare	https://www.inaturalist.org/observations/157623624	https://www.inaturalist.org/observations/157623624	iNaturalist	1	\N	\N	\N	\N	\N	1726	\N	iNaturalist	f
26.3642359	-80.076438	2021-03-09	Porcellionides pruinosus	https://www.inaturalist.org/observations/156273223	https://www.inaturalist.org/observations/156273223	iNaturalist	1	\N	\N	\N	\N	\N	1734	\N	iNaturalist	f
27.7111033	-82.691178	2023-04-18	Ligia exotica	https://www.inaturalist.org/observations/155697369	https://www.inaturalist.org/observations/155697369	iNaturalist	1	\N	\N	\N	\N	\N	1739	\N	iNaturalist	f
24.6556310	-81.278724	2023-03-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/155661610	https://www.inaturalist.org/observations/155661610	iNaturalist	1	\N	\N	\N	\N	\N	1740	\N	iNaturalist	f
27.7106818	-82.690761	2023-04-18	Bopyridae	https://www.inaturalist.org/observations/155555754	https://www.inaturalist.org/observations/155555754	iNaturalist	1	\N	\N	\N	\N	\N	1741	\N	iNaturalist	f
26.4745199	-81.968075	2023-04-13	Isopoda	https://www.inaturalist.org/observations/155462065	https://www.inaturalist.org/observations/155462065	iNaturalist	1	\N	\N	\N	\N	\N	1742	\N	iNaturalist	f
25.7677308	-80.131439	2023-04-17	Ligia exotica	https://www.inaturalist.org/observations/155360887	https://www.inaturalist.org/observations/155360887	iNaturalist	1	\N	\N	\N	\N	\N	1743	\N	iNaturalist	f
34.6528081	134.991489	2023-04-07	Ligia exotica	https://www.inaturalist.org/observations/155612776	https://inaturalist-open-data.s3.amazonaws.com/photos/269008382/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	600	\N	iNaturalist	f
27.7127450	-82.688142	2023-04-17	Atlantoscia floridana	https://www.inaturalist.org/observations/155326731	https://www.inaturalist.org/observations/155326731	iNaturalist	1	\N	\N	\N	\N	\N	1744	\N	iNaturalist	f
27.7348934	-82.597167	2023-04-14	Erichsonella	https://www.inaturalist.org/observations/154964786	https://www.inaturalist.org/observations/154964786	iNaturalist	1	\N	\N	\N	\N	\N	1748	\N	iNaturalist	f
27.7126702	-82.686620	2023-04-13	Atlantoscia floridana	https://www.inaturalist.org/observations/154756716	https://www.inaturalist.org/observations/154756716	iNaturalist	1	\N	\N	\N	\N	\N	1749	\N	iNaturalist	f
27.7160700	-82.687972	2023-04-13	Atlantoscia floridana	https://www.inaturalist.org/observations/154730820	https://www.inaturalist.org/observations/154730820	iNaturalist	1	\N	\N	\N	\N	\N	1750	\N	iNaturalist	f
26.9733590	-80.080864	2023-04-08	Ligia exotica	https://www.inaturalist.org/observations/154319785	https://www.inaturalist.org/observations/154319785	iNaturalist	1	\N	\N	\N	\N	\N	1751	\N	iNaturalist	f
27.8249257	-82.965273	2023-04-09	Paracerceis	https://www.inaturalist.org/observations/154221367	https://www.inaturalist.org/observations/154221367	iNaturalist	1	\N	\N	\N	\N	\N	1752	\N	iNaturalist	f
27.9729057	-82.865489	2023-04-09	Sphaeromatoidea	https://www.inaturalist.org/observations/154221160	https://www.inaturalist.org/observations/154221160	iNaturalist	1	\N	\N	\N	\N	\N	1753	\N	iNaturalist	f
27.9795417	-82.840207	2023-04-09	Sphaeromatoidea	https://www.inaturalist.org/observations/154221134	https://www.inaturalist.org/observations/154221134	iNaturalist	1	\N	\N	\N	\N	\N	1754	\N	iNaturalist	f
27.1130690	-82.469363	2023-04-09	Ligia exotica	https://www.inaturalist.org/observations/154112445	https://www.inaturalist.org/observations/154112445	iNaturalist	1	\N	\N	\N	\N	\N	1755	\N	iNaturalist	f
27.4385511	-82.683799	2022-12-21	Armadillidium vulgare	https://www.inaturalist.org/observations/153994923	https://www.inaturalist.org/observations/153994923	iNaturalist	1	\N	\N	\N	\N	\N	1756	\N	iNaturalist	f
26.8871083	-80.070564	2023-04-06	Ligia exotica	https://www.inaturalist.org/observations/153732827	https://www.inaturalist.org/observations/153732827	iNaturalist	1	\N	\N	\N	\N	\N	1757	\N	iNaturalist	f
27.1901932	-80.160499	2016-03-12	Ligia exotica	https://www.inaturalist.org/observations/153401113	https://www.inaturalist.org/observations/153401113	iNaturalist	1	\N	\N	\N	\N	\N	1758	\N	iNaturalist	f
25.1425517	-80.922802	2023-03-14	Ligia exotica	https://www.inaturalist.org/observations/152699319	https://www.inaturalist.org/observations/152699319	iNaturalist	1	\N	\N	\N	\N	\N	1759	\N	iNaturalist	f
27.7109117	-82.687355	2023-03-27	Armadillidium vulgare	https://www.inaturalist.org/observations/152572881	https://www.inaturalist.org/observations/152572881	iNaturalist	1	\N	\N	\N	\N	\N	1760	\N	iNaturalist	f
25.1728115	-80.896330	2023-03-23	Ligia exotica	https://www.inaturalist.org/observations/152202374	https://www.inaturalist.org/observations/152202374	iNaturalist	1	\N	\N	\N	\N	\N	1761	\N	iNaturalist	f
25.1727925	-80.896524	2023-03-23	Ligia exotica	https://www.inaturalist.org/observations/152202203	https://www.inaturalist.org/observations/152202203	iNaturalist	1	\N	\N	\N	\N	\N	1762	\N	iNaturalist	f
25.1739837	-80.904909	2023-03-23	Ligia exotica	https://www.inaturalist.org/observations/152201320	https://www.inaturalist.org/observations/152201320	iNaturalist	1	\N	\N	\N	\N	\N	1763	\N	iNaturalist	f
27.9046493	-82.850853	2023-03-22	Cleantioides	https://www.inaturalist.org/observations/152004453	https://www.inaturalist.org/observations/152004453	iNaturalist	1	\N	\N	\N	\N	\N	1764	\N	iNaturalist	f
28.4080989	-80.590483	2023-02-10	Ligia exotica	https://www.inaturalist.org/observations/151987998	https://www.inaturalist.org/observations/151987998	iNaturalist	1	\N	\N	\N	\N	\N	1766	\N	iNaturalist	f
22.4233330	-86.701667	1990-02-06	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	0	Yucatan Peninsula	268	traps	5.80–7.35	rectangular	2985	\N	\N	f
22.5066670	-91.128333	1990-02-02	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	41	Yucatan Peninsula	617–622	traps	5.80–7.35	rectangular	2988	\N	\N	f
22.3916670	-91.585833	1999-05-24	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	2	Yucatan Peninsula	359–370	traps	6–8.5	rectangular	2990	\N	\N	f
22.4650000	-91.340000	1999-05-26	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	2	Yucatan Peninsula	409–420	trawl net	6–8.5	\N	2992	\N	\N	f
22.4300000	-91.445000	1999-05-30	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	1	Yucatan Peninsula	496–500	trawl net	6–8.5	\N	2993	\N	\N	f
22.4083330	-91.550000	1999-05-30	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	4	Yucatan Peninsula	517–530	traps	6–8.5	rectangular	2994	\N	\N	f
22.4183330	-91.645833	1999-05-29	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	2	Yucatan Peninsula	521–525	trawl net	6–8.5	\N	2995	\N	\N	f
22.4233330	-91.495000	1999-05-22	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	12	Yucatan Peninsula	540	traps	6–8.5	rectangular	2996	\N	\N	f
22.4400000	-91.421667	1999-05-28	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	1	Yucatan Peninsula	540–580	trawl net	6–8.5	\N	2997	\N	\N	f
22.4150000	-91.556667	1999-05-23	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	17	Yucatan Peninsula	587–593	trawl net	6–8.5	\N	3000	\N	\N	f
22.4300000	-91.600000	1999-05-26	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	88	Yucatan Peninsula	634–712	traps	6–8.5	rectangular	3001	\N	\N	f
22.4783330	-91.723333	1999-05-29	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	1	Yucatan Peninsula	1048–1050	traps	6–8.5	rectangular	3002	\N	\N	f
23.3600000	-89.840000	1990-09-18	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	0	Yucatan Peninsula	283	traps	6.75–8.9	rectangular	3003	\N	\N	f
22.5266670	-86.850000	1990-09-21	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	0	Yucatan Peninsula	287–289	traps	6.75–8.9	rectangular	3004	\N	\N	f
23.4233330	-89.760000	1990-09-19	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	0	Yucatan Peninsula	300	traps	6.75–8.9	rectangular	3005	\N	\N	f
25.7190990	-80.149247	2024-01-01	Anadenobolus monilicornis		\N	GBIF	1	\N	\N	\N	\N	\N	2418	\N	GBIF	f
27.4338870	-82.681313	2024-01-01	Lymire edwardsii		\N	GBIF	1	\N	\N	\N	\N	\N	2445	\N	GBIF	f
26.2000000	-79.516667	1964-04-05	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	641	\N	\N	\N	2684	HUMAN_OBSERVATION	GBIF	f
40.2213178	141.815633	2024-05-05	Bathynomus doederleini	https://www.inaturalist.org/observations/215128720	https://inaturalist-open-data.s3.amazonaws.com/photos/380310319/medium.jpeg		1	\N	\N	\N	\N	\N	238	NA NA	iNaturalist	f
33.5759968	126.995833	2023-04-18	Ligia exotica	https://www.inaturalist.org/observations/155560373	https://inaturalist-open-data.s3.amazonaws.com/photos/268915985/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	601	\N	iNaturalist	f
26.9236314	-82.035904	2024-01-16	Porcellionides pruinosus	https://www.inaturalist.org/observations/196873817	https://www.inaturalist.org/observations/196873817	iNaturalist	1	\N	\N	\N	\N	\N	1581	\N	iNaturalist	f
26.9238645	-82.036137	2024-01-16	Porcellionides pruinosus	https://www.inaturalist.org/observations/196873704	https://www.inaturalist.org/observations/196873704	iNaturalist	1	\N	\N	\N	\N	\N	1582	\N	iNaturalist	f
26.9308098	-82.035435	2024-01-16	Porcellio laevis	https://www.inaturalist.org/observations/196873184	https://www.inaturalist.org/observations/196873184	iNaturalist	1	\N	\N	\N	\N	\N	1583	\N	iNaturalist	f
32.7340413	132.986690	2023-04-15	Armadillidae	https://www.inaturalist.org/observations/155464811	https://inaturalist-open-data.s3.amazonaws.com/photos/268728641/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	602	\N	iNaturalist	f
26.6940000	127.982138	2023-04-17	Ligia ryukyuensis	https://www.inaturalist.org/observations/155313428	https://inaturalist-open-data.s3.amazonaws.com/photos/268457402/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	603	\N	iNaturalist	f
25.1379950	-80.930184	2023-03-16	Ligia	https://www.inaturalist.org/observations/151280220	https://www.inaturalist.org/observations/151280220	iNaturalist	1	\N	\N	\N	\N	\N	1777	\N	iNaturalist	f
22.3550000	-86.455000	1990-09-22	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	18	Yucatan Peninsula	433	traps	6.75–8.9	rectangular	3006	\N	\N	f
21.9483330	-86.408333	1990-09-23	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	72	Yucatan Peninsula	470–472	traps	6.75–8.9	rectangular	3007	\N	\N	f
20.2366670	-92.260000	1990-09-15	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	32	Yucatan Peninsula	590–591	traps	6.75–8.9	rectangular	3008	\N	\N	f
20.6700000	-92.468333	1990-09-16	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	47	Yucatan Peninsula	640	traps	6.75–8.9	rectangular	3009	\N	\N	f
24.2166670	-81.466667	1964-04-03	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7915179	\N	\N	1	\N	\N	\N	\N	\N	2685	PRESERVED_SPECIMEN	GBIF	f
25.6500000	-79.533333	1964-08-24	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	830	\N	\N	\N	2686	HUMAN_OBSERVATION	GBIF	f
23.9000000	-81.350000	1964-12-01	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	1135	\N	\N	\N	2689	HUMAN_OBSERVATION	GBIF	f
23.9000000	-82.350000	1964-12-01	Bathynomus giganteus	\N	\N	\N	1	\N	1159.5	\N	\N	\N	2690	PRESERVED_SPECIMEN	GBIF	f
7.7666670	-54.000000	1963-03-23	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7920614	\N	\N	1	\N	\N	\N	\N	\N	3265	PRESERVED_SPECIMEN	GBIF	f
34.2505715	139.353400	2023-03-31	Ligia	https://www.inaturalist.org/observations/154786509	https://inaturalist-open-data.s3.amazonaws.com/photos/267483567/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	604	\N	iNaturalist	f
38.5323915	141.535465	2023-04-11	Ligia exotica	https://www.inaturalist.org/observations/154710202	https://inaturalist-open-data.s3.amazonaws.com/photos/267347930/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	605	\N	iNaturalist	f
38.7089575	141.535162	2023-04-10	Ligia	https://www.inaturalist.org/observations/154707174	https://inaturalist-open-data.s3.amazonaws.com/photos/267342614/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	606	\N	iNaturalist	f
34.1097965	139.558933	2023-03-31	Armadillidium vulgare	https://www.inaturalist.org/observations/154509078	https://static.inaturalist.org/photos/266977953/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	607	\N	iNaturalist	f
34.3925450	134.051405	2023-03-27	Armadillidium vulgare	https://www.inaturalist.org/observations/153128174	https://inaturalist-open-data.s3.amazonaws.com/photos/264436556/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	608	\N	iNaturalist	f
24.8271109	125.160895	2012-03-07	Porcellionidae	https://www.inaturalist.org/observations/152522830	https://inaturalist-open-data.s3.amazonaws.com/photos/263297247/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	609	\N	iNaturalist	f
34.6565770	138.924952	2023-03-21	Ligia exotica	https://www.inaturalist.org/observations/152486225	https://inaturalist-open-data.s3.amazonaws.com/photos/263242689/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	610	\N	iNaturalist	f
18.4520961	-66.114757	2022-10-14	Isopoda	https://www.inaturalist.org/observations/138753901	https://www.inaturalist.org/observations/138753901	iNaturalist	1	\N	\N	\N	\N	\N	1871	\N	iNaturalist	f
24.6457945	-81.328223	2023-03-21	Isopoda	https://www.inaturalist.org/observations/151898386	https://www.inaturalist.org/observations/151898386	iNaturalist	1	\N	\N	\N	\N	\N	1767	\N	iNaturalist	f
28.4575000	-86.849500	1987-04-23	Bathynomus giganteus	\N	\N	\N	1	\N	800	\N	\N	\N	3162	PRESERVED_SPECIMEN	GBIF	f
24.3500000	-83.600000	1963-08-07	Bathynomus giganteus	\N	\N	\N	1	\N	731.5	\N	\N	\N	2692	PRESERVED_SPECIMEN	GBIF	f
12.6200000	-70.750000	1963-09-26	Bathynomus giganteus	\N	\N	\N	1	\N	97	\N	\N	\N	3267	PRESERVED_SPECIMEN	GBIF	f
19.2139000	-63.947200	1963-10-16	Bathynomus giganteus	\N	\N	\N	1	\N	1243.5	\N	\N	\N	3268	PRESERVED_SPECIMEN	GBIF	f
11.8200000	-69.400000	1963-10-03	Bathynomus giganteus	\N	\N	\N	1	\N	549	\N	\N	\N	3269	PRESERVED_SPECIMEN	GBIF	f
12.0300000	-69.350000	1963-10-03	Bathynomus giganteus	\N	\N	\N	1	\N	823	\N	\N	\N	3270	PRESERVED_SPECIMEN	GBIF	f
24.4667000	-83.550000	1963-11-22	Bathynomus giganteus	\N	\N	\N	1	\N	384	\N	\N	\N	2695	PRESERVED_SPECIMEN	GBIF	f
17.6700000	-77.920000	1962-05-16	Bathynomus giganteus	\N	\N	\N	1	\N	530	\N	\N	\N	2696	PRESERVED_SPECIMEN	GBIF	f
17.7000000	-77.880000	1962-05-16	Bathynomus giganteus	\N	\N	\N	1	\N	576	\N	\N	\N	2697	PRESERVED_SPECIMEN	GBIF	f
36.4830000	-74.800000	1962-05-30	Bathynomus giganteus	\N	\N	\N	1	\N	73	\N	\N	\N	3271	PRESERVED_SPECIMEN	GBIF	f
29.0083300	-88.366667	1962-07-30	Bathynomus giganteus	http://www.sciencedirect.com/science/article/pii/S0967063703000360	\N	McClain CR, Balk MA, Benfield MC, Branch TA, Chen C, Cosgrove J, Dove ADM, Gaskins LC, Helm R, Hochberg FG, Lee FB, Marshall A, McMurray SE, Schanche C, Stone SN, Thaler AD (2015) Sizing ocean giants: patterns of intraspecific size variation in marine megafauna. Peer J 3: e715. http://dx.doi.org/10.7717/peerj.715	1	\N	728	\N	\N	\N	3272	HUMAN_OBSERVATION	GBIF	f
29.1750000	-87.930000	1962-07-26	Bathynomus giganteus	\N	\N	\N	1	\N	667.5	\N	\N	\N	3274	PRESERVED_SPECIMEN	GBIF	f
24.2200000	-83.370000	1962-12-14	Bathynomus giganteus	\N	\N	\N	1	\N	732	\N	\N	\N	2698	PRESERVED_SPECIMEN	GBIF	f
34.6912450	139.416931	2023-03-21	Armadillidium vulgare	https://www.inaturalist.org/observations/151828444	https://inaturalist-open-data.s3.amazonaws.com/photos/262029098/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	611	\N	iNaturalist	f
34.6958200	139.413017	2023-03-21	Armadillidium vulgare	https://www.inaturalist.org/observations/151826868	https://inaturalist-open-data.s3.amazonaws.com/photos/262026113/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	612	\N	iNaturalist	f
34.6959465	139.413161	2023-03-21	Armadillidium vulgare	https://www.inaturalist.org/observations/151826180	https://inaturalist-open-data.s3.amazonaws.com/photos/262024713/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	613	\N	iNaturalist	f
35.0441430	139.760290	2011-06-27	Tylos granuliferus	https://www.inaturalist.org/observations/151588731	https://inaturalist-open-data.s3.amazonaws.com/photos/261577587/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	616	\N	iNaturalist	f
36.6699588	126.394460	2023-03-11	Porcellionides pruinosus	https://www.inaturalist.org/observations/150772684	https://static.inaturalist.org/photos/260043355/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	617	\N	iNaturalist	f
26.3599633	127.738995	2012-04-08	Zeuxokoma	https://www.inaturalist.org/observations/149610589	https://static.inaturalist.org/photos/257830675/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	618	\N	iNaturalist	f
26.4448128	127.772160	2012-09-05	Isopoda	https://www.inaturalist.org/observations/149594473	https://static.inaturalist.org/photos/257800533/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	619	\N	iNaturalist	f
21.8109472	-72.128989	2023-03-16	Ligia	https://www.inaturalist.org/observations/151892152	https://www.inaturalist.org/observations/151892152	iNaturalist	1	\N	\N	\N	\N	\N	1768	\N	iNaturalist	f
27.5342783	-80.356238	2023-03-21	Ligia exotica	https://www.inaturalist.org/observations/151840346	https://www.inaturalist.org/observations/151840346	iNaturalist	1	\N	\N	\N	\N	\N	1769	\N	iNaturalist	f
25.6686705	-80.158220	2010-05-09	Porcellio laevis	https://www.inaturalist.org/observations/151736521	https://www.inaturalist.org/observations/151736521	iNaturalist	1	\N	\N	\N	\N	\N	1770	\N	iNaturalist	f
25.6665298	-80.155561	2007-12-18	Ligia exotica	https://www.inaturalist.org/observations/151736519	https://www.inaturalist.org/observations/151736519	iNaturalist	1	\N	\N	\N	\N	\N	1771	\N	iNaturalist	f
27.4536300	-82.688767	2023-03-18	Ligia exotica	https://www.inaturalist.org/observations/151484062	https://www.inaturalist.org/observations/151484062	iNaturalist	1	\N	\N	\N	\N	\N	1772	\N	iNaturalist	f
24.7486739	-80.978967	2023-03-16	Ligia exotica	https://www.inaturalist.org/observations/151303767	https://www.inaturalist.org/observations/151303767	iNaturalist	1	\N	\N	\N	\N	\N	1773	\N	iNaturalist	f
19.3752739	-81.420182	2023-03-11	Paracerceis	https://www.inaturalist.org/observations/151290619	https://www.inaturalist.org/observations/151290619	iNaturalist	1	\N	\N	\N	\N	\N	1774	\N	iNaturalist	f
33.4984745	126.531188	2023-11-17	Ligia exotica	https://www.inaturalist.org/observations/191289013	https://static.inaturalist.org/photos/335539382/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	403	\N	iNaturalist	f
26.6833253	127.270072	2013-03-17	Cymothoidae	https://www.inaturalist.org/observations/191269294	https://inaturalist-open-data.s3.amazonaws.com/photos/335500113/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	404	\N	iNaturalist	f
35.1122106	126.090734	2023-11-15	Idoteidae	https://www.inaturalist.org/observations/191086894	https://inaturalist-open-data.s3.amazonaws.com/photos/335136050/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	405	\N	iNaturalist	f
26.4406528	127.316256	2013-03-12	Armadillidae	https://www.inaturalist.org/observations/191011826	https://inaturalist-open-data.s3.amazonaws.com/photos/334979105/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	406	\N	iNaturalist	f
24.4369721	123.776804	2023-04-23	Ligia	https://www.inaturalist.org/observations/190890991	https://static.inaturalist.org/photos/334742687/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	407	\N	iNaturalist	f
24.4614383	124.143467	2023-04-19	Ligia	https://www.inaturalist.org/observations/190811373	https://static.inaturalist.org/photos/334585490/medium.png	iNaturalist	1	\N	\N	\N	\N	\N	408	\N	iNaturalist	f
35.1203968	139.668791	2013-02-25	Ligia exotica	https://www.inaturalist.org/observations/190632806	https://inaturalist-open-data.s3.amazonaws.com/photos/334214909/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	409	\N	iNaturalist	f
35.1588287	129.170425	2023-10-29	Ligia exotica	https://www.inaturalist.org/observations/189314848	https://inaturalist-open-data.s3.amazonaws.com/photos/331601020/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	410	\N	iNaturalist	f
25.1379970	-80.931089	2023-03-16	Ligia	https://www.inaturalist.org/observations/151280184	https://www.inaturalist.org/observations/151280184	iNaturalist	1	\N	\N	\N	\N	\N	1778	\N	iNaturalist	f
25.1746317	-80.903437	2023-03-11	Ligia exotica	https://www.inaturalist.org/observations/151086082	https://www.inaturalist.org/observations/151086082	iNaturalist	1	\N	\N	\N	\N	\N	1779	\N	iNaturalist	f
25.1375222	-80.951813	2023-03-11	Ligia exotica	https://www.inaturalist.org/observations/150870635	https://www.inaturalist.org/observations/150870635	iNaturalist	1	\N	\N	\N	\N	\N	1780	\N	iNaturalist	f
27.7145867	-82.681892	2023-03-11	Armadillidium vulgare	https://www.inaturalist.org/observations/150863865	https://www.inaturalist.org/observations/150863865	iNaturalist	1	\N	\N	\N	\N	\N	1781	\N	iNaturalist	f
24.7562429	-80.957696	2023-03-08	Ligia	https://www.inaturalist.org/observations/150617341	https://www.inaturalist.org/observations/150617341	iNaturalist	1	\N	\N	\N	\N	\N	1782	\N	iNaturalist	f
24.1174590	-74.464032	2023-03-08	Porcellionidae	https://www.inaturalist.org/observations/150581058	https://www.inaturalist.org/observations/150581058	iNaturalist	1	\N	\N	\N	\N	\N	1783	\N	iNaturalist	f
25.0082333	-80.516005	2023-03-07	Ligia exotica	https://www.inaturalist.org/observations/150569467	https://www.inaturalist.org/observations/150569467	iNaturalist	1	\N	\N	\N	\N	\N	1784	\N	iNaturalist	f
26.1775585	-80.098165	2021-11-27	Cubaris murina	https://www.inaturalist.org/observations/102956604	https://www.inaturalist.org/observations/102956604	iNaturalist	1	\N	\N	\N	\N	\N	2118	\N	iNaturalist	f
26.1780520	-80.096573	2021-11-25	Porcellionides	https://www.inaturalist.org/observations/102950255	https://www.inaturalist.org/observations/102950255	iNaturalist	1	\N	\N	\N	\N	\N	2119	\N	iNaturalist	f
42.6136360	131.139208	2005-09-23	Ligia cinerascens	https://www.inaturalist.org/observations/149152111	https://inaturalist-open-data.s3.amazonaws.com/photos/256968845/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	620	\N	iNaturalist	f
35.5481117	135.356338	2023-02-11	Asellus hilgendorfii	https://www.inaturalist.org/observations/148691866	https://inaturalist-open-data.s3.amazonaws.com/photos/256104050/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	621	\N	iNaturalist	f
27.0687000	142.204752	2023-01-23	Spherillo russoi	https://www.inaturalist.org/observations/148254497	https://static.inaturalist.org/photos/255266095/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	622	\N	iNaturalist	f
35.5145683	133.496370	2022-11-25	Ligia	https://www.inaturalist.org/observations/147610181	https://inaturalist-open-data.s3.amazonaws.com/photos/254028042/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	623	\N	iNaturalist	f
35.5633133	135.401028	2023-01-22	Stenosoma	https://www.inaturalist.org/observations/147182399	https://inaturalist-open-data.s3.amazonaws.com/photos/253214779/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	624	\N	iNaturalist	f
35.5634633	135.400938	2023-01-22	Sphaeromatidae	https://www.inaturalist.org/observations/147182275	https://inaturalist-open-data.s3.amazonaws.com/photos/253214489/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	625	\N	iNaturalist	f
28.4064929	-80.591704	2023-03-04	Ligia exotica	https://www.inaturalist.org/observations/150508663	https://www.inaturalist.org/observations/150508663	iNaturalist	1	\N	\N	\N	\N	\N	1785	\N	iNaturalist	f
28.4076060	-80.591487	2023-03-04	Ligia exotica	https://www.inaturalist.org/observations/150337721	https://www.inaturalist.org/observations/150337721	iNaturalist	1	\N	\N	\N	\N	\N	1786	\N	iNaturalist	f
27.7147316	-82.686474	2023-02-27	Armadillidium vulgare	https://www.inaturalist.org/observations/149833542	https://www.inaturalist.org/observations/149833542	iNaturalist	1	\N	\N	\N	\N	\N	1788	\N	iNaturalist	f
27.7630612	-82.635595	2023-02-15	Armadillidium vulgare	https://www.inaturalist.org/observations/149743646	https://www.inaturalist.org/observations/149743646	iNaturalist	1	\N	\N	\N	\N	\N	1789	\N	iNaturalist	f
19.8932699	-75.141073	2023-02-23	Anilocra brillae	https://www.inaturalist.org/observations/149518026	https://www.inaturalist.org/observations/149518026	iNaturalist	1	\N	\N	\N	\N	\N	1790	\N	iNaturalist	f
25.1723867	-80.893280	2023-02-18	Ligia exotica	https://www.inaturalist.org/observations/149248389	https://www.inaturalist.org/observations/149248389	iNaturalist	1	\N	\N	\N	\N	\N	1791	\N	iNaturalist	f
27.8755503	-82.913562	2023-02-10	Sphaeroma walkeri	https://www.inaturalist.org/observations/149008138	https://www.inaturalist.org/observations/149008138	iNaturalist	1	\N	\N	\N	\N	\N	1792	\N	iNaturalist	f
27.8569666	-82.551290	2023-02-13	Atlantoscia floridana	https://www.inaturalist.org/observations/148707652	https://www.inaturalist.org/observations/148707652	iNaturalist	1	\N	\N	\N	\N	\N	1793	\N	iNaturalist	f
24.6660974	-81.009039	2023-02-13	Agabiformius lentus	https://www.inaturalist.org/observations/148700798	https://www.inaturalist.org/observations/148700798	iNaturalist	1	\N	\N	\N	\N	\N	1794	\N	iNaturalist	f
28.4084940	-80.592202	2023-02-10	Ligia	https://www.inaturalist.org/observations/148556694	https://www.inaturalist.org/observations/148556694	iNaturalist	1	\N	\N	\N	\N	\N	1795	\N	iNaturalist	f
25.7285787	-80.156446	2023-02-08	Ligia exotica	https://www.inaturalist.org/observations/148362376	https://www.inaturalist.org/observations/148362376	iNaturalist	1	\N	\N	\N	\N	\N	1796	\N	iNaturalist	f
25.7162650	-80.150818	2023-02-08	Atlantoscia floridana	https://www.inaturalist.org/observations/148360138	https://www.inaturalist.org/observations/148360138	iNaturalist	1	\N	\N	\N	\N	\N	1797	\N	iNaturalist	f
18.4580551	-66.081298	2023-02-02	Sphaeromatidae	https://www.inaturalist.org/observations/147946850	https://www.inaturalist.org/observations/147946850	iNaturalist	1	\N	\N	\N	\N	\N	1798	\N	iNaturalist	f
22.5457834	-78.425971	2023-01-28	Porcellionides pruinosus	https://www.inaturalist.org/observations/147931860	https://www.inaturalist.org/observations/147931860	iNaturalist	1	\N	\N	\N	\N	\N	1799	\N	iNaturalist	f
36.6699402	126.394665	2023-10-26	Porcellionides pruinosus	https://www.inaturalist.org/observations/188984844	https://static.inaturalist.org/photos/330932287/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	411	\N	iNaturalist	f
42.9446994	131.870811	2023-09-27	Ligia cinerascens	https://www.inaturalist.org/observations/187870319	https://inaturalist-open-data.s3.amazonaws.com/photos/328649823/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	412	\N	iNaturalist	f
34.6795222	138.945146	2023-10-17	Porcellionides floria	https://www.inaturalist.org/observations/187847178	https://inaturalist-open-data.s3.amazonaws.com/photos/328603934/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	413	\N	iNaturalist	f
25.6772250	-80.158019	2022-10-14	Crinocheta	https://www.inaturalist.org/observations/138773658	https://www.inaturalist.org/observations/138773658	iNaturalist	1	\N	\N	\N	\N	\N	1870	\N	iNaturalist	f
27.4110403	128.636732	2023-10-14	Ligia exotica	https://www.inaturalist.org/observations/187549900	https://inaturalist-open-data.s3.amazonaws.com/photos/328010061/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	414	\N	iNaturalist	f
34.4440863	133.989627	2023-10-11	Ligia	https://www.inaturalist.org/observations/187351869	https://inaturalist-open-data.s3.amazonaws.com/photos/327621920/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	415	\N	iNaturalist	f
35.3572555	139.709121	2022-11-05	Armadillidium nasatum	https://www.inaturalist.org/observations/146464911	https://inaturalist-open-data.s3.amazonaws.com/photos/251815854/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	626	\N	iNaturalist	f
35.2840349	139.662246	2020-09-24	Ligia	https://www.inaturalist.org/observations/144140658	https://static.inaturalist.org/photos/247333840/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	627	\N	iNaturalist	f
35.5111300	133.495126	2022-11-25	Ligia exotica	https://www.inaturalist.org/observations/142825110	https://inaturalist-open-data.s3.amazonaws.com/photos/244933321/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	628	\N	iNaturalist	f
34.6146210	138.821916	2022-11-12	Ligia exotica	https://www.inaturalist.org/observations/142210829	https://inaturalist-open-data.s3.amazonaws.com/photos/243778215/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	629	\N	iNaturalist	f
26.4363082	127.949910	2022-11-13	Nagurus	https://www.inaturalist.org/observations/141891157	https://static.inaturalist.org/photos/243175615/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	630	\N	iNaturalist	f
44.4319242	141.417436	2017-07-13	Porcellio scaber	https://www.inaturalist.org/observations/141072026	https://inaturalist-open-data.s3.amazonaws.com/photos/241585122/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	631	\N	iNaturalist	f
35.4414294	132.708327	2013-08-15	Ligia	https://www.inaturalist.org/observations/140879547	https://inaturalist-open-data.s3.amazonaws.com/photos/241215549/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	632	\N	iNaturalist	f
33.5253033	126.861947	2021-11-01	Ligia	https://www.inaturalist.org/observations/138663465	https://static.inaturalist.org/photos/237046026/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	633	\N	iNaturalist	f
29.4166749	122.195545	2022-09-18	Ligia exotica	https://www.inaturalist.org/observations/136885004	https://inaturalist-open-data.s3.amazonaws.com/photos/233690909/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	634	\N	iNaturalist	f
44.0264801	145.861531	2022-09-25	Porcellio scaber	https://www.inaturalist.org/observations/136348418	https://inaturalist-open-data.s3.amazonaws.com/photos/232805263/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	635	\N	iNaturalist	f
35.5610375	135.556614	2021-05-16	Armadillidium vulgare	https://www.inaturalist.org/observations/136267878	https://inaturalist-open-data.s3.amazonaws.com/photos/232541585/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	636	\N	iNaturalist	f
34.7457617	127.765900	2021-10-10	Ligia	https://www.inaturalist.org/observations/135670307	https://inaturalist-open-data.s3.amazonaws.com/photos/231432951/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	637	\N	iNaturalist	f
27.0736220	142.190660	2022-09-12	Ligia	https://www.inaturalist.org/observations/135180217	https://inaturalist-open-data.s3.amazonaws.com/photos/230524971/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	639	\N	iNaturalist	f
35.4781133	129.431122	2022-09-06	Ligia exotica	https://www.inaturalist.org/observations/134158851	https://inaturalist-open-data.s3.amazonaws.com/photos/228634752/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	640	\N	iNaturalist	f
35.0837320	128.904145	2022-08-06	Ligia exotica	https://www.inaturalist.org/observations/129679056	https://inaturalist-open-data.s3.amazonaws.com/photos/220413998/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	648	\N	iNaturalist	f
36.6747781	126.067445	2022-08-05	Armadillidium	https://www.inaturalist.org/observations/129495023	https://static.inaturalist.org/photos/220071032/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	649	\N	iNaturalist	f
42.9379974	131.841761	2022-07-29	Ligia cinerascens	https://www.inaturalist.org/observations/128953400	https://inaturalist-open-data.s3.amazonaws.com/photos/219087204/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	650	\N	iNaturalist	f
42.9456533	131.871400	2020-07-19	Ligia cinerascens	https://www.inaturalist.org/observations/127208156	https://static.inaturalist.org/photos/215935987/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	651	\N	iNaturalist	f
30.1968229	122.684981	2022-06-19	Ligia exotica	https://www.inaturalist.org/observations/125445108	https://inaturalist-open-data.s3.amazonaws.com/photos/212723138/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	652	\N	iNaturalist	f
33.3947665	126.239014	2022-06-30	Ligia exotica	https://www.inaturalist.org/observations/125347276	https://inaturalist-open-data.s3.amazonaws.com/photos/212559784/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	653	\N	iNaturalist	f
42.9484217	131.874680	2022-07-07	Ligia cinerascens	https://www.inaturalist.org/observations/125133530	https://inaturalist-open-data.s3.amazonaws.com/photos/212181722/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	655	\N	iNaturalist	f
26.3692999	126.733559	2022-06-23	Ligia	https://www.inaturalist.org/observations/125032318	https://inaturalist-open-data.s3.amazonaws.com/photos/211987548/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	656	\N	iNaturalist	f
43.0237064	131.896379	2022-07-03	Ligia cinerascens	https://www.inaturalist.org/observations/124518690	https://inaturalist-open-data.s3.amazonaws.com/photos/211065447/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	657	\N	iNaturalist	f
42.9487200	131.874987	2022-06-26	Ligia cinerascens	https://www.inaturalist.org/observations/124085052	https://inaturalist-open-data.s3.amazonaws.com/photos/210285816/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	658	\N	iNaturalist	f
33.9880806	133.322223	2022-06-04	Ligia exotica	https://www.inaturalist.org/observations/124071227	https://inaturalist-open-data.s3.amazonaws.com/photos/210260666/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	659	\N	iNaturalist	f
42.7479306	132.837564	2022-06-25	Tylos granuliferus	https://www.inaturalist.org/observations/123329429	https://static.inaturalist.org/photos/208918538/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	660	\N	iNaturalist	f
36.6296409	126.378907	2022-06-18	Armadillidium	https://www.inaturalist.org/observations/122267177	https://static.inaturalist.org/photos/206996149/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	662	\N	iNaturalist	f
35.1420790	139.156272	2022-05-22	Ligia exotica	https://www.inaturalist.org/observations/121866283	https://inaturalist-open-data.s3.amazonaws.com/photos/206272142/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	663	\N	iNaturalist	f
33.9523201	132.283508	2022-06-10	Ligia	https://www.inaturalist.org/observations/121396800	https://inaturalist-open-data.s3.amazonaws.com/photos/205421224/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	664	\N	iNaturalist	f
6.8096670	-52.492001	2014-08-03	Bathynomus giganteus	\N	\N	\N	1	\N	499	\N	\N	\N	2791	PRESERVED_SPECIMEN	GBIF	f
7.1458330	-53.088501	2014-08-01	Bathynomus giganteus	\N	\N	\N	1	\N	300.5	\N	\N	\N	2792	PRESERVED_SPECIMEN	GBIF	f
6.9433330	-52.558998	2014-08-09	Bathynomus giganteus	\N	\N	\N	1	\N	600.5	\N	\N	\N	2793	PRESERVED_SPECIMEN	GBIF	f
24.9827000	-77.556400	2022-07-29	Bathynomus apothecarus	\N	\N	BTW expedition	1	\N	720	traps	\N	Eel	2893	\N	\N	f
35.2277414	132.512551	2022-06-10	Asellidae	https://www.inaturalist.org/observations/121057296	https://static.inaturalist.org/photos/204817707/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	666	\N	iNaturalist	f
29.9847083	122.376658	2023-10-04	Armadillidium	https://www.inaturalist.org/observations/186389662	https://inaturalist-open-data.s3.amazonaws.com/photos/325723617/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	416	\N	iNaturalist	f
22.5423777	-78.426195	2023-01-26	Cubaris murina	https://www.inaturalist.org/observations/147931792	https://www.inaturalist.org/observations/147931792	iNaturalist	1	\N	\N	\N	\N	\N	1800	\N	iNaturalist	f
22.5473052	-78.426116	2023-01-26	Porcellionides pruinosus	https://www.inaturalist.org/observations/147927543	https://www.inaturalist.org/observations/147927543	iNaturalist	1	\N	\N	\N	\N	\N	1801	\N	iNaturalist	f
19.8929876	-75.166043	2023-02-01	Anilocra	https://www.inaturalist.org/observations/147860810	https://www.inaturalist.org/observations/147860810	iNaturalist	1	\N	\N	\N	\N	\N	1802	\N	iNaturalist	f
28.3049417	-80.608375	2023-01-31	Armadillidium vulgare	https://www.inaturalist.org/observations/147804843	https://www.inaturalist.org/observations/147804843	iNaturalist	1	\N	\N	\N	\N	\N	1803	\N	iNaturalist	f
27.0901617	-80.127188	2023-01-28	Cubaris murina	https://www.inaturalist.org/observations/147577293	https://www.inaturalist.org/observations/147577293	iNaturalist	1	\N	\N	\N	\N	\N	1805	\N	iNaturalist	f
27.4954204	-80.303680	2023-01-28	Sphaeroma walkeri	https://www.inaturalist.org/observations/147563414	https://www.inaturalist.org/observations/147563414	iNaturalist	1	\N	\N	\N	\N	\N	1806	\N	iNaturalist	f
27.4954498	-80.303664	2023-01-28	Paradella dianae	https://www.inaturalist.org/observations/147563412	https://www.inaturalist.org/observations/147563412	iNaturalist	1	\N	\N	\N	\N	\N	1807	\N	iNaturalist	f
28.4081594	-80.589785	2023-01-24	Ligia	https://www.inaturalist.org/observations/147301946	https://www.inaturalist.org/observations/147301946	iNaturalist	1	\N	\N	\N	\N	\N	1808	\N	iNaturalist	f
25.6747249	-80.160083	2023-01-22	Cubaris murina	https://www.inaturalist.org/observations/147151561	https://www.inaturalist.org/observations/147151561	iNaturalist	1	\N	\N	\N	\N	\N	1809	\N	iNaturalist	f
27.1052157	-82.461607	2023-01-21	Cymothooidea	https://www.inaturalist.org/observations/147019725	https://www.inaturalist.org/observations/147019725	iNaturalist	1	\N	\N	\N	\N	\N	1810	\N	iNaturalist	f
26.5421467	-80.046197	2023-01-19	Ligia exotica	https://www.inaturalist.org/observations/146905472	https://www.inaturalist.org/observations/146905472	iNaturalist	1	\N	\N	\N	\N	\N	1811	\N	iNaturalist	f
27.7107750	-82.690842	2023-01-19	Ligia exotica	https://www.inaturalist.org/observations/146896690	https://www.inaturalist.org/observations/146896690	iNaturalist	1	\N	\N	\N	\N	\N	1812	\N	iNaturalist	f
27.8022301	-82.596781	2023-01-15	Sphaeromatidae	https://www.inaturalist.org/observations/146638899	https://www.inaturalist.org/observations/146638899	iNaturalist	1	\N	\N	\N	\N	\N	1813	\N	iNaturalist	f
27.8013792	-82.596790	2023-01-15	Erichsonella	https://www.inaturalist.org/observations/146638841	https://www.inaturalist.org/observations/146638841	iNaturalist	1	\N	\N	\N	\N	\N	1814	\N	iNaturalist	f
25.1403167	-80.976045	2023-01-08	Ligia exotica	https://www.inaturalist.org/observations/146489861	https://www.inaturalist.org/observations/146489861	iNaturalist	1	\N	\N	\N	\N	\N	1815	\N	iNaturalist	f
25.9627482	-80.096508	2023-01-06	Porcellionides pruinosus	https://www.inaturalist.org/observations/146020590	https://www.inaturalist.org/observations/146020590	iNaturalist	1	\N	\N	\N	\N	\N	1816	\N	iNaturalist	f
25.8838177	-80.108637	2023-01-06	Porcellionides pruinosus	https://www.inaturalist.org/observations/145982675	https://www.inaturalist.org/observations/145982675	iNaturalist	1	\N	\N	\N	\N	\N	1817	\N	iNaturalist	f
26.5486333	-80.041965	2023-01-01	Porcellionides pruinosus	https://www.inaturalist.org/observations/145605753	https://www.inaturalist.org/observations/145605753	iNaturalist	1	\N	\N	\N	\N	\N	1819	\N	iNaturalist	f
28.4082022	-80.590700	2023-01-01	Ligia exotica	https://www.inaturalist.org/observations/145585025	https://www.inaturalist.org/observations/145585025	iNaturalist	1	\N	\N	\N	\N	\N	1820	\N	iNaturalist	f
26.5186783	-81.996308	2022-12-31	Ligia exotica	https://www.inaturalist.org/observations/145524487	https://www.inaturalist.org/observations/145524487	iNaturalist	1	\N	\N	\N	\N	\N	1821	\N	iNaturalist	f
24.8978281	-80.720626	2022-12-28	Cymothoa exigua	https://www.inaturalist.org/observations/145443437	https://www.inaturalist.org/observations/145443437	iNaturalist	1	\N	\N	\N	\N	\N	1822	\N	iNaturalist	f
17.9464249	-76.726410	2022-12-26	Ligia exotica	https://www.inaturalist.org/observations/145106364	https://www.inaturalist.org/observations/145106364	iNaturalist	1	\N	\N	\N	\N	\N	1823	\N	iNaturalist	f
29.9796944	122.389442	2023-10-04	Ligia exotica	https://www.inaturalist.org/observations/186130940	https://inaturalist-open-data.s3.amazonaws.com/photos/325212150/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	417	\N	iNaturalist	f
34.7069748	125.200700	2023-10-01	Ligia exotica	https://www.inaturalist.org/observations/186021446	https://inaturalist-open-data.s3.amazonaws.com/photos/324995473/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	418	\N	iNaturalist	f
36.5214133	126.327470	2023-10-03	Ligia exotica	https://www.inaturalist.org/observations/186008277	https://inaturalist-open-data.s3.amazonaws.com/photos/324968930/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	419	\N	iNaturalist	f
36.5217933	126.327775	2023-10-03	Ligia exotica	https://www.inaturalist.org/observations/186008267	https://inaturalist-open-data.s3.amazonaws.com/photos/324968897/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	420	\N	iNaturalist	f
33.2363318	126.429483	2023-09-29	Ligia	https://www.inaturalist.org/observations/185412730	https://inaturalist-open-data.s3.amazonaws.com/photos/323817365/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	421	\N	iNaturalist	f
38.1789772	140.990571	2023-09-25	Quelpartoniscus nipponensis	https://www.inaturalist.org/observations/185015325	https://inaturalist-open-data.s3.amazonaws.com/photos/323043427/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	422	\N	iNaturalist	f
33.5248367	126.952438	2023-07-09	Ligia	https://www.inaturalist.org/observations/184683769	https://static.inaturalist.org/photos/322421812/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	423	\N	iNaturalist	f
24.5458604	-81.812317	2022-12-22	Ligia exotica	https://www.inaturalist.org/observations/144891388	https://www.inaturalist.org/observations/144891388	iNaturalist	1	\N	\N	\N	\N	\N	1824	\N	iNaturalist	f
25.0926011	-80.549380	2022-02-27	Stenoniscus nestori	https://www.inaturalist.org/observations/144771085	https://www.inaturalist.org/observations/144771085	iNaturalist	1	\N	\N	\N	\N	\N	1825	\N	iNaturalist	f
25.0117147	-80.574895	2022-02-27	Tylos niveus	https://www.inaturalist.org/observations/144771084	https://www.inaturalist.org/observations/144771084	iNaturalist	1	\N	\N	\N	\N	\N	1826	\N	iNaturalist	f
25.0251040	-80.544569	2022-02-27	Stenoniscus nestori	https://www.inaturalist.org/observations/144771082	https://www.inaturalist.org/observations/144771082	iNaturalist	1	\N	\N	\N	\N	\N	1827	\N	iNaturalist	f
19.2662427	-81.399301	2022-11-20	Anilocra myripristis	https://www.inaturalist.org/observations/144695858	https://www.inaturalist.org/observations/144695858	iNaturalist	1	\N	\N	\N	\N	\N	1828	\N	iNaturalist	f
25.0262664	-80.492937	2022-12-09	Ligia exotica	https://www.inaturalist.org/observations/144100000	https://www.inaturalist.org/observations/144100000	iNaturalist	1	\N	\N	\N	\N	\N	1829	\N	iNaturalist	f
25.0262775	-80.492919	2022-12-09	Ligia exotica	https://www.inaturalist.org/observations/144099958	https://www.inaturalist.org/observations/144099958	iNaturalist	1	\N	\N	\N	\N	\N	1830	\N	iNaturalist	f
25.0262742	-80.492913	2022-12-09	Ligia exotica	https://www.inaturalist.org/observations/144099950	https://www.inaturalist.org/observations/144099950	iNaturalist	1	\N	\N	\N	\N	\N	1831	\N	iNaturalist	f
27.1223326	-82.467682	2022-12-03	Armadillidium vulgare	https://www.inaturalist.org/observations/143597505	https://www.inaturalist.org/observations/143597505	iNaturalist	1	\N	\N	\N	\N	\N	1832	\N	iNaturalist	f
27.7156283	-82.683800	2022-12-01	Porcellio laevis	https://www.inaturalist.org/observations/143439892	https://www.inaturalist.org/observations/143439892	iNaturalist	1	\N	\N	\N	\N	\N	1833	\N	iNaturalist	f
27.7163000	-82.683638	2022-12-01	Porcellio laevis	https://www.inaturalist.org/observations/143439851	https://www.inaturalist.org/observations/143439851	iNaturalist	1	\N	\N	\N	\N	\N	1834	\N	iNaturalist	f
27.7146033	-82.683892	2022-12-01	Porcellio laevis	https://www.inaturalist.org/observations/143439818	https://www.inaturalist.org/observations/143439818	iNaturalist	1	\N	\N	\N	\N	\N	1835	\N	iNaturalist	f
26.6519642	-77.968932	2022-11-18	Ligia	https://www.inaturalist.org/observations/143346001	https://www.inaturalist.org/observations/143346001	iNaturalist	1	\N	\N	\N	\N	\N	1836	\N	iNaturalist	f
27.9686000	-82.822660	2022-11-27	Parabopyrella mortenseni	https://www.inaturalist.org/observations/143133448	https://www.inaturalist.org/observations/143133448	iNaturalist	1	\N	\N	\N	\N	\N	1837	\N	iNaturalist	f
25.1170220	-81.083885	2022-11-21	Littorophiloscia	https://www.inaturalist.org/observations/142888399	https://www.inaturalist.org/observations/142888399	iNaturalist	1	\N	\N	\N	\N	\N	1838	\N	iNaturalist	f
25.1266040	-81.012962	2022-11-21	Littorophiloscia	https://www.inaturalist.org/observations/142859248	https://www.inaturalist.org/observations/142859248	iNaturalist	1	\N	\N	\N	\N	\N	1839	\N	iNaturalist	f
26.3382192	-80.066090	2012-07-17	Anilocra acanthuri	https://www.inaturalist.org/observations/142788738	https://www.inaturalist.org/observations/142788738	iNaturalist	1	\N	\N	\N	\N	\N	1840	\N	iNaturalist	f
26.6759720	-77.920080	2022-11-20	Ligia	https://www.inaturalist.org/observations/142740514	https://www.inaturalist.org/observations/142740514	iNaturalist	1	\N	\N	\N	\N	\N	1841	\N	iNaturalist	f
24.7582253	-80.969692	2022-11-23	Cubaris murina	https://www.inaturalist.org/observations/142721047	https://www.inaturalist.org/observations/142721047	iNaturalist	1	\N	\N	\N	\N	\N	1842	\N	iNaturalist	f
26.6532637	-77.970708	2022-11-22	Ligia	https://www.inaturalist.org/observations/142648748	https://www.inaturalist.org/observations/142648748	iNaturalist	1	\N	\N	\N	\N	\N	1843	\N	iNaturalist	f
26.6527010	-77.969563	2022-11-22	Ligia	https://www.inaturalist.org/observations/142648386	https://www.inaturalist.org/observations/142648386	iNaturalist	1	\N	\N	\N	\N	\N	1844	\N	iNaturalist	f
17.9447407	-76.728075	2022-11-22	Cirolanidae	https://www.inaturalist.org/observations/142623559	https://www.inaturalist.org/observations/142623559	iNaturalist	1	\N	\N	\N	\N	\N	1845	\N	iNaturalist	f
27.8877412	-82.536783	2022-11-15	Ligia exotica	https://www.inaturalist.org/observations/142087110	https://www.inaturalist.org/observations/142087110	iNaturalist	1	\N	\N	\N	\N	\N	1846	\N	iNaturalist	f
28.4081121	-80.590242	2022-11-04	Ligia exotica	https://www.inaturalist.org/observations/141827551	https://www.inaturalist.org/observations/141827551	iNaturalist	1	\N	\N	\N	\N	\N	1847	\N	iNaturalist	f
25.1352090	-80.952545	2021-04-24	Ligiidae	https://www.inaturalist.org/observations/141787680	https://www.inaturalist.org/observations/141787680	iNaturalist	1	\N	\N	\N	\N	\N	1848	\N	iNaturalist	f
33.5048074	126.910065	2023-09-21	Ligia exotica	https://www.inaturalist.org/observations/184223421	https://inaturalist-open-data.s3.amazonaws.com/photos/321544089/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	424	\N	iNaturalist	f
33.2447783	126.572037	2023-09-20	Oniscidea	https://www.inaturalist.org/observations/184103114	https://inaturalist-open-data.s3.amazonaws.com/photos/321310989/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	425	\N	iNaturalist	f
33.4628754	126.938950	2023-09-20	Ligia exotica	https://www.inaturalist.org/observations/184079946	https://inaturalist-open-data.s3.amazonaws.com/photos/321313279/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	426	\N	iNaturalist	f
42.4649065	130.913169	2023-08-09	Ligia cinerascens	https://www.inaturalist.org/observations/183975799	https://inaturalist-open-data.s3.amazonaws.com/photos/321065400/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	427	\N	iNaturalist	f
33.2442933	126.226977	2023-07-15	Ligia exotica	https://www.inaturalist.org/observations/183680556	https://inaturalist-open-data.s3.amazonaws.com/photos/320488926/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	428	\N	iNaturalist	f
34.4816377	136.850364	2023-09-17	Ligia exotica	https://www.inaturalist.org/observations/183671145	https://inaturalist-open-data.s3.amazonaws.com/photos/320478746/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	429	\N	iNaturalist	f
37.4442444	126.367805	2023-09-17	Ligia exotica	https://www.inaturalist.org/observations/183607266	https://inaturalist-open-data.s3.amazonaws.com/photos/320352395/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	430	\N	iNaturalist	f
27.0877544	128.014165	2023-09-16	Ligia	https://www.inaturalist.org/observations/183481979	https://inaturalist-open-data.s3.amazonaws.com/photos/320137417/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	431	\N	iNaturalist	f
25.8679367	-80.120567	2022-11-11	Agabiformius lentus	https://www.inaturalist.org/observations/141735617	https://www.inaturalist.org/observations/141735617	iNaturalist	1	\N	\N	\N	\N	\N	1849	\N	iNaturalist	f
25.8679550	-80.120536	2022-11-11	Porcellionides pruinosus	https://www.inaturalist.org/observations/141735596	https://www.inaturalist.org/observations/141735596	iNaturalist	1	\N	\N	\N	\N	\N	1850	\N	iNaturalist	f
25.8679550	-80.120575	2022-11-11	Cubaris murina	https://www.inaturalist.org/observations/141735582	https://www.inaturalist.org/observations/141735582	iNaturalist	1	\N	\N	\N	\N	\N	1851	\N	iNaturalist	f
25.8680717	-80.120453	2022-11-11	Cubaris murina	https://www.inaturalist.org/observations/141726211	https://www.inaturalist.org/observations/141726211	iNaturalist	1	\N	\N	\N	\N	\N	1852	\N	iNaturalist	f
19.3753732	-81.420691	2022-11-04	Anilocra myripristis	https://www.inaturalist.org/observations/141609797	https://www.inaturalist.org/observations/141609797	iNaturalist	1	\N	\N	\N	\N	\N	1853	\N	iNaturalist	f
27.7958837	-82.598837	2022-10-30	Erichsonella	https://www.inaturalist.org/observations/140557882	https://www.inaturalist.org/observations/140557882	iNaturalist	1	\N	\N	\N	\N	\N	1854	\N	iNaturalist	f
25.1733860	-80.898990	2021-12-28	Ligia exotica	https://www.inaturalist.org/observations/140212812	https://www.inaturalist.org/observations/140212812	iNaturalist	1	\N	\N	\N	\N	\N	1855	\N	iNaturalist	f
23.1185287	-82.407545	2015-03-07	Porcellionides pruinosus	https://www.inaturalist.org/observations/140091548	https://www.inaturalist.org/observations/140091548	iNaturalist	1	\N	\N	\N	\N	\N	1856	\N	iNaturalist	f
33.3453366	126.173669	2022-06-09	Ligia exotica	https://www.inaturalist.org/observations/120937813	https://static.inaturalist.org/photos/204602431/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	667	\N	iNaturalist	f
33.1760047	126.271312	2022-06-09	Ligia exotica	https://www.inaturalist.org/observations/120912508	https://static.inaturalist.org/photos/204567886/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	668	\N	iNaturalist	f
34.7694010	128.711290	2022-06-06	Armadillidium vulgare	https://www.inaturalist.org/observations/120449380	https://static.inaturalist.org/photos/203723365/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	669	\N	iNaturalist	f
25.0143139	122.001167	2022-06-04	Ligia exotica	https://www.inaturalist.org/observations/120128018	https://inaturalist-open-data.s3.amazonaws.com/photos/203147618/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	670	\N	iNaturalist	f
34.8949283	139.136183	2022-06-03	Ligia	https://www.inaturalist.org/observations/119979267	https://inaturalist-open-data.s3.amazonaws.com/photos/202880636/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	671	\N	iNaturalist	f
18.4524117	-66.089242	2022-10-26	Crinocheta	https://www.inaturalist.org/observations/140089026	https://www.inaturalist.org/observations/140089026	iNaturalist	1	\N	\N	\N	\N	\N	1857	\N	iNaturalist	f
18.4521028	-66.089345	2022-10-26	Nagurus	https://www.inaturalist.org/observations/140082580	https://www.inaturalist.org/observations/140082580	iNaturalist	1	\N	\N	\N	\N	\N	1858	\N	iNaturalist	f
26.5869236	-80.049194	2022-10-26	Ligia exotica	https://www.inaturalist.org/observations/140072607	https://www.inaturalist.org/observations/140072607	iNaturalist	1	\N	\N	\N	\N	\N	1859	\N	iNaturalist	f
27.7160367	-82.683922	2022-10-22	Porcellionides	https://www.inaturalist.org/observations/139696040	https://www.inaturalist.org/observations/139696040	iNaturalist	1	\N	\N	\N	\N	\N	1860	\N	iNaturalist	f
27.7623967	-82.635942	2022-10-19	Armadillidium vulgare	https://www.inaturalist.org/observations/139327486	https://www.inaturalist.org/observations/139327486	iNaturalist	1	\N	\N	\N	\N	\N	1862	\N	iNaturalist	f
25.1406751	-80.938587	2021-03-06	Ligia	https://www.inaturalist.org/observations/139310301	https://www.inaturalist.org/observations/139310301	iNaturalist	1	\N	\N	\N	\N	\N	1863	\N	iNaturalist	f
24.6486177	-80.847847	2022-10-18	Porcellionides pruinosus	https://www.inaturalist.org/observations/139290501	https://www.inaturalist.org/observations/139290501	iNaturalist	1	\N	\N	\N	\N	\N	1864	\N	iNaturalist	f
18.4561160	-66.074250	2022-10-14	Isopoda	https://www.inaturalist.org/observations/139074826	https://www.inaturalist.org/observations/139074826	iNaturalist	1	\N	\N	\N	\N	\N	1865	\N	iNaturalist	f
18.4535630	-66.082872	2022-10-14	Cirolanidae	https://www.inaturalist.org/observations/138982888	https://www.inaturalist.org/observations/138982888	iNaturalist	1	\N	\N	\N	\N	\N	1866	\N	iNaturalist	f
18.4584250	-66.080575	2022-10-14	Isopoda	https://www.inaturalist.org/observations/138863850	https://www.inaturalist.org/observations/138863850	iNaturalist	1	\N	\N	\N	\N	\N	1867	\N	iNaturalist	f
18.4599867	-66.082405	2022-10-14	Cirolanidae	https://www.inaturalist.org/observations/138800380	https://www.inaturalist.org/observations/138800380	iNaturalist	1	\N	\N	\N	\N	\N	1868	\N	iNaturalist	f
25.6766750	-80.158019	2022-10-14	Venezillo parvus	https://www.inaturalist.org/observations/138773681	https://www.inaturalist.org/observations/138773681	iNaturalist	1	\N	\N	\N	\N	\N	1869	\N	iNaturalist	f
22.0650609	-81.033591	2022-04-28	Trichorhina	https://www.inaturalist.org/observations/136653451	https://www.inaturalist.org/observations/136653451	iNaturalist	1	\N	\N	\N	\N	\N	1872	\N	iNaturalist	f
24.8061523	-80.847435	2022-09-25	Ligia exotica	https://www.inaturalist.org/observations/136479782	https://www.inaturalist.org/observations/136479782	iNaturalist	1	\N	\N	\N	\N	\N	1873	\N	iNaturalist	f
42.9486961	131.874893	2023-09-16	Ligia cinerascens	https://www.inaturalist.org/observations/183475712	https://inaturalist-open-data.s3.amazonaws.com/photos/320665080/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	432	\N	iNaturalist	f
43.0969780	131.939890	2023-09-14	Ligia cinerascens	https://www.inaturalist.org/observations/183186783	https://inaturalist-open-data.s3.amazonaws.com/photos/319553259/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	433	\N	iNaturalist	f
35.1284790	129.121933	2023-09-14	Ligia exotica	https://www.inaturalist.org/observations/183161341	https://inaturalist-open-data.s3.amazonaws.com/photos/325607024/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	434	\N	iNaturalist	f
37.4086806	126.610739	2023-09-14	Ligia exotica	https://www.inaturalist.org/observations/183154933	https://inaturalist-open-data.s3.amazonaws.com/photos/319488566/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	435	\N	iNaturalist	f
34.7325000	127.755556	2018-05-20	Ligia exotica	https://www.inaturalist.org/observations/182937910	https://static.inaturalist.org/photos/319060965/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	436	\N	iNaturalist	f
42.9626324	131.879995	2023-09-07	Porcellio scaber	https://www.inaturalist.org/observations/182919019	https://inaturalist-open-data.s3.amazonaws.com/photos/319028488/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	437	\N	iNaturalist	f
34.6599467	138.929337	2023-09-08	Ligia exotica	https://www.inaturalist.org/observations/182282896	https://inaturalist-open-data.s3.amazonaws.com/photos/317794216/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	438	\N	iNaturalist	f
42.9611667	131.904042	2023-09-03	Ligia cinerascens	https://www.inaturalist.org/observations/181976906	https://static.inaturalist.org/photos/317200652/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	439	\N	iNaturalist	f
35.6351526	135.454114	2023-09-01	Ceratothoa	https://www.inaturalist.org/observations/181189308	https://inaturalist-open-data.s3.amazonaws.com/photos/315747253/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	440	\N	iNaturalist	f
35.3611628	126.431382	2023-08-30	Armadillidium nasatum	https://www.inaturalist.org/observations/180932383	https://inaturalist-open-data.s3.amazonaws.com/photos/315249811/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	441	\N	iNaturalist	f
35.3611999	126.431392	2023-08-30	Armadillidium nasatum	https://www.inaturalist.org/observations/180932382	https://inaturalist-open-data.s3.amazonaws.com/photos/315249814/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	442	\N	iNaturalist	f
29.9802806	122.327219	2023-08-27	Ligia exotica	https://www.inaturalist.org/observations/180750109	https://inaturalist-open-data.s3.amazonaws.com/photos/314883485/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	443	\N	iNaturalist	f
35.0755583	129.022370	2022-06-03	Ligia exotica	https://www.inaturalist.org/observations/119959822	https://static.inaturalist.org/photos/202843572/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	672	\N	iNaturalist	f
34.2921412	134.655459	2022-05-26	Ligia exotica	https://www.inaturalist.org/observations/118787539	https://inaturalist-open-data.s3.amazonaws.com/photos/200731249/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	673	\N	iNaturalist	f
28.0383330	-86.180000	1987-04-22	Bathynomus giganteus	\N	\N	\N	1	\N	1102.5	\N	\N	\N	3163	PRESERVED_SPECIMEN	GBIF	f
12.9642000	-82.242500	2011-01-18	Bathynomus giganteus	\N	\N	\N	1	\N	504	\N	\N	\N	3048	PRESERVED_SPECIMEN	GBIF	f
25.1934130	-80.874126	2024-01-01	Composia fidelissima		\N	GBIF	1	\N	\N	\N	\N	\N	2033	\N	GBIF	f
24.1710970	-76.444222	2024-01-01	Aedes aegypti		\N	GBIF	1	\N	\N	\N	\N	\N	2464	\N	GBIF	f
34.2010208	133.290376	2019-10-05	Cymothooidea	https://www.inaturalist.org/observations/105827186	https://static.inaturalist.org/photos/177651438/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	703	\N	iNaturalist	f
34.3055072	133.366147	2019-10-03	Ligia	https://www.inaturalist.org/observations/105827173	https://static.inaturalist.org/photos/177651297/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	704	\N	iNaturalist	f
34.3307927	133.251527	2019-10-03	Ligia	https://www.inaturalist.org/observations/105827170	https://static.inaturalist.org/photos/177651255/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	705	\N	iNaturalist	f
34.3023042	133.201235	2019-10-03	Ligia	https://www.inaturalist.org/observations/105827159	https://static.inaturalist.org/photos/177651121/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	706	\N	iNaturalist	f
34.2065575	133.374700	2019-10-03	Ligia	https://www.inaturalist.org/observations/105827156	https://static.inaturalist.org/photos/177651080/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	707	\N	iNaturalist	f
30.3110083	126.453498	2022-01-07	Natatolana japonensis	https://www.inaturalist.org/observations/105358297	https://static.inaturalist.org/photos/176760346/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	708	\N	iNaturalist	f
25.7807547	-80.137956	2023-06-29	Nagurus cristatus	https://www.inaturalist.org/observations/170212275	https://www.inaturalist.org/observations/170212275	iNaturalist	1	\N	\N	\N	\N	\N	1704	\N	iNaturalist	f
27.4707130	-80.289799	2023-06-23	Ligia exotica	https://www.inaturalist.org/observations/169091141	https://www.inaturalist.org/observations/169091141	iNaturalist	1	\N	\N	\N	\N	\N	1705	\N	iNaturalist	f
25.1536724	-77.550089	2018-06-28	Astacilla cymodocea	https://www.inaturalist.org/observations/167521597	https://www.inaturalist.org/observations/167521597	iNaturalist	1	\N	\N	\N	\N	\N	1706	\N	iNaturalist	f
25.2273250	-80.329672	2022-06-12	Ligia	https://www.inaturalist.org/observations/121465672	https://www.inaturalist.org/observations/121465672	iNaturalist	1	\N	\N	\N	\N	\N	1912	\N	iNaturalist	f
29.9804583	122.327256	2023-08-27	Ligia exotica	https://www.inaturalist.org/observations/180750108	https://inaturalist-open-data.s3.amazonaws.com/photos/314883467/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	444	\N	iNaturalist	f
37.8058540	138.242146	2024-06-28	Ligia exotica	https://www.inaturalist.org/observations/227463043	https://static.inaturalist.org/photos/403529308/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	151	\N	iNaturalist	f
35.3117361	139.802014	2023-08-19	Armadillidium vulgare	https://www.inaturalist.org/observations/179674006	https://inaturalist-open-data.s3.amazonaws.com/photos/312845942/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	454	\N	iNaturalist	f
37.4737333	126.596161	2023-06-17	Ligia exotica	https://www.inaturalist.org/observations/179604418	https://inaturalist-open-data.s3.amazonaws.com/photos/312709523/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	455	\N	iNaturalist	f
35.5119920	133.494852	2023-08-21	Ligia exotica	https://www.inaturalist.org/observations/179538068	https://inaturalist-open-data.s3.amazonaws.com/photos/312587131/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	456	\N	iNaturalist	f
33.4646606	126.936012	2023-08-21	Ligia exotica	https://www.inaturalist.org/observations/179494184	https://static.inaturalist.org/photos/312505499/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	457	\N	iNaturalist	f
35.1579111	139.610498	2012-09-25	Sphaeromatidea	https://www.inaturalist.org/observations/179439335	https://inaturalist-open-data.s3.amazonaws.com/photos/312257743/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	458	\N	iNaturalist	f
42.9553050	131.843862	2023-08-20	Ligia cinerascens	https://www.inaturalist.org/observations/179418043	https://static.inaturalist.org/photos/312354540/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	459	\N	iNaturalist	f
35.1294372	139.627469	2012-09-20	Ligia exotica	https://www.inaturalist.org/observations/179356376	https://inaturalist-open-data.s3.amazonaws.com/photos/312227646/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	460	\N	iNaturalist	f
34.8955134	139.132990	2023-08-18	Ligia exotica	https://www.inaturalist.org/observations/179119180	https://inaturalist-open-data.s3.amazonaws.com/photos/311800120/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	461	\N	iNaturalist	f
43.2687167	132.255903	2023-08-18	Trachelipus rathkii	https://www.inaturalist.org/observations/178980792	https://inaturalist-open-data.s3.amazonaws.com/photos/311540566/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	462	\N	iNaturalist	f
28.2633330	-86.625000	1987-04-24	Bathynomus giganteus	\N	\N	\N	1	\N	888.5	\N	\N	\N	3164	PRESERVED_SPECIMEN	GBIF	f
29.2990000	-87.572300	1987-08-05	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3166	PRESERVED_SPECIMEN	GBIF	f
29.2989000	-87.572200	1987-08-05	Bathynomus giganteus	\N	\N	\N	1	\N	\N	\N	\N	\N	3167	PRESERVED_SPECIMEN	GBIF	f
29.3146660	-87.558500	1986-07-25	Bathynomus giganteus	\N	\N	\N	1	\N	435.1	\N	\N	\N	3168	PRESERVED_SPECIMEN	GBIF	f
-21.1091890	-40.623675	2008-04-09	Bathynomus giganteus	\N	\N	\N	1	\N	990	\N	\N	\N	3077	PRESERVED_SPECIMEN	GBIF	f
25.6863805	-80.156818	2023-06-10	Porcellionides pruinosus	https://www.inaturalist.org/observations/166734718	https://www.inaturalist.org/observations/166734718	iNaturalist	1	\N	\N	\N	\N	\N	1707	\N	iNaturalist	f
31.6490617	131.466537	2023-08-17	Ligia exotica	https://www.inaturalist.org/observations/178894151	https://inaturalist-open-data.s3.amazonaws.com/photos/311370570/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	463	\N	iNaturalist	f
37.3077650	137.244947	2023-08-17	Ligia	https://www.inaturalist.org/observations/178821237	https://inaturalist-open-data.s3.amazonaws.com/photos/311233130/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	464	\N	iNaturalist	f
35.5106094	133.495049	2023-08-17	Armadillidium vulgare	https://www.inaturalist.org/observations/178793375	https://static.inaturalist.org/photos/311179214/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	465	\N	iNaturalist	f
35.5110349	133.492719	2023-08-16	Ligia exotica	https://www.inaturalist.org/observations/178689322	https://static.inaturalist.org/photos/310978901/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	466	\N	iNaturalist	f
35.5112527	133.494944	2023-08-16	Ligia exotica	https://www.inaturalist.org/observations/178688522	https://static.inaturalist.org/photos/310977663/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	467	\N	iNaturalist	f
26.6951549	127.876652	2023-08-16	Ligia	https://www.inaturalist.org/observations/178655197	https://inaturalist-open-data.s3.amazonaws.com/photos/310915791/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	468	\N	iNaturalist	f
31.8038417	131.474883	2023-08-15	Ligia	https://www.inaturalist.org/observations/178476903	https://inaturalist-open-data.s3.amazonaws.com/photos/310575699/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	469	\N	iNaturalist	f
28.0601107	-82.825525	2020-09-26	Porcellionides virgatus	https://www.inaturalist.org/observations/136249795	https://www.inaturalist.org/observations/136249795	iNaturalist	1	\N	\N	\N	\N	\N	1874	\N	iNaturalist	f
27.5632850	-82.718524	2022-09-23	Armadillidium vulgare	https://www.inaturalist.org/observations/136212808	https://www.inaturalist.org/observations/136212808	iNaturalist	1	\N	\N	\N	\N	\N	1876	\N	iNaturalist	f
27.5321068	-82.723353	2022-09-23	Porcellionides pruinosus	https://www.inaturalist.org/observations/136211542	https://www.inaturalist.org/observations/136211542	iNaturalist	1	\N	\N	\N	\N	\N	1877	\N	iNaturalist	f
28.0674538	-82.833958	2022-09-18	Sphaeromatidae	https://www.inaturalist.org/observations/136075304	https://www.inaturalist.org/observations/136075304	iNaturalist	1	\N	\N	\N	\N	\N	1878	\N	iNaturalist	f
28.3916122	-80.418126	2022-09-20	Holoverticata	https://www.inaturalist.org/observations/135812127	https://www.inaturalist.org/observations/135812127	iNaturalist	1	\N	\N	\N	\N	\N	1879	\N	iNaturalist	f
27.7128229	-82.688028	2022-09-18	Ligia exotica	https://www.inaturalist.org/observations/135609082	https://www.inaturalist.org/observations/135609082	iNaturalist	1	\N	\N	\N	\N	\N	1880	\N	iNaturalist	f
27.7160633	-82.683792	2022-09-16	Armadillidium vulgare	https://www.inaturalist.org/observations/135238272	https://www.inaturalist.org/observations/135238272	iNaturalist	1	\N	\N	\N	\N	\N	1881	\N	iNaturalist	f
28.4072278	-80.629569	2022-08-18	Ligia exotica	https://www.inaturalist.org/observations/131901610	https://www.inaturalist.org/observations/131901610	iNaturalist	1	\N	\N	\N	\N	\N	1882	\N	iNaturalist	f
25.1584792	-80.572242	2022-08-21	Porcellionides pruinosus	https://www.inaturalist.org/observations/131872819	https://www.inaturalist.org/observations/131872819	iNaturalist	1	\N	\N	\N	\N	\N	1883	\N	iNaturalist	f
19.3538500	-81.393400	2021-03-28	Cirolanidae	https://www.inaturalist.org/observations/131755668	https://www.inaturalist.org/observations/131755668	iNaturalist	1	\N	\N	\N	\N	\N	1884	\N	iNaturalist	f
25.1375074	-80.971126	2022-03-07	Ligia exotica	https://www.inaturalist.org/observations/131087694	https://www.inaturalist.org/observations/131087694	iNaturalist	1	\N	\N	\N	\N	\N	1885	\N	iNaturalist	f
26.9744135	-80.081083	2022-08-12	Ligia exotica	https://www.inaturalist.org/observations/130538927	https://www.inaturalist.org/observations/130538927	iNaturalist	1	\N	\N	\N	\N	\N	1886	\N	iNaturalist	f
26.7738923	-80.043084	2022-08-02	Cymothooidea	https://www.inaturalist.org/observations/130413015	https://www.inaturalist.org/observations/130413015	iNaturalist	1	\N	\N	\N	\N	\N	1887	\N	iNaturalist	f
24.8766326	-80.676717	2022-06-17	Ligia exotica	https://www.inaturalist.org/observations/129916191	https://www.inaturalist.org/observations/129916191	iNaturalist	1	\N	\N	\N	\N	\N	1888	\N	iNaturalist	f
24.5458250	-81.812522	2022-08-06	Ligia exotica	https://www.inaturalist.org/observations/129684068	https://www.inaturalist.org/observations/129684068	iNaturalist	1	\N	\N	\N	\N	\N	1889	\N	iNaturalist	f
21.6930453	-71.797928	2019-06-13	Porcellionides pruinosus	https://www.inaturalist.org/observations/129229140	https://www.inaturalist.org/observations/129229140	iNaturalist	1	\N	\N	\N	\N	\N	1890	\N	iNaturalist	f
24.8906800	-80.674500	2022-07-31	Ligia exotica	https://www.inaturalist.org/observations/129220405	https://www.inaturalist.org/observations/129220405	iNaturalist	1	\N	\N	\N	\N	\N	1891	\N	iNaturalist	f
25.8156250	-77.940653	2022-07-17	Philosciidae	https://www.inaturalist.org/observations/126834127	https://www.inaturalist.org/observations/126834127	iNaturalist	1	\N	\N	\N	\N	\N	1892	\N	iNaturalist	f
27.1137037	-82.469410	2022-07-17	Ligia exotica	https://www.inaturalist.org/observations/126688639	https://www.inaturalist.org/observations/126688639	iNaturalist	1	\N	\N	\N	\N	\N	1893	\N	iNaturalist	f
26.3277400	-82.096159	2022-06-07	Amakusanthura	https://www.inaturalist.org/observations/125974444	https://www.inaturalist.org/observations/125974444	iNaturalist	1	\N	\N	\N	\N	\N	1894	\N	iNaturalist	f
19.3553652	-81.390786	2022-07-03	Anilocra myripristis	https://www.inaturalist.org/observations/124633777	https://www.inaturalist.org/observations/124633777	iNaturalist	1	\N	\N	\N	\N	\N	1898	\N	iNaturalist	f
24.7117303	-81.099256	2022-07-03	Ligia exotica	https://www.inaturalist.org/observations/124599454	https://www.inaturalist.org/observations/124599454	iNaturalist	1	\N	\N	\N	\N	\N	1899	\N	iNaturalist	f
27.7664742	-82.630619	2022-07-02	Ligia exotica	https://www.inaturalist.org/observations/124488827	https://www.inaturalist.org/observations/124488827	iNaturalist	1	\N	\N	\N	\N	\N	1900	\N	iNaturalist	f
27.7664750	-82.630644	2022-07-02	Ligia exotica	https://www.inaturalist.org/observations/124488826	https://www.inaturalist.org/observations/124488826	iNaturalist	1	\N	\N	\N	\N	\N	1901	\N	iNaturalist	f
27.7664827	-82.630659	2022-07-02	Ligia exotica	https://www.inaturalist.org/observations/124488825	https://www.inaturalist.org/observations/124488825	iNaturalist	1	\N	\N	\N	\N	\N	1902	\N	iNaturalist	f
27.1125987	-82.467753	2022-07-01	Ligia exotica	https://www.inaturalist.org/observations/124405296	https://www.inaturalist.org/observations/124405296	iNaturalist	1	\N	\N	\N	\N	\N	1903	\N	iNaturalist	f
21.7390690	-80.001353	2022-06-14	Ligia	https://www.inaturalist.org/observations/124020756	https://www.inaturalist.org/observations/124020756	iNaturalist	1	\N	\N	\N	\N	\N	1905	\N	iNaturalist	f
28.1250000	-86.007333	1987-04-24	Bathynomus giganteus	\N	\N	\N	1	\N	750	\N	\N	\N	3165	PRESERVED_SPECIMEN	GBIF	f
23.1641621	-82.285654	2023-06-04	Porcellionides pruinosus	https://www.inaturalist.org/observations/165641756	https://www.inaturalist.org/observations/165641756	iNaturalist	1	\N	\N	\N	\N	\N	1709	\N	iNaturalist	f
26.7829602	-80.042723	2023-04-26	Erichsonella attenuata	https://www.inaturalist.org/observations/165036743	https://www.inaturalist.org/observations/165036743	iNaturalist	1	\N	\N	\N	\N	\N	1710	\N	iNaturalist	f
28.3560676	122.891609	2022-01-20	Dolicholana enigma	https://www.inaturalist.org/observations/105358100	https://static.inaturalist.org/photos/176760084/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	709	\N	iNaturalist	f
32.7253820	133.018657	2019-10-05	Ligia	https://www.inaturalist.org/observations/105204638	https://inaturalist-open-data.s3.amazonaws.com/photos/176465393/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	710	\N	iNaturalist	f
35.1933331	139.608059	2019-08-10	Ligia exotica	https://www.inaturalist.org/observations/104838393	https://static.inaturalist.org/photos/175759309/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	711	\N	iNaturalist	f
37.5121673	126.549246	2021-09-04	Porcellionidae	https://www.inaturalist.org/observations/93557929	\N	iNaturalist	1	\N	\N	\N	\N	\N	731	\N	iNaturalist	f
30.4595046	130.490149	2013-04-14	Anilocra	https://www.inaturalist.org/observations/104579953	https://static.inaturalist.org/photos/175263549/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	712	\N	iNaturalist	f
42.6693417	131.214036	2021-09-18	Ligia cinerascens	https://www.inaturalist.org/observations/96799856	https://inaturalist-open-data.s3.amazonaws.com/photos/160861687/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	724	\N	iNaturalist	f
42.6698722	131.214019	2021-09-18	Ligia cinerascens	https://www.inaturalist.org/observations/96799844	https://inaturalist-open-data.s3.amazonaws.com/photos/160861450/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	725	\N	iNaturalist	f
34.7768121	137.001464	2019-06-14	Armadillidium vulgare	https://www.inaturalist.org/observations/89126388	https://inaturalist-open-data.s3.amazonaws.com/photos/147143247/medium.png	iNaturalist	1	\N	\N	\N	\N	\N	740	\N	iNaturalist	f
35.4309547	139.729843	2019-05-21	Oniscidea	https://www.inaturalist.org/observations/88976506	https://inaturalist-open-data.s3.amazonaws.com/photos/146877087/medium.png	iNaturalist	1	\N	\N	\N	\N	\N	741	\N	iNaturalist	f
37.3921719	126.631809	2021-07-13	Armadillidium nasatum	https://www.inaturalist.org/observations/86884554	https://inaturalist-open-data.s3.amazonaws.com/photos/143204978/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	743	\N	iNaturalist	f
37.4094099	126.678309	2021-07-09	Armadillidium nasatum	https://www.inaturalist.org/observations/86258647	https://inaturalist-open-data.s3.amazonaws.com/photos/142071908/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	744	\N	iNaturalist	f
33.2446121	126.579799	2021-07-08	Ligia exotica	https://www.inaturalist.org/observations/86150880	https://inaturalist-open-data.s3.amazonaws.com/photos/141875979/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	745	\N	iNaturalist	f
33.4627637	126.938673	2021-07-03	Ligia	https://www.inaturalist.org/observations/85430306	https://inaturalist-open-data.s3.amazonaws.com/photos/140562422/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	746	\N	iNaturalist	f
17.9374221	-67.193003	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105742795	https://www.inaturalist.org/observations/105742795	iNaturalist	1	\N	\N	\N	\N	\N	2037	\N	iNaturalist	f
27.7343867	-82.632788	2022-06-26	Porcellionides	https://www.inaturalist.org/observations/123643996	https://www.inaturalist.org/observations/123643996	iNaturalist	1	\N	\N	\N	\N	\N	1906	\N	iNaturalist	f
24.8384464	-80.758681	2022-06-19	Sphaeromatidae	https://www.inaturalist.org/observations/122742087	https://www.inaturalist.org/observations/122742087	iNaturalist	1	\N	\N	\N	\N	\N	1907	\N	iNaturalist	f
27.1887550	-80.159867	2022-06-18	Ligia exotica	https://www.inaturalist.org/observations/122384480	https://www.inaturalist.org/observations/122384480	iNaturalist	1	\N	\N	\N	\N	\N	1909	\N	iNaturalist	f
25.7636182	-80.129178	2022-06-14	Paradella dianae	https://www.inaturalist.org/observations/121842967	https://www.inaturalist.org/observations/121842967	iNaturalist	1	\N	\N	\N	\N	\N	1910	\N	iNaturalist	f
28.4075142	-80.588825	2022-06-12	Ligia exotica	https://www.inaturalist.org/observations/121680161	https://www.inaturalist.org/observations/121680161	iNaturalist	1	\N	\N	\N	\N	\N	1911	\N	iNaturalist	f
27.4383431	-82.684152	2022-04-19	Armadillidiidae	https://www.inaturalist.org/observations/120743774	https://www.inaturalist.org/observations/120743774	iNaturalist	1	\N	\N	\N	\N	\N	1913	\N	iNaturalist	f
24.7115872	-81.103297	2022-06-04	Ligia exotica	https://www.inaturalist.org/observations/120442339	https://www.inaturalist.org/observations/120442339	iNaturalist	1	\N	\N	\N	\N	\N	1915	\N	iNaturalist	f
26.4614296	-81.967018	2022-05-27	Ancinus depressus	https://www.inaturalist.org/observations/118928927	https://www.inaturalist.org/observations/118928927	iNaturalist	1	\N	\N	\N	\N	\N	1916	\N	iNaturalist	f
26.8355133	-82.295525	2022-05-27	Porcellionides	https://www.inaturalist.org/observations/118923186	https://www.inaturalist.org/observations/118923186	iNaturalist	1	\N	\N	\N	\N	\N	1917	\N	iNaturalist	f
24.6930427	-81.080534	2021-08-24	Ligia exotica	https://www.inaturalist.org/observations/117902270	https://www.inaturalist.org/observations/117902270	iNaturalist	1	\N	\N	\N	\N	\N	1918	\N	iNaturalist	f
24.6920470	-81.086784	2022-05-18	Ligia exotica	https://www.inaturalist.org/observations/117672549	https://www.inaturalist.org/observations/117672549	iNaturalist	1	\N	\N	\N	\N	\N	1919	\N	iNaturalist	f
27.7119905	-82.685232	2022-05-16	Ligia exotica	https://www.inaturalist.org/observations/117395585	https://www.inaturalist.org/observations/117395585	iNaturalist	1	\N	\N	\N	\N	\N	1920	\N	iNaturalist	f
25.7271239	-80.149429	2022-05-14	Sphaeromatidae	https://www.inaturalist.org/observations/117088625	https://www.inaturalist.org/observations/117088625	iNaturalist	1	\N	\N	\N	\N	\N	1921	\N	iNaturalist	f
24.6901184	-81.426590	2022-05-02	Ligia exotica	https://www.inaturalist.org/observations/116685091	https://www.inaturalist.org/observations/116685091	iNaturalist	1	\N	\N	\N	\N	\N	1922	\N	iNaturalist	f
27.7130636	-82.684068	2022-05-10	Ligia exotica	https://www.inaturalist.org/observations/116492816	https://www.inaturalist.org/observations/116492816	iNaturalist	1	\N	\N	\N	\N	\N	1923	\N	iNaturalist	f
27.7130688	-82.684099	2022-05-10	Ligia exotica	https://www.inaturalist.org/observations/116492776	https://www.inaturalist.org/observations/116492776	iNaturalist	1	\N	\N	\N	\N	\N	1924	\N	iNaturalist	f
17.7336350	-71.369553	2022-04-26	Venezillo	https://www.inaturalist.org/observations/116454305	https://www.inaturalist.org/observations/116454305	iNaturalist	1	\N	\N	\N	\N	\N	1925	\N	iNaturalist	f
25.7162110	-80.150932	2022-05-02	Atlantoscia floridana	https://www.inaturalist.org/observations/115661895	https://www.inaturalist.org/observations/115661895	iNaturalist	1	\N	\N	\N	\N	\N	1926	\N	iNaturalist	f
25.4149076	-80.145715	2022-05-05	Cymothoidae	https://www.inaturalist.org/observations/115661483	https://www.inaturalist.org/observations/115661483	iNaturalist	1	\N	\N	\N	\N	\N	1927	\N	iNaturalist	f
27.7131000	-91.254700	1985-05-23	Bathynomus giganteus	\N	\N	\N	1	\N	751	\N	\N	\N	3170	PRESERVED_SPECIMEN	GBIF	f
37.1782519	126.620715	2021-06-26	Ligia exotica	https://www.inaturalist.org/observations/84528047	https://inaturalist-open-data.s3.amazonaws.com/photos/138941069/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	747	\N	iNaturalist	f
35.2871053	139.696193	2021-05-23	Ligia cinerascens	https://www.inaturalist.org/observations/79890957	https://inaturalist-open-data.s3.amazonaws.com/photos/130891798/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	748	\N	iNaturalist	f
35.1295388	139.626878	2021-05-01	Ligia	https://www.inaturalist.org/observations/78767879	https://inaturalist-open-data.s3.amazonaws.com/photos/128946357/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	749	\N	iNaturalist	f
33.6820730	135.344150	2021-05-10	Ligiidae	https://www.inaturalist.org/observations/78223018	https://static.inaturalist.org/photos/127988743/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	750	\N	iNaturalist	f
33.6820552	135.344142	2021-05-10	Ligia	https://www.inaturalist.org/observations/78178782	https://static.inaturalist.org/photos/127909200/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	751	\N	iNaturalist	f
33.6711405	130.289654	2017-08-29	Ligia	https://www.inaturalist.org/observations/77289958	https://inaturalist-open-data.s3.amazonaws.com/photos/126393154/medium.png	iNaturalist	1	\N	\N	\N	\N	\N	752	\N	iNaturalist	f
31.7647692	130.265454	2021-04-27	Armadillidium vulgare	https://www.inaturalist.org/observations/76506112	https://inaturalist-open-data.s3.amazonaws.com/photos/125145202/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	753	\N	iNaturalist	f
36.9345510	126.292516	2012-05-01	Porcellionides pruinosus	https://www.inaturalist.org/observations/76006594	https://inaturalist-open-data.s3.amazonaws.com/photos/124360409/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	754	\N	iNaturalist	f
37.4840283	130.917083	2020-06-20	Armadillidium vulgare	https://www.inaturalist.org/observations/74125291	https://inaturalist-open-data.s3.amazonaws.com/photos/121113199/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	755	\N	iNaturalist	f
35.1919855	139.609628	2020-08-06	Porcellio scaber	https://www.inaturalist.org/observations/73939671	https://inaturalist-open-data.s3.amazonaws.com/photos/120785973/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	756	\N	iNaturalist	f
25.7345588	-80.156863	2022-04-22	Rocinela signata	https://www.inaturalist.org/observations/115654566	https://www.inaturalist.org/observations/115654566	iNaturalist	1	\N	\N	\N	\N	\N	1928	\N	iNaturalist	f
25.1450740	-80.928165	2022-04-30	Ligia exotica	https://www.inaturalist.org/observations/115626907	https://www.inaturalist.org/observations/115626907	iNaturalist	1	\N	\N	\N	\N	\N	1929	\N	iNaturalist	f
27.0530321	-82.437899	2022-05-02	Ligia exotica	https://www.inaturalist.org/observations/114970524	https://www.inaturalist.org/observations/114970524	iNaturalist	1	\N	\N	\N	\N	\N	1930	\N	iNaturalist	f
27.0554689	-82.437467	2022-05-02	Ligia exotica	https://www.inaturalist.org/observations/114970498	https://www.inaturalist.org/observations/114970498	iNaturalist	1	\N	\N	\N	\N	\N	1931	\N	iNaturalist	f
24.6901588	-81.426460	2022-04-28	Cymothooidea	https://www.inaturalist.org/observations/114781166	https://www.inaturalist.org/observations/114781166	iNaturalist	1	\N	\N	\N	\N	\N	1932	\N	iNaturalist	f
28.3403355	-80.660378	2022-04-29	Sphaeroma quadridentatum	https://www.inaturalist.org/observations/114625191	https://www.inaturalist.org/observations/114625191	iNaturalist	1	\N	\N	\N	\N	\N	1933	\N	iNaturalist	f
28.3403335	-80.660444	2022-04-29	Sphaeroma quadridentatum	https://www.inaturalist.org/observations/113471259	https://www.inaturalist.org/observations/113471259	iNaturalist	1	\N	\N	\N	\N	\N	1934	\N	iNaturalist	f
28.3403349	-80.660448	2022-04-29	Sphaeroma quadridentatum	https://www.inaturalist.org/observations/113471154	https://www.inaturalist.org/observations/113471154	iNaturalist	1	\N	\N	\N	\N	\N	1935	\N	iNaturalist	f
28.3403916	-80.660461	2022-04-29	Sphaeroma quadridentatum	https://www.inaturalist.org/observations/113470724	https://www.inaturalist.org/observations/113470724	iNaturalist	1	\N	\N	\N	\N	\N	1936	\N	iNaturalist	f
28.1300264	-80.621728	2022-04-25	Atlantoscia floridana	https://www.inaturalist.org/observations/112984001	https://www.inaturalist.org/observations/112984001	iNaturalist	1	\N	\N	\N	\N	\N	1937	\N	iNaturalist	f
27.8741000	-82.526891	2021-12-30	Anilocra	https://www.inaturalist.org/observations/112712011	https://www.inaturalist.org/observations/112712011	iNaturalist	1	\N	\N	\N	\N	\N	1938	\N	iNaturalist	f
26.6924450	-80.049575	2021-07-18	Ligia exotica	https://www.inaturalist.org/observations/112060658	https://www.inaturalist.org/observations/112060658	iNaturalist	1	\N	\N	\N	\N	\N	1939	\N	iNaturalist	f
24.5200000	-83.580000	1955-07-08	Bathynomus giganteus	\N	\N	\N	1	\N	388.5	\N	\N	\N	2705	PRESERVED_SPECIMEN	GBIF	f
25.1860870	-80.874057	2022-04-12	Ligia	https://www.inaturalist.org/observations/112033327	https://www.inaturalist.org/observations/112033327	iNaturalist	1	\N	\N	\N	\N	\N	1940	\N	iNaturalist	f
21.7616827	-72.190195	2022-04-17	Cirolanidae	https://www.inaturalist.org/observations/111851165	https://www.inaturalist.org/observations/111851165	iNaturalist	1	\N	\N	\N	\N	\N	1941	\N	iNaturalist	f
25.1506270	-80.918043	2021-04-24	Ligia	https://www.inaturalist.org/observations/110710217	https://www.inaturalist.org/observations/110710217	iNaturalist	1	\N	\N	\N	\N	\N	1942	\N	iNaturalist	f
21.7973100	-72.358316	2022-04-07	Cubaris murina	https://www.inaturalist.org/observations/110705063	https://www.inaturalist.org/observations/110705063	iNaturalist	1	\N	\N	\N	\N	\N	1943	\N	iNaturalist	f
21.7302472	-72.290739	2022-04-07	Cubaris murina	https://www.inaturalist.org/observations/110705056	https://www.inaturalist.org/observations/110705056	iNaturalist	1	\N	\N	\N	\N	\N	1944	\N	iNaturalist	f
21.6675504	-72.296075	2022-04-07	Porcellionides pruinosus	https://www.inaturalist.org/observations/110699947	https://www.inaturalist.org/observations/110699947	iNaturalist	1	\N	\N	\N	\N	\N	1945	\N	iNaturalist	f
27.1128772	-82.469562	2022-04-07	Ligia exotica	https://www.inaturalist.org/observations/110674949	https://www.inaturalist.org/observations/110674949	iNaturalist	1	\N	\N	\N	\N	\N	1946	\N	iNaturalist	f
27.7159612	-82.688564	2022-03-30	Porcellionides pruinosus	https://www.inaturalist.org/observations/110636402	https://www.inaturalist.org/observations/110636402	iNaturalist	1	\N	\N	\N	\N	\N	1948	\N	iNaturalist	f
24.4018379	-76.633179	2022-03-21	Ligia	https://www.inaturalist.org/observations/110566287	https://www.inaturalist.org/observations/110566287	iNaturalist	1	\N	\N	\N	\N	\N	1949	\N	iNaturalist	f
27.9457700	-82.829680	2022-03-25	Erichsonella attenuata	https://www.inaturalist.org/observations/109504740	https://www.inaturalist.org/observations/109504740	iNaturalist	1	\N	\N	\N	\N	\N	1950	\N	iNaturalist	f
25.0629034	-77.490348	2022-03-18	Porcellionides	https://www.inaturalist.org/observations/109228585	https://www.inaturalist.org/observations/109228585	iNaturalist	1	\N	\N	\N	\N	\N	1951	\N	iNaturalist	f
27.6830917	-82.738380	2022-03-15	Ligia	https://www.inaturalist.org/observations/108694842	https://www.inaturalist.org/observations/108694842	iNaturalist	1	\N	\N	\N	\N	\N	1952	\N	iNaturalist	f
27.6830800	-82.738403	2022-03-15	Sphaeromatidae	https://www.inaturalist.org/observations/108694616	https://www.inaturalist.org/observations/108694616	iNaturalist	1	\N	\N	\N	\N	\N	1953	\N	iNaturalist	f
26.4427900	-82.035167	2022-03-09	Ligia exotica	https://www.inaturalist.org/observations/108436335	https://www.inaturalist.org/observations/108436335	iNaturalist	1	\N	\N	\N	\N	\N	1955	\N	iNaturalist	f
18.4247060	-69.452602	2022-03-11	Porcellionidae	https://www.inaturalist.org/observations/108363159	https://www.inaturalist.org/observations/108363159	iNaturalist	1	\N	\N	\N	\N	\N	1956	\N	iNaturalist	f
27.7134643	-82.687236	2022-03-10	Armadillidium vulgare	https://www.inaturalist.org/observations/108300922	https://www.inaturalist.org/observations/108300922	iNaturalist	1	\N	\N	\N	\N	\N	1957	\N	iNaturalist	f
24.6972481	-81.318266	2021-11-17	Cubaris murina	https://www.inaturalist.org/observations/108258592	https://www.inaturalist.org/observations/108258592	iNaturalist	1	\N	\N	\N	\N	\N	1958	\N	iNaturalist	f
27.5077083	-82.713120	2022-03-08	Isopoda	https://www.inaturalist.org/observations/108178615	https://www.inaturalist.org/observations/108178615	iNaturalist	1	\N	\N	\N	\N	\N	1959	\N	iNaturalist	f
24.6479982	-81.312065	2022-03-04	Ligia exotica	https://www.inaturalist.org/observations/108142584	https://www.inaturalist.org/observations/108142584	iNaturalist	1	\N	\N	\N	\N	\N	1960	\N	iNaturalist	f
24.6478130	-81.311974	2022-03-04	Ligia exotica	https://www.inaturalist.org/observations/108142580	https://www.inaturalist.org/observations/108142580	iNaturalist	1	\N	\N	\N	\N	\N	1961	\N	iNaturalist	f
26.9764409	-80.081630	2022-03-05	Ligia exotica	https://www.inaturalist.org/observations/108072824	https://www.inaturalist.org/observations/108072824	iNaturalist	1	\N	\N	\N	\N	\N	1962	\N	iNaturalist	f
24.3583290	124.004964	2024-01-27	Plinachtus basalis		\N	GBIF	1	\N	\N	\N	\N	\N	1132	\N	GBIF	f
24.8232416	-80.818859	2021-11-16	Tylos niveus	https://www.inaturalist.org/observations/107865081	https://www.inaturalist.org/observations/107865081	iNaturalist	1	\N	\N	\N	\N	\N	1963	\N	iNaturalist	f
25.0087616	-80.515355	2022-03-02	Ligia exotica	https://www.inaturalist.org/observations/107768706	https://www.inaturalist.org/observations/107768706	iNaturalist	1	\N	\N	\N	\N	\N	1965	\N	iNaturalist	f
33.4627103	126.938513	2023-08-14	Ligia exotica	https://www.inaturalist.org/observations/178328893	https://inaturalist-open-data.s3.amazonaws.com/photos/310293788/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	470	\N	iNaturalist	f
33.4627076	126.938515	2023-08-14	Ligia exotica	https://www.inaturalist.org/observations/178328885	https://inaturalist-open-data.s3.amazonaws.com/photos/310293770/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	471	\N	iNaturalist	f
33.4627572	126.938522	2023-08-14	Ligia exotica	https://www.inaturalist.org/observations/178328795	https://inaturalist-open-data.s3.amazonaws.com/photos/310293587/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	472	\N	iNaturalist	f
36.1008977	133.091840	2023-07-27	Ligia exotica	https://www.inaturalist.org/observations/177962696	https://inaturalist-open-data.s3.amazonaws.com/photos/309587782/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	473	\N	iNaturalist	f
34.7034100	136.997171	2023-08-09	Ligia exotica	https://www.inaturalist.org/observations/177770665	https://inaturalist-open-data.s3.amazonaws.com/photos/309231721/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	474	\N	iNaturalist	f
26.4648764	-82.118537	2011-06-27	Ligia exotica	https://www.inaturalist.org/observations/107755862	https://www.inaturalist.org/observations/107755862	iNaturalist	1	\N	\N	\N	\N	\N	1966	\N	iNaturalist	f
25.1419167	-80.923562	2022-02-28	Ligia exotica	https://www.inaturalist.org/observations/107679012	https://www.inaturalist.org/observations/107679012	iNaturalist	1	\N	\N	\N	\N	\N	1967	\N	iNaturalist	f
25.4796107	-76.778628	2022-02-21	Cymothoidae	https://www.inaturalist.org/observations/107447909	https://www.inaturalist.org/observations/107447909	iNaturalist	1	\N	\N	\N	\N	\N	1968	\N	iNaturalist	f
26.9621117	-80.077422	2022-02-19	Ligia exotica	https://www.inaturalist.org/observations/107234376	https://www.inaturalist.org/observations/107234376	iNaturalist	1	\N	\N	\N	\N	\N	1969	\N	iNaturalist	f
26.9752137	-80.081315	2022-02-20	Ligia	https://www.inaturalist.org/observations/107137758	https://www.inaturalist.org/observations/107137758	iNaturalist	1	\N	\N	\N	\N	\N	1970	\N	iNaturalist	f
26.9758200	-80.081487	2022-02-20	Ligia	https://www.inaturalist.org/observations/107136078	https://www.inaturalist.org/observations/107136078	iNaturalist	1	\N	\N	\N	\N	\N	1971	\N	iNaturalist	f
27.4771418	-80.300127	2022-02-16	Oniscidea	https://www.inaturalist.org/observations/106856972	https://www.inaturalist.org/observations/106856972	iNaturalist	1	\N	\N	\N	\N	\N	1972	\N	iNaturalist	f
18.4444056	-66.027731	2022-02-11	Nagurus	https://www.inaturalist.org/observations/106569739	https://www.inaturalist.org/observations/106569739	iNaturalist	1	\N	\N	\N	\N	\N	1973	\N	iNaturalist	f
17.9641109	-66.611295	2021-12-28	Littorophiloscia	https://www.inaturalist.org/observations/106145177	https://www.inaturalist.org/observations/106145177	iNaturalist	1	\N	\N	\N	\N	\N	1974	\N	iNaturalist	f
17.9641190	-66.611290	2021-12-28	Littorophiloscia	https://www.inaturalist.org/observations/106145078	https://www.inaturalist.org/observations/106145078	iNaturalist	1	\N	\N	\N	\N	\N	1975	\N	iNaturalist	f
27.5412436	-80.334257	2022-02-02	Erichsonella attenuata	https://www.inaturalist.org/observations/106076645	https://www.inaturalist.org/observations/106076645	iNaturalist	1	\N	\N	\N	\N	\N	1976	\N	iNaturalist	f
17.9732689	-67.211990	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105989850	https://www.inaturalist.org/observations/105989850	iNaturalist	1	\N	\N	\N	\N	\N	1977	\N	iNaturalist	f
17.9732671	-67.211990	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105989830	https://www.inaturalist.org/observations/105989830	iNaturalist	1	\N	\N	\N	\N	\N	1978	\N	iNaturalist	f
17.9732687	-67.211991	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105989747	https://www.inaturalist.org/observations/105989747	iNaturalist	1	\N	\N	\N	\N	\N	1979	\N	iNaturalist	f
17.9732722	-67.211991	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105989642	https://www.inaturalist.org/observations/105989642	iNaturalist	1	\N	\N	\N	\N	\N	1980	\N	iNaturalist	f
17.9732701	-67.211990	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105989567	https://www.inaturalist.org/observations/105989567	iNaturalist	1	\N	\N	\N	\N	\N	1981	\N	iNaturalist	f
17.9732692	-67.211989	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105989511	https://www.inaturalist.org/observations/105989511	iNaturalist	1	\N	\N	\N	\N	\N	1982	\N	iNaturalist	f
17.9732698	-67.211990	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105989461	https://www.inaturalist.org/observations/105989461	iNaturalist	1	\N	\N	\N	\N	\N	1983	\N	iNaturalist	f
17.9732707	-67.211991	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105989404	https://www.inaturalist.org/observations/105989404	iNaturalist	1	\N	\N	\N	\N	\N	1984	\N	iNaturalist	f
17.9732731	-67.211993	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105989294	https://www.inaturalist.org/observations/105989294	iNaturalist	1	\N	\N	\N	\N	\N	1985	\N	iNaturalist	f
18.3496717	-67.264217	2022-01-23	Cymothoidae	https://www.inaturalist.org/observations/105985099	https://www.inaturalist.org/observations/105985099	iNaturalist	1	\N	\N	\N	\N	\N	1986	\N	iNaturalist	f
17.9728002	-67.211757	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105942503	https://www.inaturalist.org/observations/105942503	iNaturalist	1	\N	\N	\N	\N	\N	1987	\N	iNaturalist	f
17.9777782	-67.212862	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105937126	https://www.inaturalist.org/observations/105937126	iNaturalist	1	\N	\N	\N	\N	\N	1988	\N	iNaturalist	f
17.9777823	-67.212863	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105937111	https://www.inaturalist.org/observations/105937111	iNaturalist	1	\N	\N	\N	\N	\N	1989	\N	iNaturalist	f
17.9777773	-67.212862	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105937069	https://www.inaturalist.org/observations/105937069	iNaturalist	1	\N	\N	\N	\N	\N	1991	\N	iNaturalist	f
17.9777821	-67.212862	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105937045	https://www.inaturalist.org/observations/105937045	iNaturalist	1	\N	\N	\N	\N	\N	1992	\N	iNaturalist	f
17.9777810	-67.212857	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105937016	https://www.inaturalist.org/observations/105937016	iNaturalist	1	\N	\N	\N	\N	\N	1993	\N	iNaturalist	f
17.9782516	-67.212955	2021-12-27	Armadillidae	https://www.inaturalist.org/observations/105811399	https://www.inaturalist.org/observations/105811399	iNaturalist	1	\N	\N	\N	\N	\N	1994	\N	iNaturalist	f
17.9782529	-67.212955	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105811346	https://www.inaturalist.org/observations/105811346	iNaturalist	1	\N	\N	\N	\N	\N	1995	\N	iNaturalist	f
30.7137667	122.779970	2023-08-07	Ligia exotica	https://www.inaturalist.org/observations/177144551	https://inaturalist-open-data.s3.amazonaws.com/photos/308057440/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	475	\N	iNaturalist	f
33.6706943	135.330464	2023-08-07	Ligia exotica	https://www.inaturalist.org/observations/177133153	https://static.inaturalist.org/photos/308036946/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	476	\N	iNaturalist	f
33.4627760	126.938692	2023-08-05	Ligia	https://www.inaturalist.org/observations/176720784	https://inaturalist-open-data.s3.amazonaws.com/photos/326117662/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	478	\N	iNaturalist	f
34.7698183	128.598072	2023-04-16	Ligidium	https://www.inaturalist.org/observations/171171658	https://inaturalist-open-data.s3.amazonaws.com/photos/296994235/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	511	\N	iNaturalist	f
26.4304617	127.715212	2023-07-04	Ligia exotica	https://www.inaturalist.org/observations/170987462	https://static.inaturalist.org/photos/296935298/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	512	\N	iNaturalist	f
34.1666017	133.141304	2023-07-02	Ligia exotica	https://www.inaturalist.org/observations/170589181	https://static.inaturalist.org/photos/295897796/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	513	\N	iNaturalist	f
33.4627694	126.938647	2023-07-01	Ligia	https://www.inaturalist.org/observations/170428257	https://static.inaturalist.org/photos/295595411/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	514	\N	iNaturalist	f
33.4936759	126.950582	2023-07-01	Ligia exotica	https://www.inaturalist.org/observations/170377816	https://inaturalist-open-data.s3.amazonaws.com/photos/295529807/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	515	\N	iNaturalist	f
33.4936855	126.950622	2023-07-01	Ligia exotica	https://www.inaturalist.org/observations/170377735	https://inaturalist-open-data.s3.amazonaws.com/photos/295497732/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	516	\N	iNaturalist	f
17.9782535	-67.212955	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105811280	https://www.inaturalist.org/observations/105811280	iNaturalist	1	\N	\N	\N	\N	\N	1996	\N	iNaturalist	f
37.9302819	139.034189	2023-06-24	Ligia	https://www.inaturalist.org/observations/169134542	https://inaturalist-open-data.s3.amazonaws.com/photos/293203037/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	517	\N	iNaturalist	f
35.0525445	129.092469	2023-06-23	Ligia exotica	https://www.inaturalist.org/observations/168961358	https://inaturalist-open-data.s3.amazonaws.com/photos/292883511/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	518	\N	iNaturalist	f
17.9782543	-67.212955	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105811193	https://www.inaturalist.org/observations/105811193	iNaturalist	1	\N	\N	\N	\N	\N	1997	\N	iNaturalist	f
17.9782532	-67.212952	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105811172	https://www.inaturalist.org/observations/105811172	iNaturalist	1	\N	\N	\N	\N	\N	1998	\N	iNaturalist	f
17.9782601	-67.212960	2021-12-27	Crinocheta	https://www.inaturalist.org/observations/105810873	https://www.inaturalist.org/observations/105810873	iNaturalist	1	\N	\N	\N	\N	\N	1999	\N	iNaturalist	f
17.9782630	-67.212962	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810805	https://www.inaturalist.org/observations/105810805	iNaturalist	1	\N	\N	\N	\N	\N	2000	\N	iNaturalist	f
17.9782592	-67.212958	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810747	https://www.inaturalist.org/observations/105810747	iNaturalist	1	\N	\N	\N	\N	\N	2001	\N	iNaturalist	f
17.9782618	-67.212961	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810728	https://www.inaturalist.org/observations/105810728	iNaturalist	1	\N	\N	\N	\N	\N	2002	\N	iNaturalist	f
17.9782631	-67.212963	2021-12-27	Ctenorillo tuberosus	https://www.inaturalist.org/observations/105810702	https://www.inaturalist.org/observations/105810702	iNaturalist	1	\N	\N	\N	\N	\N	2003	\N	iNaturalist	f
17.9782612	-67.212963	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810653	https://www.inaturalist.org/observations/105810653	iNaturalist	1	\N	\N	\N	\N	\N	2004	\N	iNaturalist	f
17.9782629	-67.212963	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810578	https://www.inaturalist.org/observations/105810578	iNaturalist	1	\N	\N	\N	\N	\N	2005	\N	iNaturalist	f
17.9782651	-67.212960	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810168	https://www.inaturalist.org/observations/105810168	iNaturalist	1	\N	\N	\N	\N	\N	2006	\N	iNaturalist	f
26.8220000	-84.816000	2011-04-08	Bathynomus giganteus	\N	\N	Timm2018	6	West Florida Slope	200-600	longline	\N	\N	3622	157 total individuals from this survey	\N	f
35.1552388	129.153442	2021-04-10	Armadillidium vulgare	https://www.inaturalist.org/observations/73432911	https://static.inaturalist.org/photos/119883250/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	757	\N	iNaturalist	f
35.9950032	126.600775	2020-10-17	Ligia	https://www.inaturalist.org/observations/72672089	https://inaturalist-open-data.s3.amazonaws.com/photos/118526405/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	758	\N	iNaturalist	f
37.8787358	138.943596	2018-10-06	Cymothoidae	https://www.inaturalist.org/observations/72505664	https://inaturalist-open-data.s3.amazonaws.com/photos/118225651/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	759	\N	iNaturalist	f
17.9782610	-67.212960	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810152	https://www.inaturalist.org/observations/105810152	iNaturalist	1	\N	\N	\N	\N	\N	2007	\N	iNaturalist	f
17.9782604	-67.212961	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810123	https://www.inaturalist.org/observations/105810123	iNaturalist	1	\N	\N	\N	\N	\N	2008	\N	iNaturalist	f
17.9782639	-67.212963	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810088	https://www.inaturalist.org/observations/105810088	iNaturalist	1	\N	\N	\N	\N	\N	2009	\N	iNaturalist	f
17.9782616	-67.212958	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105810059	https://www.inaturalist.org/observations/105810059	iNaturalist	1	\N	\N	\N	\N	\N	2010	\N	iNaturalist	f
17.9784780	-67.213072	2021-12-27	Ctenorillo	https://www.inaturalist.org/observations/105809346	https://www.inaturalist.org/observations/105809346	iNaturalist	1	\N	\N	\N	\N	\N	2011	\N	iNaturalist	f
17.9538747	-66.849778	2021-12-27	Crinocheta	https://www.inaturalist.org/observations/105795499	https://www.inaturalist.org/observations/105795499	iNaturalist	1	\N	\N	\N	\N	\N	2012	\N	iNaturalist	f
17.9546431	-66.849315	2021-12-27	Porcellionides	https://www.inaturalist.org/observations/105794959	https://www.inaturalist.org/observations/105794959	iNaturalist	1	\N	\N	\N	\N	\N	2013	\N	iNaturalist	f
34.5099800	124.656770	2023-06-23	Ligia exotica	https://www.inaturalist.org/observations/168956740	https://inaturalist-open-data.s3.amazonaws.com/photos/292874965/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	519	\N	iNaturalist	f
17.9546428	-66.849316	2021-12-27	Crinocheta	https://www.inaturalist.org/observations/105794920	https://www.inaturalist.org/observations/105794920	iNaturalist	1	\N	\N	\N	\N	\N	2014	\N	iNaturalist	f
17.9553930	-66.849221	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105793233	https://www.inaturalist.org/observations/105793233	iNaturalist	1	\N	\N	\N	\N	\N	2015	\N	iNaturalist	f
17.9553944	-66.849220	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105793195	https://www.inaturalist.org/observations/105793195	iNaturalist	1	\N	\N	\N	\N	\N	2016	\N	iNaturalist	f
17.9553953	-66.849219	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105793153	https://www.inaturalist.org/observations/105793153	iNaturalist	1	\N	\N	\N	\N	\N	2017	\N	iNaturalist	f
17.9553958	-66.849220	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105793128	https://www.inaturalist.org/observations/105793128	iNaturalist	1	\N	\N	\N	\N	\N	2018	\N	iNaturalist	f
17.9554306	-66.849200	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105791794	https://www.inaturalist.org/observations/105791794	iNaturalist	1	\N	\N	\N	\N	\N	2019	\N	iNaturalist	f
17.9554254	-66.849204	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105791739	https://www.inaturalist.org/observations/105791739	iNaturalist	1	\N	\N	\N	\N	\N	2020	\N	iNaturalist	f
17.9536413	-66.847448	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105787383	https://www.inaturalist.org/observations/105787383	iNaturalist	1	\N	\N	\N	\N	\N	2022	\N	iNaturalist	f
17.9536403	-66.847449	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105787351	https://www.inaturalist.org/observations/105787351	iNaturalist	1	\N	\N	\N	\N	\N	2023	\N	iNaturalist	f
17.9536389	-66.847451	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105787321	https://www.inaturalist.org/observations/105787321	iNaturalist	1	\N	\N	\N	\N	\N	2024	\N	iNaturalist	f
17.9536579	-66.847439	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105787223	https://www.inaturalist.org/observations/105787223	iNaturalist	1	\N	\N	\N	\N	\N	2025	\N	iNaturalist	f
17.9536599	-66.847440	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105787137	https://www.inaturalist.org/observations/105787137	iNaturalist	1	\N	\N	\N	\N	\N	2026	\N	iNaturalist	f
17.9536686	-66.847429	2021-12-27	Venezillo culebrae	https://www.inaturalist.org/observations/105785793	https://www.inaturalist.org/observations/105785793	iNaturalist	1	\N	\N	\N	\N	\N	2027	\N	iNaturalist	f
17.9535258	-66.847355	2021-12-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/105785389	https://www.inaturalist.org/observations/105785389	iNaturalist	1	\N	\N	\N	\N	\N	2028	\N	iNaturalist	f
17.9531882	-66.847492	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105784802	https://www.inaturalist.org/observations/105784802	iNaturalist	1	\N	\N	\N	\N	\N	2029	\N	iNaturalist	f
17.9531876	-66.847494	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105784708	https://www.inaturalist.org/observations/105784708	iNaturalist	1	\N	\N	\N	\N	\N	2030	\N	iNaturalist	f
17.9531888	-66.847496	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105784628	https://www.inaturalist.org/observations/105784628	iNaturalist	1	\N	\N	\N	\N	\N	2031	\N	iNaturalist	f
17.9531870	-66.847492	2021-12-27	Littorophiloscia	https://www.inaturalist.org/observations/105784600	https://www.inaturalist.org/observations/105784600	iNaturalist	1	\N	\N	\N	\N	\N	2032	\N	iNaturalist	f
17.9538984	-66.849852	2021-12-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/105783862	https://www.inaturalist.org/observations/105783862	iNaturalist	1	\N	\N	\N	\N	\N	2034	\N	iNaturalist	f
17.9374168	-67.193010	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105743505	https://www.inaturalist.org/observations/105743505	iNaturalist	1	\N	\N	\N	\N	\N	2035	\N	iNaturalist	f
37.8047753	138.252508	2018-10-20	Ligia	https://www.inaturalist.org/observations/71000782	https://inaturalist-open-data.s3.amazonaws.com/photos/115525342/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	760	\N	iNaturalist	f
33.2433400	126.569144	2019-08-04	Ligia	https://www.inaturalist.org/observations/70411182	https://inaturalist-open-data.s3.amazonaws.com/photos/114459861/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	761	\N	iNaturalist	f
38.0935191	138.248148	2018-10-22	Ligia	https://www.inaturalist.org/observations/70119472	https://inaturalist-open-data.s3.amazonaws.com/photos/113930628/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	762	\N	iNaturalist	f
25.8123410	-81.363676	2020-02-20	Ligia exotica	https://www.inaturalist.org/observations/41454395	https://www.inaturalist.org/observations/41454395	iNaturalist	1	\N	\N	\N	\N	\N	2283	\N	iNaturalist	f
34.0142268	127.315819	2021-02-18	Ligia exotica	https://www.inaturalist.org/observations/69764685	https://inaturalist-open-data.s3.amazonaws.com/photos/113279272/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	763	\N	iNaturalist	f
34.0308333	127.296944	2021-02-16	Ligia exotica	https://www.inaturalist.org/observations/69664831	https://inaturalist-open-data.s3.amazonaws.com/photos/113088132/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	764	\N	iNaturalist	f
34.0301468	127.296318	2021-02-16	Ligidium koreanum	https://www.inaturalist.org/observations/69664582	https://inaturalist-open-data.s3.amazonaws.com/photos/113087805/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	765	\N	iNaturalist	f
34.0558333	125.121667	2021-02-11	Armadillidium vulgare	https://www.inaturalist.org/observations/69412222	https://inaturalist-open-data.s3.amazonaws.com/photos/112614921/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	766	\N	iNaturalist	f
34.2752000	133.193113	2019-09-08	Mothocya	https://www.inaturalist.org/observations/69139512	https://inaturalist-open-data.s3.amazonaws.com/photos/112122835/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	767	\N	iNaturalist	f
33.5771613	130.089531	2010-07-10	Ligia	https://www.inaturalist.org/observations/68401317	https://inaturalist-open-data.s3.amazonaws.com/photos/110747462/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	768	\N	iNaturalist	f
36.6162936	126.415650	2020-11-28	Armadillidium nasatum	https://www.inaturalist.org/observations/65777820	https://static.inaturalist.org/photos/105927656/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	769	\N	iNaturalist	f
37.0913780	125.949944	2019-09-02	Ligia	https://www.inaturalist.org/observations/65748935	https://inaturalist-open-data.s3.amazonaws.com/photos/105873804/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	770	\N	iNaturalist	f
33.5553956	126.798964	2020-11-07	Ligia	https://www.inaturalist.org/observations/64349189	https://inaturalist-open-data.s3.amazonaws.com/photos/103440351/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	771	\N	iNaturalist	f
17.9374147	-67.193011	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105742820	https://www.inaturalist.org/observations/105742820	iNaturalist	1	\N	\N	\N	\N	\N	2036	\N	iNaturalist	f
17.9374165	-67.193007	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105742365	https://www.inaturalist.org/observations/105742365	iNaturalist	1	\N	\N	\N	\N	\N	2038	\N	iNaturalist	f
17.9374133	-67.193009	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105740461	https://www.inaturalist.org/observations/105740461	iNaturalist	1	\N	\N	\N	\N	\N	2039	\N	iNaturalist	f
17.9374136	-67.193007	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105740434	https://www.inaturalist.org/observations/105740434	iNaturalist	1	\N	\N	\N	\N	\N	2040	\N	iNaturalist	f
17.9374142	-67.193010	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105740400	https://www.inaturalist.org/observations/105740400	iNaturalist	1	\N	\N	\N	\N	\N	2041	\N	iNaturalist	f
17.9374146	-67.193010	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105740382	https://www.inaturalist.org/observations/105740382	iNaturalist	1	\N	\N	\N	\N	\N	2042	\N	iNaturalist	f
17.9374178	-67.193007	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105740357	https://www.inaturalist.org/observations/105740357	iNaturalist	1	\N	\N	\N	\N	\N	2043	\N	iNaturalist	f
17.9374176	-67.193010	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105740318	https://www.inaturalist.org/observations/105740318	iNaturalist	1	\N	\N	\N	\N	\N	2044	\N	iNaturalist	f
17.9374134	-67.193014	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105740295	https://www.inaturalist.org/observations/105740295	iNaturalist	1	\N	\N	\N	\N	\N	2045	\N	iNaturalist	f
17.9374142	-67.193008	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105740253	https://www.inaturalist.org/observations/105740253	iNaturalist	1	\N	\N	\N	\N	\N	2046	\N	iNaturalist	f
17.9361303	-67.192432	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105739499	https://www.inaturalist.org/observations/105739499	iNaturalist	1	\N	\N	\N	\N	\N	2047	\N	iNaturalist	f
17.9361312	-67.192433	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105739484	https://www.inaturalist.org/observations/105739484	iNaturalist	1	\N	\N	\N	\N	\N	2048	\N	iNaturalist	f
17.9361321	-67.192431	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105739424	https://www.inaturalist.org/observations/105739424	iNaturalist	1	\N	\N	\N	\N	\N	2049	\N	iNaturalist	f
17.9361300	-67.192434	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105739320	https://www.inaturalist.org/observations/105739320	iNaturalist	1	\N	\N	\N	\N	\N	2051	\N	iNaturalist	f
17.9361284	-67.192433	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105739279	https://www.inaturalist.org/observations/105739279	iNaturalist	1	\N	\N	\N	\N	\N	2052	\N	iNaturalist	f
17.9361304	-67.192433	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105739259	https://www.inaturalist.org/observations/105739259	iNaturalist	1	\N	\N	\N	\N	\N	2053	\N	iNaturalist	f
17.9361302	-67.192432	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105739226	https://www.inaturalist.org/observations/105739226	iNaturalist	1	\N	\N	\N	\N	\N	2054	\N	iNaturalist	f
35.1172222	129.122222	2018-05-15	Ligia exotica	https://www.inaturalist.org/observations/168452501	https://inaturalist-open-data.s3.amazonaws.com/photos/291941062/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	521	\N	iNaturalist	f
32.7869750	132.859793	2023-06-18	Ligia exotica	https://www.inaturalist.org/observations/168058193	https://inaturalist-open-data.s3.amazonaws.com/photos/291207853/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	522	\N	iNaturalist	f
32.7868407	132.859813	2023-06-18	Ligia exotica	https://www.inaturalist.org/observations/168058192	https://inaturalist-open-data.s3.amazonaws.com/photos/291207821/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	523	\N	iNaturalist	f
36.2371533	136.125948	2023-05-30	Ligia	https://www.inaturalist.org/observations/167827691	https://inaturalist-open-data.s3.amazonaws.com/photos/290782585/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	525	\N	iNaturalist	f
35.2565945	139.738689	2023-05-18	Ligia exotica	https://www.inaturalist.org/observations/167655652	https://static.inaturalist.org/photos/290461445/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	526	\N	iNaturalist	f
24.4594444	124.141389	2023-06-11	Ligia	https://www.inaturalist.org/observations/167527368	https://inaturalist-open-data.s3.amazonaws.com/photos/290221420/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	527	\N	iNaturalist	f
33.5156186	126.554411	2023-06-15	Armadillidium vulgare	https://www.inaturalist.org/observations/167503944	https://inaturalist-open-data.s3.amazonaws.com/photos/290179746/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	528	\N	iNaturalist	f
33.4626883	126.308853	2023-06-13	Ligia	https://www.inaturalist.org/observations/167161893	https://inaturalist-open-data.s3.amazonaws.com/photos/289549970/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	529	\N	iNaturalist	f
26.3383937	127.749013	2023-06-12	Ligia	https://www.inaturalist.org/observations/166981920	https://static.inaturalist.org/photos/289214006/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	530	\N	iNaturalist	f
35.0603482	139.646309	2012-05-26	Nerocila japonica	https://www.inaturalist.org/observations/163960636	https://inaturalist-open-data.s3.amazonaws.com/photos/283643542/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	547	\N	iNaturalist	f
35.1419373	139.157166	2023-05-27	Ligia exotica	https://www.inaturalist.org/observations/163917601	https://inaturalist-open-data.s3.amazonaws.com/photos/283567902/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	548	\N	iNaturalist	f
35.7064967	140.867888	2023-05-26	Ligia	https://www.inaturalist.org/observations/163770812	https://inaturalist-open-data.s3.amazonaws.com/photos/283299768/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	549	\N	iNaturalist	f
28.0680022	-80.565441	2022-07-05	Ligia	https://www.inaturalist.org/observations/125179175	https://www.inaturalist.org/observations/125179175	iNaturalist	1	\N	\N	\N	\N	\N	1896	\N	iNaturalist	f
42.9488128	131.875072	2023-05-25	Ligia cinerascens	https://www.inaturalist.org/observations/163605814	https://inaturalist-open-data.s3.amazonaws.com/photos/282990837/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	550	\N	iNaturalist	f
42.9487878	131.875022	2023-05-25	Ligia cinerascens	https://www.inaturalist.org/observations/163585730	https://inaturalist-open-data.s3.amazonaws.com/photos/282951973/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	551	\N	iNaturalist	f
17.9361313	-67.192434	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105739179	https://www.inaturalist.org/observations/105739179	iNaturalist	1	\N	\N	\N	\N	\N	2055	\N	iNaturalist	f
17.9361315	-67.192435	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105739157	https://www.inaturalist.org/observations/105739157	iNaturalist	1	\N	\N	\N	\N	\N	2056	\N	iNaturalist	f
17.9361303	-67.192433	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105738884	https://www.inaturalist.org/observations/105738884	iNaturalist	1	\N	\N	\N	\N	\N	2057	\N	iNaturalist	f
17.9361311	-67.192434	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105738856	https://www.inaturalist.org/observations/105738856	iNaturalist	1	\N	\N	\N	\N	\N	2058	\N	iNaturalist	f
33.5192179	126.604123	2014-06-09	Ligia	https://www.inaturalist.org/observations/63364647	https://inaturalist-open-data.s3.amazonaws.com/photos/101679572/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	781	\N	iNaturalist	f
34.2457574	132.544273	2019-10-28	Ligia exotica	https://www.inaturalist.org/observations/38584063	https://inaturalist-open-data.s3.amazonaws.com/photos/61341265/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	846	\N	iNaturalist	f
27.8619000	-90.763600	1985-05-23	Bathynomus giganteus	\N	\N	\N	1	\N	479	\N	\N	\N	3171	PRESERVED_SPECIMEN	GBIF	f
32.9872105	129.194400	2018-05-25	Ligia exotica	https://www.inaturalist.org/observations/12822696	https://static.inaturalist.org/photos/18599052/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	937	\N	iNaturalist	f
36.6183888	-121.901341	2025-01-02	Bathynomus giganteus	https://www.inaturalist.org/observations/257202734	https://inaturalist-open-data.s3.amazonaws.com/photos/461342856/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	3011	 Captive but i wanted to share cus its cool as hell	iNaturalist	f
27.8038380	-82.596097	2024-01-01	Penaeus duorarum		\N	GBIF	1	\N	\N	\N	\N	\N	2470	\N	GBIF	f
24.6797956	-81.218708	2024-08-09	Stenoniscus nestori	https://www.inaturalist.org/observations/234682952	https://www.inaturalist.org/observations/234682952	iNaturalist	1	\N	\N	\N	\N	\N	1376	\N	iNaturalist	f
24.7395412	-81.250303	2024-08-09	Tylos niveus	https://www.inaturalist.org/observations/234682875	https://www.inaturalist.org/observations/234682875	iNaturalist	1	\N	\N	\N	\N	\N	1377	\N	iNaturalist	f
24.6155376	-81.393213	2024-08-09	Philosciidae	https://www.inaturalist.org/observations/234682751	https://www.inaturalist.org/observations/234682751	iNaturalist	1	\N	\N	\N	\N	\N	1378	\N	iNaturalist	f
24.7107289	-81.211356	2024-08-08	Philosciidae	https://www.inaturalist.org/observations/234578826	https://www.inaturalist.org/observations/234578826	iNaturalist	1	\N	\N	\N	\N	\N	1379	\N	iNaturalist	f
24.6720606	-81.222900	2024-08-08	Littorophiloscia culebrae	https://www.inaturalist.org/observations/234578533	https://www.inaturalist.org/observations/234578533	iNaturalist	1	\N	\N	\N	\N	\N	1380	\N	iNaturalist	f
24.1719830	-76.444932	2024-01-01	Stenopus hispidus		\N	GBIF	1	\N	\N	\N	\N	\N	2472	\N	GBIF	f
24.7049845	-81.323368	2024-08-05	Delatorreiidae	https://www.inaturalist.org/observations/233904816	https://www.inaturalist.org/observations/233904816	iNaturalist	1	\N	\N	\N	\N	\N	1407	\N	iNaturalist	f
24.7095150	-81.201838	2024-08-05	Agabiformius lentus	https://www.inaturalist.org/observations/233904164	https://www.inaturalist.org/observations/233904164	iNaturalist	1	\N	\N	\N	\N	\N	1408	\N	iNaturalist	f
24.7253605	-81.378062	2024-08-05	Agabiformius lentus	https://www.inaturalist.org/observations/233904063	https://www.inaturalist.org/observations/233904063	iNaturalist	1	\N	\N	\N	\N	\N	1409	\N	iNaturalist	f
24.7307016	-81.224077	2024-08-05	Agabiformius lentus	https://www.inaturalist.org/observations/233903932	https://www.inaturalist.org/observations/233903932	iNaturalist	1	\N	\N	\N	\N	\N	1410	\N	iNaturalist	f
24.6448318	-81.209841	2024-08-05	Trichorhina tomentosa	https://www.inaturalist.org/observations/233903555	https://www.inaturalist.org/observations/233903555	iNaturalist	1	\N	\N	\N	\N	\N	1411	\N	iNaturalist	f
24.6250629	-81.248719	2024-08-04	Tylos niveus	https://www.inaturalist.org/observations/233852179	https://www.inaturalist.org/observations/233852179	iNaturalist	1	\N	\N	\N	\N	\N	1412	\N	iNaturalist	f
25.0240780	-80.410813	2024-01-07	Porcellionides	https://www.inaturalist.org/observations/233838319	https://www.inaturalist.org/observations/233838319	iNaturalist	1	\N	\N	\N	\N	\N	1413	\N	iNaturalist	f
25.0414391	-80.525229	2024-01-07	Cubaris murina	https://www.inaturalist.org/observations/233838314	https://www.inaturalist.org/observations/233838314	iNaturalist	1	\N	\N	\N	\N	\N	1414	\N	iNaturalist	f
18.4927359	-66.642598	2024-07-30	Anilocra holocentri	https://www.inaturalist.org/observations/233206430	https://www.inaturalist.org/observations/233206430	iNaturalist	1	\N	\N	\N	\N	\N	1417	\N	iNaturalist	f
27.7604633	-82.631370	2024-07-31	Ligia exotica	https://www.inaturalist.org/observations/232930393	https://www.inaturalist.org/observations/232930393	iNaturalist	1	\N	\N	\N	\N	\N	1418	\N	iNaturalist	f
25.1387494	-80.927369	2024-03-24	Armadilloniscus	https://www.inaturalist.org/observations/228646565	https://www.inaturalist.org/observations/228646565	iNaturalist	1	\N	\N	\N	\N	\N	1438	\N	iNaturalist	f
25.1389514	-80.926678	2024-03-24	Littorophiloscia culebrae	https://www.inaturalist.org/observations/228646278	https://www.inaturalist.org/observations/228646278	iNaturalist	1	\N	\N	\N	\N	\N	1439	\N	iNaturalist	f
25.1385560	-80.928083	2024-03-24	Armadilloniscus luisi	https://www.inaturalist.org/observations/228644568	https://www.inaturalist.org/observations/228644568	iNaturalist	1	\N	\N	\N	\N	\N	1440	\N	iNaturalist	f
25.6665251	-80.155580	2024-07-03	Ligia exotica	https://www.inaturalist.org/observations/227075205	https://www.inaturalist.org/observations/227075205	iNaturalist	1	\N	\N	\N	\N	\N	1445	\N	iNaturalist	f
25.7987605	-80.124956	2023-08-17	Venezillo parvus	https://www.inaturalist.org/observations/226854104	https://www.inaturalist.org/observations/226854104	iNaturalist	1	\N	\N	\N	\N	\N	1446	\N	iNaturalist	f
25.8086567	-80.125814	2023-08-22	Cubaris murina	https://www.inaturalist.org/observations/226422512	https://www.inaturalist.org/observations/226422512	iNaturalist	1	\N	\N	\N	\N	\N	1447	\N	iNaturalist	f
24.5457129	-81.812416	2024-06-22	Ligia exotica	https://www.inaturalist.org/observations/225835208	https://www.inaturalist.org/observations/225835208	iNaturalist	1	\N	\N	\N	\N	\N	1448	\N	iNaturalist	f
25.1738200	-80.906083	2024-06-23	Ligia	https://www.inaturalist.org/observations/224645574	https://www.inaturalist.org/observations/224645574	iNaturalist	1	\N	\N	\N	\N	\N	1449	\N	iNaturalist	f
26.6861038	-81.830229	2023-11-16	Sphaeromatidae	https://www.inaturalist.org/observations/223628782	https://www.inaturalist.org/observations/223628782	iNaturalist	1	\N	\N	\N	\N	\N	1450	\N	iNaturalist	f
28.7422000	-88.366700	2023-06-11	Bathynomus giganteus	\N	\N	\N	1	\N	1488	\N	\N	\N	2767	MATERIAL_SAMPLE	GBIF	f
27.7094617	-82.682022	2024-03-28	Armadillidium vulgare	https://www.inaturalist.org/observations/204332698	https://www.inaturalist.org/observations/204332698	iNaturalist	1	\N	\N	\N	\N	\N	1506	\N	iNaturalist	f
27.7625028	-82.636909	2024-03-24	Venezillo parvus	https://www.inaturalist.org/observations/203821110	https://www.inaturalist.org/observations/203821110	iNaturalist	1	\N	\N	\N	\N	\N	1507	\N	iNaturalist	f
26.5095983	-78.658442	2024-03-22	Cubaris	https://www.inaturalist.org/observations/203740829	https://www.inaturalist.org/observations/203740829	iNaturalist	1	\N	\N	\N	\N	\N	1508	\N	iNaturalist	f
24.7226421	-81.453012	2024-03-22	Ligia exotica	https://www.inaturalist.org/observations/203691463	https://www.inaturalist.org/observations/203691463	iNaturalist	1	\N	\N	\N	\N	\N	1509	\N	iNaturalist	f
24.8262167	-80.814492	2024-03-23	Ligia exotica	https://www.inaturalist.org/observations/203653041	https://www.inaturalist.org/observations/203653041	iNaturalist	1	\N	\N	\N	\N	\N	1510	\N	iNaturalist	f
27.4954483	-80.303662	2024-03-23	Paracerceis	https://www.inaturalist.org/observations/203652565	https://www.inaturalist.org/observations/203652565	iNaturalist	1	\N	\N	\N	\N	\N	1511	\N	iNaturalist	f
24.6917633	-81.084144	2024-03-21	Ligia exotica	https://www.inaturalist.org/observations/203412361	https://www.inaturalist.org/observations/203412361	iNaturalist	1	\N	\N	\N	\N	\N	1512	\N	iNaturalist	f
24.6917667	-81.084144	2024-03-21	Ligia exotica	https://www.inaturalist.org/observations/203411997	https://www.inaturalist.org/observations/203411997	iNaturalist	1	\N	\N	\N	\N	\N	1513	\N	iNaturalist	f
27.4603423	-80.312811	2024-03-19	Porcellionides pruinosus	https://www.inaturalist.org/observations/203125356	https://www.inaturalist.org/observations/203125356	iNaturalist	1	\N	\N	\N	\N	\N	1514	\N	iNaturalist	f
25.0213278	-80.498822	2024-03-17	Ligia exotica	https://www.inaturalist.org/observations/202823688	https://www.inaturalist.org/observations/202823688	iNaturalist	1	\N	\N	\N	\N	\N	1515	\N	iNaturalist	f
21.7687000	-72.257575	2024-03-16	Cubaris murina	https://www.inaturalist.org/observations/202702172	https://www.inaturalist.org/observations/202702172	iNaturalist	1	\N	\N	\N	\N	\N	1516	\N	iNaturalist	f
25.1430759	-80.926132	2024-03-15	Ligia exotica	https://www.inaturalist.org/observations/202670117	https://www.inaturalist.org/observations/202670117	iNaturalist	1	\N	\N	\N	\N	\N	1517	\N	iNaturalist	f
25.1515179	-80.918499	2024-03-12	Ligia exotica	https://www.inaturalist.org/observations/202605924	https://www.inaturalist.org/observations/202605924	iNaturalist	1	\N	\N	\N	\N	\N	1519	\N	iNaturalist	f
25.1374419	-80.951788	2024-03-13	Ligia exotica	https://www.inaturalist.org/observations/202605046	https://www.inaturalist.org/observations/202605046	iNaturalist	1	\N	\N	\N	\N	\N	1520	\N	iNaturalist	f
27.7123367	-82.690903	2024-03-14	Porcellionides pruinosus	https://www.inaturalist.org/observations/202444308	https://www.inaturalist.org/observations/202444308	iNaturalist	1	\N	\N	\N	\N	\N	1523	\N	iNaturalist	f
29.4500000	-87.950000	2012-04-06	Bathynomus giganteus	https://www.ebi.ac.uk/ena/browser/view/MG229113	\N	\N	1	\N	\N	\N	\N	\N	2807	PRESERVED_SPECIMEN	GBIF	f
27.4513177	-82.691049	2024-03-10	Ligia	https://www.inaturalist.org/observations/202351442	https://www.inaturalist.org/observations/202351442	iNaturalist	1	\N	\N	\N	\N	\N	1525	\N	iNaturalist	f
24.0359132	-74.410907	2024-03-09	Bahalana geracei	https://www.inaturalist.org/observations/202169438	https://www.inaturalist.org/observations/202169438	iNaturalist	1	\N	\N	\N	\N	\N	1529	\N	iNaturalist	f
27.7119133	-82.685638	2024-03-12	Armadillidium vulgare	https://www.inaturalist.org/observations/202159937	https://www.inaturalist.org/observations/202159937	iNaturalist	1	\N	\N	\N	\N	\N	1530	\N	iNaturalist	f
25.1355883	-80.941673	2024-03-09	Ligia exotica	https://www.inaturalist.org/observations/201865684	https://www.inaturalist.org/observations/201865684	iNaturalist	1	\N	\N	\N	\N	\N	1531	\N	iNaturalist	f
28.2312535	-80.671702	2024-03-09	Erichsonella attenuata	https://www.inaturalist.org/observations/201822134	https://www.inaturalist.org/observations/201822134	iNaturalist	1	\N	\N	\N	\N	\N	1532	\N	iNaturalist	f
25.1383465	-80.929474	2024-03-06	Ligia exotica	https://www.inaturalist.org/observations/201582091	https://www.inaturalist.org/observations/201582091	iNaturalist	1	\N	\N	\N	\N	\N	1533	\N	iNaturalist	f
25.1382903	-80.929509	2024-03-06	Ligiidae	https://www.inaturalist.org/observations/201519279	https://www.inaturalist.org/observations/201519279	iNaturalist	1	\N	\N	\N	\N	\N	1534	\N	iNaturalist	f
29.1390000	-87.008000	2012-04-04	Bathynomus giganteus	\N	\N	Timm2018	6	East wall of De Soto Canyon	200-600	longline	\N	\N	3454	157 total individuals from this survey	\N	f
24.6385505	-81.290831	2024-01-12	Porcellionides virgatus	https://www.inaturalist.org/observations/196886643	https://www.inaturalist.org/observations/196886643	iNaturalist	1	\N	\N	\N	\N	\N	1580	\N	iNaturalist	f
25.1900792	-80.502451	2024-01-12	Trichorhina tomentosa	https://www.inaturalist.org/observations/196734527	https://www.inaturalist.org/observations/196734527	iNaturalist	1	\N	\N	\N	\N	\N	1586	\N	iNaturalist	f
25.0293568	-80.595470	2024-01-12	Stenoniscidae	https://www.inaturalist.org/observations/196734523	https://www.inaturalist.org/observations/196734523	iNaturalist	1	\N	\N	\N	\N	\N	1587	\N	iNaturalist	f
25.1380642	-80.466360	2024-01-12	Holoverticata	https://www.inaturalist.org/observations/196734521	https://www.inaturalist.org/observations/196734521	iNaturalist	1	\N	\N	\N	\N	\N	1588	\N	iNaturalist	f
-18.0666000	118.233300	1984-02-24	Bathynomus pelor		\N	GBIF	1	\N	\N	\N	\N	\N	3345	\N	GBIF	f
19.3262921	-81.056133	2023-12-11	Venezillo booneae	https://www.inaturalist.org/observations/194793794	https://www.inaturalist.org/observations/194793794	iNaturalist	1	\N	\N	\N	\N	\N	1610	\N	iNaturalist	f
26.9007750	-82.344278	2023-12-24	Ligia exotica	https://www.inaturalist.org/observations/194766074	https://www.inaturalist.org/observations/194766074	iNaturalist	1	\N	\N	\N	\N	\N	1611	\N	iNaturalist	f
19.2813073	-81.207398	2023-12-05	Tylos marcuzzii	https://www.inaturalist.org/observations/194598263	https://www.inaturalist.org/observations/194598263	iNaturalist	1	\N	\N	\N	\N	\N	1612	\N	iNaturalist	f
19.3959010	-81.267552	2023-12-05	Tylos marcuzzii	https://www.inaturalist.org/observations/194598262	https://www.inaturalist.org/observations/194598262	iNaturalist	1	\N	\N	\N	\N	\N	1613	\N	iNaturalist	f
19.3949410	-81.383713	2023-12-05	Littorophiloscia	https://www.inaturalist.org/observations/194597054	https://www.inaturalist.org/observations/194597054	iNaturalist	1	\N	\N	\N	\N	\N	1614	\N	iNaturalist	f
28.0703012	-82.830523	2022-09-24	Sphaeromatoidea	https://www.inaturalist.org/observations/194531487	https://www.inaturalist.org/observations/194531487	iNaturalist	1	\N	\N	\N	\N	\N	1620	\N	iNaturalist	f
27.9792001	-80.557978	2023-12-17	Armadillidium vulgare	https://www.inaturalist.org/observations/194220644	https://www.inaturalist.org/observations/194220644	iNaturalist	1	\N	\N	\N	\N	\N	1621	\N	iNaturalist	f
27.7159833	-82.683578	2023-11-20	Porcellionides pruinosus	https://www.inaturalist.org/observations/191616740	https://www.inaturalist.org/observations/191616740	iNaturalist	1	\N	\N	\N	\N	\N	1644	\N	iNaturalist	f
27.7159833	-82.683587	2023-11-20	Porcellio laevis	https://www.inaturalist.org/observations/191616549	https://www.inaturalist.org/observations/191616549	iNaturalist	1	\N	\N	\N	\N	\N	1645	\N	iNaturalist	f
27.7159717	-82.683630	2023-11-20	Porcellionides virgatus	https://www.inaturalist.org/observations/191616258	https://www.inaturalist.org/observations/191616258	iNaturalist	1	\N	\N	\N	\N	\N	1646	\N	iNaturalist	f
27.7634476	-82.515350	2023-11-07	Munnidae	https://www.inaturalist.org/observations/191427415	https://www.inaturalist.org/observations/191427415	iNaturalist	1	\N	\N	\N	\N	\N	1647	\N	iNaturalist	f
26.5290220	-80.047741	2024-01-04	Phocides pigmalion		\N	GBIF	1	\N	\N	\N	\N	\N	2638	\N	GBIF	f
26.6086470	-84.930168	\N	Bathynomus giganteus	\N	\N	GBIF	1	\N	\N	\N	\N	\N	2657	\N	GBIF	f
36.6182017	-121.901948	2022-04-09	Bathynomus giganteus	https://www.inaturalist.org/observations/156542905	https://static.inaturalist.org/photos/270706616/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2752	 	iNaturalist	f
16.2058549	-86.486093	2017-01-06	Bathynomus giganteus	https://www.inaturalist.org/observations/8329721	https://static.inaturalist.org/photos/11066172/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2766	 Seen ~ 1800’ deep within submersible. Location and exact time is not exact. 	iNaturalist	f
37.0699806	-76.479889	2023-02-23	Bathynomus giganteus	https://www.inaturalist.org/observations/149505094	https://inaturalist-open-data.s3.amazonaws.com/photos/257757059/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2753	 	iNaturalist	f
29.8597370	122.390901	2023-12-01	Cymothoidae	https://www.inaturalist.org/observations/192827328	https://inaturalist-open-data.s3.amazonaws.com/photos/338593286/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	395	\N	iNaturalist	f
19.3749133	-81.420206	2023-11-05	Anilocra myripristis	https://www.inaturalist.org/observations/190828842	https://www.inaturalist.org/observations/190828842	iNaturalist	1	\N	\N	\N	\N	\N	1648	\N	iNaturalist	f
27.0783552	-82.430560	2023-11-05	Ligia exotica	https://www.inaturalist.org/observations/190086040	https://www.inaturalist.org/observations/190086040	iNaturalist	1	\N	\N	\N	\N	\N	1650	\N	iNaturalist	f
26.5461950	-80.053422	2023-10-25	Cubaris murina	https://www.inaturalist.org/observations/189606318	https://www.inaturalist.org/observations/189606318	iNaturalist	1	\N	\N	\N	\N	\N	1651	\N	iNaturalist	f
27.7107500	-82.689797	2023-10-25	Sphaeroma quadridentatum	https://www.inaturalist.org/observations/188967259	https://www.inaturalist.org/observations/188967259	iNaturalist	1	\N	\N	\N	\N	\N	1655	\N	iNaturalist	f
27.0029907	-80.099899	2023-10-25	Cubaris murina	https://www.inaturalist.org/observations/188898585	https://www.inaturalist.org/observations/188898585	iNaturalist	1	\N	\N	\N	\N	\N	1656	\N	iNaturalist	f
27.7153072	-82.688641	2023-10-24	Atlantoscia floridana	https://www.inaturalist.org/observations/188817427	https://www.inaturalist.org/observations/188817427	iNaturalist	1	\N	\N	\N	\N	\N	1657	\N	iNaturalist	f
27.7152864	-82.688520	2023-10-24	Trichorhina	https://www.inaturalist.org/observations/188816753	https://www.inaturalist.org/observations/188816753	iNaturalist	1	\N	\N	\N	\N	\N	1658	\N	iNaturalist	f
37.4203915	122.673535	2023-01-26	Gnorimosphaeroma rayi	https://www.inaturalist.org/observations/192059939	https://inaturalist-open-data.s3.amazonaws.com/photos/337078144/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	399	\N	iNaturalist	f
28.2132688	129.836973	2023-11-24	Ligia	https://www.inaturalist.org/observations/191945309	https://inaturalist-open-data.s3.amazonaws.com/photos/336851936/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	400	\N	iNaturalist	f
28.9014000	-92.380000	1964-02-25	Bathynomus giganteus	\N	\N	\N	1	\N	29	\N	\N	\N	3261	PRESERVED_SPECIMEN	GBIF	f
26.9400000	-85.024000	2011-04-08	Bathynomus giganteus	\N	\N	Timm2018	6	West Florida Slope	200-600	longline	\N	\N	3583	157 total individuals from this survey	\N	f
27.7126717	-82.688155	2023-04-27	Atlantoscia floridana	https://www.inaturalist.org/observations/156896510	https://www.inaturalist.org/observations/156896510	iNaturalist	1	\N	\N	\N	\N	\N	1727	\N	iNaturalist	f
27.7126633	-82.688208	2023-04-27	Atlantoscia floridana	https://www.inaturalist.org/observations/156896461	https://www.inaturalist.org/observations/156896461	iNaturalist	1	\N	\N	\N	\N	\N	1728	\N	iNaturalist	f
24.5737915	-81.748002	2021-03-14	Agabiformius lentus	https://www.inaturalist.org/observations/156411705	https://www.inaturalist.org/observations/156411705	iNaturalist	1	\N	\N	\N	\N	\N	1729	\N	iNaturalist	f
22.4483330	-91.348333	1999-05-28	Bathynomus giganteus	https://www.sciencedirect.com/science/article/abs/pii/S0967063703000360	\N	Barradas-Ortiz2003	1	Yucatan Peninsula	403–418	trawl net	6–8.5	\N	2991	\N	\N	f
27.1131133	-82.468987	2020-09-30	Ligia exotica	https://www.inaturalist.org/observations/61351150	https://www.inaturalist.org/observations/61351150	iNaturalist	1	\N	\N	\N	\N	\N	2232	\N	iNaturalist	f
28.1250453	-80.575892	2020-09-29	Nerocila	https://www.inaturalist.org/observations/61214988	https://www.inaturalist.org/observations/61214988	iNaturalist	1	\N	\N	\N	\N	\N	2233	\N	iNaturalist	f
36.6178518	-121.901043	2022-12-20	Bathynomus giganteus	https://www.inaturalist.org/observations/144747363	https://static.inaturalist.org/photos/248499350/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2754	 	iNaturalist	f
17.9361266	-67.192433	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105738838	https://www.inaturalist.org/observations/105738838	iNaturalist	1	\N	\N	\N	\N	\N	2059	\N	iNaturalist	f
17.9361319	-67.192434	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105738812	https://www.inaturalist.org/observations/105738812	iNaturalist	1	\N	\N	\N	\N	\N	2060	\N	iNaturalist	f
17.9361291	-67.192434	2021-12-26	Littorophiloscia	https://www.inaturalist.org/observations/105738698	https://www.inaturalist.org/observations/105738698	iNaturalist	1	\N	\N	\N	\N	\N	2061	\N	iNaturalist	f
17.9354580	-67.190560	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105694673	https://www.inaturalist.org/observations/105694673	iNaturalist	1	\N	\N	\N	\N	\N	2062	\N	iNaturalist	f
17.9354610	-67.190562	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105694610	https://www.inaturalist.org/observations/105694610	iNaturalist	1	\N	\N	\N	\N	\N	2063	\N	iNaturalist	f
17.9354606	-67.190561	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105694575	https://www.inaturalist.org/observations/105694575	iNaturalist	1	\N	\N	\N	\N	\N	2064	\N	iNaturalist	f
17.9354619	-67.190560	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105694480	https://www.inaturalist.org/observations/105694480	iNaturalist	1	\N	\N	\N	\N	\N	2065	\N	iNaturalist	f
17.9354547	-67.190545	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105694332	https://www.inaturalist.org/observations/105694332	iNaturalist	1	\N	\N	\N	\N	\N	2066	\N	iNaturalist	f
17.9354595	-67.190561	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105693884	https://www.inaturalist.org/observations/105693884	iNaturalist	1	\N	\N	\N	\N	\N	2067	\N	iNaturalist	f
17.9354593	-67.190564	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105693835	https://www.inaturalist.org/observations/105693835	iNaturalist	1	\N	\N	\N	\N	\N	2068	\N	iNaturalist	f
17.9354525	-67.190545	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105693710	https://www.inaturalist.org/observations/105693710	iNaturalist	1	\N	\N	\N	\N	\N	2069	\N	iNaturalist	f
17.9354567	-67.190541	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105693512	https://www.inaturalist.org/observations/105693512	iNaturalist	1	\N	\N	\N	\N	\N	2070	\N	iNaturalist	f
17.9354524	-67.190545	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105693478	https://www.inaturalist.org/observations/105693478	iNaturalist	1	\N	\N	\N	\N	\N	2071	\N	iNaturalist	f
17.9354527	-67.190543	2021-12-26	Philosciidae	https://www.inaturalist.org/observations/105685122	https://www.inaturalist.org/observations/105685122	iNaturalist	1	\N	\N	\N	\N	\N	2072	\N	iNaturalist	f
17.9353525	-67.190493	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105684577	https://www.inaturalist.org/observations/105684577	iNaturalist	1	\N	\N	\N	\N	\N	2073	\N	iNaturalist	f
17.9353517	-67.190495	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105684564	https://www.inaturalist.org/observations/105684564	iNaturalist	1	\N	\N	\N	\N	\N	2074	\N	iNaturalist	f
27.9558366	-82.992727	2021-12-19	Paracerceis caudata	https://www.inaturalist.org/observations/103342388	https://www.inaturalist.org/observations/103342388	iNaturalist	1	\N	\N	\N	\N	\N	2075	\N	iNaturalist	f
17.9353505	-67.190495	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105684545	https://www.inaturalist.org/observations/105684545	iNaturalist	1	\N	\N	\N	\N	\N	2076	\N	iNaturalist	f
17.4750000	-77.500000	\N	Bathynomus giganteus	\N	\N	GBIF	1	\N	\N	\N	\N	\N	2738	\N	GBIF	f
17.9353502	-67.190494	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105684423	https://www.inaturalist.org/observations/105684423	iNaturalist	1	\N	\N	\N	\N	\N	2077	\N	iNaturalist	f
42.9490163	131.875071	2023-05-25	Ligia cinerascens	https://www.inaturalist.org/observations/163583355	https://inaturalist-open-data.s3.amazonaws.com/photos/282947385/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	552	\N	iNaturalist	f
31.1578417	130.587555	2023-05-22	Ligia exotica	https://www.inaturalist.org/observations/163068166	https://static.inaturalist.org/photos/282009343/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	553	\N	iNaturalist	f
36.4060232	126.414190	2023-05-22	Ligia exotica	https://www.inaturalist.org/observations/163033072	https://inaturalist-open-data.s3.amazonaws.com/photos/281940758/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	554	\N	iNaturalist	f
35.7062663	140.860950	2023-05-21	Porcellio scaber	https://www.inaturalist.org/observations/162873938	https://inaturalist-open-data.s3.amazonaws.com/photos/281655549/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	555	\N	iNaturalist	f
27.0899121	142.371163	2023-05-12	Burmoniscus	https://www.inaturalist.org/observations/162841296	https://static.inaturalist.org/photos/281600086/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	557	\N	iNaturalist	f
27.1642232	142.363778	2023-05-12	Armadillidae	https://www.inaturalist.org/observations/162841294	https://static.inaturalist.org/photos/281599813/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	558	\N	iNaturalist	f
33.3075764	126.163734	2023-05-21	Ligia exotica	https://www.inaturalist.org/observations/162841005	https://inaturalist-open-data.s3.amazonaws.com/photos/281600864/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	559	\N	iNaturalist	f
33.4605525	126.903981	2023-05-21	Ligiidae	https://www.inaturalist.org/observations/162836819	https://static.inaturalist.org/photos/281593538/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	560	\N	iNaturalist	f
35.1605667	129.173256	2023-05-21	Armadillidium vulgare	https://www.inaturalist.org/observations/162819717	https://static.inaturalist.org/photos/281563758/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	561	\N	iNaturalist	f
33.2539493	126.562886	2023-05-16	Ligiidae	https://www.inaturalist.org/observations/162194656	https://static.inaturalist.org/photos/280426994/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	566	\N	iNaturalist	f
33.4502533	126.303680	2023-05-17	Ligia exotica	https://www.inaturalist.org/observations/162093249	https://inaturalist-open-data.s3.amazonaws.com/photos/280245778/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	567	\N	iNaturalist	f
17.9397927	-67.192170	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105632161	https://www.inaturalist.org/observations/105632161	iNaturalist	1	\N	\N	\N	\N	\N	2082	\N	iNaturalist	f
17.9397932	-67.192167	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105632102	https://www.inaturalist.org/observations/105632102	iNaturalist	1	\N	\N	\N	\N	\N	2083	\N	iNaturalist	f
17.9397829	-67.192171	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105531102	https://www.inaturalist.org/observations/105531102	iNaturalist	1	\N	\N	\N	\N	\N	2084	\N	iNaturalist	f
17.9397852	-67.192170	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105531063	https://www.inaturalist.org/observations/105531063	iNaturalist	1	\N	\N	\N	\N	\N	2085	\N	iNaturalist	f
17.9397871	-67.192170	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105530974	https://www.inaturalist.org/observations/105530974	iNaturalist	1	\N	\N	\N	\N	\N	2086	\N	iNaturalist	f
24.8465610	-80.744263	2022-01-22	Ligia exotica	https://www.inaturalist.org/observations/105480813	https://www.inaturalist.org/observations/105480813	iNaturalist	1	\N	\N	\N	\N	\N	2087	\N	iNaturalist	f
18.4920590	-66.641663	2021-12-25	Tylos niveus	https://www.inaturalist.org/observations/105245397	https://www.inaturalist.org/observations/105245397	iNaturalist	1	\N	\N	\N	\N	\N	2088	\N	iNaturalist	f
18.4920675	-66.641660	2021-12-25	Tylos niveus	https://www.inaturalist.org/observations/105245328	https://www.inaturalist.org/observations/105245328	iNaturalist	1	\N	\N	\N	\N	\N	2089	\N	iNaturalist	f
18.4920524	-66.641664	2021-12-25	Tylos niveus	https://www.inaturalist.org/observations/105245256	https://www.inaturalist.org/observations/105245256	iNaturalist	1	\N	\N	\N	\N	\N	2090	\N	iNaturalist	f
18.4920556	-66.641663	2021-12-25	Tylos niveus	https://www.inaturalist.org/observations/105244991	https://www.inaturalist.org/observations/105244991	iNaturalist	1	\N	\N	\N	\N	\N	2091	\N	iNaturalist	f
18.4851633	-66.573275	2021-12-25	Littorophiloscia culebrae	https://www.inaturalist.org/observations/105241337	https://www.inaturalist.org/observations/105241337	iNaturalist	1	\N	\N	\N	\N	\N	2092	\N	iNaturalist	f
18.4711628	-66.122628	2021-12-23	Crinocheta	https://www.inaturalist.org/observations/105098777	https://www.inaturalist.org/observations/105098777	iNaturalist	1	\N	\N	\N	\N	\N	2093	\N	iNaturalist	f
18.4678459	-66.123702	2021-12-23	Littorophiloscia culebrae	https://www.inaturalist.org/observations/105079696	https://www.inaturalist.org/observations/105079696	iNaturalist	1	\N	\N	\N	\N	\N	2094	\N	iNaturalist	f
18.4678532	-66.123679	2021-12-23	Synocheta	https://www.inaturalist.org/observations/105079313	https://www.inaturalist.org/observations/105079313	iNaturalist	1	\N	\N	\N	\N	\N	2095	\N	iNaturalist	f
18.4662240	-66.122249	2021-12-23	Littorophiloscia culebrae	https://www.inaturalist.org/observations/105079023	https://www.inaturalist.org/observations/105079023	iNaturalist	1	\N	\N	\N	\N	\N	2096	\N	iNaturalist	f
18.4662300	-66.122247	2021-12-23	Porcellionides pruinosus	https://www.inaturalist.org/observations/105078686	https://www.inaturalist.org/observations/105078686	iNaturalist	1	\N	\N	\N	\N	\N	2097	\N	iNaturalist	f
18.4661069	-66.121391	2021-12-23	Cubaris murina	https://www.inaturalist.org/observations/105078002	https://www.inaturalist.org/observations/105078002	iNaturalist	1	\N	\N	\N	\N	\N	2098	\N	iNaturalist	f
18.4652660	-66.119341	2021-12-23	Nagurus	https://www.inaturalist.org/observations/105077667	https://www.inaturalist.org/observations/105077667	iNaturalist	1	\N	\N	\N	\N	\N	2099	\N	iNaturalist	f
19.9031475	-70.840141	2021-12-28	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/104598376	https://www.inaturalist.org/observations/104598376	iNaturalist	1	\N	\N	\N	\N	\N	2100	\N	iNaturalist	f
19.9030769	-70.840109	2021-12-28	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/104598373	https://www.inaturalist.org/observations/104598373	iNaturalist	1	\N	\N	\N	\N	\N	2101	\N	iNaturalist	f
18.4373664	-66.004902	2021-12-22	Nagurus	https://www.inaturalist.org/observations/104379107	https://www.inaturalist.org/observations/104379107	iNaturalist	1	\N	\N	\N	\N	\N	2102	\N	iNaturalist	f
18.4373745	-66.004882	2021-12-22	Nagurus	https://www.inaturalist.org/observations/104239476	https://www.inaturalist.org/observations/104239476	iNaturalist	1	\N	\N	\N	\N	\N	2103	\N	iNaturalist	f
21.8151150	-72.185207	2021-12-24	Cymothoidae	https://www.inaturalist.org/observations/104186675	https://www.inaturalist.org/observations/104186675	iNaturalist	1	\N	\N	\N	\N	\N	2104	\N	iNaturalist	f
25.1358930	-80.941647	2021-12-28	Ligia exotica	https://www.inaturalist.org/observations/103847608	https://www.inaturalist.org/observations/103847608	iNaturalist	1	\N	\N	\N	\N	\N	2105	\N	iNaturalist	f
24.2719000	-82.755300	\N	Bathynomus giganteus	\N	\N	GBIF	1	\N	\N	\N	\N	\N	2740	\N	GBIF	f
25.1382201	-80.929088	2021-03-12	Littorophiloscia culebrae	https://www.inaturalist.org/observations/103835873	https://www.inaturalist.org/observations/103835873	iNaturalist	1	\N	\N	\N	\N	\N	2106	\N	iNaturalist	f
25.0339237	-80.495555	2021-03-15	Littorophiloscia culebrae	https://www.inaturalist.org/observations/103830468	https://www.inaturalist.org/observations/103830468	iNaturalist	1	\N	\N	\N	\N	\N	2111	\N	iNaturalist	f
18.4575883	-66.076478	2021-12-26	Ligia	https://www.inaturalist.org/observations/103722710	https://www.inaturalist.org/observations/103722710	iNaturalist	1	\N	\N	\N	\N	\N	2112	\N	iNaturalist	f
27.6456300	-82.739303	2021-12-26	Sphaeroma quadridentatum	https://www.inaturalist.org/observations/103721768	https://www.inaturalist.org/observations/103721768	iNaturalist	1	\N	\N	\N	\N	\N	2113	\N	iNaturalist	f
27.6452050	-82.739630	2021-12-26	Sphaeroma quadridentatum	https://www.inaturalist.org/observations/103720274	https://www.inaturalist.org/observations/103720274	iNaturalist	1	\N	\N	\N	\N	\N	2114	\N	iNaturalist	f
27.4348877	-82.671727	2021-12-26	Venezillo parvus	https://www.inaturalist.org/observations/103715089	https://www.inaturalist.org/observations/103715089	iNaturalist	1	\N	\N	\N	\N	\N	2115	\N	iNaturalist	f
28.1447800	-83.031520	2021-12-20	Cymothooidea	https://www.inaturalist.org/observations/103393512	https://www.inaturalist.org/observations/103393512	iNaturalist	1	\N	\N	\N	\N	\N	2116	\N	iNaturalist	f
26.1724437	-80.099749	2021-11-27	Agabiformius lentus	https://www.inaturalist.org/observations/102956842	https://www.inaturalist.org/observations/102956842	iNaturalist	1	\N	\N	\N	\N	\N	2117	\N	iNaturalist	f
19.7299607	-79.742027	2021-11-27	Ligia	https://www.inaturalist.org/observations/102787651	https://www.inaturalist.org/observations/102787651	iNaturalist	1	\N	\N	\N	\N	\N	2120	\N	iNaturalist	f
19.7278145	-79.746454	2021-11-20	Anchiphiloscia pilosa	https://www.inaturalist.org/observations/101562568	https://www.inaturalist.org/observations/101562568	iNaturalist	1	\N	\N	\N	\N	\N	2121	\N	iNaturalist	f
24.6971333	-81.337283	2021-11-17	Ligia exotica	https://www.inaturalist.org/observations/101439404	https://www.inaturalist.org/observations/101439404	iNaturalist	1	\N	\N	\N	\N	\N	2122	\N	iNaturalist	f
18.4305491	-66.012184	2021-11-13	Nagurus	https://www.inaturalist.org/observations/101001321	https://www.inaturalist.org/observations/101001321	iNaturalist	1	\N	\N	\N	\N	\N	2123	\N	iNaturalist	f
27.6005571	-80.341257	2021-11-09	Oniscidea	https://www.inaturalist.org/observations/100696215	https://www.inaturalist.org/observations/100696215	iNaturalist	1	\N	\N	\N	\N	\N	2124	\N	iNaturalist	f
27.4920833	-82.709647	2021-11-03	Armadillidium vulgare	https://www.inaturalist.org/observations/100141714	https://www.inaturalist.org/observations/100141714	iNaturalist	1	\N	\N	\N	\N	\N	2125	\N	iNaturalist	f
19.3833572	-81.418678	2021-10-10	Sphaeromatidae	https://www.inaturalist.org/observations/99570874	https://www.inaturalist.org/observations/99570874	iNaturalist	1	\N	\N	\N	\N	\N	2126	\N	iNaturalist	f
18.3653596	-76.892273	2021-10-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/99552604	https://www.inaturalist.org/observations/99552604	iNaturalist	1	\N	\N	\N	\N	\N	2127	\N	iNaturalist	f
24.7909682	-81.455632	2021-10-20	Sphaeromatidea	https://www.inaturalist.org/observations/98793006	https://www.inaturalist.org/observations/98793006	iNaturalist	1	\N	\N	\N	\N	\N	2128	\N	iNaturalist	f
27.7526970	-82.630236	2021-10-15	Erichsonella attenuata	https://www.inaturalist.org/observations/98315404	https://www.inaturalist.org/observations/98315404	iNaturalist	1	\N	\N	\N	\N	\N	2129	\N	iNaturalist	f
24.7748700	-80.911220	2021-09-28	Ligia exotica	https://www.inaturalist.org/observations/98263574	https://www.inaturalist.org/observations/98263574	iNaturalist	1	\N	\N	\N	\N	\N	2130	\N	iNaturalist	f
24.7749533	-80.911038	2021-09-28	Ligia exotica	https://www.inaturalist.org/observations/98084270	https://www.inaturalist.org/observations/98084270	iNaturalist	1	\N	\N	\N	\N	\N	2131	\N	iNaturalist	f
27.6478696	-82.675469	2021-10-02	Ligia exotica	https://www.inaturalist.org/observations/97655191	https://www.inaturalist.org/observations/97655191	iNaturalist	1	\N	\N	\N	\N	\N	2133	\N	iNaturalist	f
27.6478197	-82.675426	2021-10-02	Ligia exotica	https://www.inaturalist.org/observations/97655189	https://www.inaturalist.org/observations/97655189	iNaturalist	1	\N	\N	\N	\N	\N	2134	\N	iNaturalist	f
26.6169626	-80.045085	2021-09-15	Ligia exotica	https://www.inaturalist.org/observations/94939888	https://www.inaturalist.org/observations/94939888	iNaturalist	1	\N	\N	\N	\N	\N	2137	\N	iNaturalist	f
19.3636138	-81.398982	2021-04-17	Geocerceis barbarae	https://www.inaturalist.org/observations/94176621	https://www.inaturalist.org/observations/94176621	iNaturalist	1	\N	\N	\N	\N	\N	2138	\N	iNaturalist	f
25.9476954	-81.744169	2021-08-27	Erichsonella	https://www.inaturalist.org/observations/92663688	https://www.inaturalist.org/observations/92663688	iNaturalist	1	\N	\N	\N	\N	\N	2139	\N	iNaturalist	f
24.7674750	-80.945894	2021-08-20	Ligia exotica	https://www.inaturalist.org/observations/91880631	https://www.inaturalist.org/observations/91880631	iNaturalist	1	\N	\N	\N	\N	\N	2140	\N	iNaturalist	f
28.4081440	-80.590468	2021-08-16	Ligia exotica	https://www.inaturalist.org/observations/91472011	https://www.inaturalist.org/observations/91472011	iNaturalist	1	\N	\N	\N	\N	\N	2141	\N	iNaturalist	f
24.9506732	-80.596235	2021-08-16	Ligiidae	https://www.inaturalist.org/observations/91417566	https://www.inaturalist.org/observations/91417566	iNaturalist	1	\N	\N	\N	\N	\N	2142	\N	iNaturalist	f
26.4910910	-81.989763	2021-08-06	Ligia exotica	https://www.inaturalist.org/observations/90737351	https://www.inaturalist.org/observations/90737351	iNaturalist	1	\N	\N	\N	\N	\N	2143	\N	iNaturalist	f
24.6970083	-81.337167	2021-08-08	Ligia	https://www.inaturalist.org/observations/90508679	https://www.inaturalist.org/observations/90508679	iNaturalist	1	\N	\N	\N	\N	\N	2144	\N	iNaturalist	f
28.4081300	-80.590649	2021-08-04	Ligia exotica	https://www.inaturalist.org/observations/89954172	https://www.inaturalist.org/observations/89954172	iNaturalist	1	\N	\N	\N	\N	\N	2145	\N	iNaturalist	f
26.3134498	-80.082209	2021-07-31	Ligia exotica	https://www.inaturalist.org/observations/89386586	https://www.inaturalist.org/observations/89386586	iNaturalist	1	\N	\N	\N	\N	\N	2146	\N	iNaturalist	f
24.6274133	-82.873745	2021-07-26	Ligia exotica	https://www.inaturalist.org/observations/89237152	https://www.inaturalist.org/observations/89237152	iNaturalist	1	\N	\N	\N	\N	\N	2147	\N	iNaturalist	f
28.2450435	-82.805263	2021-07-20	Rocinela signata	https://www.inaturalist.org/observations/87956057	https://www.inaturalist.org/observations/87956057	iNaturalist	1	\N	\N	\N	\N	\N	2148	\N	iNaturalist	f
28.1529472	-82.806463	2021-07-20	Ligia exotica	https://www.inaturalist.org/observations/87860776	https://www.inaturalist.org/observations/87860776	iNaturalist	1	\N	\N	\N	\N	\N	2149	\N	iNaturalist	f
26.9443914	-82.353251	2021-07-14	Ligia exotica	https://www.inaturalist.org/observations/87067841	https://www.inaturalist.org/observations/87067841	iNaturalist	1	\N	\N	\N	\N	\N	2150	\N	iNaturalist	f
26.7061717	-82.164122	2021-07-13	Ligia exotica	https://www.inaturalist.org/observations/86927964	https://www.inaturalist.org/observations/86927964	iNaturalist	1	\N	\N	\N	\N	\N	2151	\N	iNaturalist	f
24.6948518	-81.499583	2021-07-12	Ligia exotica	https://www.inaturalist.org/observations/86738837	https://www.inaturalist.org/observations/86738837	iNaturalist	1	\N	\N	\N	\N	\N	2152	\N	iNaturalist	f
27.6265335	-80.352577	2021-07-12	Sphaeromatidae	https://www.inaturalist.org/observations/86715843	https://www.inaturalist.org/observations/86715843	iNaturalist	1	\N	\N	\N	\N	\N	2153	\N	iNaturalist	f
24.6813659	-81.229982	2021-07-07	Cymothooidea	https://www.inaturalist.org/observations/86052465	https://www.inaturalist.org/observations/86052465	iNaturalist	1	\N	\N	\N	\N	\N	2154	\N	iNaturalist	f
24.6814259	-81.230177	2021-07-07	Cymothooidea	https://www.inaturalist.org/observations/86050241	https://www.inaturalist.org/observations/86050241	iNaturalist	1	\N	\N	\N	\N	\N	2155	\N	iNaturalist	f
24.8411808	-80.791801	2021-06-15	Ligia exotica	https://www.inaturalist.org/observations/85199690	https://www.inaturalist.org/observations/85199690	iNaturalist	1	\N	\N	\N	\N	\N	2156	\N	iNaturalist	f
24.8420386	-80.752875	2021-06-19	Ligia exotica	https://www.inaturalist.org/observations/85069827	https://www.inaturalist.org/observations/85069827	iNaturalist	1	\N	\N	\N	\N	\N	2157	\N	iNaturalist	f
24.8421360	-80.752833	2021-06-19	Ligia exotica	https://www.inaturalist.org/observations/85069821	https://www.inaturalist.org/observations/85069821	iNaturalist	1	\N	\N	\N	\N	\N	2158	\N	iNaturalist	f
27.4131451	-82.660416	2021-06-25	Porcellionides pruinosus	https://www.inaturalist.org/observations/84428769	https://www.inaturalist.org/observations/84428769	iNaturalist	1	\N	\N	\N	\N	\N	2159	\N	iNaturalist	f
24.8464380	-80.744307	2021-06-23	Ligia	https://www.inaturalist.org/observations/84235474	https://www.inaturalist.org/observations/84235474	iNaturalist	1	\N	\N	\N	\N	\N	2160	\N	iNaturalist	f
25.0890421	-80.828347	2021-06-17	Ligia exotica	https://www.inaturalist.org/observations/83873557	https://www.inaturalist.org/observations/83873557	iNaturalist	1	\N	\N	\N	\N	\N	2161	\N	iNaturalist	f
25.0784240	-80.592544	2021-06-16	Ligia exotica	https://www.inaturalist.org/observations/83857601	https://www.inaturalist.org/observations/83857601	iNaturalist	1	\N	\N	\N	\N	\N	2162	\N	iNaturalist	f
25.1953633	-80.565939	2021-06-16	Ligia exotica	https://www.inaturalist.org/observations/83857600	https://www.inaturalist.org/observations/83857600	iNaturalist	1	\N	\N	\N	\N	\N	2163	\N	iNaturalist	f
25.1767138	-80.535649	2021-06-16	Ligia exotica	https://www.inaturalist.org/observations/83857597	https://www.inaturalist.org/observations/83857597	iNaturalist	1	\N	\N	\N	\N	\N	2164	\N	iNaturalist	f
25.0547904	-80.391648	2021-06-18	Sphaeromatidae	https://www.inaturalist.org/observations/83581197	https://www.inaturalist.org/observations/83581197	iNaturalist	1	\N	\N	\N	\N	\N	2165	\N	iNaturalist	f
26.3064117	-80.075950	2021-06-18	Ligia	https://www.inaturalist.org/observations/83506265	https://www.inaturalist.org/observations/83506265	iNaturalist	1	\N	\N	\N	\N	\N	2166	\N	iNaturalist	f
26.3356569	-80.070625	2021-06-17	Ligia	https://www.inaturalist.org/observations/83424566	https://www.inaturalist.org/observations/83424566	iNaturalist	1	\N	\N	\N	\N	\N	2167	\N	iNaturalist	f
24.6299480	-82.871823	2021-06-11	Ligia exotica	https://www.inaturalist.org/observations/82661476	https://www.inaturalist.org/observations/82661476	iNaturalist	1	\N	\N	\N	\N	\N	2168	\N	iNaturalist	f
24.8846779	-80.685318	2021-05-31	Ligia exotica	https://www.inaturalist.org/observations/81097085	https://www.inaturalist.org/observations/81097085	iNaturalist	1	\N	\N	\N	\N	\N	2169	\N	iNaturalist	f
24.7713261	-80.943123	2021-05-30	Ligia exotica	https://www.inaturalist.org/observations/80968876	https://www.inaturalist.org/observations/80968876	iNaturalist	1	\N	\N	\N	\N	\N	2170	\N	iNaturalist	f
27.9720588	-82.828588	2021-05-28	Isopoda	https://www.inaturalist.org/observations/80896353	https://www.inaturalist.org/observations/80896353	iNaturalist	1	\N	\N	\N	\N	\N	2171	\N	iNaturalist	f
28.0674399	-82.834135	2021-05-23	Sphaeromatoidea	https://www.inaturalist.org/observations/80175375	https://www.inaturalist.org/observations/80175375	iNaturalist	1	\N	\N	\N	\N	\N	2172	\N	iNaturalist	f
25.1358056	-80.958036	2021-05-22	Ligia	https://www.inaturalist.org/observations/80168811	https://www.inaturalist.org/observations/80168811	iNaturalist	1	\N	\N	\N	\N	\N	2173	\N	iNaturalist	f
28.1527654	-80.601367	\N	Atlantoscia floridana	https://www.inaturalist.org/observations/79868486	https://www.inaturalist.org/observations/79868486	iNaturalist	1	\N	\N	\N	\N	\N	2174	\N	iNaturalist	f
25.9397325	-81.707536	2021-05-15	Ligia	https://www.inaturalist.org/observations/78918317	https://www.inaturalist.org/observations/78918317	iNaturalist	1	\N	\N	\N	\N	\N	2175	\N	iNaturalist	f
24.6291047	-82.874153	2021-05-06	Ligia	https://www.inaturalist.org/observations/77735926	https://www.inaturalist.org/observations/77735926	iNaturalist	1	\N	\N	\N	\N	\N	2176	\N	iNaturalist	f
26.7449722	-82.257867	2021-02-22	Ligia	https://www.inaturalist.org/observations/74804435	https://www.inaturalist.org/observations/74804435	iNaturalist	1	\N	\N	\N	\N	\N	2177	\N	iNaturalist	f
26.7490150	-82.261672	2021-02-22	Isopoda	https://www.inaturalist.org/observations/74803510	https://www.inaturalist.org/observations/74803510	iNaturalist	1	\N	\N	\N	\N	\N	2178	\N	iNaturalist	f
25.1353844	-80.952979	2021-04-16	Ligiidae	https://www.inaturalist.org/observations/74599532	https://www.inaturalist.org/observations/74599532	iNaturalist	1	\N	\N	\N	\N	\N	2179	\N	iNaturalist	f
25.1353756	-80.953033	2021-04-16	Ligiidae	https://www.inaturalist.org/observations/74599527	https://www.inaturalist.org/observations/74599527	iNaturalist	1	\N	\N	\N	\N	\N	2180	\N	iNaturalist	f
25.1353806	-80.953138	2021-04-16	Ligiidae	https://www.inaturalist.org/observations/74599513	https://www.inaturalist.org/observations/74599513	iNaturalist	1	\N	\N	\N	\N	\N	2181	\N	iNaturalist	f
25.1353806	-80.953146	2021-04-16	Ligia	https://www.inaturalist.org/observations/74599498	https://www.inaturalist.org/observations/74599498	iNaturalist	1	\N	\N	\N	\N	\N	2182	\N	iNaturalist	f
25.1357303	-80.955545	2021-04-16	Ligiidae	https://www.inaturalist.org/observations/74599485	https://www.inaturalist.org/observations/74599485	iNaturalist	1	\N	\N	\N	\N	\N	2183	\N	iNaturalist	f
26.3205606	-80.077238	2021-04-16	Ligia	https://www.inaturalist.org/observations/74203709	https://www.inaturalist.org/observations/74203709	iNaturalist	1	\N	\N	\N	\N	\N	2184	\N	iNaturalist	f
25.0113055	-80.511637	2021-04-11	Ligia exotica	https://www.inaturalist.org/observations/74103004	https://www.inaturalist.org/observations/74103004	iNaturalist	1	\N	\N	\N	\N	\N	2185	\N	iNaturalist	f
24.7038944	-81.155261	2021-04-09	Porcellionides	https://www.inaturalist.org/observations/73871186	https://www.inaturalist.org/observations/73871186	iNaturalist	1	\N	\N	\N	\N	\N	2186	\N	iNaturalist	f
27.4300650	-80.287727	2017-03-01	Progebiophilus upogebiae	https://www.inaturalist.org/observations/73755395	https://www.inaturalist.org/observations/73755395	iNaturalist	1	\N	\N	\N	\N	\N	2187	\N	iNaturalist	f
25.7518867	-80.148483	2024-07-11	Crinocheta	https://www.inaturalist.org/observations/228626507	https://www.inaturalist.org/observations/228626507	iNaturalist	1	\N	\N	\N	\N	\N	1441	\N	iNaturalist	f
24.7044795	-81.154507	2024-07-05	Ligia exotica	https://www.inaturalist.org/observations/227914899	https://www.inaturalist.org/observations/227914899	iNaturalist	1	\N	\N	\N	\N	\N	1442	\N	iNaturalist	f
27.8221676	-82.484298	2024-07-06	Ligia exotica	https://www.inaturalist.org/observations/227654948	https://www.inaturalist.org/observations/227654948	iNaturalist	1	\N	\N	\N	\N	\N	1443	\N	iNaturalist	f
27.4218302	-80.278720	2017-03-01	Progebiophilus upogebiae	https://www.inaturalist.org/observations/73755354	https://www.inaturalist.org/observations/73755354	iNaturalist	1	\N	\N	\N	\N	\N	2188	\N	iNaturalist	f
27.5890743	-80.209866	2014-01-25	Erichsonella attenuata	https://www.inaturalist.org/observations/73752947	https://www.inaturalist.org/observations/73752947	iNaturalist	1	\N	\N	\N	\N	\N	2189	\N	iNaturalist	f
27.4966047	-80.341661	2014-01-25	Erichsonella attenuata	https://www.inaturalist.org/observations/73752919	https://www.inaturalist.org/observations/73752919	iNaturalist	1	\N	\N	\N	\N	\N	2190	\N	iNaturalist	f
27.4010265	-80.230531	2014-01-25	Erichsonella attenuata	https://www.inaturalist.org/observations/73752885	https://www.inaturalist.org/observations/73752885	iNaturalist	1	\N	\N	\N	\N	\N	2191	\N	iNaturalist	f
27.5377999	-80.311232	2014-01-25	Erichsonella attenuata	https://www.inaturalist.org/observations/73752864	https://www.inaturalist.org/observations/73752864	iNaturalist	1	\N	\N	\N	\N	\N	2192	\N	iNaturalist	f
27.5397356	-80.364798	2016-01-27	Amakusanthura magnifica	https://www.inaturalist.org/observations/73751966	https://www.inaturalist.org/observations/73751966	iNaturalist	1	\N	\N	\N	\N	\N	2193	\N	iNaturalist	f
27.4845944	-80.237771	2016-03-24	Amakusanthura magnifica	https://www.inaturalist.org/observations/73751948	https://www.inaturalist.org/observations/73751948	iNaturalist	1	\N	\N	\N	\N	\N	2194	\N	iNaturalist	f
24.5317769	-81.666860	2019-07-04	Ligia	https://www.inaturalist.org/observations/28174323	https://www.inaturalist.org/observations/28174323	iNaturalist	1	\N	\N	\N	\N	\N	2322	\N	iNaturalist	f
27.5471976	-80.222922	2018-02-23	Amakusanthura magnifica	https://www.inaturalist.org/observations/73751145	https://www.inaturalist.org/observations/73751145	iNaturalist	1	\N	\N	\N	\N	\N	2195	\N	iNaturalist	f
27.4437960	-80.298772	2015-10-29	Erichsonella attenuata	https://www.inaturalist.org/observations/73750998	https://www.inaturalist.org/observations/73750998	iNaturalist	1	\N	\N	\N	\N	\N	2196	\N	iNaturalist	f
27.5204055	-80.212343	2015-10-29	Erichsonella attenuata	https://www.inaturalist.org/observations/73750981	https://www.inaturalist.org/observations/73750981	iNaturalist	1	\N	\N	\N	\N	\N	2197	\N	iNaturalist	f
27.4859792	-80.203756	2015-10-23	Paracerceis	https://www.inaturalist.org/observations/73750450	https://www.inaturalist.org/observations/73750450	iNaturalist	1	\N	\N	\N	\N	\N	2198	\N	iNaturalist	f
27.5560151	-80.225240	2018-03-19	Sphaeroma terebrans	https://www.inaturalist.org/observations/73750090	https://www.inaturalist.org/observations/73750090	iNaturalist	1	\N	\N	\N	\N	\N	2199	\N	iNaturalist	f
27.4530819	-80.292469	2018-03-22	Paracerceis	https://www.inaturalist.org/observations/73750007	https://www.inaturalist.org/observations/73750007	iNaturalist	1	\N	\N	\N	\N	\N	2201	\N	iNaturalist	f
27.5988548	-80.371436	2018-03-20	Ligia exotica	https://www.inaturalist.org/observations/73749987	https://www.inaturalist.org/observations/73749987	iNaturalist	1	\N	\N	\N	\N	\N	2202	\N	iNaturalist	f
27.5289867	-80.358920	2018-03-19	Excorallana	https://www.inaturalist.org/observations/73749900	https://www.inaturalist.org/observations/73749900	iNaturalist	1	\N	\N	\N	\N	\N	2203	\N	iNaturalist	f
27.4182923	-80.270936	2018-03-20	Paradella dianae	https://www.inaturalist.org/observations/73748693	https://www.inaturalist.org/observations/73748693	iNaturalist	1	\N	\N	\N	\N	\N	2204	\N	iNaturalist	f
27.4579761	-80.282216	2018-03-20	Paradella dianae	https://www.inaturalist.org/observations/73748670	https://www.inaturalist.org/observations/73748670	iNaturalist	1	\N	\N	\N	\N	\N	2205	\N	iNaturalist	f
27.5121908	-80.264484	2018-03-20	Paradella dianae	https://www.inaturalist.org/observations/73748638	https://www.inaturalist.org/observations/73748638	iNaturalist	1	\N	\N	\N	\N	\N	2206	\N	iNaturalist	f
27.5696078	-80.263938	2018-03-20	Paradella dianae	https://www.inaturalist.org/observations/73748576	https://www.inaturalist.org/observations/73748576	iNaturalist	1	\N	\N	\N	\N	\N	2207	\N	iNaturalist	f
27.5105878	-80.358341	2018-03-20	Paradella dianae	https://www.inaturalist.org/observations/73748566	https://www.inaturalist.org/observations/73748566	iNaturalist	1	\N	\N	\N	\N	\N	2208	\N	iNaturalist	f
27.5413588	-80.209665	2018-03-20	Paradella dianae	https://www.inaturalist.org/observations/73748544	https://www.inaturalist.org/observations/73748544	iNaturalist	1	\N	\N	\N	\N	\N	2209	\N	iNaturalist	f
19.7649224	-70.518859	2020-12-01	Cymothooidea	https://www.inaturalist.org/observations/73307892	https://www.inaturalist.org/observations/73307892	iNaturalist	1	\N	\N	\N	\N	\N	2210	\N	iNaturalist	f
17.9622074	-66.288676	2021-03-30	Cubaris murina	https://www.inaturalist.org/observations/72863061	https://www.inaturalist.org/observations/72863061	iNaturalist	1	\N	\N	\N	\N	\N	2212	\N	iNaturalist	f
27.4387167	-82.683957	2021-03-31	Porcellionides	https://www.inaturalist.org/observations/72629981	https://www.inaturalist.org/observations/72629981	iNaturalist	1	\N	\N	\N	\N	\N	2213	\N	iNaturalist	f
27.7578967	-80.414672	2021-04-01	Cleantioides planicauda	https://www.inaturalist.org/observations/72613315	https://www.inaturalist.org/observations/72613315	iNaturalist	1	\N	\N	\N	\N	\N	2214	\N	iNaturalist	f
28.1494932	-80.597450	2021-02-03	Armadillidium vulgare	https://www.inaturalist.org/observations/71700008	https://www.inaturalist.org/observations/71700008	iNaturalist	1	\N	\N	\N	\N	\N	2215	\N	iNaturalist	f
27.4385884	-82.683768	2021-03-20	Porcellionides	https://www.inaturalist.org/observations/71656914	https://www.inaturalist.org/observations/71656914	iNaturalist	1	\N	\N	\N	\N	\N	2216	\N	iNaturalist	f
27.6424778	-82.734919	2021-03-19	Venezillo parvus	https://www.inaturalist.org/observations/71587037	https://www.inaturalist.org/observations/71587037	iNaturalist	1	\N	\N	\N	\N	\N	2217	\N	iNaturalist	f
24.8205270	-80.819612	2021-03-19	Ligia	https://www.inaturalist.org/observations/71552805	https://www.inaturalist.org/observations/71552805	iNaturalist	1	\N	\N	\N	\N	\N	2218	\N	iNaturalist	f
25.1352723	-80.952586	2021-03-13	Ligia exotica	https://www.inaturalist.org/observations/71153159	https://www.inaturalist.org/observations/71153159	iNaturalist	1	\N	\N	\N	\N	\N	2219	\N	iNaturalist	f
27.4386514	-82.684138	2021-03-07	Porcellionides	https://www.inaturalist.org/observations/70847125	https://www.inaturalist.org/observations/70847125	iNaturalist	1	\N	\N	\N	\N	\N	2220	\N	iNaturalist	f
25.1357583	-80.957108	2021-02-23	Ligia	https://www.inaturalist.org/observations/70045800	https://www.inaturalist.org/observations/70045800	iNaturalist	1	\N	\N	\N	\N	\N	2221	\N	iNaturalist	f
37.7111964	141.016325	2023-05-16	Ligia	https://www.inaturalist.org/observations/161899746	https://inaturalist-open-data.s3.amazonaws.com/photos/279882162/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	568	\N	iNaturalist	f
18.4111740	-76.945128	2024-01-05	Panulirus guttatus		\N	GBIF	1	\N	\N	\N	\N	\N	2647	\N	GBIF	f
22.9800000	-79.280000	1955-07-16	Bathynomus giganteus	\N	\N	\N	1	\N	457	\N	\N	\N	2706	PRESERVED_SPECIMEN	GBIF	f
24.5930828	122.844394	2012-03-23	Armadillidae	https://www.inaturalist.org/observations/161787587	https://inaturalist-open-data.s3.amazonaws.com/photos/279669807/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	569	\N	iNaturalist	f
33.7362178	132.481475	2023-05-15	Ligia exotica	https://www.inaturalist.org/observations/161751887	https://inaturalist-open-data.s3.amazonaws.com/photos/279614844/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	570	\N	iNaturalist	f
26.3611298	127.744087	2023-05-14	Ligia	https://www.inaturalist.org/observations/161487782	https://inaturalist-open-data.s3.amazonaws.com/photos/279265068/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	573	\N	iNaturalist	f
26.3611298	127.744102	2023-05-14	Ligia exotica	https://www.inaturalist.org/observations/161487517	https://static.inaturalist.org/photos/279130155/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	574	\N	iNaturalist	f
34.6048715	138.842724	2023-05-11	Armadillidium vulgare	https://www.inaturalist.org/observations/161233492	https://inaturalist-open-data.s3.amazonaws.com/photos/278676238/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	575	\N	iNaturalist	f
33.4598438	126.938985	2023-05-10	Armadillidium vulgare	https://www.inaturalist.org/observations/160859499	https://inaturalist-open-data.s3.amazonaws.com/photos/278004713/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	577	\N	iNaturalist	f
34.6285524	134.428651	2023-05-03	Ligia	https://www.inaturalist.org/observations/160664267	https://inaturalist-open-data.s3.amazonaws.com/photos/277646563/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	578	\N	iNaturalist	f
34.5884003	131.239995	2023-05-08	Armadillidae	https://www.inaturalist.org/observations/160529751	https://inaturalist-open-data.s3.amazonaws.com/photos/277406516/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	579	\N	iNaturalist	f
34.4940221	131.319660	2023-05-08	Armadillidium vulgare	https://www.inaturalist.org/observations/160529750	https://inaturalist-open-data.s3.amazonaws.com/photos/277401168/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	580	\N	iNaturalist	f
34.5791500	131.296979	2023-05-06	Alloniscus balssi	https://www.inaturalist.org/observations/160529745	https://inaturalist-open-data.s3.amazonaws.com/photos/277406500/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	581	\N	iNaturalist	f
34.5814304	131.303194	2023-05-06	Armadillidae	https://www.inaturalist.org/observations/160529740	https://inaturalist-open-data.s3.amazonaws.com/photos/277393300/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	582	\N	iNaturalist	f
34.4201042	131.353981	2023-05-06	Porcellionidae	https://www.inaturalist.org/observations/160529734	https://inaturalist-open-data.s3.amazonaws.com/photos/277392988/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	583	\N	iNaturalist	f
24.8464553	-80.748111	2021-01-12	Sphaeromatidae	https://www.inaturalist.org/observations/70002473	https://www.inaturalist.org/observations/70002473	iNaturalist	1	\N	\N	\N	\N	\N	2222	\N	iNaturalist	f
25.0899172	-80.434311	2021-02-17	Ligia exotica	https://www.inaturalist.org/observations/69752135	https://www.inaturalist.org/observations/69752135	iNaturalist	1	\N	\N	\N	\N	\N	2223	\N	iNaturalist	f
18.3170460	-74.397526	2021-01-31	Porcellionides pruinosus	https://www.inaturalist.org/observations/68880572	https://www.inaturalist.org/observations/68880572	iNaturalist	1	\N	\N	\N	\N	\N	2224	\N	iNaturalist	f
18.3236985	-74.397642	2021-01-31	Ligia	https://www.inaturalist.org/observations/68875837	https://www.inaturalist.org/observations/68875837	iNaturalist	1	\N	\N	\N	\N	\N	2225	\N	iNaturalist	f
24.6298122	-82.872696	2019-03-04	Ligia exotica	https://www.inaturalist.org/observations/68780811	https://www.inaturalist.org/observations/68780811	iNaturalist	1	\N	\N	\N	\N	\N	2226	\N	iNaturalist	f
25.4519201	-80.190978	2021-01-13	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/68140527	https://www.inaturalist.org/observations/68140527	iNaturalist	1	\N	\N	\N	\N	\N	2227	\N	iNaturalist	f
26.4593324	-82.152530	2020-12-26	Atlantoscia floridana	https://www.inaturalist.org/observations/67094613	https://www.inaturalist.org/observations/67094613	iNaturalist	1	\N	\N	\N	\N	\N	2228	\N	iNaturalist	f
26.4596361	-82.154744	2020-12-20	Porcellionides pruinosus	https://www.inaturalist.org/observations/66850582	https://www.inaturalist.org/observations/66850582	iNaturalist	1	\N	\N	\N	\N	\N	2229	\N	iNaturalist	f
27.6834050	-82.737687	2020-11-12	Ligia	https://www.inaturalist.org/observations/64761515	https://www.inaturalist.org/observations/64761515	iNaturalist	1	\N	\N	\N	\N	\N	2230	\N	iNaturalist	f
26.6102167	-80.048714	2020-10-04	Ligia exotica	https://www.inaturalist.org/observations/61767425	https://www.inaturalist.org/observations/61767425	iNaturalist	1	\N	\N	\N	\N	\N	2231	\N	iNaturalist	f
27.7571148	-80.245977	2020-09-23	Ligia exotica	https://www.inaturalist.org/observations/60570137	https://www.inaturalist.org/observations/60570137	iNaturalist	1	\N	\N	\N	\N	\N	2234	\N	iNaturalist	f
26.5440667	-80.044731	2020-09-19	Ligia exotica	https://www.inaturalist.org/observations/60071297	https://www.inaturalist.org/observations/60071297	iNaturalist	1	\N	\N	\N	\N	\N	2235	\N	iNaturalist	f
27.4386576	-82.683842	2020-09-12	Armadillidium vulgare	https://www.inaturalist.org/observations/59329101	https://www.inaturalist.org/observations/59329101	iNaturalist	1	\N	\N	\N	\N	\N	2236	\N	iNaturalist	f
27.4386367	-82.683792	2020-09-12	Armadillidium vulgare	https://www.inaturalist.org/observations/59328802	https://www.inaturalist.org/observations/59328802	iNaturalist	1	\N	\N	\N	\N	\N	2237	\N	iNaturalist	f
27.7101664	-82.686578	2020-09-03	Sphaeroma	https://www.inaturalist.org/observations/58438568	https://www.inaturalist.org/observations/58438568	iNaturalist	1	\N	\N	\N	\N	\N	2238	\N	iNaturalist	f
26.4727078	-81.963458	2020-08-20	Ligia	https://www.inaturalist.org/observations/57072421	https://www.inaturalist.org/observations/57072421	iNaturalist	1	\N	\N	\N	\N	\N	2239	\N	iNaturalist	f
24.4220430	-81.043873	2020-07-08	Aegapheles antillensis	https://www.inaturalist.org/observations/56896091	https://www.inaturalist.org/observations/56896091	iNaturalist	1	\N	\N	\N	\N	\N	2240	\N	iNaturalist	f
27.4705786	-80.290940	2020-08-02	Ligia exotica	https://www.inaturalist.org/observations/55495937	https://www.inaturalist.org/observations/55495937	iNaturalist	1	\N	\N	\N	\N	\N	2243	\N	iNaturalist	f
28.4047140	-80.592922	2020-07-28	Sphaeromatidae	https://www.inaturalist.org/observations/54620790	https://www.inaturalist.org/observations/54620790	iNaturalist	1	\N	\N	\N	\N	\N	2244	\N	iNaturalist	f
26.3574946	-80.080240	2020-07-25	Venezillo parvus	https://www.inaturalist.org/observations/54268826	https://www.inaturalist.org/observations/54268826	iNaturalist	1	\N	\N	\N	\N	\N	2246	\N	iNaturalist	f
28.2470288	-80.659215	2020-07-18	Armadillidium vulgare	https://www.inaturalist.org/observations/54170405	https://www.inaturalist.org/observations/54170405	iNaturalist	1	\N	\N	\N	\N	\N	2247	\N	iNaturalist	f
26.5319417	-77.058394	2018-05-08	Ligia	https://www.inaturalist.org/observations/54057915	https://www.inaturalist.org/observations/54057915	iNaturalist	1	\N	\N	\N	\N	\N	2248	\N	iNaturalist	f
27.6239616	-82.711987	2018-04-28	Armadillidium vulgare	https://www.inaturalist.org/observations/54019509	https://www.inaturalist.org/observations/54019509	iNaturalist	1	\N	\N	\N	\N	\N	2249	\N	iNaturalist	f
27.4903279	-80.337212	2020-07-18	Isopoda	https://www.inaturalist.org/observations/53543842	https://www.inaturalist.org/observations/53543842	iNaturalist	1	\N	\N	\N	\N	\N	2250	\N	iNaturalist	f
26.1898000	-80.089600	2011-05-28	Anilocra acanthuri	https://www.inaturalist.org/observations/53338550	https://www.inaturalist.org/observations/53338550	iNaturalist	1	\N	\N	\N	\N	\N	2251	\N	iNaturalist	f
24.6274525	-82.874118	2020-07-04	Ligia exotica	https://www.inaturalist.org/observations/52884190	https://www.inaturalist.org/observations/52884190	iNaturalist	1	\N	\N	\N	\N	\N	2252	\N	iNaturalist	f
27.0985292	-80.166008	2020-06-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/51134518	https://www.inaturalist.org/observations/51134518	iNaturalist	1	\N	\N	\N	\N	\N	2253	\N	iNaturalist	f
27.0984642	-80.166147	2020-06-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/51134314	https://www.inaturalist.org/observations/51134314	iNaturalist	1	\N	\N	\N	\N	\N	2254	\N	iNaturalist	f
27.0985648	-80.166005	2020-06-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/51134208	https://www.inaturalist.org/observations/51134208	iNaturalist	1	\N	\N	\N	\N	\N	2255	\N	iNaturalist	f
27.0985591	-80.166022	2020-06-27	Porcellionides	https://www.inaturalist.org/observations/51133919	https://www.inaturalist.org/observations/51133919	iNaturalist	1	\N	\N	\N	\N	\N	2256	\N	iNaturalist	f
28.3402849	-80.660497	2020-06-26	Ligia exotica	https://www.inaturalist.org/observations/51042964	https://www.inaturalist.org/observations/51042964	iNaturalist	1	\N	\N	\N	\N	\N	2257	\N	iNaturalist	f
28.3401667	-80.660478	2020-06-23	Ligia exotica	https://www.inaturalist.org/observations/51027608	https://www.inaturalist.org/observations/51027608	iNaturalist	1	\N	\N	\N	\N	\N	2258	\N	iNaturalist	f
24.6912635	-81.086462	2020-06-16	Ligia exotica	https://www.inaturalist.org/observations/50345942	https://www.inaturalist.org/observations/50345942	iNaturalist	1	\N	\N	\N	\N	\N	2259	\N	iNaturalist	f
24.8533734	-80.381256	2020-06-13	Cymothooidea	https://www.inaturalist.org/observations/49536845	https://www.inaturalist.org/observations/49536845	iNaturalist	1	\N	\N	\N	\N	\N	2260	\N	iNaturalist	f
25.9729349	-80.015113	2020-06-09	Armadillidium vulgare	https://www.inaturalist.org/observations/49056126	https://www.inaturalist.org/observations/49056126	iNaturalist	1	\N	\N	\N	\N	\N	2261	\N	iNaturalist	f
23.1533000	-82.400600	\N	Anilocra brillae	https://www.inaturalist.org/observations/48507005	https://www.inaturalist.org/observations/48507005	iNaturalist	1	\N	\N	\N	\N	\N	2262	\N	iNaturalist	f
26.1021000	-80.099000	2014-08-11	Anilocra acanthuri	https://www.inaturalist.org/observations/48302605	https://www.inaturalist.org/observations/48302605	iNaturalist	1	\N	\N	\N	\N	\N	2263	\N	iNaturalist	f
26.3164000	-80.072800	2020-05-31	Anilocra acanthuri	https://www.inaturalist.org/observations/48083390	https://www.inaturalist.org/observations/48083390	iNaturalist	1	\N	\N	\N	\N	\N	2264	\N	iNaturalist	f
17.9397898	-67.192170	2021-12-26	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/105632411	https://www.inaturalist.org/observations/105632411	iNaturalist	1	\N	\N	\N	\N	\N	2081	\N	iNaturalist	f
43.0369284	131.894196	2022-06-22	Ligia cinerascens	https://www.inaturalist.org/observations/123179763	https://static.inaturalist.org/photos/208660323/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	661	\N	iNaturalist	f
29.8335838	122.207338	2022-12-15	Bathynomus doederleini	https://www.inaturalist.org/observations/255190576	https://www.inaturalist.org/observations/255190576	iNaturalist	1	\N	\N	\N	\N	\N	2813	\N	iNaturalist	f
37.1766663	126.618332	2018-05-22	Ligia	https://www.inaturalist.org/observations/12696210	https://inaturalist-open-data.s3.amazonaws.com/photos/18381588/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	940	\N	iNaturalist	f
33.4627629	126.938656	2018-04-30	Ligia exotica	https://www.inaturalist.org/observations/12224504	https://static.inaturalist.org/photos/17567177/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	941	\N	iNaturalist	f
33.4587771	126.939288	2018-05-07	Armadillidium	https://www.inaturalist.org/observations/12224457	https://inaturalist-open-data.s3.amazonaws.com/photos/17567052/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	942	\N	iNaturalist	f
33.4796526	135.743294	2018-04-30	Ligia exotica	https://www.inaturalist.org/observations/11984210	https://inaturalist-open-data.s3.amazonaws.com/photos/17168087/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	943	\N	iNaturalist	f
27.3428717	128.601487	2017-07-23	Ligia ryukyuensis	https://www.inaturalist.org/observations/11877386	https://static.inaturalist.org/photos/17001532/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	944	\N	iNaturalist	f
27.0934195	142.204012	2017-08-05	Ligia	https://www.inaturalist.org/observations/9131411	https://inaturalist-open-data.s3.amazonaws.com/photos/12341057/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	945	\N	iNaturalist	f
33.1977951	126.291922	2011-04-21	Armadillidium vulgare	https://www.inaturalist.org/observations/9052888	https://static.inaturalist.org/photos/12219523/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	946	\N	iNaturalist	f
33.5175669	126.500898	2008-10-16	Ligia exotica	https://www.inaturalist.org/observations/9052878	https://static.inaturalist.org/photos/12219510/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	947	\N	iNaturalist	f
34.5919096	127.556611	2015-06-13	Ligia exotica	https://www.inaturalist.org/observations/8814528	https://inaturalist-open-data.s3.amazonaws.com/photos/11839506/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	948	\N	iNaturalist	f
35.9941667	126.600833	2017-09-23	Ligia exotica	https://www.inaturalist.org/observations/8125498	https://inaturalist-open-data.s3.amazonaws.com/photos/10767239/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	949	\N	iNaturalist	f
33.3947220	126.241112	2017-09-21	Ligia exotica	https://www.inaturalist.org/observations/8056517	https://inaturalist-open-data.s3.amazonaws.com/photos/10674094/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	950	\N	iNaturalist	f
39.8024712	123.994873	2017-05-09	Ligia	https://www.inaturalist.org/observations/7071837	https://static.inaturalist.org/photos/9081534/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	951	\N	iNaturalist	f
39.8023949	123.995293	2017-05-09	Ligia	https://www.inaturalist.org/observations/7071832	https://static.inaturalist.org/photos/9081445/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	952	\N	iNaturalist	f
34.4432133	133.991425	2017-06-26	Ligia exotica	https://www.inaturalist.org/observations/6895956	https://static.inaturalist.org/photos/8798737/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	953	\N	iNaturalist	f
34.4433667	133.991438	2017-06-26	Ligia exotica	https://www.inaturalist.org/observations/6895955	https://static.inaturalist.org/photos/8798718/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	954	\N	iNaturalist	f
38.2955003	141.417915	2017-06-29	Armadillidium vulgare	https://www.inaturalist.org/observations/6848668	https://inaturalist-open-data.s3.amazonaws.com/photos/8725035/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	955	\N	iNaturalist	f
39.8030683	123.989135	2017-05-04	Ligia	https://www.inaturalist.org/observations/6665474	https://static.inaturalist.org/photos/8445901/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	956	\N	iNaturalist	f
33.5168051	126.507340	2017-03-30	Ligia exotica	https://www.inaturalist.org/observations/6520054	https://inaturalist-open-data.s3.amazonaws.com/photos/8258308/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	957	\N	iNaturalist	f
34.7951167	127.757697	2017-05-10	Ligia exotica	https://www.inaturalist.org/observations/6167637	https://static.inaturalist.org/photos/7735484/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	958	\N	iNaturalist	f
35.1916090	126.130739	2016-10-15	Ligia exotica	http://www.inaturalist.org/observations/4360161	https://inaturalist-open-data.s3.amazonaws.com/photos/5224603/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	959	\N	iNaturalist	f
36.8112546	126.154608	2016-07-30	Ligia exotica	http://www.inaturalist.org/observations/3767697	https://inaturalist-open-data.s3.amazonaws.com/photos/4390893/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	960	\N	iNaturalist	f
27.6323554	-82.725903	2024-09-04	Ligia exotica	https://www.inaturalist.org/observations/239866099	https://www.inaturalist.org/observations/239866099	iNaturalist	1	\N	\N	\N	\N	\N	1341	\N	iNaturalist	f
27.0678805	-80.114942	2024-09-02	Coxicerberus	https://www.inaturalist.org/observations/239717434	https://www.inaturalist.org/observations/239717434	iNaturalist	1	\N	\N	\N	\N	\N	1342	\N	iNaturalist	f
28.4087967	-80.631155	2024-09-02	Ligia exotica	https://www.inaturalist.org/observations/239493505	https://www.inaturalist.org/observations/239493505	iNaturalist	1	\N	\N	\N	\N	\N	1343	\N	iNaturalist	f
25.8773162	-81.479892	2024-08-14	Cymothooidea	https://www.inaturalist.org/observations/235740638	https://www.inaturalist.org/observations/235740638	iNaturalist	1	\N	\N	\N	\N	\N	1361	\N	iNaturalist	f
27.4594276	-80.317166	2024-08-12	Ligia exotica	https://www.inaturalist.org/observations/235461778	https://www.inaturalist.org/observations/235461778	iNaturalist	1	\N	\N	\N	\N	\N	1362	\N	iNaturalist	f
25.1744950	-80.903892	2024-08-08	Ligia exotica	https://www.inaturalist.org/observations/235101016	https://www.inaturalist.org/observations/235101016	iNaturalist	1	\N	\N	\N	\N	\N	1363	\N	iNaturalist	f
25.2226625	-80.648668	2024-01-09	Atlantoscia floridana	https://www.inaturalist.org/observations/235048113	https://www.inaturalist.org/observations/235048113	iNaturalist	1	\N	\N	\N	\N	\N	1364	\N	iNaturalist	f
24.6195423	-81.373670	2024-08-05	Tylos niveus	https://www.inaturalist.org/observations/233909656	https://www.inaturalist.org/observations/233909656	iNaturalist	1	\N	\N	\N	\N	\N	1395	\N	iNaturalist	f
24.7584116	-81.210508	2024-08-05	Tylos niveus	https://www.inaturalist.org/observations/233909494	https://www.inaturalist.org/observations/233909494	iNaturalist	1	\N	\N	\N	\N	\N	1396	\N	iNaturalist	f
19.2900000	-81.124167	2024-01-04	Ancylomenes pedersoni		\N	GBIF	1	\N	\N	\N	\N	\N	2616	\N	GBIF	f
24.7299587	-81.262225	2024-08-05	Tylos niveus	https://www.inaturalist.org/observations/233909415	https://www.inaturalist.org/observations/233909415	iNaturalist	1	\N	\N	\N	\N	\N	1397	\N	iNaturalist	f
27.8102960	-82.968948	2021-05-27	Ligia	https://www.inaturalist.org/observations/124681221	https://www.inaturalist.org/observations/124681221	iNaturalist	1	\N	\N	\N	\N	\N	1897	\N	iNaturalist	f
25.1404002	-80.925266	2024-03-24	Trichorhina tomentosa	https://www.inaturalist.org/observations/228647054	https://www.inaturalist.org/observations/228647054	iNaturalist	1	\N	\N	\N	\N	\N	1432	\N	iNaturalist	f
25.1403950	-80.925258	2024-03-24	Trichorhina tomentosa	https://www.inaturalist.org/observations/228647053	https://www.inaturalist.org/observations/228647053	iNaturalist	1	\N	\N	\N	\N	\N	1433	\N	iNaturalist	f
25.1398077	-80.925615	2024-03-24	Porcellionides floria	https://www.inaturalist.org/observations/228647052	https://www.inaturalist.org/observations/228647052	iNaturalist	1	\N	\N	\N	\N	\N	1434	\N	iNaturalist	f
25.1389875	-80.926612	2024-03-24	Littorophiloscia culebrae	https://www.inaturalist.org/observations/228647049	https://www.inaturalist.org/observations/228647049	iNaturalist	1	\N	\N	\N	\N	\N	1435	\N	iNaturalist	f
25.0588476	-77.366824	2020-05-22	Porcellionides pruinosus	https://www.inaturalist.org/observations/46858788	https://www.inaturalist.org/observations/46858788	iNaturalist	1	\N	\N	\N	\N	\N	2265	\N	iNaturalist	f
18.0337367	-71.130260	2020-05-19	Porcellionides	https://www.inaturalist.org/observations/46712501	https://www.inaturalist.org/observations/46712501	iNaturalist	1	\N	\N	\N	\N	\N	2266	\N	iNaturalist	f
25.1738043	-80.901075	2020-05-16	Ligia	https://www.inaturalist.org/observations/46447750	https://www.inaturalist.org/observations/46447750	iNaturalist	1	\N	\N	\N	\N	\N	2268	\N	iNaturalist	f
27.4940320	-80.310887	2020-05-17	Ligia exotica	https://www.inaturalist.org/observations/46329900	https://www.inaturalist.org/observations/46329900	iNaturalist	1	\N	\N	\N	\N	\N	2269	\N	iNaturalist	f
25.7300000	-79.300000	2020-05-17	Anilocra myripristis	https://www.inaturalist.org/observations/46253997	https://www.inaturalist.org/observations/46253997	iNaturalist	1	\N	\N	\N	\N	\N	2270	\N	iNaturalist	f
28.1556742	-80.593164	2020-05-11	Armadillidium vulgare	https://www.inaturalist.org/observations/45630340	https://www.inaturalist.org/observations/45630340	iNaturalist	1	\N	\N	\N	\N	\N	2271	\N	iNaturalist	f
21.8000000	-72.210000	2020-05-10	Anilocra brillae	https://www.inaturalist.org/observations/45489525	https://www.inaturalist.org/observations/45489525	iNaturalist	1	\N	\N	\N	\N	\N	2272	\N	iNaturalist	f
26.5400000	-77.060000	2017-07-28	Anilocra holacanthi	https://www.inaturalist.org/observations/44213534	https://www.inaturalist.org/observations/44213534	iNaturalist	1	\N	\N	\N	\N	\N	2273	\N	iNaturalist	f
24.9390470	-80.931123	2019-02-16	Tylos niveus	https://www.inaturalist.org/observations/43710796	https://www.inaturalist.org/observations/43710796	iNaturalist	1	\N	\N	\N	\N	\N	2274	\N	iNaturalist	f
24.5751679	-81.746156	2019-02-15	Porcellio laevis	https://www.inaturalist.org/observations/43666896	https://www.inaturalist.org/observations/43666896	iNaturalist	1	\N	\N	\N	\N	\N	2275	\N	iNaturalist	f
23.1990695	-81.162721	2020-04-25	Ligia	https://www.inaturalist.org/observations/43459586	https://www.inaturalist.org/observations/43459586	iNaturalist	1	\N	\N	\N	\N	\N	2278	\N	iNaturalist	f
24.9608744	-80.591572	2020-04-24	Ligia exotica	https://www.inaturalist.org/observations/43226559	https://www.inaturalist.org/observations/43226559	iNaturalist	1	\N	\N	\N	\N	\N	2279	\N	iNaturalist	f
25.0339385	-77.296616	2020-04-07	Porcellionides pruinosus	https://www.inaturalist.org/observations/41630164	https://www.inaturalist.org/observations/41630164	iNaturalist	1	\N	\N	\N	\N	\N	2281	\N	iNaturalist	f
25.0934634	-77.309162	2003-11-27	Anilocra brillae	https://www.inaturalist.org/observations/41621392	https://www.inaturalist.org/observations/41621392	iNaturalist	1	\N	\N	\N	\N	\N	2282	\N	iNaturalist	f
28.0824799	-80.571638	2020-04-01	Armadillidium vulgare	https://www.inaturalist.org/observations/41162704	https://www.inaturalist.org/observations/41162704	iNaturalist	1	\N	\N	\N	\N	\N	2284	\N	iNaturalist	f
26.7085956	-80.047881	2020-03-23	Armadillidium vulgare	https://www.inaturalist.org/observations/40974833	https://www.inaturalist.org/observations/40974833	iNaturalist	1	\N	\N	\N	\N	\N	2285	\N	iNaturalist	f
26.6303712	-80.054983	2020-03-04	Crinocheta	https://www.inaturalist.org/observations/40090541	https://www.inaturalist.org/observations/40090541	iNaturalist	1	\N	\N	\N	\N	\N	2286	\N	iNaturalist	f
25.3198802	-80.279814	2020-02-01	Stenoniscus nestori	https://www.inaturalist.org/observations/40067706	https://www.inaturalist.org/observations/40067706	iNaturalist	1	\N	\N	\N	\N	\N	2287	\N	iNaturalist	f
26.8554133	-82.290806	2020-03-13	Armadillidium vulgare	https://www.inaturalist.org/observations/39928658	https://www.inaturalist.org/observations/39928658	iNaturalist	1	\N	\N	\N	\N	\N	2289	\N	iNaturalist	f
19.3251330	-69.482460	2019-10-15	Rocinela signata	https://www.inaturalist.org/observations/39840334	https://www.inaturalist.org/observations/39840334	iNaturalist	1	\N	\N	\N	\N	\N	2290	\N	iNaturalist	f
24.1179241	-74.464155	2020-03-06	Porcellionides pruinosus	https://www.inaturalist.org/observations/39612716	https://www.inaturalist.org/observations/39612716	iNaturalist	1	\N	\N	\N	\N	\N	2291	\N	iNaturalist	f
25.0405135	-80.833716	2007-01-12	Ligia exotica	https://www.inaturalist.org/observations/39198558	https://www.inaturalist.org/observations/39198558	iNaturalist	1	\N	\N	\N	\N	\N	2292	\N	iNaturalist	f
24.7222079	-81.451079	2019-03-24	Ligia exotica	https://www.inaturalist.org/observations/39019900	https://www.inaturalist.org/observations/39019900	iNaturalist	1	\N	\N	\N	\N	\N	2293	\N	iNaturalist	f
24.6407170	-81.333303	2019-12-20	Ligia	https://www.inaturalist.org/observations/38863874	https://www.inaturalist.org/observations/38863874	iNaturalist	1	\N	\N	\N	\N	\N	2294	\N	iNaturalist	f
27.0980490	-80.132378	2020-02-02	Cubaris murina	https://www.inaturalist.org/observations/38684220	https://www.inaturalist.org/observations/38684220	iNaturalist	1	\N	\N	\N	\N	\N	2295	\N	iNaturalist	f
27.9620390	-82.827006	2020-02-13	Isopoda	https://www.inaturalist.org/observations/38614988	https://www.inaturalist.org/observations/38614988	iNaturalist	1	\N	\N	\N	\N	\N	2296	\N	iNaturalist	f
27.0053799	-80.099058	2013-01-02	Ligia	https://www.inaturalist.org/observations/38347011	https://www.inaturalist.org/observations/38347011	iNaturalist	1	\N	\N	\N	\N	\N	2297	\N	iNaturalist	f
18.4217347	-77.039768	2020-02-04	Anilocra haemuli	https://www.inaturalist.org/observations/38293700	https://www.inaturalist.org/observations/38293700	iNaturalist	1	\N	\N	\N	\N	\N	2298	\N	iNaturalist	f
25.1390927	-80.926478	2020-01-03	Ligia exotica	https://www.inaturalist.org/observations/38196661	https://www.inaturalist.org/observations/38196661	iNaturalist	1	\N	\N	\N	\N	\N	2299	\N	iNaturalist	f
26.4493945	-81.947348	2020-01-04	Ligia exotica	https://www.inaturalist.org/observations/37286105	https://www.inaturalist.org/observations/37286105	iNaturalist	1	\N	\N	\N	\N	\N	2300	\N	iNaturalist	f
25.1370767	-80.932320	2020-01-02	Ligia	https://www.inaturalist.org/observations/37280341	https://www.inaturalist.org/observations/37280341	iNaturalist	1	\N	\N	\N	\N	\N	2301	\N	iNaturalist	f
21.5284811	-71.468330	2015-11-11	Anilocra brillae	https://www.inaturalist.org/observations/37253230	https://www.inaturalist.org/observations/37253230	iNaturalist	1	\N	\N	\N	\N	\N	2302	\N	iNaturalist	f
24.6412875	-81.335836	2019-12-20	Ligia exotica	https://www.inaturalist.org/observations/36801678	https://www.inaturalist.org/observations/36801678	iNaturalist	1	\N	\N	\N	\N	\N	2304	\N	iNaturalist	f
27.8770750	-82.594642	2019-10-31	Sphaeromatidae	https://www.inaturalist.org/observations/35428252	https://www.inaturalist.org/observations/35428252	iNaturalist	1	\N	\N	\N	\N	\N	2306	\N	iNaturalist	f
28.1871069	-80.603568	2019-10-30	Armadillidium vulgare	https://www.inaturalist.org/observations/35106143	https://www.inaturalist.org/observations/35106143	iNaturalist	1	\N	\N	\N	\N	\N	2307	\N	iNaturalist	f
28.1871880	-80.603657	2019-10-30	Armadillidium vulgare	https://www.inaturalist.org/observations/35089876	https://www.inaturalist.org/observations/35089876	iNaturalist	1	\N	\N	\N	\N	\N	2308	\N	iNaturalist	f
27.4531115	-82.688939	2019-10-12	Ligia	https://www.inaturalist.org/observations/34369121	https://www.inaturalist.org/observations/34369121	iNaturalist	1	\N	\N	\N	\N	\N	2309	\N	iNaturalist	f
24.6298966	-82.873372	2019-10-09	Ligia	https://www.inaturalist.org/observations/34273127	https://www.inaturalist.org/observations/34273127	iNaturalist	1	\N	\N	\N	\N	\N	2310	\N	iNaturalist	f
25.9655077	-81.708744	2019-09-30	Ligia	https://www.inaturalist.org/observations/33660610	https://www.inaturalist.org/observations/33660610	iNaturalist	1	\N	\N	\N	\N	\N	2311	\N	iNaturalist	f
26.3058741	-80.076006	2019-09-15	Ligia exotica	https://www.inaturalist.org/observations/32866817	https://www.inaturalist.org/observations/32866817	iNaturalist	1	\N	\N	\N	\N	\N	2312	\N	iNaturalist	f
24.7507409	-80.977735	2017-02-26	Ligia exotica	https://www.inaturalist.org/observations/32792116	https://www.inaturalist.org/observations/32792116	iNaturalist	1	\N	\N	\N	\N	\N	2313	\N	iNaturalist	f
27.4703423	-80.291527	2019-09-14	Ligia exotica	https://www.inaturalist.org/observations/32726710	https://www.inaturalist.org/observations/32726710	iNaturalist	1	\N	\N	\N	\N	\N	2314	\N	iNaturalist	f
24.7507980	-80.984136	2014-11-22	Ligia exotica	https://www.inaturalist.org/observations/32032515	https://www.inaturalist.org/observations/32032515	iNaturalist	1	\N	\N	\N	\N	\N	2315	\N	iNaturalist	f
25.9612791	-81.725443	2007-12-26	Ligia exotica	https://www.inaturalist.org/observations/31921076	https://www.inaturalist.org/observations/31921076	iNaturalist	1	\N	\N	\N	\N	\N	2316	\N	iNaturalist	f
26.7205710	-82.260984	2019-08-21	Sphaeromatidae	https://www.inaturalist.org/observations/31251288	https://www.inaturalist.org/observations/31251288	iNaturalist	1	\N	\N	\N	\N	\N	2317	\N	iNaturalist	f
26.0810649	-80.022267	2019-07-27	Porcellionides pruinosus	https://www.inaturalist.org/observations/29681221	https://www.inaturalist.org/observations/29681221	iNaturalist	1	\N	\N	\N	\N	\N	2318	\N	iNaturalist	f
24.6910174	-81.086606	2019-07-25	Ligia exotica	https://www.inaturalist.org/observations/29535960	https://www.inaturalist.org/observations/29535960	iNaturalist	1	\N	\N	\N	\N	\N	2319	\N	iNaturalist	f
19.9206260	-75.131636	2019-07-10	Porcellionides pruinosus	https://www.inaturalist.org/observations/28595666	https://www.inaturalist.org/observations/28595666	iNaturalist	1	\N	\N	\N	\N	\N	2320	\N	iNaturalist	f
23.1752160	-82.098237	2019-07-05	Cleantioides	https://www.inaturalist.org/observations/28230243	https://www.inaturalist.org/observations/28230243	iNaturalist	1	\N	\N	\N	\N	\N	2321	\N	iNaturalist	f
24.7202883	-81.024697	2019-06-16	Ligia exotica	https://www.inaturalist.org/observations/27084525	https://www.inaturalist.org/observations/27084525	iNaturalist	1	\N	\N	\N	\N	\N	2323	\N	iNaturalist	f
27.2506047	-82.564036	2019-06-10	Ligia exotica	https://www.inaturalist.org/observations/26752982	https://www.inaturalist.org/observations/26752982	iNaturalist	1	\N	\N	\N	\N	\N	2324	\N	iNaturalist	f
25.7154050	-80.151862	2019-04-28	Venezillo parvus	https://www.inaturalist.org/observations/24125931	https://www.inaturalist.org/observations/24125931	iNaturalist	1	\N	\N	\N	\N	\N	2329	\N	iNaturalist	f
25.7153950	-80.151862	2019-04-28	Venezillo parvus	https://www.inaturalist.org/observations/24125925	https://www.inaturalist.org/observations/24125925	iNaturalist	1	\N	\N	\N	\N	\N	2330	\N	iNaturalist	f
25.7153967	-80.151870	2019-04-28	Venezillo parvus	https://www.inaturalist.org/observations/24125899	https://www.inaturalist.org/observations/24125899	iNaturalist	1	\N	\N	\N	\N	\N	2333	\N	iNaturalist	f
25.7154050	-80.151873	2019-04-28	Venezillo parvus	https://www.inaturalist.org/observations/24125883	https://www.inaturalist.org/observations/24125883	iNaturalist	1	\N	\N	\N	\N	\N	2334	\N	iNaturalist	f
25.7154067	-80.151867	2019-04-28	Venezillo parvus	https://www.inaturalist.org/observations/24125855	https://www.inaturalist.org/observations/24125855	iNaturalist	1	\N	\N	\N	\N	\N	2335	\N	iNaturalist	f
25.7516245	-80.146796	2019-04-27	Cubaris murina	https://www.inaturalist.org/observations/23426226	https://www.inaturalist.org/observations/23426226	iNaturalist	1	\N	\N	\N	\N	\N	2336	\N	iNaturalist	f
25.7516280	-80.146808	2019-04-27	Crinocheta	https://www.inaturalist.org/observations/23426109	https://www.inaturalist.org/observations/23426109	iNaturalist	1	\N	\N	\N	\N	\N	2337	\N	iNaturalist	f
25.1411032	-80.922893	2019-04-26	Ligia	https://www.inaturalist.org/observations/23333699	https://www.inaturalist.org/observations/23333699	iNaturalist	1	\N	\N	\N	\N	\N	2338	\N	iNaturalist	f
27.2256950	-80.212150	2019-04-25	Porcellionides pruinosus	https://www.inaturalist.org/observations/23074188	https://www.inaturalist.org/observations/23074188	iNaturalist	1	\N	\N	\N	\N	\N	2339	\N	iNaturalist	f
25.0109472	-80.511817	2019-04-19	Ligia exotica	https://www.inaturalist.org/observations/22733078	https://www.inaturalist.org/observations/22733078	iNaturalist	1	\N	\N	\N	\N	\N	2340	\N	iNaturalist	f
27.5371283	-82.738625	2019-04-08	Ligia	https://www.inaturalist.org/observations/22223516	https://www.inaturalist.org/observations/22223516	iNaturalist	1	\N	\N	\N	\N	\N	2341	\N	iNaturalist	f
25.0184222	-80.501831	2018-06-26	Ligia exotica	https://www.inaturalist.org/observations/21580719	https://www.inaturalist.org/observations/21580719	iNaturalist	1	\N	\N	\N	\N	\N	2342	\N	iNaturalist	f
26.1096787	-80.088289	2019-03-11	Cymothooidea	https://www.inaturalist.org/observations/21163868	https://www.inaturalist.org/observations/21163868	iNaturalist	1	\N	\N	\N	\N	\N	2343	\N	iNaturalist	f
24.9635759	-80.567247	2019-03-03	Ligia	https://www.inaturalist.org/observations/20930429	https://www.inaturalist.org/observations/20930429	iNaturalist	1	\N	\N	\N	\N	\N	2344	\N	iNaturalist	f
28.0836833	-82.829877	2019-02-23	Ligia exotica	https://www.inaturalist.org/observations/20732456	https://www.inaturalist.org/observations/20732456	iNaturalist	1	\N	\N	\N	\N	\N	2345	\N	iNaturalist	f
25.7926271	-80.144749	2019-02-21	Ligia exotica	https://www.inaturalist.org/observations/20704050	https://www.inaturalist.org/observations/20704050	iNaturalist	1	\N	\N	\N	\N	\N	2346	\N	iNaturalist	f
25.7851111	-80.144280	2019-02-20	Ligia exotica	https://www.inaturalist.org/observations/20701396	https://www.inaturalist.org/observations/20701396	iNaturalist	1	\N	\N	\N	\N	\N	2347	\N	iNaturalist	f
25.1411539	-80.802459	2019-02-17	Paracerceis	https://www.inaturalist.org/observations/20531088	https://www.inaturalist.org/observations/20531088	iNaturalist	1	\N	\N	\N	\N	\N	2348	\N	iNaturalist	f
25.1411484	-80.802461	2019-02-17	Sphaeromatidae	https://www.inaturalist.org/observations/20521163	https://www.inaturalist.org/observations/20521163	iNaturalist	1	\N	\N	\N	\N	\N	2349	\N	iNaturalist	f
19.6644957	-80.055125	2016-12-29	Paracerceis	https://www.inaturalist.org/observations/20287461	https://www.inaturalist.org/observations/20287461	iNaturalist	1	\N	\N	\N	\N	\N	2350	\N	iNaturalist	f
19.3943030	-81.381599	2018-12-23	Porcellionides	https://www.inaturalist.org/observations/20274298	https://www.inaturalist.org/observations/20274298	iNaturalist	1	\N	\N	\N	\N	\N	2351	\N	iNaturalist	f
25.1391940	-80.937133	2019-01-21	Ligia exotica	https://www.inaturalist.org/observations/20212115	https://www.inaturalist.org/observations/20212115	iNaturalist	1	\N	\N	\N	\N	\N	2352	\N	iNaturalist	f
19.3942750	-81.382622	2019-01-01	Littorophiloscia	https://www.inaturalist.org/observations/20045704	https://www.inaturalist.org/observations/20045704	iNaturalist	1	\N	\N	\N	\N	\N	2353	\N	iNaturalist	f
25.1397574	-80.937881	2019-01-23	Ligia exotica	https://www.inaturalist.org/observations/19981805	https://www.inaturalist.org/observations/19981805	iNaturalist	1	\N	\N	\N	\N	\N	2354	\N	iNaturalist	f
19.3965717	-81.386672	2018-12-29	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/19784035	https://www.inaturalist.org/observations/19784035	iNaturalist	1	\N	\N	\N	\N	\N	2355	\N	iNaturalist	f
25.0189278	-80.501306	2019-01-11	Ligia exotica	https://www.inaturalist.org/observations/19767207	https://www.inaturalist.org/observations/19767207	iNaturalist	1	\N	\N	\N	\N	\N	2356	\N	iNaturalist	f
19.3959250	-81.384697	2018-12-28	Ctenorillo	https://www.inaturalist.org/observations/19749324	https://www.inaturalist.org/observations/19749324	iNaturalist	1	\N	\N	\N	\N	\N	2357	\N	iNaturalist	f
25.1390431	-80.937603	2018-12-28	Ligia	https://www.inaturalist.org/observations/19469929	https://www.inaturalist.org/observations/19469929	iNaturalist	1	\N	\N	\N	\N	\N	2358	\N	iNaturalist	f
26.4255630	-82.096179	2015-12-21	Crinocheta	https://www.inaturalist.org/observations/19459411	https://www.inaturalist.org/observations/19459411	iNaturalist	1	\N	\N	\N	\N	\N	2359	\N	iNaturalist	f
19.3960033	-81.383812	2018-12-22	Tylos	https://www.inaturalist.org/observations/19162633	https://www.inaturalist.org/observations/19162633	iNaturalist	1	\N	\N	\N	\N	\N	2382	\N	iNaturalist	f
19.3961367	-81.383637	2018-12-22	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/19162362	https://www.inaturalist.org/observations/19162362	iNaturalist	1	\N	\N	\N	\N	\N	2383	\N	iNaturalist	f
19.3961417	-81.383622	2018-12-22	Littorophiloscia tropicalis	https://www.inaturalist.org/observations/19162277	https://www.inaturalist.org/observations/19162277	iNaturalist	1	\N	\N	\N	\N	\N	2384	\N	iNaturalist	f
19.3962633	-81.384833	2018-12-22	Littorophiloscia	https://www.inaturalist.org/observations/19161138	https://www.inaturalist.org/observations/19161138	iNaturalist	1	\N	\N	\N	\N	\N	2385	\N	iNaturalist	f
-23.2500000	153.870000	\N	Bathynomus kensleyi		\N	GBIF	1	\N	\N	\N	\N	\N	3420	\N	GBIF	f
19.3962783	-81.384858	2018-12-22	Littorophiloscia	https://www.inaturalist.org/observations/19160984	https://www.inaturalist.org/observations/19160984	iNaturalist	1	\N	\N	\N	\N	\N	2386	\N	iNaturalist	f
26.3844414	-80.066498	2018-12-13	Venezillo pisum	https://www.inaturalist.org/observations/19062040	https://www.inaturalist.org/observations/19062040	iNaturalist	1	\N	\N	\N	\N	\N	2387	\N	iNaturalist	f
25.0754081	-77.361471	2018-12-01	Porcellionides	https://www.inaturalist.org/observations/18759898	https://www.inaturalist.org/observations/18759898	iNaturalist	1	\N	\N	\N	\N	\N	2388	\N	iNaturalist	f
26.4305083	-80.076405	2018-11-23	Atlantoscia floridana	https://www.inaturalist.org/observations/18585076	https://www.inaturalist.org/observations/18585076	iNaturalist	1	\N	\N	\N	\N	\N	2389	\N	iNaturalist	f
26.2870642	-80.083583	2018-11-12	Ligia exotica	https://www.inaturalist.org/observations/18366421	https://www.inaturalist.org/observations/18366421	iNaturalist	1	\N	\N	\N	\N	\N	2390	\N	iNaturalist	f
25.1390324	-80.937447	2018-07-31	Ligia exotica	https://www.inaturalist.org/observations/15159255	https://www.inaturalist.org/observations/15159255	iNaturalist	1	\N	\N	\N	\N	\N	2398	\N	iNaturalist	f
24.1398305	-75.399095	2018-08-02	Ligia	https://www.inaturalist.org/observations/15059619	https://www.inaturalist.org/observations/15059619	iNaturalist	1	\N	\N	\N	\N	\N	2399	\N	iNaturalist	f
26.9621889	-80.077419	2018-07-28	Ligia exotica	https://www.inaturalist.org/observations/15003895	https://www.inaturalist.org/observations/15003895	iNaturalist	1	\N	\N	\N	\N	\N	2400	\N	iNaturalist	f
27.8141770	-80.456109	2018-07-28	Cubaris murina	https://www.inaturalist.org/observations/14944768	https://www.inaturalist.org/observations/14944768	iNaturalist	1	\N	\N	\N	\N	\N	2401	\N	iNaturalist	f
28.1769383	-80.599950	2018-07-27	Oniscidea	https://www.inaturalist.org/observations/14784764	https://www.inaturalist.org/observations/14784764	iNaturalist	1	\N	\N	\N	\N	\N	2402	\N	iNaturalist	f
24.8265370	-80.814494	2018-07-20	Ligia exotica	https://www.inaturalist.org/observations/14645332	https://www.inaturalist.org/observations/14645332	iNaturalist	1	\N	\N	\N	\N	\N	2403	\N	iNaturalist	f
24.8259327	-80.814706	2018-07-20	Ligia exotica	https://www.inaturalist.org/observations/14609899	https://www.inaturalist.org/observations/14609899	iNaturalist	1	\N	\N	\N	\N	\N	2404	\N	iNaturalist	f
24.7486130	-80.979321	2018-07-05	Ligia exotica	https://www.inaturalist.org/observations/14262278	https://www.inaturalist.org/observations/14262278	iNaturalist	1	\N	\N	\N	\N	\N	2405	\N	iNaturalist	f
24.7490869	-80.978840	2018-07-05	Ligia exotica	https://www.inaturalist.org/observations/14178995	https://www.inaturalist.org/observations/14178995	iNaturalist	1	\N	\N	\N	\N	\N	2406	\N	iNaturalist	f
27.8769930	-82.589386	2018-06-22	Cymothooidea	https://www.inaturalist.org/observations/13760868	https://www.inaturalist.org/observations/13760868	iNaturalist	1	\N	\N	\N	\N	\N	2407	\N	iNaturalist	f
25.7477100	-80.147132	2018-04-28	Venezillo parvus	https://www.inaturalist.org/observations/11823125	https://www.inaturalist.org/observations/11823125	iNaturalist	1	\N	\N	\N	\N	\N	2411	\N	iNaturalist	f
25.7477083	-80.147135	2018-04-28	Porcellionides pruinosus	https://www.inaturalist.org/observations/11823124	https://www.inaturalist.org/observations/11823124	iNaturalist	1	\N	\N	\N	\N	\N	2412	\N	iNaturalist	f
25.7520450	-80.148758	2018-04-28	Porcellionides pruinosus	https://www.inaturalist.org/observations/11806424	https://www.inaturalist.org/observations/11806424	iNaturalist	1	\N	\N	\N	\N	\N	2413	\N	iNaturalist	f
19.9176626	-75.162898	2018-03-23	Porcellionides	https://www.inaturalist.org/observations/10385854	https://www.inaturalist.org/observations/10385854	iNaturalist	1	\N	\N	\N	\N	\N	2414	\N	iNaturalist	f
19.9204466	-75.147419	2018-02-27	Ligia	https://www.inaturalist.org/observations/10020824	https://www.inaturalist.org/observations/10020824	iNaturalist	1	\N	\N	\N	\N	\N	2415	\N	iNaturalist	f
28.0546902	-82.819490	2017-08-18	Sphaeromatidae	https://www.inaturalist.org/observations/9995678	https://www.inaturalist.org/observations/9995678	iNaturalist	1	\N	\N	\N	\N	\N	2416	\N	iNaturalist	f
25.7521703	-80.147123	2016-03-12	Cubaris murina	http://www.inaturalist.org/observations/2771666	http://www.inaturalist.org/observations/2771666	iNaturalist	1	\N	\N	\N	\N	\N	2434	\N	iNaturalist	f
27.4535490	-80.289974	2015-07-27	Cymothooidea	http://www.inaturalist.org/observations/2763946	http://www.inaturalist.org/observations/2763946	iNaturalist	1	\N	\N	\N	\N	\N	2435	\N	iNaturalist	f
27.4696830	-80.291476	2015-11-19	Ligia exotica	http://www.inaturalist.org/observations/2433800	http://www.inaturalist.org/observations/2433800	iNaturalist	1	\N	\N	\N	\N	\N	2438	\N	iNaturalist	f
36.6182096	-121.901743	2024-03-30	Bathynomus giganteus	https://www.inaturalist.org/observations/204678323	https://inaturalist-open-data.s3.amazonaws.com/photos/361810829/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2746	 	iNaturalist	f
16.2206519	-61.523029	2024-02-16	Bathynomus giganteus	https://www.inaturalist.org/observations/199467004	https://inaturalist-open-data.s3.amazonaws.com/photos/351770883/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2747	 	iNaturalist	f
36.6177634	-121.900876	2023-11-19	Bathynomus giganteus	https://www.inaturalist.org/observations/192140591	https://inaturalist-open-data.s3.amazonaws.com/photos/337234935/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2748	 	iNaturalist	f
25.7534447	-79.276436	2024-05-05	Ligia exotica	https://www.inaturalist.org/observations/214064672	https://www.inaturalist.org/observations/214064672	iNaturalist	1	\N	\N	\N	\N	\N	1464	\N	iNaturalist	f
36.6178333	-121.901008	2023-10-30	Bathynomus giganteus	https://www.inaturalist.org/observations/189607402	https://inaturalist-open-data.s3.amazonaws.com/photos/358594161/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2749	 	iNaturalist	f
39.9456954	-75.131373	2009-04-09	Bathynomus giganteus	https://www.inaturalist.org/observations/160785763	https://inaturalist-open-data.s3.amazonaws.com/photos/277865429/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2750	 	iNaturalist	f
36.6187110	-121.901882	2023-04-29	Bathynomus giganteus	https://www.inaturalist.org/observations/158424587	https://inaturalist-open-data.s3.amazonaws.com/photos/273800166/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2751	 	iNaturalist	f
37.0699234	-76.479729	2022-11-08	Bathynomus giganteus	https://www.inaturalist.org/observations/141478114	https://inaturalist-open-data.s3.amazonaws.com/photos/242387721/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2755	 	iNaturalist	f
36.6178133	-121.901000	2022-05-10	Bathynomus giganteus	https://www.inaturalist.org/observations/116515046	https://static.inaturalist.org/photos/196687731/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2756	 	iNaturalist	f
36.6177627	-121.900920	2022-05-09	Bathynomus giganteus	https://www.inaturalist.org/observations/116338685	https://inaturalist-open-data.s3.amazonaws.com/photos/196371591/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2757	 	iNaturalist	f
36.6177250	-121.900881	2022-04-21	Bathynomus giganteus	https://www.inaturalist.org/observations/112331557	https://inaturalist-open-data.s3.amazonaws.com/photos/189735527/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2758	 Star feature of Monterey Bay's new "Into the Deep" exhibit. 	iNaturalist	f
37.0697566	-76.479547	2021-07-08	Bathynomus giganteus	https://www.inaturalist.org/observations/104746392	https://inaturalist-open-data.s3.amazonaws.com/photos/175618617/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2760	 Look who I got to see!	iNaturalist	f
34.8895517	139.136622	2024-10-04	Ligia exotica	https://www.inaturalist.org/observations/245552577	https://inaturalist-open-data.s3.amazonaws.com/photos/438203479/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	8	\N	iNaturalist	f
37.4441863	126.368181	2024-09-05	Ligia exotica	https://www.inaturalist.org/observations/245036989	https://inaturalist-open-data.s3.amazonaws.com/photos/437188650/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	9	\N	iNaturalist	f
37.4443978	126.371863	2024-09-04	Ligia exotica	https://www.inaturalist.org/observations/245035806	https://inaturalist-open-data.s3.amazonaws.com/photos/437183879/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	10	\N	iNaturalist	f
29.4025427	122.203332	2024-09-25	Ligia exotica	https://www.inaturalist.org/observations/244870698	https://inaturalist-open-data.s3.amazonaws.com/photos/436869365/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	11	\N	iNaturalist	f
34.5091112	136.788303	2023-09-19	Ligia	https://www.inaturalist.org/observations/244669764	https://inaturalist-open-data.s3.amazonaws.com/photos/436472752/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	12	\N	iNaturalist	f
34.3644155	139.273035	2024-09-11	Armadillidium vulgare	https://www.inaturalist.org/observations/244517434	https://inaturalist-open-data.s3.amazonaws.com/photos/436169199/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	13	\N	iNaturalist	f
42.9610194	131.891631	2024-09-26	Ligia cinerascens	https://www.inaturalist.org/observations/244239734	https://inaturalist-open-data.s3.amazonaws.com/photos/435648350/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	14	\N	iNaturalist	f
33.2211673	126.245411	2024-09-26	Ligiidae	https://www.inaturalist.org/observations/244066788	https://static.inaturalist.org/photos/435309429/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	15	\N	iNaturalist	f
34.1896177	126.923728	2024-09-15	Ligia exotica	https://www.inaturalist.org/observations/243975692	https://inaturalist-open-data.s3.amazonaws.com/photos/435126855/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	16	\N	iNaturalist	f
35.0319009	138.890357	2023-08-12	Ligia	https://www.inaturalist.org/observations/243941169	https://inaturalist-open-data.s3.amazonaws.com/photos/435062807/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	17	\N	iNaturalist	f
35.0312114	138.887771	2023-08-12	Ligia cinerascens	https://www.inaturalist.org/observations/243940989	https://inaturalist-open-data.s3.amazonaws.com/photos/435061138/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	18	\N	iNaturalist	f
30.3306712	122.187619	2024-07-13	Ligia	https://www.inaturalist.org/observations/243755963	https://inaturalist-open-data.s3.amazonaws.com/photos/434701734/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	19	\N	iNaturalist	f
34.7837661	138.760388	2024-09-17	Ligia	https://www.inaturalist.org/observations/243544060	https://inaturalist-open-data.s3.amazonaws.com/photos/434290593/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	20	\N	iNaturalist	f
27.6758883	-82.731597	2024-04-17	Ligia exotica	https://www.inaturalist.org/observations/207872484	https://www.inaturalist.org/observations/207872484	iNaturalist	1	\N	\N	\N	\N	\N	1483	\N	iNaturalist	f
34.3738696	139.261232	2024-09-10	Armadillidium vulgare	https://www.inaturalist.org/observations/243533962	https://inaturalist-open-data.s3.amazonaws.com/photos/434270038/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	21	\N	iNaturalist	f
35.1588250	129.169533	2024-09-21	Ligia exotica	https://www.inaturalist.org/observations/243028195	https://inaturalist-open-data.s3.amazonaws.com/photos/433314294/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	22	\N	iNaturalist	f
37.8749293	122.688648	2024-09-20	Ligia exotica	https://www.inaturalist.org/observations/242817011	https://inaturalist-open-data.s3.amazonaws.com/photos/432914937/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	23	\N	iNaturalist	f
34.6673367	138.935333	2024-09-18	Ligia exotica	https://www.inaturalist.org/observations/242494130	https://static.inaturalist.org/photos/432467265/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	24	\N	iNaturalist	f
36.7494243	126.058283	2024-09-14	Ligia exotica	https://www.inaturalist.org/observations/242423128	https://static.inaturalist.org/photos/432196923/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	25	\N	iNaturalist	f
34.3686896	139.242950	2024-09-10	Ligia exotica	https://www.inaturalist.org/observations/242170211	https://inaturalist-open-data.s3.amazonaws.com/photos/431705290/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	26	\N	iNaturalist	f
26.7144719	127.820548	2024-09-16	Ligia exotica	https://www.inaturalist.org/observations/242073906	https://inaturalist-open-data.s3.amazonaws.com/photos/431521470/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	27	\N	iNaturalist	f
26.2432111	127.307978	2024-09-10	Ligia exotica	https://www.inaturalist.org/observations/242069317	https://inaturalist-open-data.s3.amazonaws.com/photos/431510158/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	28	\N	iNaturalist	f
33.2388424	126.558714	2024-09-10	Ligia exotica	https://www.inaturalist.org/observations/241966192	https://inaturalist-open-data.s3.amazonaws.com/photos/431308925/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	30	\N	iNaturalist	f
44.0237574	145.868883	2024-08-01	Porcellio scaber	https://www.inaturalist.org/observations/241855407	https://inaturalist-open-data.s3.amazonaws.com/photos/431090914/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	31	\N	iNaturalist	f
35.1790246	129.206067	2024-09-15	Ligia	https://www.inaturalist.org/observations/241847692	https://static.inaturalist.org/photos/431086682/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	32	\N	iNaturalist	f
35.1227921	129.123705	2024-09-15	Ligia exotica	https://www.inaturalist.org/observations/241787812	https://static.inaturalist.org/photos/430971057/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	33	\N	iNaturalist	f
33.2372226	126.424280	2022-10-25	Ligia exotica	https://www.inaturalist.org/observations/241713818	https://inaturalist-open-data.s3.amazonaws.com/photos/430823113/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	34	\N	iNaturalist	f
33.4626590	126.938667	2024-08-22	Ligia exotica	https://www.inaturalist.org/observations/241626202	https://static.inaturalist.org/photos/430663335/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	35	\N	iNaturalist	f
26.5290130	-80.047692	2024-01-04	Phocides pigmalion		\N	GBIF	1	\N	\N	\N	\N	\N	2617	\N	GBIF	f
18.4567910	-68.422279	2024-01-05	Mastigoproctus proscorpio		\N	GBIF	1	\N	\N	\N	\N	\N	2618	\N	GBIF	f
25.8609660	-80.118995	2024-01-04	Emerita talpoida		\N	GBIF	1	\N	\N	\N	\N	\N	2619	\N	GBIF	f
18.3933470	-77.059790	2024-01-05	Camponotus capperi		\N	GBIF	1	\N	\N	\N	\N	\N	2621	\N	GBIF	f
18.3933480	-77.059738	2024-01-05	Toxomerus arcifer		\N	GBIF	1	\N	\N	\N	\N	\N	2622	\N	GBIF	f
18.3934120	-77.059792	2024-01-05	Historis odius		\N	GBIF	1	\N	\N	\N	\N	\N	2623	\N	GBIF	f
18.3934980	-77.059892	2024-01-05	Toxomerus arcifer		\N	GBIF	1	\N	\N	\N	\N	\N	2624	\N	GBIF	f
18.3935080	-77.059870	2024-01-05	Polistes crinitus		\N	GBIF	1	\N	\N	\N	\N	\N	2625	\N	GBIF	f
18.3935530	-77.060085	2024-01-05	Condylostylus longicornis		\N	GBIF	1	\N	\N	\N	\N	\N	2626	\N	GBIF	f
18.3933070	-77.060100	2024-01-05	Polistes crinitus		\N	GBIF	1	\N	\N	\N	\N	\N	2627	\N	GBIF	f
18.3931070	-77.060560	2024-01-05	Omophoita cyanipennis		\N	GBIF	1	\N	\N	\N	\N	\N	2628	\N	GBIF	f
18.3928050	-77.060560	2024-01-05	Heliconius charithonia		\N	GBIF	1	\N	\N	\N	\N	\N	2629	\N	GBIF	f
26.5040330	-80.051889	2024-01-05	Trichonephila clavipes		\N	GBIF	1	\N	\N	\N	\N	\N	2637	\N	GBIF	f
24.6667000	-81.583000	\N	Bathynomus giganteus	\N	\N	GBIF	1	\N	\N	\N	\N	\N	2717	\N	GBIF	f
27.5343320	-80.355478	2015-01-25	Atlantoscia floridana	http://www.inaturalist.org/observations/2351547	http://www.inaturalist.org/observations/2351547	iNaturalist	1	\N	\N	\N	\N	\N	2439	\N	iNaturalist	f
28.4103510	-80.618816	2015-08-05	Ligia exotica	http://www.inaturalist.org/observations/1837514	http://www.inaturalist.org/observations/1837514	iNaturalist	1	\N	\N	\N	\N	\N	2440	\N	iNaturalist	f
27.5341290	-80.355488	2015-01-24	Ligia exotica	http://www.inaturalist.org/observations/1191925	http://www.inaturalist.org/observations/1191925	iNaturalist	1	\N	\N	\N	\N	\N	2442	\N	iNaturalist	f
26.3273163	-80.071877	2007-07-02	Anilocra acanthuri	http://www.inaturalist.org/observations/1777	http://www.inaturalist.org/observations/1777	iNaturalist	1	\N	\N	\N	\N	\N	2443	\N	iNaturalist	f
36.6183943	-121.901723	2023-08-29	Bathynomus giganteus	https://www.inaturalist.org/observations/236503457	https://inaturalist-open-data.s3.amazonaws.com/photos/420758108/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2743	 	iNaturalist	f
28.7529061	-91.456627	2024-07-18	Bathynomus giganteus	https://www.inaturalist.org/observations/230168843	https://static.inaturalist.org/photos/408653995/medium.jpeg	iNaturalist	1	\N	\N	\N	\N	\N	2744	 	iNaturalist	f
36.6177833	-121.900987	2023-10-07	Bathynomus giganteus	https://www.inaturalist.org/observations/217517810	https://inaturalist-open-data.s3.amazonaws.com/photos/384814373/medium.jpg	iNaturalist	1	\N	\N	\N	\N	\N	2745	 	iNaturalist	f
-15.5151000	-38.858889	2001-04-07	Bathynomus obtusus		\N	GBIF	1	\N	\N	\N	\N	\N	3424	\N	GBIF	f
-20.6675000	-37.783333	2000-04-07	Bathynomus obtusus		\N	GBIF	1	\N	\N	\N	\N	\N	3425	\N	GBIF	f
-20.9513890	-37.783333	2000-04-08	Bathynomus obtusus		\N	GBIF	1	\N	\N	\N	\N	\N	3426	\N	GBIF	f
-20.9513890	-36.100000	2000-04-08	Bathynomus obtusus		\N	GBIF	1	\N	\N	\N	\N	\N	3427	\N	GBIF	f
-21.9377780	-40.300000	1999-06-22	Bathynomus obtusus		\N	GBIF	1	\N	\N	\N	\N	\N	3428	\N	GBIF	f
13.7014000	120.513000	1908-07-20	Bathynomus propinquus		\N	GBIF	1	\N	\N	\N	\N	\N	3430	\N	GBIF	f
-20.9328330	165.577835	1993-03-18	Bathynomus richeri		\N	GBIF	1	\N	\N	\N	\N	\N	3432	\N	GBIF	f
-22.5315000	166.425995	1993-05-14	Bathynomus richeri		\N	GBIF	1	\N	\N	\N	\N	\N	3433	\N	GBIF	f
-22.5926670	166.437164	1993-05-14	Bathynomus richeri		\N	GBIF	1	\N	\N	\N	\N	\N	3434	\N	GBIF	f
-5.3721670	145.819000	2010-10-05	Bathynomus brucei		\N	GBIF	1	\N	\N	\N	\N	\N	3436	\N	GBIF	f
-16.6500000	146.363160	1994-05-19	Bathynomus brucei		\N	GBIF	1	\N	\N	\N	\N	\N	3437	\N	GBIF	f
-20.6675000	-38.874722	2000-04-07	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3439	\N	GBIF	f
-20.9505560	-39.902222	2000-04-08	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3440	\N	GBIF	f
-20.9505560	-39.966667	2000-04-08	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3441	\N	GBIF	f
-13.5350000	-38.796111	2000-06-21	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3442	\N	GBIF	f
-13.4052780	-38.882222	2000-06-19	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3443	\N	GBIF	f
-19.7450000	-39.518889	2000-06-30	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3444	\N	GBIF	f
-13.2008330	-38.612778	2000-06-08	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3445	\N	GBIF	f
-15.9397220	-38.656944	2000-06-12	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3446	\N	GBIF	f
-14.5736110	-38.976389	2000-06-09	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3447	\N	GBIF	f
-19.9038890	-38.731111	1999-06-29	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3448	\N	GBIF	f
-2.8261400	-40.139034	1973-03-23	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3449	\N	GBIF	f
-29.3333330	-48.000000	\N	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3450	\N	GBIF	f
-29.3333330	-35.855556	\N	Bathynomus miyarei		\N	GBIF	1	\N	\N	\N	\N	\N	3451	\N	GBIF	f
24.0666670	-81.366667	1974-02-20	Bathynomus giganteus	https://invertebase.org/portal/collections/individual/index.php?occid=7915496	\N	\N	1	\N	\N	\N	\N	\N	2666	PRESERVED_SPECIMEN	GBIF	f
\.


--
-- Name: isopod_observations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremy
--

SELECT pg_catalog.setval('public.isopod_observations_id_seq', 3379, true);


--
-- Name: isopod_observations isopod_observations_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremy
--

ALTER TABLE ONLY public.isopod_observations
    ADD CONSTRAINT isopod_observations_pkey PRIMARY KEY (id);


--
-- Name: btw_iso_expedition fk_observation_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremy
--

ALTER TABLE ONLY public.btw_iso_expedition
    ADD CONSTRAINT fk_observation_id FOREIGN KEY (observation_id) REFERENCES public.isopod_observations(id);


--
-- PostgreSQL database dump complete
--

