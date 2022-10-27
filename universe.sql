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
    galaxy_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    num_of_stars integer NOT NULL,
    random_disc integer
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
-- Name: just_fulfill; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.just_fulfill (
    just_fulfill_id integer NOT NULL,
    name character varying(30),
    numone integer NOT NULL,
    numtwo integer NOT NULL,
    numthree integer NOT NULL
);


ALTER TABLE public.just_fulfill OWNER TO freecodecamp;

--
-- Name: just_fulfill_fulfill_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.just_fulfill_fulfill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.just_fulfill_fulfill_id_seq OWNER TO freecodecamp;

--
-- Name: just_fulfill_fulfill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.just_fulfill_fulfill_id_seq OWNED BY public.just_fulfill.just_fulfill_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    has_life boolean,
    distance_from_earth integer
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
    description text,
    name character varying(30) NOT NULL,
    num_of_moons numeric(2,1) NOT NULL,
    has_life boolean NOT NULL,
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
    description text,
    name character varying(30) NOT NULL,
    has_planets boolean NOT NULL,
    num_of_planets integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: just_fulfill just_fulfill_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_fulfill ALTER COLUMN just_fulfill_id SET DEFAULT nextval('public.just_fulfill_fulfill_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'largetst', 'milkway', 25000, 1);
INSERT INTO public.galaxy VALUES (2, 'second largest', 'second way', 23000, 2);
INSERT INTO public.galaxy VALUES (3, 'third largest', 'third way', 22000, 3);
INSERT INTO public.galaxy VALUES (4, 'fourth largetst', 'fourth way', 21000, 4);
INSERT INTO public.galaxy VALUES (5, 'fifth largest', 'fifth way', 20000, 5);
INSERT INTO public.galaxy VALUES (6, 'sixth largest', 'sixth way', 19000, 6);


--
-- Data for Name: just_fulfill; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.just_fulfill VALUES (1, 'someone', 1, 2, 3);
INSERT INTO public.just_fulfill VALUES (2, 'sometwo', 1, 2, 3);
INSERT INTO public.just_fulfill VALUES (3, 'somethree', 1, 2, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 'mOne', false, 40);
INSERT INTO public.moon VALUES (2, 'm2', 'mtwo', false, 20);
INSERT INTO public.moon VALUES (3, 'm3', 'mthree', true, 25);
INSERT INTO public.moon VALUES (4, 'm5', 'mFive', true, 31);
INSERT INTO public.moon VALUES (5, 'm4', 'mfour', false, 40);
INSERT INTO public.moon VALUES (6, 'm6', 'msix', false, 20);
INSERT INTO public.moon VALUES (7, 'm7', 'mseven', true, 25);
INSERT INTO public.moon VALUES (8, 'm8', 'meight', true, 31);
INSERT INTO public.moon VALUES (9, 'm9', 'mnine', false, 40);
INSERT INTO public.moon VALUES (10, 'm10', 'mten', false, 20);
INSERT INTO public.moon VALUES (11, 'm11', 'meleven', true, 25);
INSERT INTO public.moon VALUES (12, 'm12', 'mtwelv', true, 31);
INSERT INTO public.moon VALUES (13, 'm13', 'mthirtn', false, 40);
INSERT INTO public.moon VALUES (14, 'm14', 'mfrtn', false, 20);
INSERT INTO public.moon VALUES (15, 'm15', 'mfiftn', true, 25);
INSERT INTO public.moon VALUES (16, 'm16', 'mtsxtn', true, 31);
INSERT INTO public.moon VALUES (17, 'm17', 'mtsvtn', false, 40);
INSERT INTO public.moon VALUES (18, 'm18', 'meitn', false, 20);
INSERT INTO public.moon VALUES (19, 'm19', 'mnintn', true, 25);
INSERT INTO public.moon VALUES (20, 'm20', 'mtwty', true, 31);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'plan1', 'planone', 5.0, true, 1);
INSERT INTO public.planet VALUES (2, 'plan2', 'plantwo', 7.0, false, 3);
INSERT INTO public.planet VALUES (3, 'plan3', 'planthree', 2.0, false, 6);
INSERT INTO public.planet VALUES (4, 'plan4', 'planfour', 5.0, true, 1);
INSERT INTO public.planet VALUES (5, 'plan5', 'planfive', 7.0, false, 3);
INSERT INTO public.planet VALUES (6, 'plan6', 'plansix', 2.0, false, 6);
INSERT INTO public.planet VALUES (7, 'plan7', 'planseven', 5.0, true, 1);
INSERT INTO public.planet VALUES (8, 'plan8', 'planeight', 7.0, false, 3);
INSERT INTO public.planet VALUES (9, 'plan9', 'plannine', 2.0, false, 6);
INSERT INTO public.planet VALUES (10, 'plan10', 'planten', 5.0, true, 1);
INSERT INTO public.planet VALUES (11, 'plan11', 'planeleven', 7.0, false, 3);
INSERT INTO public.planet VALUES (12, 'plan12', 'plantwelve', 2.0, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'c1', 'madeupone', true, 40, 4);
INSERT INTO public.star VALUES (2, 'c2', 'madeuptwo', false, 0, 1);
INSERT INTO public.star VALUES (3, 'c3', 'madeupthree', true, 10, 2);
INSERT INTO public.star VALUES (4, '4', 'madeupfour', true, 40, 4);
INSERT INTO public.star VALUES (5, 'c5', 'madeupfive', false, 0, 1);
INSERT INTO public.star VALUES (6, 'c6', 'madeupsix', true, 10, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: just_fulfill_fulfill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.just_fulfill_fulfill_id_seq', 3, true);


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
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: just_fulfill just_fulfill_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_fulfill
    ADD CONSTRAINT just_fulfill_name_key UNIQUE (name);


--
-- Name: just_fulfill just_fulfill_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_fulfill
    ADD CONSTRAINT just_fulfill_pkey PRIMARY KEY (just_fulfill_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


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


