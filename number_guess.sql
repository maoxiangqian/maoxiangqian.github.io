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
    guesses integer NOT NULL,
    user_id integer,
    start_at timestamp without time zone DEFAULT now()
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
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 0, 18, '2026-04-03 05:31:43.147832');
INSERT INTO public.games VALUES (2, 629, 19, '2026-04-03 05:31:54.509612');
INSERT INTO public.games VALUES (3, 947, 19, '2026-04-03 05:31:57.188215');
INSERT INTO public.games VALUES (4, 359, 20, '2026-04-03 05:31:59.744309');
INSERT INTO public.games VALUES (5, 194, 20, '2026-04-03 05:32:02.317059');
INSERT INTO public.games VALUES (6, 480, 19, '2026-04-03 05:32:04.909078');
INSERT INTO public.games VALUES (7, 216, 19, '2026-04-03 05:32:07.624625');
INSERT INTO public.games VALUES (8, 854, 19, '2026-04-03 05:32:10.209758');
INSERT INTO public.games VALUES (9, 419, 21, '2026-04-03 05:34:55.663412');
INSERT INTO public.games VALUES (10, 662, 21, '2026-04-03 05:34:58.432845');
INSERT INTO public.games VALUES (11, 784, 22, '2026-04-03 05:35:01.133419');
INSERT INTO public.games VALUES (12, 734, 22, '2026-04-03 05:35:03.833005');
INSERT INTO public.games VALUES (13, 637, 21, '2026-04-03 05:35:06.522306');
INSERT INTO public.games VALUES (14, 936, 21, '2026-04-03 05:35:09.193035');
INSERT INTO public.games VALUES (15, 510, 21, '2026-04-03 05:35:11.813163');
INSERT INTO public.games VALUES (16, 17, 15, '2026-04-03 05:37:40.272226');
INSERT INTO public.games VALUES (17, 7, 15, '2026-04-03 05:38:50.031287');
INSERT INTO public.games VALUES (18, 308, 23, '2026-04-03 05:38:58.619787');
INSERT INTO public.games VALUES (19, 38, 23, '2026-04-03 05:38:58.939128');
INSERT INTO public.games VALUES (20, 691, 24, '2026-04-03 05:38:59.257579');
INSERT INTO public.games VALUES (21, 841, 24, '2026-04-03 05:38:59.587466');
INSERT INTO public.games VALUES (22, 769, 23, '2026-04-03 05:38:59.913059');
INSERT INTO public.games VALUES (23, 872, 23, '2026-04-03 05:39:00.221681');
INSERT INTO public.games VALUES (24, 284, 23, '2026-04-03 05:39:00.474845');
INSERT INTO public.games VALUES (25, 9, 15, '2026-04-03 05:42:46.815607');
INSERT INTO public.games VALUES (26, 411, 25, '2026-04-03 05:43:33.184193');
INSERT INTO public.games VALUES (27, 97, 25, '2026-04-03 05:43:33.41663');
INSERT INTO public.games VALUES (28, 618, 26, '2026-04-03 05:43:33.707126');
INSERT INTO public.games VALUES (29, 488, 26, '2026-04-03 05:43:33.972549');
INSERT INTO public.games VALUES (30, 729, 25, '2026-04-03 05:43:34.260817');
INSERT INTO public.games VALUES (31, 180, 25, '2026-04-03 05:43:34.498981');
INSERT INTO public.games VALUES (32, 913, 25, '2026-04-03 05:43:34.818107');
INSERT INTO public.games VALUES (33, 865, 27, '2026-04-03 05:44:12.894458');
INSERT INTO public.games VALUES (34, 564, 27, '2026-04-03 05:44:13.219959');
INSERT INTO public.games VALUES (35, 440, 28, '2026-04-03 05:44:13.498593');
INSERT INTO public.games VALUES (36, 485, 28, '2026-04-03 05:44:13.79413');
INSERT INTO public.games VALUES (37, 726, 27, '2026-04-03 05:44:14.120982');
INSERT INTO public.games VALUES (38, 486, 27, '2026-04-03 05:44:14.381411');
INSERT INTO public.games VALUES (39, 211, 27, '2026-04-03 05:44:14.623131');
INSERT INTO public.games VALUES (40, 379, 29, '2026-04-03 05:49:02.401162');
INSERT INTO public.games VALUES (41, 950, 29, '2026-04-03 05:49:02.724682');
INSERT INTO public.games VALUES (42, 362, 30, '2026-04-03 05:49:02.988246');
INSERT INTO public.games VALUES (43, 399, 30, '2026-04-03 05:49:03.350241');
INSERT INTO public.games VALUES (44, 244, 29, '2026-04-03 05:49:03.594792');
INSERT INTO public.games VALUES (45, 963, 29, '2026-04-03 05:49:03.910104');
INSERT INTO public.games VALUES (46, 829, 29, '2026-04-03 05:49:04.241376');
INSERT INTO public.games VALUES (47, 126, 31, '2026-04-03 05:50:04.476368');
INSERT INTO public.games VALUES (48, 353, 31, '2026-04-03 05:50:04.771195');
INSERT INTO public.games VALUES (49, 134, 32, '2026-04-03 05:50:05.026567');
INSERT INTO public.games VALUES (50, 839, 32, '2026-04-03 05:50:05.396295');
INSERT INTO public.games VALUES (51, 637, 31, '2026-04-03 05:50:05.713909');
INSERT INTO public.games VALUES (52, 703, 31, '2026-04-03 05:50:05.995961');
INSERT INTO public.games VALUES (53, 301, 31, '2026-04-03 05:50:06.249279');
INSERT INTO public.games VALUES (54, 195, 33, '2026-04-03 05:51:45.516531');
INSERT INTO public.games VALUES (55, 358, 33, '2026-04-03 05:51:45.770035');
INSERT INTO public.games VALUES (56, 788, 34, '2026-04-03 05:51:46.095846');
INSERT INTO public.games VALUES (57, 372, 34, '2026-04-03 05:51:46.373577');
INSERT INTO public.games VALUES (58, 946, 33, '2026-04-03 05:51:46.688777');
INSERT INTO public.games VALUES (59, 38, 33, '2026-04-03 05:51:46.926928');
INSERT INTO public.games VALUES (60, 448, 33, '2026-04-03 05:51:47.248394');
INSERT INTO public.games VALUES (61, 46, 35, '2026-04-03 05:52:21.788163');
INSERT INTO public.games VALUES (62, 722, 35, '2026-04-03 05:52:22.119915');
INSERT INTO public.games VALUES (63, 288, 36, '2026-04-03 05:52:22.377836');
INSERT INTO public.games VALUES (64, 818, 36, '2026-04-03 05:52:22.677362');
INSERT INTO public.games VALUES (65, 140, 35, '2026-04-03 05:52:22.914186');
INSERT INTO public.games VALUES (66, 815, 35, '2026-04-03 05:52:23.270451');
INSERT INTO public.games VALUES (67, 226, 35, '2026-04-03 05:52:23.589142');
INSERT INTO public.games VALUES (68, 289, 37, '2026-04-03 05:53:46.782498');
INSERT INTO public.games VALUES (69, 201, 37, '2026-04-03 05:53:47.019735');
INSERT INTO public.games VALUES (70, 849, 38, '2026-04-03 05:53:47.419113');
INSERT INTO public.games VALUES (71, 863, 38, '2026-04-03 05:53:47.782248');
INSERT INTO public.games VALUES (72, 616, 37, '2026-04-03 05:53:48.057749');
INSERT INTO public.games VALUES (73, 880, 37, '2026-04-03 05:53:48.405158');
INSERT INTO public.games VALUES (74, 5, 37, '2026-04-03 05:53:48.625608');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1775207037639');
INSERT INTO public.users VALUES (2, 'user_1775207037638');
INSERT INTO public.users VALUES (3, 'cal');
INSERT INTO public.users VALUES (4, 'user_1775207260826');
INSERT INTO public.users VALUES (5, 'user_1775207260825');
INSERT INTO public.users VALUES (6, '');
INSERT INTO public.users VALUES (7, 'call');
INSERT INTO public.users VALUES (8, 'user_1775207366254');
INSERT INTO public.users VALUES (9, 'user_1775207366253');
INSERT INTO public.users VALUES (10, 'user_1775207477685');
INSERT INTO public.users VALUES (11, 'user_1775207477684');
INSERT INTO public.users VALUES (12, 'user_1775207617925');
INSERT INTO public.users VALUES (13, 'user_1775207617924');
INSERT INTO public.users VALUES (14, 'cal0');
INSERT INTO public.users VALUES (15, '11');
INSERT INTO public.users VALUES (16, '12');
INSERT INTO public.users VALUES (17, '12345');
INSERT INTO public.users VALUES (18, '1');
INSERT INTO public.users VALUES (19, 'user_1775208714201');
INSERT INTO public.users VALUES (20, 'user_1775208714200');
INSERT INTO public.users VALUES (21, 'user_1775208895346');
INSERT INTO public.users VALUES (22, 'user_1775208895345');
INSERT INTO public.users VALUES (23, 'user_1775209138272');
INSERT INTO public.users VALUES (24, 'user_1775209138271');
INSERT INTO public.users VALUES (25, 'user_1775209412836');
INSERT INTO public.users VALUES (26, 'user_1775209412835');
INSERT INTO public.users VALUES (27, 'user_1775209452467');
INSERT INTO public.users VALUES (28, 'user_1775209452466');
INSERT INTO public.users VALUES (29, 'user_1775209742099');
INSERT INTO public.users VALUES (30, 'user_1775209742098');
INSERT INTO public.users VALUES (31, 'user_1775209804194');
INSERT INTO public.users VALUES (32, 'user_1775209804193');
INSERT INTO public.users VALUES (33, 'user_1775209905226');
INSERT INTO public.users VALUES (34, 'user_1775209905225');
INSERT INTO public.users VALUES (35, 'user_1775209941509');
INSERT INTO public.users VALUES (36, 'user_1775209941508');
INSERT INTO public.users VALUES (37, 'user_1775210026477');
INSERT INTO public.users VALUES (38, 'user_1775210026476');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 74, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

