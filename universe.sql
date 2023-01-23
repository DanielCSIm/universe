--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20),
    galaxy_id integer NOT NULL,
    has_life integer NOT NULL,
    age_in_millios_of_years integer NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20),
    moon_id integer NOT NULL,
    has_life integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: passenger; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.passenger (
    passenger_id integer NOT NULL,
    name character varying(20) NOT NULL,
    passenger_description text
);


ALTER TABLE public.passenger OWNER TO freecodecamp;

--
-- Name: passenger_passenger_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.passenger_passenger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.passenger_passenger_id_seq OWNER TO freecodecamp;

--
-- Name: passenger_passenger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.passenger_passenger_id_seq OWNED BY public.passenger.passenger_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20),
    planet_id integer NOT NULL,
    has_life integer NOT NULL,
    age_in_millios_of_years integer NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20),
    star_id integer NOT NULL,
    has_life integer NOT NULL,
    age_in_millios_of_years integer NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: passenger passenger_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.passenger ALTER COLUMN passenger_id SET DEFAULT nextval('public.passenger_passenger_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Kgalaxy', 1, 2070, 2070000, 100, true);
INSERT INTO public.galaxy VALUES ('Lgalaxy', 2, 2070, 2070000, 1001, true);
INSERT INTO public.galaxy VALUES ('Mgalaxy', 3, 2070, 2070000, 1002, true);
INSERT INTO public.galaxy VALUES ('Mgalaxy', 4, 2070, 2070000, 1003, false);
INSERT INTO public.galaxy VALUES ('Xgalaxy', 5, 2070, 2070000, 1004, false);
INSERT INTO public.galaxy VALUES ('Zgalaxy', 6, 2070, 2070000, 1005, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('K', 1, 200, 200000, 50, true, 1);
INSERT INTO public.moon VALUES ('K', 2, 200, 200000, 501, true, 1);
INSERT INTO public.moon VALUES ('K', 3, 200, 200000, 5011, true, 1);
INSERT INTO public.moon VALUES ('K', 4, 200, 200000, 50111, true, 1);
INSERT INTO public.moon VALUES ('K', 5, 200, 200000, 501111, true, 1);
INSERT INTO public.moon VALUES ('K', 6, 200, 200000, 5011111, true, 1);
INSERT INTO public.moon VALUES ('K', 7, 200, 200000, 50111111, true, 1);
INSERT INTO public.moon VALUES ('K', 8, 200, 200000, 501111111, true, 1);
INSERT INTO public.moon VALUES ('K', 9, 200, 200000, 5011111111, true, 1);
INSERT INTO public.moon VALUES ('K', 10, 200, 200000, 50111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 11, 200, 200000, 501111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 12, 200, 200000, 5011111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 13, 200, 200000, 50111111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 14, 200, 200000, 501111111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 15, 200, 200000, 5011111111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 16, 200, 200000, 50111111111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 17, 200, 200000, 501111111111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 18, 200, 200000, 5011111111111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 19, 200, 200000, 50111111111111111111, true, 1);
INSERT INTO public.moon VALUES ('K', 20, 200, 200000, 501111111111111111111, true, 1);


--
-- Data for Name: passenger; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.passenger VALUES (1, 'K', 'good');
INSERT INTO public.passenger VALUES (2, 'K', 'bad');
INSERT INTO public.passenger VALUES (3, 'K', 'not good');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Kplanet', 1, 2070, 2070000, 23, true, 1);
INSERT INTO public.planet VALUES ('Lplanet', 2, 2070, 20700001, 231, true, 1);
INSERT INTO public.planet VALUES ('Mplanet', 3, 2070, 20700001, 2311, true, 2);
INSERT INTO public.planet VALUES ('Nplanet', 4, 2070, 20700001, 23111, true, 2);
INSERT INTO public.planet VALUES ('Oplanet', 5, 2070, 20700001, 231111, true, 4);
INSERT INTO public.planet VALUES ('Oplanet', 6, 2070, 20700001, 2311111, true, 5);
INSERT INTO public.planet VALUES ('Oplanet', 7, 2070, 20700001, 23111111, true, 5);
INSERT INTO public.planet VALUES ('Vplanet', 8, 2070, 20700001, 231111111, true, 5);
INSERT INTO public.planet VALUES ('Vplanet', 9, 2070, 20700001, 2311111111, true, 5);
INSERT INTO public.planet VALUES ('Vplanet', 10, 2070, 20700001, 23111111111, true, 5);
INSERT INTO public.planet VALUES ('Vplanet', 11, 2070, 20700001, 231111111111, true, 5);
INSERT INTO public.planet VALUES ('Vplanet', 12, 2070, 20700001, 2311111111111, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Astar', 1, 2070, 2070000, 1005, false, 1);
INSERT INTO public.star VALUES ('Bstar', 2, 2070, 2070000, 10051, false, 2);
INSERT INTO public.star VALUES ('Cstar', 3, 2070, 2070000, 10052, false, 1);
INSERT INTO public.star VALUES ('Dstar', 4, 2070, 2070000, 10053, false, 3);
INSERT INTO public.star VALUES ('Estar', 5, 2070, 2070000, 10054, false, 3);
INSERT INTO public.star VALUES ('Fstar', 6, 2070, 2070000, 10055, false, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: passenger_passenger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.passenger_passenger_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy const_galaxy_distance_from_earth; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT const_galaxy_distance_from_earth UNIQUE (distance_from_earth);


--
-- Name: moon const_moon_distance_from_earth; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT const_moon_distance_from_earth UNIQUE (distance_from_earth);


--
-- Name: passenger const_passenger_passenger_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT const_passenger_passenger_description UNIQUE (passenger_description);


--
-- Name: planet const_planet_distance_from_earth; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT const_planet_distance_from_earth UNIQUE (distance_from_earth);


--
-- Name: star const_star_distance_from_earth; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT const_star_distance_from_earth UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: passenger passenger_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT passenger_pkey PRIMARY KEY (passenger_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

