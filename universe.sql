--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    description text NOT NULL,
    galaxy_types character varying(30),
    number_of_stars character varying(30)
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
    planet_id integer NOT NULL,
    description text NOT NULL,
    radius_in_km numeric
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
    star_id integer,
    description text NOT NULL,
    has_life boolean NOT NULL,
    planet_types character varying(30),
    radius_in_km numeric
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    launch_year integer,
    is_functional boolean,
    mission_duration_in_years integer
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    star_types character varying(30)
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'Caldwell 44', 'Shaped like a backward ''S'' nicknamed the Propeller galaxy.', 'spiral', NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that includes our Solar System, with the name describing the galaxy''s appearance from Earth.', 'spiral', '100-400 billion');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy is the nearest major galaxy to the Milky Way.', 'spiral', '~1 trillion');
INSERT INTO public.galaxy VALUES (3, 'Messier 64', 'The Black Eye Galaxy easily identified by the spectacular band of absorbing dust partially obscuring its bright nucleus.', 'spiral', '100 billion');
INSERT INTO public.galaxy VALUES (5, 'PGC 2248', 'The Carthwheel Galaxy is located about 500 million light-years away.', 'spiral', 'estimated several billion');
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 'The Cigar galaxy shines brightly at infrared wavelengths and is remarkable for its star formation activity.', 'spiral', '30 billion');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 3, 'The Moon makes Earth a more livable planet by moderating our home planet''s wobble on its axis, leading to a relative stable climate.', 1737.4);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'Pobos is the largest of Mars'' two moons.', 11267);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'Deimos is the smaller of Mars'' two moons.', 6.2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 'Ganymede is Jupiter''s largest moon, and the largest moon in our solar system.', 2634.1);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 'Callisto is Jupiter''s second largest moon and the third largest moon in our solar system.', 2410.3);
INSERT INTO public.moon VALUES (6, 'Io', 5, 'Io is Jupiter''s third largest moon, and the most volcanically active world in our solar system.', 1821.6);
INSERT INTO public.moon VALUES (7, 'Europa', 5, 'Europa is Jupiter''s fourth largest moon. It''s about 90% the size of Earth''s Moon.', 1560.8);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 'Saturn''s largest moon, Titan has an earthlike cycle of liquids flowing across its surface.', 2574.7);
INSERT INTO public.moon VALUES (9, 'Encladius', 6, 'Geysers venting from this ocean world. Its subsurface saltwater ocean could be a possible habitat for life.', 252.1);
INSERT INTO public.moon VALUES (10, 'Hyperion', 6, 'Hyperion is the largest of Saturn''s irregular, nonspherical moons.', 135);
INSERT INTO public.moon VALUES (11, 'Prometheus', 6, 'Prometheus acts as a shepherding moon, constraining the extent of the inner edge of Saturn''s F Ring.', 43.1);
INSERT INTO public.moon VALUES (12, 'Pandora', 6, 'Pandora, a potato-shaped moon, is coated in a fine(dust-sized) icy material.', 40.7);
INSERT INTO public.moon VALUES (13, 'Miranda', 7, 'Like Frankenstein''s monster, Mirinda looks like it was pieced together from parts that didn''t quite merge properly.', 235.8);
INSERT INTO public.moon VALUES (14, 'Ariel', 7, 'Ariel has the brightest surface of the five largest Uranian moons.', 578.9);
INSERT INTO public.moon VALUES (15, 'Umbriel', 7, 'Umbriel is the darkest of Uranus'' largest moons.', 584.7);
INSERT INTO public.moon VALUES (16, 'Titania', 7, 'Titania is Uranus'' largest moon.', 2574.7);
INSERT INTO public.moon VALUES (17, 'Oberon', 7, 'Oberon is the second largest moon of Uranus.', 761.4);
INSERT INTO public.moon VALUES (18, 'Despina', 8, 'Despina is a tiny moon located within Neptune''s faint ring system.', 75);
INSERT INTO public.moon VALUES (19, 'Galatea', 8, 'Galatea is another of Neptune''s tiny moons.', 87.4);
INSERT INTO public.moon VALUES (20, 'Hippocamp', 8, 'Hippocamp is unusually close to a much larger Neptunian moon called Proteus.', 9);
INSERT INTO public.moon VALUES (21, 'Proteus', 8, 'Proteus is one of the largest of Neptune''s known moons, although it is not as big as Triton.', 210);
INSERT INTO public.moon VALUES (22, 'Triton', 8, 'Triton is the largest of Neptune''s 13 moons.', 1353.4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth''s Moon.', false, 'terrestrial', 2439.7);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Venus is the second planet from the Sun, and Earth''s closet planetary neighbor.', false, 'terrestrial', 6051.8);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Earth - our home planet - is the third planet from the Sun, and the fifth largest planet.', true, 'terrestrial', 6371);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Mars - the fourth planet from the Sun - is a dusty, cold, desert world with a very thin atmosphere.', false, 'terrestrial', 3398.5);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Jupiter is the largest planet in our solar system - if it were a hallow shell, 1,000 Earths could fit inside.', false, 'gas giant', 69911);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Saturn is the sixth planet from the Sun, and the second-largest planet in our solar system.', false, 'gas giant', 58232);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Uranus is the seventh planet form the Sun, and has the third largest diameter of planets in our solar system.', false, 'ice giant', 25362);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Neptune is the eight and most distant planet in our solar system. Dark, cold, and whipped by supersonic winds.', false, 'ice giant', 24622);
INSERT INTO public.planet VALUES (9, 'Kepler-20b', 7, 'Kepler-20b is an exoplanet orbiting Kepler-20. It is classified as a Super-Earth.', false, 'super earth', 11913.77);
INSERT INTO public.planet VALUES (10, 'Kepler-20c', 7, 'Kepler-20c is an exoplanet orbiting Kepler-20. It has a mass similar to Neptune but is slighlty smaller.', false, 'exoplanet', 19558.97);
INSERT INTO public.planet VALUES (13, 'Kepler-20f', 7, 'Kepler-20f is an exoplanet orbiting the Sun-like star Kepler-20', false, 'exoplanet', 6390.1);
INSERT INTO public.planet VALUES (12, 'Kepler-20e', 7, 'Kepler-20e is most likely a rocky planet made of iron and silicates.', false, 'terrestrial exoplanet', 5500);
INSERT INTO public.planet VALUES (11, 'Kepler-20d', 7, 'Kepler-20d is an exoplanet orbiting Kepler-20. It has a mass and radius similar to Neptune.', false, 'super earth', 17520.25);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 4, 'Mars Odyseey', 2001, true, 23);
INSERT INTO public.satellite VALUES (2, 4, 'Mars Express', 2003, true, 20);
INSERT INTO public.satellite VALUES (3, 4, 'Mars Global Surveyor', 1996, false, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 1, 'The Sun is the Solar System''s star and by far its most massive component.', 'G');
INSERT INTO public.star VALUES (2, 'Sirius', 1, 'It''s the brightest star in the night sky. The Sirius system is one of Earth''s nearest neighbours.', 'A');
INSERT INTO public.star VALUES (3, 'Rigel', 1, 'Rigel is a blue supergiant star in the constellation of Orion.', 'B');
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, 'Proxima Centauri is a small, low-mass star located 4.2465 light-years away from the Sun.', 'M');
INSERT INTO public.star VALUES (5, 'Vega', 1, 'Vega is the brightest star in the nothern constellation of Lyra.', 'A');
INSERT INTO public.star VALUES (6, 'Acturus', 1, 'Acturus is the brightest star in the northern constellation of Boötes.', 'K');
INSERT INTO public.star VALUES (7, 'Kepler-20', 1, 'It is slighlty smaller than the Sun.', 'G');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


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
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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
-- Name: satellite satellite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

