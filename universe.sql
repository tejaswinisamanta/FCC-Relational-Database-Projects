--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size_m_lower integer NOT NULL,
    size_m_upper integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    constellation character varying(20) NOT NULL,
    origin_of_name text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    spacecraft_mission text NOT NULL,
    regular boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_sun_in_million_km numeric,
    confirmed boolean NOT NULL,
    mass_in_kg text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_galaxy_in_light_years numeric,
    confirmed boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '99942 Apophis', 270, 325);
INSERT INTO public.asteroid VALUES (2, '2007 UW1', 75, 170);
INSERT INTO public.asteroid VALUES (3, '2012 UE34', 50, 120);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy containing the Sun and its Solar System, and therefore Earth.', 'Sagittarius (centre)', 'The appearance from Earth of the galaxy—a band of light');
INSERT INTO public.galaxy VALUES (2, 'Sagittarius Dwarf Spheroidal Galaxy', 'Sagittarius Dwarf Elliptical Galaxy (Sgr dE or Sag DEG), is an elliptical loop-shaped satellite galaxy of the Milky Way. It contains four globular clusters in its main body known well before the discovery of the galaxy itself in 1994.', 'Sagittarius', 'It’s named for its location in the Sagittarius constellation and its classification as a dwarf spheroidal galaxy.');
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda[3] According to simulations, this object would probably be a giant elliptical galaxy, but with a centre showing less stellar density than current elliptical galaxies.', 'Andromeda', 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.');
INSERT INTO public.galaxy VALUES (4, 'Bode s Galaxy', 'Also known as Messier 81. The largest galaxy in the M81 Group. It harbors a supermassive black hole 70 million times the mass of the Sun.', 'Ursa Major', 'Named for Johann Elert Bode who discovered this galaxy in 1774.');
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', 'The largest in the Cartwheel Galaxy group, made up of four spiral galaxies', 'Sculptor', 'Its visual appearance is similar to that of a spoked cartwheel.');
INSERT INTO public.galaxy VALUES (6, 'Condor Galaxy', 'The largest known spiral galaxy, it has a diameter of over 665,300 light-years (204.0 kiloparsecs).[9] It is tidally disturbed by the smaller lenticular galaxy IC 4970.', 'Pavo', 'Named after a condor, a type of vulture that is one of the largest flying birds.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Europa', 5, 'Galileo', true);
INSERT INTO public.moon VALUES (3, 'Ganymede', 5, 'Galileo', true);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'Galileo', true);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 'Galileo', true);
INSERT INTO public.moon VALUES (6, 'Metis', 5, 'Voyager Science Team', true);
INSERT INTO public.moon VALUES (7, 'Adrastea', 5, 'Voyager Science Team', true);
INSERT INTO public.moon VALUES (8, 'Thebe', 5, 'Voyager Science Team', true);
INSERT INTO public.moon VALUES (9, 'Amalthea', 5, 'E.E. Barnard', true);
INSERT INTO public.moon VALUES (10, 'Rhea', 6, 'G.D. Cassini', true);
INSERT INTO public.moon VALUES (11, 'Titan', 6, 'G.D. Cassini', true);
INSERT INTO public.moon VALUES (13, 'Iapetus', 6, 'G.D. Cassini', true);
INSERT INTO public.moon VALUES (14, 'Miranda', 7, 'Gerard P. Kuiper', true);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, 'William Lassell', true);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 'William Lassell', true);
INSERT INTO public.moon VALUES (17, 'Titania', 7, 'William Herschel', true);
INSERT INTO public.moon VALUES (12, 'Dione', 6, 'G.D. Cassini', true);
INSERT INTO public.moon VALUES (19, 'Charon', 9, 'James W. Christy and Robert S. Harrington', false);
INSERT INTO public.moon VALUES (18, 'Triton', 8, 'William Lassell', false);
INSERT INTO public.moon VALUES (20, 'Enceladus', 6, 'William Herschel', false);
INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Known since antiquity', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (10, 'Kepler-186f', 328417, false, '1.71 times of Earth', 2);
INSERT INTO public.planet VALUES (11, 'Haumea', 5906, true, '4.01 x 10^21', 1);
INSERT INTO public.planet VALUES (12, 'Ceres', 413, true, '939,300', 1);
INSERT INTO public.planet VALUES (1, 'Earth', 150, true, '5.972×10^24', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 288, true, '6.4191×10^23', 1);
INSERT INTO public.planet VALUES (3, 'Mercury', 58, true, '3.30 × 10^23', 1);
INSERT INTO public.planet VALUES (4, 'Venus', 108, true, '4.87 x 10^24', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 778, true, '1.8986 x 10^27', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1433, true, '5.6834 × 10^26', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2900, true, '8.6849×10^25', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, true, '1.024 × 10^26', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5906, true, '1.31 x 10^22', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 700000, true, 1);
INSERT INTO public.star VALUES (2, 'Kepler-186', 328417, true, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 1182860, true, 1);
INSERT INTO public.star VALUES (4, 'Arcturus', 17673320, true, 1);
INSERT INTO public.star VALUES (5, 'Vega', 1885618, true, 1);
INSERT INTO public.star VALUES (6, 'Alpheratz', 2100000, true, 3);


--
-- Name: asteroid asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroid asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_key UNIQUE (constellation);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_origin_of_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_origin_of_name_key UNIQUE (origin_of_name);


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
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
