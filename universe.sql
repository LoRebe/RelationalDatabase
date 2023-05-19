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
    name character varying(40),
    distance_to_earth numeric NOT NULL,
    no_elements integer NOT NULL,
    age_mio_years integer,
    would_travel boolean,
    has_life boolean,
    description text
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
    planet_id integer,
    name character varying,
    distance_to_earth numeric NOT NULL,
    no_elements integer NOT NULL,
    age_mio_years integer,
    would_travel boolean,
    has_life boolean,
    description text
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
    star_id integer,
    name character varying(40),
    distance_to_earth numeric NOT NULL,
    no_elements integer NOT NULL,
    age_mio_years integer,
    would_travel boolean,
    has_life boolean,
    description text
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
-- Name: ship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ship (
    ship_id integer NOT NULL,
    galaxy_id integer,
    name character varying,
    no_passengers numeric NOT NULL,
    time_since_start integer NOT NULL,
    color character varying
);


ALTER TABLE public.ship OWNER TO freecodecamp;

--
-- Name: ship_ship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ship_ship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ship_ship_id_seq OWNER TO freecodecamp;

--
-- Name: ship_ship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ship_ship_id_seq OWNED BY public.ship.ship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(40),
    distance_to_earth numeric NOT NULL,
    no_elements integer NOT NULL,
    age_mio_years integer,
    would_travel boolean,
    has_life boolean,
    description text
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: ship ship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship ALTER COLUMN ship_id SET DEFAULT nextval('public.ship_ship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10000000, 16, 78, true, false, 'no idea');
INSERT INTO public.galaxy VALUES (2, 'Antennae', 230000000, 32, 120, false, true, 'nope');
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 50, 750, 564, true, false, 'weird name?!');
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 10000000, 16, 78, true, true, 'hell no');
INSERT INTO public.galaxy VALUES (5, 'Butterfly Galaxy', 230000000, 32, 120, false, false, 'cute');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel Galaxy', 50, 750, 564, true, true, 'sounds fun');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, NULL, 78.2106709623445, 50, 4985, false, false, NULL);
INSERT INTO public.moon VALUES (2, 11, NULL, 17.5891344938581, 23, 1186, false, false, NULL);
INSERT INTO public.moon VALUES (3, 1, NULL, 50.0797999016381, 1, 740, true, false, NULL);
INSERT INTO public.moon VALUES (4, 3, NULL, 49.571691534867, 27, 3896, false, true, NULL);
INSERT INTO public.moon VALUES (5, 7, NULL, 16.211073093616, 23, 863, true, true, NULL);
INSERT INTO public.moon VALUES (6, 4, NULL, 12.3083706410714, 45, 2167, false, true, NULL);
INSERT INTO public.moon VALUES (7, 11, NULL, 54.1428961702817, 11, 4467, false, true, NULL);
INSERT INTO public.moon VALUES (8, 6, NULL, 58.407392414377, 36, 2527, true, false, NULL);
INSERT INTO public.moon VALUES (9, 4, NULL, 30.5036343266277, 33, 110, true, true, NULL);
INSERT INTO public.moon VALUES (10, 5, NULL, 68.9665275026133, 34, 4033, true, true, NULL);
INSERT INTO public.moon VALUES (11, 5, NULL, 37.6257538407483, 50, 1084, true, true, NULL);
INSERT INTO public.moon VALUES (12, 10, NULL, 89.4774369523976, 47, 2343, false, true, NULL);
INSERT INTO public.moon VALUES (13, 9, NULL, 15.1514976482314, 49, 669, false, true, NULL);
INSERT INTO public.moon VALUES (14, 9, NULL, 39.5179118773545, 44, 2111, false, true, NULL);
INSERT INTO public.moon VALUES (15, 4, NULL, 55.272801841863, 33, 3997, true, false, NULL);
INSERT INTO public.moon VALUES (16, 2, NULL, 67.2076737194647, 11, 2727, false, true, NULL);
INSERT INTO public.moon VALUES (17, 3, NULL, 64.4535585272461, 37, 1028, true, false, NULL);
INSERT INTO public.moon VALUES (18, 5, NULL, 50.7468564643208, 19, 3914, false, true, NULL);
INSERT INTO public.moon VALUES (19, 4, NULL, 79.6093598838834, 33, 3331, true, true, NULL);
INSERT INTO public.moon VALUES (20, 2, NULL, 61.7483362384508, 44, 3950, false, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 3, 'Venus', 39.53859147238, 27, 475, true, false, 'lets see..');
INSERT INTO public.planet VALUES (2, 1, 'Earth', 92.1276685991298, 7, 162, true, true, 'hdjkef');
INSERT INTO public.planet VALUES (3, 5, 'Mars', 86.6981497349411, 14, 98, false, true, 'xyz');
INSERT INTO public.planet VALUES (4, 3, 'Mercury', 4.02482144068266, 3, 273, true, false, 'lalala');
INSERT INTO public.planet VALUES (5, 2, 'Pluto', 52.4419410176034, 24, 5, false, false, 'X');
INSERT INTO public.planet VALUES (6, 4, 'Neptune', 0.385320385401755, 29, 289, true, false, 'lets see..');
INSERT INTO public.planet VALUES (7, 2, 'Jupiter', 52.6726276121405, 29, 319, true, true, 'lets see..');
INSERT INTO public.planet VALUES (8, 1, 'Uranus', 83.3960563721885, 24, 476, false, true, 'lets see..');
INSERT INTO public.planet VALUES (9, 4, 'Saturn', 37.3726348241956, 5, 206, true, true, 'x');
INSERT INTO public.planet VALUES (10, 2, 'Eris', 5.97447482004974, 13, 123, false, false, 'x');
INSERT INTO public.planet VALUES (11, 4, 'Haumea', 68.426231227836, 4, 319, false, false, ':)');
INSERT INTO public.planet VALUES (12, 1, 'Makemake', 83.2044807270133, 29, 394, true, false, 'twelve');


