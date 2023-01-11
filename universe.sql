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
    name character varying(30) NOT NULL,
    diameter_in_kiloparsecs numeric(16,3),
    galaxy_shape text,
    distance_from_earth_in_kiloparsecs numeric(16,3)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_miles integer,
    suface_temp_in_celsius integer,
    has_atmosphere boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: periodic_comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.periodic_comet (
    periodic_comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    average_period_in_years numeric(8,2)
);


ALTER TABLE public.periodic_comet OWNER TO freecodecamp;

--
-- Name: periodic_comet_periodic_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.periodic_comet ALTER COLUMN periodic_comet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.periodic_comet_periodic_comet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_miles integer,
    surface_temp_in_celsius integer,
    has_atmosphere boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_miles integer,
    surface_temp_in_celsius integer,
    type_of_star text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'Sagittarius Dwarf Spheroidal', 3.066, 'Elliptical Loop', 24.000);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'Large Magellanic Cloud', 9.873, 'Spiral', 9.872);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'Small Magellanic Cloud', 5.795, 'Oval', 63.000);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'NGC 6822', 2.146, 'Barred Irregular', 570.000);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'Andromeda', 46.560, 'Barred Spiral', 777.848);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'Milky Way', 26.797, 'Spiral', 0.000);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (7, 'Pegasus Dwarf Irregular', 4.000, 'Dwarf Spheroidal', 920.000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'Moon', 2159, -23, false, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 'Phobos', 14, -40, false, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 'Deimos', 8, -40, false, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'Io', 2274, -163, true, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 'Europa', 1340, -171, true, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'Ganymede', 3274, -163, true, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'Callisto', 2995, -139, true, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'Titan', 3200, -180, true, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 'Rhea', 949, -197, true, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'Iapetus', 713, -163, true, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 'Dione', 678, -186, false, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'Tethys', 660, -187, false, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'Enceladus', 313, -198, false, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 'Mimas', 246, -209, false, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 'Miranda', 292, -213, false, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'Ariel', 719, -213, false, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'Umbriel', 727, -198, false, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 'Titania', 780, -203, false, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 'Oberon', 946, -198, false, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'Triton', 1682, -235, true, 8);


--
-- Data for Name: periodic_comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.periodic_comet OVERRIDING SYSTEM VALUE VALUES (1, 'Halleys Comet', 76.00);
INSERT INTO public.periodic_comet OVERRIDING SYSTEM VALUE VALUES (34, 'Mellish', 145.00);
INSERT INTO public.periodic_comet OVERRIDING SYSTEM VALUE VALUES (35, 'Levy', 51.28);
INSERT INTO public.periodic_comet OVERRIDING SYSTEM VALUE VALUES (36, 'Kowal', 5.44);
INSERT INTO public.periodic_comet OVERRIDING SYSTEM VALUE VALUES (37, 'Meyer', 3.73);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'Mercury', 4880, 164, false, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'Venus', 7521, -41, true, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'Earth', 7918, 15, true, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'Mars', 4212, -64, true, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'Jupiter', 88846, -185, true, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'Saturn', 72368, -160, true, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'Uranus', 31518, -216, true, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'Neptune', 30599, -210, true, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'Saffar', 43440, 825, true, 5);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'Majriti', 88619, -55, true, 5);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'Tau Bootis b', 104257, 1430, true, 7);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'HD 209458 b', 117290, 750, true, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'Sun', 865370, 5505, 'Yellow Dwarf', 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 'PA-99-N2', 684517, 3204, 'Red Giant', 6);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'Upsilon Andromedae A', 1210406, 5940, 'Yellow-White Dwarf', 6);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 'R71', 92510000, 12327, 'Blue Supergiant', 3);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'HD 5608', 2161000, 4624, 'K-type Subgiant', 6);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'Wolf 359', 124499, 2476, 'Red Dwarf', 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (7, 'Tau Bootis', 123372, 3307, 'Yellow-White Dwarf', 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (8, 'HD 209458', 104518, 0, 'Yellow Dwarf', 7);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: periodic_comet_periodic_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.periodic_comet_periodic_comet_id_seq', 37, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: periodic_comet periodic_comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.periodic_comet
    ADD CONSTRAINT periodic_comet_name_key UNIQUE (name);


--
-- Name: periodic_comet periodic_comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.periodic_comet
    ADD CONSTRAINT periodic_comet_pkey PRIMARY KEY (periodic_comet_id);


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
