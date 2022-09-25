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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    stars_with_planets integer NOT NULL,
    messier_objects integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_billions_of_years numeric(6,3) NOT NULL,
    galaxy_type text
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
    name character varying(30),
    planet_id integer NOT NULL,
    diameter_in_km integer,
    orbital_period text
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
    name character varying(20),
    star_id integer NOT NULL,
    has_life boolean,
    diameter_in_km integer NOT NULL
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
    star_type text,
    galaxy_id integer NOT NULL,
    is_sun boolean
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Scorpius', 2, 14, 4);
INSERT INTO public.constellation VALUES (2, 'Draco', 3, 19, 1);
INSERT INTO public.constellation VALUES (3, 'Virgo', 4, 29, 11);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that includes our Solar
System, with the name describing the galaxy''s
appearance from Earth: a hazy band of light seen
in the night sky formed from stars that cannot be
individually distinguished by the naked eye.
', 13.610, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy, also known as Messier 31, 
M31, or NGC 224 and originally the Andromeda 
Nebula, is a barred spiral galaxy with diameter 
of about 46.56 kiloparsecs approximately 
2.5 million light-years from Earth and the 
nearest large galaxy to the Milky Way.
', 10.010, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'The Whirlpool Galaxy, also known as Messier 51a,
M51a, and NGC 5194, is an interacting grand-design
spiral galaxy with a Seyfert 2 active galactic
nucleus. It lies in the constellation Canes
Venatici, and was the first galaxy to be classified
as a spiral galaxy. Its distance is 31 million
light-years away from Earth.
', 0.400, 'spiral');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'The Sombrero Galaxy is a peculiar galaxy of
unclear classification in the constellation
borders of Virgo and Corvus, being about 9.55
megaparsecs from our galaxy. It is a member
of the Virgo II Groups, a series of galaxies
and galaxy clusters strung out from the southern
edge of the Virgo Supercluster.
', 13.250, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'The Black Eye Galaxy is a relatively isolated
spiral galaxy 17 million light-years away in
the mildly northern constellation of Coma
Berenices. It was discovered by Edward Pigott
in March 1779, and independently by Johann
Elert Bode in April of the same year, as well
as by Charles Messier the next year.
', 13.280, 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 'M82 Galaxy Messier 82 is a Starburst galaxy
approximately 12 million light-years away in
the constellation Ursa Major. A member of the
M81 Group, it is about five times more luminous
than the Milky Way and has a center one hundred
times more luminous.
', 13.300, 'Starburst');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 1, 3121, '85 hours');
INSERT INTO public.moon VALUES (2, 'Ganymede', 1, 5268, '172 hours');
INSERT INTO public.moon VALUES (3, 'Io', 1, 3643, '42 hours');
INSERT INTO public.moon VALUES (4, 'Callisto', 1, 4820, '17 days');
INSERT INTO public.moon VALUES (5, 'Titan', 2, 5149, '16 days');
INSERT INTO public.moon VALUES (6, 'Phobos', 2, 22, '8 hours');
INSERT INTO public.moon VALUES (7, 'Deimos', 3, 12, '30 hours');
INSERT INTO public.moon VALUES (8, 'Jupiter LXVII', 4, 2, '683 days');
INSERT INTO public.moon VALUES (9, 'Jupiter LXX', 4, 4, '639 days');
INSERT INTO public.moon VALUES (10, 'S/2007 S 3', 4, 5, '978 days');
INSERT INTO public.moon VALUES (11, 'Ymir', 4, 18, '1,314 days');
INSERT INTO public.moon VALUES (12, 'Moon', 5, 3474, '27.32 days');
INSERT INTO public.moon VALUES (13, 'Titania', 6, 1576, '209 hours');
INSERT INTO public.moon VALUES (14, 'Umbriel', 6, 1169, '99 hours');
INSERT INTO public.moon VALUES (15, 'Ariel', 6, 1157, '60 hours');
INSERT INTO public.moon VALUES (16, 'Oberon', 6, 1522, '13 days');
INSERT INTO public.moon VALUES (17, 'Miranda', 6, 471, '34 hours');
INSERT INTO public.moon VALUES (18, 'Triton', 7, 2706, '141 hours');
INSERT INTO public.moon VALUES (19, 'Thalassa', 7, 82, '7 hours');
INSERT INTO public.moon VALUES (20, 'Hippocamp', 7, 18, '23 hours');
INSERT INTO public.moon VALUES (21, 'Enceladus', 8, 504, '33 hours');
INSERT INTO public.moon VALUES (22, 'Mimas', 8, 396, '23 hours');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', 1, false, 139820);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, false, 4879);
INSERT INTO public.planet VALUES (3, 'Mars', 1, false, 6779);
INSERT INTO public.planet VALUES (4, 'Venus', 1, false, 12104);
INSERT INTO public.planet VALUES (5, 'Earth', 1, true, 12742);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, false, 50724);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, false, 49244);
INSERT INTO public.planet VALUES (8, 'Saturn', 1, false, 116460);
INSERT INTO public.planet VALUES (9, 'TOI-1452 b', 3, NULL, 21000);
INSERT INTO public.planet VALUES (10, 'WASP-39 b', 4, NULL, 182000);
INSERT INTO public.planet VALUES (11, 'WASP-103 b', 5, NULL, 213648);
INSERT INTO public.planet VALUES (12, 'TYC 8998-760-1 b', 6, NULL, 153804);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Antares', 'red supergiant', 1, true);
INSERT INTO public.star VALUES (3, 'TOI-1452', 'M-type red dwarf', 1, true);
INSERT INTO public.star VALUES (4, 'WASP-39', 'G-type', 1, true);
INSERT INTO public.star VALUES (5, 'WASP-103', 'F-type', 1, true);
INSERT INTO public.star VALUES (6, 'TYC 8998-760-1', 'K-type', 1, true);
INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 1, true);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

