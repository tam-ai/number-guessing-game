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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 1);
INSERT INTO public.games VALUES (2, 389, 2);
INSERT INTO public.games VALUES (3, 271, 2);
INSERT INTO public.games VALUES (4, 508, 3);
INSERT INTO public.games VALUES (5, 542, 3);
INSERT INTO public.games VALUES (6, 222, 2);
INSERT INTO public.games VALUES (7, 10, 2);
INSERT INTO public.games VALUES (8, 993, 2);
INSERT INTO public.games VALUES (9, 3, 4);
INSERT INTO public.games VALUES (10, 116, 5);
INSERT INTO public.games VALUES (11, 422, 5);
INSERT INTO public.games VALUES (12, 642, 6);
INSERT INTO public.games VALUES (13, 221, 6);
INSERT INTO public.games VALUES (14, 590, 5);
INSERT INTO public.games VALUES (15, 707, 5);
INSERT INTO public.games VALUES (16, 149, 5);
INSERT INTO public.games VALUES (17, 122, 7);
INSERT INTO public.games VALUES (18, 629, 7);
INSERT INTO public.games VALUES (19, 346, 8);
INSERT INTO public.games VALUES (20, 63, 8);
INSERT INTO public.games VALUES (21, 356, 7);
INSERT INTO public.games VALUES (22, 413, 7);
INSERT INTO public.games VALUES (23, 852, 7);
INSERT INTO public.games VALUES (24, 162, 9);
INSERT INTO public.games VALUES (25, 945, 9);
INSERT INTO public.games VALUES (26, 813, 10);
INSERT INTO public.games VALUES (27, 292, 10);
INSERT INTO public.games VALUES (28, 960, 9);
INSERT INTO public.games VALUES (29, 997, 9);
INSERT INTO public.games VALUES (30, 5, 9);
INSERT INTO public.games VALUES (31, 623, 11);
INSERT INTO public.games VALUES (32, 627, 11);
INSERT INTO public.games VALUES (33, 455, 12);
INSERT INTO public.games VALUES (34, 765, 12);
INSERT INTO public.games VALUES (35, 949, 11);
INSERT INTO public.games VALUES (36, 100, 11);
INSERT INTO public.games VALUES (37, 112, 11);
INSERT INTO public.games VALUES (38, 1, 13);
INSERT INTO public.games VALUES (39, 889, 13);
INSERT INTO public.games VALUES (40, 658, 14);
INSERT INTO public.games VALUES (41, 37, 14);
INSERT INTO public.games VALUES (42, 53, 13);
INSERT INTO public.games VALUES (43, 518, 13);
INSERT INTO public.games VALUES (44, 716, 13);
INSERT INTO public.games VALUES (45, 387, 15);
INSERT INTO public.games VALUES (46, 359, 15);
INSERT INTO public.games VALUES (47, 216, 16);
INSERT INTO public.games VALUES (48, 373, 16);
INSERT INTO public.games VALUES (49, 289, 15);
INSERT INTO public.games VALUES (50, 104, 15);
INSERT INTO public.games VALUES (51, 870, 15);
INSERT INTO public.games VALUES (52, 582, 17);
INSERT INTO public.games VALUES (53, 953, 17);
INSERT INTO public.games VALUES (54, 242, 18);
INSERT INTO public.games VALUES (55, 212, 18);
INSERT INTO public.games VALUES (56, 935, 17);
INSERT INTO public.games VALUES (57, 737, 17);
INSERT INTO public.games VALUES (58, 612, 17);
INSERT INTO public.games VALUES (59, 141, 19);
INSERT INTO public.games VALUES (60, 14, 19);
INSERT INTO public.games VALUES (61, 473, 20);
INSERT INTO public.games VALUES (62, 559, 20);
INSERT INTO public.games VALUES (63, 115, 19);
INSERT INTO public.games VALUES (64, 477, 19);
INSERT INTO public.games VALUES (65, 580, 19);
INSERT INTO public.games VALUES (66, 828, 21);
INSERT INTO public.games VALUES (67, 290, 21);
INSERT INTO public.games VALUES (68, 258, 22);
INSERT INTO public.games VALUES (69, 782, 22);
INSERT INTO public.games VALUES (70, 922, 21);
INSERT INTO public.games VALUES (71, 709, 21);
INSERT INTO public.games VALUES (72, 942, 21);
INSERT INTO public.games VALUES (73, 422, 23);
INSERT INTO public.games VALUES (74, 729, 23);
INSERT INTO public.games VALUES (75, 158, 24);
INSERT INTO public.games VALUES (76, 292, 24);
INSERT INTO public.games VALUES (77, 6, 23);
INSERT INTO public.games VALUES (78, 844, 23);
INSERT INTO public.games VALUES (79, 314, 23);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Tam');
INSERT INTO public.users VALUES (2, 'user_1689852302275');
INSERT INTO public.users VALUES (3, 'user_1689852302274');
INSERT INTO public.users VALUES (4, 'sam');
INSERT INTO public.users VALUES (5, 'user_1689852379447');
INSERT INTO public.users VALUES (6, 'user_1689852379446');
INSERT INTO public.users VALUES (7, 'user_1689852551742');
INSERT INTO public.users VALUES (8, 'user_1689852551741');
INSERT INTO public.users VALUES (9, 'user_1689852607642');
INSERT INTO public.users VALUES (10, 'user_1689852607641');
INSERT INTO public.users VALUES (11, 'user_1689852627238');
INSERT INTO public.users VALUES (12, 'user_1689852627237');
INSERT INTO public.users VALUES (13, 'user_1689852640970');
INSERT INTO public.users VALUES (14, 'user_1689852640969');
INSERT INTO public.users VALUES (15, 'user_1689852664165');
INSERT INTO public.users VALUES (16, 'user_1689852664164');
INSERT INTO public.users VALUES (17, 'user_1689852890137');
INSERT INTO public.users VALUES (18, 'user_1689852890136');
INSERT INTO public.users VALUES (19, 'user_1689852991308');
INSERT INTO public.users VALUES (20, 'user_1689852991307');
INSERT INTO public.users VALUES (21, 'user_1689853088591');
INSERT INTO public.users VALUES (22, 'user_1689853088590');
INSERT INTO public.users VALUES (23, 'user_1689853385995');
INSERT INTO public.users VALUES (24, 'user_1689853385994');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 79, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