--
-- Data for Name: ship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ship VALUES (1, 3, NULL, 20, 1790, NULL);
INSERT INTO public.ship VALUES (2, 5, NULL, 30, 1138, NULL);
INSERT INTO public.ship VALUES (3, 5, NULL, 39, 1661, NULL);
INSERT INTO public.ship VALUES (4, 5, NULL, 31, 1013, NULL);
INSERT INTO public.ship VALUES (5, 4, NULL, 37, 1118, NULL);
INSERT INTO public.ship VALUES (6, 1, NULL, 1, 1582, NULL);
INSERT INTO public.ship VALUES (7, 3, NULL, 16, 1387, NULL);
INSERT INTO public.ship VALUES (8, 4, NULL, 55, 1191, NULL);
INSERT INTO public.ship VALUES (9, 1, NULL, 52, 1127, NULL);
INSERT INTO public.ship VALUES (10, 2, NULL, 52, 878, NULL);
INSERT INTO public.ship VALUES (11, 3, NULL, 31, 708, NULL);
INSERT INTO public.ship VALUES (12, 3, NULL, 35, 986, NULL);
INSERT INTO public.ship VALUES (13, 5, NULL, 28, 992, NULL);
INSERT INTO public.ship VALUES (14, 2, NULL, 12, 250, NULL);
INSERT INTO public.ship VALUES (15, 3, NULL, 44, 243, NULL);
INSERT INTO public.ship VALUES (16, 3, NULL, 60, 92, NULL);
INSERT INTO public.ship VALUES (17, 3, NULL, 52, 578, NULL);
INSERT INTO public.ship VALUES (18, 1, NULL, 26, 735, NULL);
INSERT INTO public.ship VALUES (19, 2, NULL, 14, 865, NULL);
INSERT INTO public.ship VALUES (20, 5, NULL, 35, 1128, NULL);
INSERT INTO public.ship VALUES (21, 5, NULL, 34, 1207, NULL);
INSERT INTO public.ship VALUES (22, 3, NULL, 16, 1029, NULL);
INSERT INTO public.ship VALUES (23, 3, NULL, 45, 724, NULL);
INSERT INTO public.ship VALUES (24, 4, NULL, 54, 748, NULL);
INSERT INTO public.ship VALUES (25, 2, NULL, 14, 881, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 6, 'Acamar', 10, 7, 250, true, false, '');
INSERT INTO public.star VALUES (2, 5, 'Achernar', 20, 3, 350, false, true, 'twinkle');
INSERT INTO public.star VALUES (3, 4, 'Achird', 30, 2, 450, true, false, 'twinkle');
INSERT INTO public.star VALUES (4, 3, 'Acrab', 10, 9, 250, true, true, 'little');
INSERT INTO public.star VALUES (5, 2, 'Acrux', 60, 8, 150, false, false, 'star');
INSERT INTO public.star VALUES (6, 1, 'Acubens', 70, 2, 550, true, true, '');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: ship_ship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ship_ship_id_seq', 25, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: ship ship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT ship_name_key UNIQUE (name);


--
-- Name: ship ship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT ship_pkey PRIMARY KEY (ship_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: ship fk_ship; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT fk_ship FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

