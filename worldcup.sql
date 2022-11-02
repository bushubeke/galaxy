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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (115, 2018, 'Final', 394, 395, 2, 4);
INSERT INTO public.games VALUES (116, 2018, 'Third Place', 396, 397, 0, 2);
INSERT INTO public.games VALUES (117, 2018, 'Semi-Final', 395, 397, 1, 2);
INSERT INTO public.games VALUES (118, 2018, 'Semi-Final', 394, 396, 0, 1);
INSERT INTO public.games VALUES (119, 2018, 'Quarter-Final', 395, 398, 2, 3);
INSERT INTO public.games VALUES (120, 2018, 'Quarter-Final', 397, 399, 0, 2);
INSERT INTO public.games VALUES (121, 2018, 'Quarter-Final', 396, 400, 1, 2);
INSERT INTO public.games VALUES (122, 2018, 'Quarter-Final', 394, 401, 0, 2);
INSERT INTO public.games VALUES (123, 2018, 'Eighth-Final', 397, 402, 1, 2);
INSERT INTO public.games VALUES (124, 2018, 'Eighth-Final', 399, 403, 0, 1);
INSERT INTO public.games VALUES (125, 2018, 'Eighth-Final', 396, 404, 2, 3);
INSERT INTO public.games VALUES (126, 2018, 'Eighth-Final', 400, 405, 0, 2);
INSERT INTO public.games VALUES (127, 2018, 'Eighth-Final', 395, 406, 1, 2);
INSERT INTO public.games VALUES (128, 2018, 'Eighth-Final', 398, 407, 1, 2);
INSERT INTO public.games VALUES (129, 2018, 'Eighth-Final', 401, 408, 1, 2);
INSERT INTO public.games VALUES (130, 2018, 'Eighth-Final', 394, 409, 3, 4);
INSERT INTO public.games VALUES (131, 2014, 'Final', 410, 409, 0, 1);
INSERT INTO public.games VALUES (132, 2014, 'Third Place', 411, 400, 0, 3);
INSERT INTO public.games VALUES (133, 2014, 'Semi-Final', 409, 411, 0, 1);
INSERT INTO public.games VALUES (134, 2014, 'Semi-Final', 410, 400, 1, 7);
INSERT INTO public.games VALUES (135, 2014, 'Quarter-Final', 411, 412, 0, 1);
INSERT INTO public.games VALUES (136, 2014, 'Quarter-Final', 409, 396, 0, 1);
INSERT INTO public.games VALUES (137, 2014, 'Quarter-Final', 400, 402, 1, 2);
INSERT INTO public.games VALUES (138, 2014, 'Quarter-Final', 410, 394, 0, 1);
INSERT INTO public.games VALUES (139, 2014, 'Eighth-Final', 400, 413, 1, 2);
INSERT INTO public.games VALUES (140, 2014, 'Eighth-Final', 402, 401, 0, 2);
INSERT INTO public.games VALUES (141, 2014, 'Eighth-Final', 394, 414, 0, 2);
INSERT INTO public.games VALUES (142, 2014, 'Eighth-Final', 410, 415, 1, 2);
INSERT INTO public.games VALUES (143, 2014, 'Eighth-Final', 411, 405, 1, 2);
INSERT INTO public.games VALUES (144, 2014, 'Eighth-Final', 412, 416, 1, 2);
INSERT INTO public.games VALUES (145, 2014, 'Eighth-Final', 409, 403, 0, 1);
INSERT INTO public.games VALUES (146, 2014, 'Eighth-Final', 396, 417, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (394, 'France');
INSERT INTO public.teams VALUES (395, 'Croatia');
INSERT INTO public.teams VALUES (396, 'Belgium');
INSERT INTO public.teams VALUES (397, 'England');
INSERT INTO public.teams VALUES (398, 'Russia');
INSERT INTO public.teams VALUES (399, 'Sweden');
INSERT INTO public.teams VALUES (400, 'Brazil');
INSERT INTO public.teams VALUES (401, 'Uruguay');
INSERT INTO public.teams VALUES (402, 'Colombia');
INSERT INTO public.teams VALUES (403, 'Switzerland');
INSERT INTO public.teams VALUES (404, 'Japan');
INSERT INTO public.teams VALUES (405, 'Mexico');
INSERT INTO public.teams VALUES (406, 'Denmark');
INSERT INTO public.teams VALUES (407, 'Spain');
INSERT INTO public.teams VALUES (408, 'Portugal');
INSERT INTO public.teams VALUES (409, 'Argentina');
INSERT INTO public.teams VALUES (410, 'Germany');
INSERT INTO public.teams VALUES (411, 'Netherlands');
INSERT INTO public.teams VALUES (412, 'Costa Rica');
INSERT INTO public.teams VALUES (413, 'Chile');
INSERT INTO public.teams VALUES (414, 'Nigeria');
INSERT INTO public.teams VALUES (415, 'Algeria');
INSERT INTO public.teams VALUES (416, 'Greece');
INSERT INTO public.teams VALUES (417, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 146, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 417, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

