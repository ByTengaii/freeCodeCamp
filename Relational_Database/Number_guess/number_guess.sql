--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    player_id integer NOT NULL,
    guess integer NOT NULL
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    player_name character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES (24, 979);
INSERT INTO public.guesses VALUES (25, 896);
INSERT INTO public.guesses VALUES (24, 442);
INSERT INTO public.guesses VALUES (25, 288);
INSERT INTO public.guesses VALUES (26, 80);
INSERT INTO public.guesses VALUES (27, 679);
INSERT INTO public.guesses VALUES (26, 451);
INSERT INTO public.guesses VALUES (27, 302);
INSERT INTO public.guesses VALUES (24, 694);
INSERT INTO public.guesses VALUES (25, 730);
INSERT INTO public.guesses VALUES (24, 539);
INSERT INTO public.guesses VALUES (25, 653);
INSERT INTO public.guesses VALUES (24, 723);
INSERT INTO public.guesses VALUES (25, 254);
INSERT INTO public.guesses VALUES (28, 502);
INSERT INTO public.guesses VALUES (29, 687);
INSERT INTO public.guesses VALUES (28, 538);
INSERT INTO public.guesses VALUES (29, 462);
INSERT INTO public.guesses VALUES (30, 827);
INSERT INTO public.guesses VALUES (31, 639);
INSERT INTO public.guesses VALUES (31, 401);
INSERT INTO public.guesses VALUES (30, 880);
INSERT INTO public.guesses VALUES (29, 375);
INSERT INTO public.guesses VALUES (28, 820);
INSERT INTO public.guesses VALUES (28, 63);
INSERT INTO public.guesses VALUES (29, 519);
INSERT INTO public.guesses VALUES (29, 42);
INSERT INTO public.guesses VALUES (28, 525);
INSERT INTO public.guesses VALUES (32, 769);
INSERT INTO public.guesses VALUES (33, 770);
INSERT INTO public.guesses VALUES (32, 90);
INSERT INTO public.guesses VALUES (33, 229);
INSERT INTO public.guesses VALUES (34, 38);
INSERT INTO public.guesses VALUES (35, 938);
INSERT INTO public.guesses VALUES (34, 675);
INSERT INTO public.guesses VALUES (35, 485);
INSERT INTO public.guesses VALUES (32, 579);
INSERT INTO public.guesses VALUES (33, 455);
INSERT INTO public.guesses VALUES (32, 116);
INSERT INTO public.guesses VALUES (33, 121);
INSERT INTO public.guesses VALUES (32, 620);
INSERT INTO public.guesses VALUES (33, 296);
INSERT INTO public.guesses VALUES (36, 721);
INSERT INTO public.guesses VALUES (37, 721);
INSERT INTO public.guesses VALUES (36, 517);
INSERT INTO public.guesses VALUES (37, 648);
INSERT INTO public.guesses VALUES (38, 484);
INSERT INTO public.guesses VALUES (39, 377);
INSERT INTO public.guesses VALUES (38, 451);
INSERT INTO public.guesses VALUES (39, 896);
INSERT INTO public.guesses VALUES (37, 843);
INSERT INTO public.guesses VALUES (36, 422);
INSERT INTO public.guesses VALUES (36, 574);
INSERT INTO public.guesses VALUES (37, 473);
INSERT INTO public.guesses VALUES (37, 78);
INSERT INTO public.guesses VALUES (36, 905);
INSERT INTO public.guesses VALUES (40, 157);
INSERT INTO public.guesses VALUES (41, 531);
INSERT INTO public.guesses VALUES (40, 128);
INSERT INTO public.guesses VALUES (41, 249);
INSERT INTO public.guesses VALUES (42, 178);
INSERT INTO public.guesses VALUES (43, 70);
INSERT INTO public.guesses VALUES (42, 298);
INSERT INTO public.guesses VALUES (43, 179);
INSERT INTO public.guesses VALUES (40, 310);
INSERT INTO public.guesses VALUES (41, 659);
INSERT INTO public.guesses VALUES (40, 40);
INSERT INTO public.guesses VALUES (41, 403);
INSERT INTO public.guesses VALUES (41, 303);
INSERT INTO public.guesses VALUES (40, 211);
INSERT INTO public.guesses VALUES (3, 10);
INSERT INTO public.guesses VALUES (44, 559);
INSERT INTO public.guesses VALUES (45, 525);
INSERT INTO public.guesses VALUES (44, 618);
INSERT INTO public.guesses VALUES (45, 179);
INSERT INTO public.guesses VALUES (46, 253);
INSERT INTO public.guesses VALUES (47, 318);
INSERT INTO public.guesses VALUES (46, 411);
INSERT INTO public.guesses VALUES (47, 94);
INSERT INTO public.guesses VALUES (44, 567);
INSERT INTO public.guesses VALUES (45, 445);
INSERT INTO public.guesses VALUES (44, 884);
INSERT INTO public.guesses VALUES (44, 20);
INSERT INTO public.guesses VALUES (45, 874);
INSERT INTO public.guesses VALUES (45, 404);
INSERT INTO public.guesses VALUES (3, 14);
INSERT INTO public.guesses VALUES (48, 653);
INSERT INTO public.guesses VALUES (48, 502);
INSERT INTO public.guesses VALUES (49, 177);
INSERT INTO public.guesses VALUES (49, 980);
INSERT INTO public.guesses VALUES (48, 73);
INSERT INTO public.guesses VALUES (48, 71);
INSERT INTO public.guesses VALUES (48, 864);
INSERT INTO public.guesses VALUES (50, 629);
INSERT INTO public.guesses VALUES (50, 212);
INSERT INTO public.guesses VALUES (51, 184);
INSERT INTO public.guesses VALUES (51, 668);
INSERT INTO public.guesses VALUES (50, 25);
INSERT INTO public.guesses VALUES (50, 706);
INSERT INTO public.guesses VALUES (50, 170);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1692626639938');
INSERT INTO public.players VALUES (2, 'user_1692626639937');
INSERT INTO public.players VALUES (3, 'gürkan');
INSERT INTO public.players VALUES (4, 'user_1692626656718');
INSERT INTO public.players VALUES (5, 'user_1692626656717');
INSERT INTO public.players VALUES (6, 'user_1692626703096');
INSERT INTO public.players VALUES (7, 'user_1692626703095');
INSERT INTO public.players VALUES (8, 'user_1692626709973');
INSERT INTO public.players VALUES (9, 'user_1692626709972');
INSERT INTO public.players VALUES (10, 'user_1692626868536');
INSERT INTO public.players VALUES (11, 'user_1692626868849');
INSERT INTO public.players VALUES (12, 'user_1692626868535');
INSERT INTO public.players VALUES (13, 'user_1692626868848');
INSERT INTO public.players VALUES (14, 'user_1692627028498');
INSERT INTO public.players VALUES (15, 'user_1692627028497');
INSERT INTO public.players VALUES (16, 'user_1692628208384');
INSERT INTO public.players VALUES (17, 'user_1692628208719');
INSERT INTO public.players VALUES (18, 'user_1692628208383');
INSERT INTO public.players VALUES (19, 'user_1692628208718');
INSERT INTO public.players VALUES (20, 'user_1692628234075');
INSERT INTO public.players VALUES (21, 'user_1692628234430');
INSERT INTO public.players VALUES (22, 'user_1692628234429');
INSERT INTO public.players VALUES (23, 'user_1692628234074');
INSERT INTO public.players VALUES (24, 'user_1692628254456');
INSERT INTO public.players VALUES (25, 'user_1692628254824');
INSERT INTO public.players VALUES (26, 'user_1692628254455');
INSERT INTO public.players VALUES (27, 'user_1692628254823');
INSERT INTO public.players VALUES (28, 'user_1692628313407');
INSERT INTO public.players VALUES (29, 'user_1692628313773');
INSERT INTO public.players VALUES (30, 'user_1692628313406');
INSERT INTO public.players VALUES (31, 'user_1692628313772');
INSERT INTO public.players VALUES (32, 'user_1692628339761');
INSERT INTO public.players VALUES (33, 'user_1692628340087');
INSERT INTO public.players VALUES (34, 'user_1692628340086');
INSERT INTO public.players VALUES (35, 'user_1692628339760');
INSERT INTO public.players VALUES (36, 'user_1692628383579');
INSERT INTO public.players VALUES (37, 'user_1692628383941');
INSERT INTO public.players VALUES (38, 'user_1692628383578');
INSERT INTO public.players VALUES (39, 'user_1692628383940');
INSERT INTO public.players VALUES (40, 'user_1692628435603');
INSERT INTO public.players VALUES (41, 'user_1692628435994');
INSERT INTO public.players VALUES (42, 'user_1692628435602');
INSERT INTO public.players VALUES (43, 'user_1692628435993');
INSERT INTO public.players VALUES (44, 'user_1692628499886');
INSERT INTO public.players VALUES (45, 'user_1692628500255');
INSERT INTO public.players VALUES (46, 'user_1692628499885');
INSERT INTO public.players VALUES (47, 'user_1692628500254');
INSERT INTO public.players VALUES (48, 'user_1692628630685');
INSERT INTO public.players VALUES (49, 'user_1692628630684');
INSERT INTO public.players VALUES (50, 'user_1692628696296');
INSERT INTO public.players VALUES (51, 'user_1692628696295');


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 51, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: guesses scores_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT scores_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

