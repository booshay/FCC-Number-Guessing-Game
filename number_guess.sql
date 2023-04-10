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
    user_id integer NOT NULL,
    guesses_taken integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 373);
INSERT INTO public.games VALUES (2, 360);
INSERT INTO public.games VALUES (2, 439);
INSERT INTO public.games VALUES (1, 578);
INSERT INTO public.games VALUES (1, 676);
INSERT INTO public.games VALUES (1, 541);
INSERT INTO public.games VALUES (3, 8);
INSERT INTO public.games VALUES (4, 995);
INSERT INTO public.games VALUES (4, 502);
INSERT INTO public.games VALUES (5, 677);
INSERT INTO public.games VALUES (5, 767);
INSERT INTO public.games VALUES (4, 119);
INSERT INTO public.games VALUES (4, 205);
INSERT INTO public.games VALUES (4, 964);
INSERT INTO public.games VALUES (3, 10);
INSERT INTO public.games VALUES (6, 10);
INSERT INTO public.games VALUES (7, 622);
INSERT INTO public.games VALUES (8, 281);
INSERT INTO public.games VALUES (8, 297);
INSERT INTO public.games VALUES (7, 81);
INSERT INTO public.games VALUES (7, 871);
INSERT INTO public.games VALUES (7, 462);
INSERT INTO public.games VALUES (9, 744);
INSERT INTO public.games VALUES (10, 402);
INSERT INTO public.games VALUES (10, 17);
INSERT INTO public.games VALUES (9, 667);
INSERT INTO public.games VALUES (9, 143);
INSERT INTO public.games VALUES (9, 431);
INSERT INTO public.games VALUES (11, 212);
INSERT INTO public.games VALUES (12, 278);
INSERT INTO public.games VALUES (12, 176);
INSERT INTO public.games VALUES (11, 994);
INSERT INTO public.games VALUES (11, 459);
INSERT INTO public.games VALUES (11, 503);
INSERT INTO public.games VALUES (13, 415);
INSERT INTO public.games VALUES (14, 679);
INSERT INTO public.games VALUES (14, 226);
INSERT INTO public.games VALUES (13, 628);
INSERT INTO public.games VALUES (13, 217);
INSERT INTO public.games VALUES (13, 985);
INSERT INTO public.games VALUES (15, 585);
INSERT INTO public.games VALUES (15, 204);
INSERT INTO public.games VALUES (16, 965);
INSERT INTO public.games VALUES (16, 558);
INSERT INTO public.games VALUES (15, 663);
INSERT INTO public.games VALUES (15, 405);
INSERT INTO public.games VALUES (15, 987);
INSERT INTO public.games VALUES (18, 3);
INSERT INTO public.games VALUES (19, 518);
INSERT INTO public.games VALUES (19, 763);
INSERT INTO public.games VALUES (20, 716);
INSERT INTO public.games VALUES (20, 814);
INSERT INTO public.games VALUES (19, 62);
INSERT INTO public.games VALUES (19, 793);
INSERT INTO public.games VALUES (19, 344);
INSERT INTO public.games VALUES (21, 788);
INSERT INTO public.games VALUES (22, 47);
INSERT INTO public.games VALUES (22, 882);
INSERT INTO public.games VALUES (21, 327);
INSERT INTO public.games VALUES (21, 394);
INSERT INTO public.games VALUES (21, 433);
INSERT INTO public.games VALUES (23, 43);
INSERT INTO public.games VALUES (23, 605);
INSERT INTO public.games VALUES (24, 32);
INSERT INTO public.games VALUES (24, 280);
INSERT INTO public.games VALUES (23, 873);
INSERT INTO public.games VALUES (23, 979);
INSERT INTO public.games VALUES (23, 170);
INSERT INTO public.games VALUES (25, 697);
INSERT INTO public.games VALUES (25, 275);
INSERT INTO public.games VALUES (26, 838);
INSERT INTO public.games VALUES (26, 748);
INSERT INTO public.games VALUES (25, 539);
INSERT INTO public.games VALUES (25, 502);
INSERT INTO public.games VALUES (25, 256);
INSERT INTO public.games VALUES (27, 835);
INSERT INTO public.games VALUES (27, 489);
INSERT INTO public.games VALUES (28, 863);
INSERT INTO public.games VALUES (28, 812);
INSERT INTO public.games VALUES (27, 13);
INSERT INTO public.games VALUES (27, 991);
INSERT INTO public.games VALUES (27, 790);
INSERT INTO public.games VALUES (6, 12);
INSERT INTO public.games VALUES (29, 260);
INSERT INTO public.games VALUES (29, 119);
INSERT INTO public.games VALUES (30, 794);
INSERT INTO public.games VALUES (30, 1000);
INSERT INTO public.games VALUES (29, 86);
INSERT INTO public.games VALUES (29, 594);
INSERT INTO public.games VALUES (29, 762);
INSERT INTO public.games VALUES (31, 414);
INSERT INTO public.games VALUES (31, 214);
INSERT INTO public.games VALUES (32, 37);
INSERT INTO public.games VALUES (32, 11);
INSERT INTO public.games VALUES (31, 584);
INSERT INTO public.games VALUES (31, 721);
INSERT INTO public.games VALUES (31, 220);
INSERT INTO public.games VALUES (33, 290);
INSERT INTO public.games VALUES (33, 130);
INSERT INTO public.games VALUES (34, 898);
INSERT INTO public.games VALUES (34, 528);
INSERT INTO public.games VALUES (33, 284);
INSERT INTO public.games VALUES (33, 747);
INSERT INTO public.games VALUES (33, 462);
INSERT INTO public.games VALUES (35, 985);
INSERT INTO public.games VALUES (35, 945);
INSERT INTO public.games VALUES (36, 537);
INSERT INTO public.games VALUES (36, 90);
INSERT INTO public.games VALUES (35, 954);
INSERT INTO public.games VALUES (35, 927);
INSERT INTO public.games VALUES (35, 249);
INSERT INTO public.games VALUES (37, 975);
INSERT INTO public.games VALUES (37, 476);
INSERT INTO public.games VALUES (38, 646);
INSERT INTO public.games VALUES (38, 442);
INSERT INTO public.games VALUES (37, 308);
INSERT INTO public.games VALUES (37, 57);
INSERT INTO public.games VALUES (37, 226);
INSERT INTO public.games VALUES (39, 417);
INSERT INTO public.games VALUES (39, 520);
INSERT INTO public.games VALUES (40, 97);
INSERT INTO public.games VALUES (40, 410);
INSERT INTO public.games VALUES (39, 949);
INSERT INTO public.games VALUES (39, 802);
INSERT INTO public.games VALUES (39, 476);
INSERT INTO public.games VALUES (41, 955);
INSERT INTO public.games VALUES (42, 573);
INSERT INTO public.games VALUES (42, 342);
INSERT INTO public.games VALUES (41, 904);
INSERT INTO public.games VALUES (41, 398);
INSERT INTO public.games VALUES (41, 468);
INSERT INTO public.games VALUES (43, 456);
INSERT INTO public.games VALUES (43, 448);
INSERT INTO public.games VALUES (44, 453);
INSERT INTO public.games VALUES (44, 558);
INSERT INTO public.games VALUES (43, 110);
INSERT INTO public.games VALUES (43, 163);
INSERT INTO public.games VALUES (43, 396);
INSERT INTO public.games VALUES (45, 551);
INSERT INTO public.games VALUES (45, 151);
INSERT INTO public.games VALUES (46, 808);
INSERT INTO public.games VALUES (46, 836);
INSERT INTO public.games VALUES (45, 49);
INSERT INTO public.games VALUES (45, 744);
INSERT INTO public.games VALUES (45, 456);
INSERT INTO public.games VALUES (47, 11);
INSERT INTO public.games VALUES (48, 187);
INSERT INTO public.games VALUES (49, 145);
INSERT INTO public.games VALUES (49, 656);
INSERT INTO public.games VALUES (48, 551);
INSERT INTO public.games VALUES (48, 417);
INSERT INTO public.games VALUES (48, 351);
INSERT INTO public.games VALUES (50, 819);
INSERT INTO public.games VALUES (50, 104);
INSERT INTO public.games VALUES (51, 701);
INSERT INTO public.games VALUES (51, 210);
INSERT INTO public.games VALUES (50, 589);
INSERT INTO public.games VALUES (50, 238);
INSERT INTO public.games VALUES (50, 102);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1681085914716');
INSERT INTO public.users VALUES (2, 'user_1681085914715');
INSERT INTO public.users VALUES (3, 'Larry');
INSERT INTO public.users VALUES (4, 'user_1681086344260');
INSERT INTO public.users VALUES (5, 'user_1681086344259');
INSERT INTO public.users VALUES (6, 'Mark');
INSERT INTO public.users VALUES (7, 'user_1681086662561');
INSERT INTO public.users VALUES (8, 'user_1681086662560');
INSERT INTO public.users VALUES (9, 'user_1681086939604');
INSERT INTO public.users VALUES (10, 'user_1681086939603');
INSERT INTO public.users VALUES (11, 'user_1681086968445');
INSERT INTO public.users VALUES (12, 'user_1681086968444');
INSERT INTO public.users VALUES (13, 'user_1681086998024');
INSERT INTO public.users VALUES (14, 'user_1681086998023');
INSERT INTO public.users VALUES (15, 'user_1681087011600');
INSERT INTO public.users VALUES (16, 'user_1681087011599');
INSERT INTO public.users VALUES (17, 'Clint');
INSERT INTO public.users VALUES (18, 'Ron');
INSERT INTO public.users VALUES (19, 'user_1681087159265');
INSERT INTO public.users VALUES (20, 'user_1681087159264');
INSERT INTO public.users VALUES (21, 'user_1681087201988');
INSERT INTO public.users VALUES (22, 'user_1681087201987');
INSERT INTO public.users VALUES (23, 'user_1681087227688');
INSERT INTO public.users VALUES (24, 'user_1681087227687');
INSERT INTO public.users VALUES (25, 'user_1681087258250');
INSERT INTO public.users VALUES (26, 'user_1681087258249');
INSERT INTO public.users VALUES (27, 'user_1681087372450');
INSERT INTO public.users VALUES (28, 'user_1681087372449');
INSERT INTO public.users VALUES (29, 'user_1681087432655');
INSERT INTO public.users VALUES (30, 'user_1681087432654');
INSERT INTO public.users VALUES (31, 'user_1681088086460');
INSERT INTO public.users VALUES (32, 'user_1681088086459');
INSERT INTO public.users VALUES (33, 'user_1681088140554');
INSERT INTO public.users VALUES (34, 'user_1681088140553');
INSERT INTO public.users VALUES (35, 'user_1681088169305');
INSERT INTO public.users VALUES (36, 'user_1681088169304');
INSERT INTO public.users VALUES (37, 'user_1681088258718');
INSERT INTO public.users VALUES (38, 'user_1681088258717');
INSERT INTO public.users VALUES (39, 'user_1681088281871');
INSERT INTO public.users VALUES (40, 'user_1681088281870');
INSERT INTO public.users VALUES (41, 'user_1681088350824');
INSERT INTO public.users VALUES (42, 'user_1681088350823');
INSERT INTO public.users VALUES (43, 'user_1681088377278');
INSERT INTO public.users VALUES (44, 'user_1681088377277');
INSERT INTO public.users VALUES (45, 'user_1681088451251');
INSERT INTO public.users VALUES (46, 'user_1681088451250');
INSERT INTO public.users VALUES (47, 'tim c');
INSERT INTO public.users VALUES (48, 'user_1681088917071');
INSERT INTO public.users VALUES (49, 'user_1681088917070');
INSERT INTO public.users VALUES (50, 'user_1681088938561');
INSERT INTO public.users VALUES (51, 'user_1681088938560');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 51, true);


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

