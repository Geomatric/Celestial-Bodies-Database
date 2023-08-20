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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type text,
    diameter_lightyear integer,
    constellation text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size_miles integer,
    discovered integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    type text,
    orbit_around_star boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    color text,
    size_million_miles numeric,
    temperature_c integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'name', 1);
INSERT INTO public.blackhole VALUES (2, 'name', 2);
INSERT INTO public.blackhole VALUES (3, 'name', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy', 'type', 5, 'cons');
INSERT INTO public.galaxy VALUES (2, 'galaxy', 'type', 5, 'cons two');
INSERT INTO public.galaxy VALUES (3, 'galaxy', 'type', 5, 'cons three');
INSERT INTO public.galaxy VALUES (4, 'galaxy', 'type', 5, 'cons four');
INSERT INTO public.galaxy VALUES (5, 'galaxy', 'type', 5, 'cons five');
INSERT INTO public.galaxy VALUES (6, 'galaxy', 'type', 5, 'cons six');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 15, 1800, 1);
INSERT INTO public.moon VALUES (2, 'moon', 15, 1800, 2);
INSERT INTO public.moon VALUES (3, 'moon', 15, 1800, 3);
INSERT INTO public.moon VALUES (4, 'moon', 15, 1800, 4);
INSERT INTO public.moon VALUES (5, 'moon', 15, 1800, 5);
INSERT INTO public.moon VALUES (6, 'moon', 15, 1800, 6);
INSERT INTO public.moon VALUES (7, 'moon', 15, 1800, 7);
INSERT INTO public.moon VALUES (8, 'moon', 15, 1800, 8);
INSERT INTO public.moon VALUES (9, 'moon', 15, 1800, 9);
INSERT INTO public.moon VALUES (10, 'moon', 15, 1800, 10);
INSERT INTO public.moon VALUES (11, 'moon', 15, 1800, 11);
INSERT INTO public.moon VALUES (12, 'moon', 15, 1800, 12);
INSERT INTO public.moon VALUES (13, 'moon', 15, 1800, 1);
INSERT INTO public.moon VALUES (14, 'moon', 15, 1800, 2);
INSERT INTO public.moon VALUES (15, 'moon', 15, 1800, 3);
INSERT INTO public.moon VALUES (16, 'moon', 15, 1800, 4);
INSERT INTO public.moon VALUES (17, 'moon', 15, 1800, 5);
INSERT INTO public.moon VALUES (18, 'moon', 15, 1800, 6);
INSERT INTO public.moon VALUES (19, 'moon', 15, 1800, 7);
INSERT INTO public.moon VALUES (20, 'moon', 15, 1800, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet', false, 'Type', true, 1);
INSERT INTO public.planet VALUES (2, 'planet', false, 'Type', true, 1);
INSERT INTO public.planet VALUES (3, 'planet', false, 'Type', true, 2);
INSERT INTO public.planet VALUES (4, 'planet', false, 'Type', true, 2);
INSERT INTO public.planet VALUES (5, 'planet', false, 'Type', true, 3);
INSERT INTO public.planet VALUES (6, 'planet', false, 'Type', true, 3);
INSERT INTO public.planet VALUES (7, 'planet', false, 'Type', true, 4);
INSERT INTO public.planet VALUES (8, 'planet', false, 'Type', true, 4);
INSERT INTO public.planet VALUES (9, 'planet', false, 'Type', true, 5);
INSERT INTO public.planet VALUES (10, 'planet', false, 'Type', true, 5);
INSERT INTO public.planet VALUES (11, 'planet', false, 'Type', true, 6);
INSERT INTO public.planet VALUES (12, 'planet', false, 'Type', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star', 'white', 15, 3500, 1);
INSERT INTO public.star VALUES (2, 'star', 'white', 15, 3500, 2);
INSERT INTO public.star VALUES (3, 'star', 'white', 15, 3500, 3);
INSERT INTO public.star VALUES (4, 'star', 'white', 15, 3500, 4);
INSERT INTO public.star VALUES (5, 'star', 'white', 15, 3500, 5);
INSERT INTO public.star VALUES (6, 'star', 'white', 15, 3500, 6);


--
-- Name: blackhole blackhole_blackhole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_blackhole_id_key UNIQUE (blackhole_id);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_key UNIQUE (constellation);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: blackhole blackhole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

