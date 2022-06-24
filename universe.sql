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
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    fifth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type integer,
    int_val integer,
    age_in_million numeric(4,2),
    descrip text,
    is_spherical boolean NOT NULL,
    bool_val boolean
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_fifth_id_seq OWNED BY public.fifth.fifth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    bool_val boolean,
    age_in_billion numeric(4,2),
    type integer,
    int_val integer,
    name character varying(30) NOT NULL,
    descrip text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type integer,
    int_val integer,
    age_in_billion numeric(4,2),
    descrip text,
    is_spherical boolean NOT NULL,
    bool_value boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type integer,
    int_val integer,
    age_in_billio numeric(4,2),
    descrip text,
    is_spherical boolean NOT NULL,
    bool_val boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type integer,
    int_val integer,
    age_in_billion numeric(4,2),
    descrip text,
    is_spherical boolean NOT NULL,
    bool_val boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fifth fifth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth ALTER COLUMN fifth_id SET DEFAULT nextval('public.fifth_fifth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES (1, 'name1', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.fifth VALUES (2, 'name2', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.fifth VALUES (3, 'name3', NULL, NULL, NULL, NULL, true, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, false, true, 13.61, 1, 1, 'Milky Way', 'Galaxy containing sun and the solar system');
INSERT INTO public.galaxy VALUES (4, false, true, 10.01, 1, 2, 'Andromeda', 'Situated in andromeda constellation');
INSERT INTO public.galaxy VALUES (5, true, true, NULL, 2, 3, 'Triangulam', NULL);
INSERT INTO public.galaxy VALUES (6, true, true, 0.01, 2, 4, 'Sculptor', 'NGC 253');
INSERT INTO public.galaxy VALUES (7, false, true, 13.31, 1, 5, 'Bode', NULL);
INSERT INTO public.galaxy VALUES (8, false, true, 1.10, 1, 6, 'Large Magenallic Cloud', 'Visible from southern hemisphere');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 2, 1, NULL, NULL, true, true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 3, 2, NULL, NULL, true, true, 2);
INSERT INTO public.moon VALUES (3, 'moon', 1, 3, NULL, NULL, true, true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 1, 4, NULL, NULL, true, true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 2, 5, NULL, NULL, true, true, 4);
INSERT INTO public.moon VALUES (6, 'moon6', 1, 6, NULL, NULL, true, true, 5);
INSERT INTO public.moon VALUES (7, 'moon7', 2, 7, NULL, NULL, true, true, 5);
INSERT INTO public.moon VALUES (8, 'moon8', 3, 8, NULL, NULL, true, true, 5);
INSERT INTO public.moon VALUES (9, 'moon9', 4, 9, NULL, NULL, true, true, 5);
INSERT INTO public.moon VALUES (10, 'moon10', 5, 10, NULL, NULL, true, true, 5);
INSERT INTO public.moon VALUES (11, 'moon11', 1, 11, NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (12, 'moon12', 2, 12, NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (13, 'moon13', 3, 13, NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (14, 'moon14', 1, 14, NULL, NULL, true, true, 7);
INSERT INTO public.moon VALUES (15, 'moon15', 1, 15, NULL, NULL, true, true, 8);
INSERT INTO public.moon VALUES (16, 'moon16', 2, 16, NULL, NULL, true, true, 8);
INSERT INTO public.moon VALUES (17, 'moon17', 3, 17, NULL, NULL, true, true, 8);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, NULL, NULL, true, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, NULL, NULL, true, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, NULL, NULL, true, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 1, 4.50, 'First in solar system', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 2, 4.50, 'Second in solar system', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 3, 4.54, 'Sustainable', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 4, 4.60, 'Red planet', true, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 5, 4.60, 'Largest', true, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 6, 4.50, 'One with the rings', true, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 7, 4.50, 'Haha', true, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 8, 4.50, NULL, true, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 9, NULL, 'Planet?', true, true, 1);
INSERT INTO public.planet VALUES (10, 'Random', 1, 10, NULL, NULL, false, false, 3);
INSERT INTO public.planet VALUES (11, 'Random2', 1, 11, NULL, NULL, false, false, 5);
INSERT INTO public.planet VALUES (12, 'Random3', 1, 12, NULL, NULL, false, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 4.60, 'Perfect ball of hot plasma', true, true, 3);
INSERT INTO public.star VALUES (2, 'Alpheratz', 1, 2, 0.07, 'Brightest start of andromeda', true, false, 4);
INSERT INTO public.star VALUES (3, 'Alpha trianguli', 1, 3, 1.60, 'Binary star in triangulum constellation', true, false, 5);
INSERT INTO public.star VALUES (4, 'R71', 1, 4, 0.27, 'Luminous blue', true, true, 8);
INSERT INTO public.star VALUES (5, 'Sirius', 1, 5, 1.10, 'Brightest in milky war, dog-star', true, false, 3);
INSERT INTO public.star VALUES (6, 'Random', 1, 6, NULL, NULL, true, true, 7);


--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_fifth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fifth fifth_int_val_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_int_val_key UNIQUE (int_val);


--
-- Name: fifth fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (fifth_id);


--
-- Name: galaxy galaxy_int_val_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_int_val_key UNIQUE (int_val);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_int_val_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_int_val_key UNIQUE (int_val);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_int_val_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_int_val_key UNIQUE (int_val);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_int_val_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_int_val_key UNIQUE (int_val);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

