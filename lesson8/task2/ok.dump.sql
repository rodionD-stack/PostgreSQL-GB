--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Ubuntu 12.10-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.10 (Ubuntu 12.10-1.pgdg20.04+1)

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
-- Name: communities; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.communities (
    id integer NOT NULL,
    name text,
    creator_id integer,
    created_at character varying(255)
);


ALTER TABLE public.communities OWNER TO gb_user;

--
-- Name: communities_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.communities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communities_id_seq OWNER TO gb_user;

--
-- Name: communities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.communities_id_seq OWNED BY public.communities.id;


--
-- Name: communities_users; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.communities_users (
    id integer NOT NULL,
    community_id integer,
    user_id integer,
    created_at character varying(255)
);


ALTER TABLE public.communities_users OWNER TO gb_user;

--
-- Name: communities_users_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.communities_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communities_users_id_seq OWNER TO gb_user;

--
-- Name: communities_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.communities_users_id_seq OWNED BY public.communities_users.id;


--
-- Name: games; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.games (
    id integer NOT NULL,
    name text,
    user_id integer,
    description text,
    start_palying character varying(255),
    size integer
);


ALTER TABLE public.games OWNER TO gb_user;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO gb_user;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: goods; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.goods (
    id integer NOT NULL,
    name text,
    description text,
    amount integer,
    owner_id integer,
    added_at character varying(255)
);


ALTER TABLE public.goods OWNER TO gb_user;

--
-- Name: goods_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.goods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goods_id_seq OWNER TO gb_user;

--
-- Name: goods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.goods_id_seq OWNED BY public.goods.id;


--
-- Name: goods_users; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.goods_users (
    id integer NOT NULL,
    goods_id integer,
    user_id integer
);


ALTER TABLE public.goods_users OWNER TO gb_user;

--
-- Name: goods_users_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.goods_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goods_users_id_seq OWNER TO gb_user;

--
-- Name: goods_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.goods_users_id_seq OWNED BY public.goods_users.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    from_user_id integer,
    to_user_id integer,
    body text,
    is_important character varying(255) DEFAULT NULL::character varying,
    is_delivered character varying(255) DEFAULT NULL::character varying,
    created_at character varying(255)
);


ALTER TABLE public.messages OWNER TO gb_user;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO gb_user;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: music; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.music (
    id integer NOT NULL,
    url text,
    owner_id integer,
    description text,
    uploaded_at character varying(255),
    size integer
);


ALTER TABLE public.music OWNER TO gb_user;

--
-- Name: music_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.music_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.music_id_seq OWNER TO gb_user;

--
-- Name: music_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.music_id_seq OWNED BY public.music.id;


--
-- Name: photo; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.photo (
    id integer NOT NULL,
    url text,
    owner_id integer,
    description text,
    uploaded_at character varying(255),
    size integer
);


ALTER TABLE public.photo OWNER TO gb_user;

--
-- Name: photo_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_id_seq OWNER TO gb_user;

--
-- Name: photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.photo_id_seq OWNED BY public.photo.id;


--
-- Name: subscribes; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.subscribes (
    id integer NOT NULL,
    requested_by_user_id integer,
    requested_to_user_id integer,
    status_id integer,
    requested_at character varying(255),
    confirmed_at character varying(255)
);


ALTER TABLE public.subscribes OWNER TO gb_user;

--
-- Name: subscribes_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.subscribes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscribes_id_seq OWNER TO gb_user;

--
-- Name: subscribes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.subscribes_id_seq OWNED BY public.subscribes.id;


--
-- Name: subscribes_status; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.subscribes_status (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.subscribes_status OWNER TO gb_user;

--
-- Name: subscribes_status_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.subscribes_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscribes_status_id_seq OWNER TO gb_user;

--
-- Name: subscribes_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.subscribes_status_id_seq OWNED BY public.subscribes_status.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(255) DEFAULT NULL::character varying,
    last_name character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    phone character varying(100) DEFAULT NULL::character varying,
    main_photo_id integer,
    created_at character varying(255)
);


ALTER TABLE public.users OWNER TO gb_user;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO gb_user;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: video; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.video (
    id integer NOT NULL,
    url text,
    owner_id integer,
    description text,
    uploaded_at character varying(255),
    size integer
);


ALTER TABLE public.video OWNER TO gb_user;

--
-- Name: video_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_id_seq OWNER TO gb_user;

--
-- Name: video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.video_id_seq OWNED BY public.video.id;


--
-- Name: communities id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities ALTER COLUMN id SET DEFAULT nextval('public.communities_id_seq'::regclass);


--
-- Name: communities_users id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities_users ALTER COLUMN id SET DEFAULT nextval('public.communities_users_id_seq'::regclass);


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: goods id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.goods ALTER COLUMN id SET DEFAULT nextval('public.goods_id_seq'::regclass);


--
-- Name: goods_users id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.goods_users ALTER COLUMN id SET DEFAULT nextval('public.goods_users_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: music id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.music ALTER COLUMN id SET DEFAULT nextval('public.music_id_seq'::regclass);


--
-- Name: photo id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.photo ALTER COLUMN id SET DEFAULT nextval('public.photo_id_seq'::regclass);


--
-- Name: subscribes id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.subscribes ALTER COLUMN id SET DEFAULT nextval('public.subscribes_id_seq'::regclass);


--
-- Name: subscribes_status id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.subscribes_status ALTER COLUMN id SET DEFAULT nextval('public.subscribes_status_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: video id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.video ALTER COLUMN id SET DEFAULT nextval('public.video_id_seq'::regclass);


--
-- Data for Name: communities; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.communities (id, name, creator_id, created_at) FROM stdin;
1	non sapien	48	2023-01-18 05:57:08
2	eu tellus.	59	2023-03-17 07:50:40
3	vitae diam.	75	2023-04-09 09:31:10
4	amet, consectetuer	32	2022-07-06 12:34:16
5	sollicitudin	33	2023-02-28 04:42:37
6	lectus justo	22	2022-03-10 02:39:04
7	faucibus.	92	2022-06-21 04:52:08
8	scelerisque	47	2022-08-31 09:27:34
9	cursus	28	2022-10-24 10:20:31
10	nascetur ridiculus	43	2022-12-27 21:36:28
11	lacinia	5	2022-05-15 21:51:52
12	Curabitur	12	2023-03-28 18:36:07
13	metus. Aliquam	83	2022-07-25 13:19:43
14	dictum eu,	98	2022-08-27 20:36:04
15	lectus quis	45	2022-08-04 20:01:16
16	quis	62	2021-08-20 07:12:10
17	mi lacinia	38	2023-03-15 14:59:04
18	mus.	62	2022-04-11 16:51:18
19	magna.	54	2021-08-07 09:45:01
20	arcu. Vestibulum	44	2022-03-28 12:33:46
21	non,	85	2021-11-28 05:18:12
22	volutpat	79	2021-08-05 18:43:20
23	Pellentesque ultricies	30	2023-04-14 09:39:29
24	metus	66	2021-09-16 08:47:41
25	dolor sit	60	2021-11-22 21:56:48
26	Nam	98	2022-02-07 22:46:02
27	a nunc.	17	2022-10-16 18:36:57
28	Proin eget	88	2021-05-16 08:01:48
29	tempus risus.	27	2022-02-06 17:00:17
30	a tortor.	61	2023-03-10 05:34:20
31	magna. Cras	17	2022-04-07 21:43:33
32	ornare, facilisis	36	2021-12-28 11:59:15
33	id nunc	71	2022-04-04 07:18:40
34	consequat,	51	2022-03-02 04:29:07
35	accumsan	2	2021-08-06 11:49:40
36	tincidunt,	81	2022-02-16 07:43:30
37	Donec consectetuer	38	2022-11-07 05:22:25
38	Mauris	66	2021-09-12 18:30:58
39	at arcu.	2	2022-01-12 05:57:15
40	sollicitudin a,	26	2022-07-31 15:16:26
41	varius.	33	2022-10-16 19:15:00
42	sem elit,	77	2022-07-13 10:50:55
43	sit amet,	66	2023-01-23 17:16:15
44	dui,	44	2023-03-16 02:04:59
45	Fusce fermentum	94	2021-07-21 22:31:53
46	gravida. Praesent	35	2023-04-02 23:24:22
47	Maecenas ornare	48	2023-04-08 02:31:41
48	semper tellus	35	2023-02-10 12:11:28
49	in	29	2022-12-06 14:20:54
50	dolor sit	70	2022-02-04 07:03:41
51	ultrices,	99	2022-11-15 10:50:06
52	eu	80	2021-05-17 20:15:12
53	nibh. Aliquam	36	2022-09-25 01:24:37
54	sapien molestie	80	2023-04-17 20:42:46
55	est ac	39	2022-03-20 03:00:43
56	Proin nisl	71	2022-08-08 01:38:57
57	Vestibulum	24	2021-11-01 18:59:38
58	ornare	60	2023-03-15 09:01:22
59	facilisis lorem	2	2023-04-14 02:45:55
60	Nulla	100	2022-07-25 13:48:46
61	Aliquam	17	2022-10-16 17:30:49
62	bibendum	60	2022-12-01 14:44:29
63	in, hendrerit	23	2022-11-30 23:10:01
64	In	80	2021-06-30 09:13:24
65	convallis	78	2022-08-17 00:01:04
66	lorem ipsum	39	2021-04-25 01:30:12
67	turpis	54	2021-08-16 09:07:07
68	ac	60	2023-02-23 00:07:44
69	Sed auctor	14	2023-03-26 11:36:26
70	Nulla	83	2022-03-09 20:11:09
71	Integer	67	2022-01-12 11:24:51
72	ut	75	2022-01-21 01:21:07
73	Nunc ut	66	2022-10-09 01:59:02
74	dictum. Phasellus	41	2022-06-25 07:15:01
75	non sapien	42	2022-06-04 17:36:39
76	ultricies ligula.	47	2021-11-18 23:53:04
77	purus gravida	77	2022-12-03 19:40:34
78	Mauris	89	2022-03-04 17:27:50
79	Suspendisse	9	2023-01-18 09:17:02
80	non, cursus	88	2021-11-19 08:59:07
81	ipsum cursus	54	2023-03-30 23:54:41
82	quis diam.	66	2022-11-06 18:33:24
83	et	2	2021-07-03 18:11:32
84	malesuada fringilla	26	2021-05-12 13:31:00
85	tellus	13	2022-05-08 20:09:05
86	fringilla purus	99	2023-01-21 18:35:58
87	Donec tempor,	3	2021-04-19 12:08:34
88	congue	95	2022-01-08 04:34:26
89	Nullam lobortis	23	2021-05-01 02:24:59
90	Donec est	45	2022-12-14 20:08:52
91	magna. Lorem	69	2023-01-29 17:14:37
92	et arcu	71	2021-06-14 14:35:57
93	dis parturient	51	2023-04-19 01:01:51
94	gravida sagittis.	94	2021-07-12 00:02:00
95	ridiculus	68	2021-07-18 11:01:36
96	ullamcorper viverra.	5	2021-06-26 00:08:02
97	magna	22	2023-04-12 18:30:33
98	tellus.	38	2022-07-12 12:03:07
99	Proin ultrices.	88	2021-05-15 10:59:44
100	nonummy. Fusce	12	2021-11-21 21:16:47
\.


--
-- Data for Name: communities_users; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.communities_users (id, community_id, user_id, created_at) FROM stdin;
1	3	57	2021-12-07 21:03:44
2	88	96	2021-05-10 10:55:00
3	91	95	2021-10-25 11:19:38
4	31	93	2021-07-06 13:20:59
5	63	12	2022-11-19 15:28:41
6	28	55	2021-06-11 00:35:46
7	24	73	2022-09-10 10:21:17
8	30	52	2022-08-21 19:00:54
9	82	66	2022-05-31 02:14:34
10	91	54	2022-10-31 03:48:48
11	38	33	2021-10-15 12:38:49
12	71	28	2022-08-20 05:51:44
13	66	64	2022-08-03 09:59:14
14	96	88	2022-10-29 09:46:00
15	35	92	2021-05-06 21:22:41
16	45	75	2021-10-18 18:46:35
17	57	15	2022-01-03 06:18:03
18	48	97	2021-11-06 07:15:40
19	63	40	2022-10-26 05:37:44
20	37	30	2022-09-10 08:16:42
21	80	18	2021-10-01 09:57:49
22	44	19	2022-12-10 06:57:22
23	35	10	2021-12-31 20:41:42
24	98	1	2021-10-30 12:36:16
25	62	78	2022-05-21 14:38:37
26	48	79	2023-02-01 20:23:37
27	71	64	2021-10-21 06:00:44
28	86	13	2022-04-16 08:03:59
29	33	96	2021-12-08 05:22:12
30	82	60	2021-07-25 05:29:42
31	16	37	2022-02-22 01:56:50
32	35	39	2022-02-10 18:28:33
33	31	98	2022-11-22 09:35:22
34	44	60	2021-05-10 07:11:13
35	6	12	2022-03-10 21:35:44
36	32	27	2021-05-07 15:35:02
37	63	41	2022-11-26 20:27:52
38	57	78	2021-10-04 01:23:39
39	92	19	2022-12-30 23:57:24
40	86	57	2022-04-08 23:58:42
41	33	39	2022-05-14 08:59:18
42	58	10	2022-04-02 14:33:50
43	40	53	2021-10-04 11:47:04
44	42	72	2021-11-10 03:56:17
45	37	100	2021-04-19 23:04:05
46	53	52	2021-08-20 14:57:07
47	79	92	2022-11-07 16:29:30
48	47	35	2023-03-22 10:53:19
49	5	80	2021-07-09 01:26:50
50	25	23	2021-05-06 13:16:32
51	57	2	2022-04-11 04:04:06
52	53	68	2022-06-06 06:03:30
53	77	89	2021-12-11 16:51:22
54	72	78	2022-09-13 12:59:58
55	56	56	2021-11-17 11:42:57
56	61	48	2022-04-30 20:23:58
57	71	51	2023-01-13 12:08:50
58	89	38	2022-12-07 19:26:44
59	10	15	2023-03-15 11:02:10
60	66	44	2021-07-23 11:22:08
61	50	68	2022-08-19 15:01:17
62	25	27	2022-09-02 14:54:25
63	82	16	2021-05-06 11:16:22
64	75	91	2022-06-20 16:16:54
65	52	6	2022-04-30 22:36:41
66	41	29	2022-11-06 17:03:52
67	68	4	2021-07-24 01:29:17
68	3	86	2022-11-13 10:40:29
69	2	42	2021-12-22 21:09:48
70	16	88	2023-01-18 23:00:44
71	29	6	2021-07-17 09:59:56
72	14	98	2023-02-05 14:32:22
73	24	38	2021-10-22 08:03:49
74	93	68	2021-05-09 00:05:11
75	5	67	2022-01-05 14:27:25
76	78	10	2022-09-19 18:39:26
77	80	77	2021-11-01 09:06:10
78	41	86	2022-12-16 18:20:52
79	17	20	2022-10-17 11:16:38
80	18	90	2021-12-02 11:23:07
81	31	67	2022-08-28 13:03:12
82	75	12	2021-08-30 11:39:14
83	97	63	2022-11-19 18:38:30
84	49	4	2023-04-10 09:03:43
85	24	18	2022-05-15 04:41:49
86	76	41	2023-02-12 01:09:35
87	65	59	2022-02-05 20:16:50
88	84	64	2022-09-17 05:06:46
89	92	1	2023-01-03 15:52:11
90	76	10	2022-01-24 21:47:18
91	99	29	2022-11-14 18:08:21
92	34	30	2022-04-14 01:06:22
93	72	40	2022-10-22 05:32:32
94	99	57	2022-06-25 21:55:42
95	17	4	2022-02-27 04:03:31
96	39	47	2022-03-28 06:47:12
97	2	95	2022-04-09 13:52:15
98	5	62	2022-06-17 23:22:36
99	90	28	2022-05-03 14:55:48
100	94	84	2023-03-01 06:35:25
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.games (id, name, user_id, description, start_palying, size) FROM stdin;
1	nibh sit	62	quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu,	2022-03-08 21:44:50	15885
2	dignissim. Maecenas ornare egestas	69	Aenean egestas hendrerit neque. In ornare sagittis	2021-12-02 07:20:30	19846
3	nisl arcu iaculis	5	Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem	2022-02-12 00:01:45	42358
4	Aenean eget metus.	71	accumsan neque et nunc. Quisque ornare tortor at	2022-09-19 15:28:10	14256
5	luctus sit	46	suscipit, est ac facilisis facilisis, magna tellus faucibus leo,	2022-04-17 15:23:46	86989
6	Integer	4	rutrum	2021-09-18 12:37:50	66723
7	tincidunt tempus	93	pede, malesuada vel, venenatis vel,	2021-05-06 05:21:09	81876
8	felis purus	19	enim, gravida sit amet, dapibus id, blandit at, nisi.	2021-07-13 12:17:20	23950
9	natoque	35	urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus	2021-09-05 02:07:48	7957
10	diam. Duis mi	8	tortor nibh sit amet orci. Ut sagittis lobortis	2022-04-02 07:29:07	79114
11	non, cursus	28	nisi nibh lacinia orci,	2022-09-07 11:00:48	31956
12	libero	89	fringilla, porttitor	2022-12-14 23:59:46	48162
13	Donec tempor, est	36	hendrerit. Donec porttitor tellus non magna.	2023-02-03 10:14:35	97581
14	ac mi eleifend egestas.	84	eu tempor	2023-01-31 18:59:09	24811
15	magna a	63	cubilia Curae Phasellus	2021-09-09 20:56:30	26740
16	metus urna	30	fringilla euismod enim. Etiam gravida molestie arcu.	2022-02-27 23:49:54	14696
17	id sapien.	56	eget	2022-01-13 12:07:04	51373
18	risus.	80	felis purus	2022-05-03 06:28:20	89729
19	lorem vitae odio	92	malesuada vel, convallis in, cursus et, eros.	2021-08-31 10:25:32	95265
20	ac	74	ut, nulla.	2021-12-09 03:46:23	48338
21	cursus et, magna.	99	per conubia nostra, per inceptos hymenaeos. Mauris ut quam	2021-10-06 15:41:09	33649
22	mauris sagittis	47	mattis ornare, lectus ante dictum mi, ac	2023-02-16 00:47:53	46255
23	dolor. Quisque tincidunt	33	nibh sit amet orci. Ut sagittis	2022-12-27 11:07:49	22003
24	eleifend non, dapibus	67	Cras	2022-08-24 03:27:55	86748
25	purus gravida sagittis. Duis	80	netus et	2022-06-24 10:18:50	80190
26	nunc. Quisque ornare	99	tempor erat neque non quam. Pellentesque habitant morbi tristique	2021-11-08 06:23:01	25453
27	turpis egestas. Fusce aliquet	80	risus varius orci, in consequat	2022-07-10 19:12:59	65224
28	ridiculus mus. Donec	11	semper rutrum. Fusce dolor quam, elementum at,	2022-08-24 09:15:54	90950
29	nulla	5	sit amet risus. Donec egestas. Aliquam nec enim.	2021-06-07 16:52:07	66726
30	nulla at sem	99	quis lectus. Nullam suscipit, est ac	2022-06-29 00:24:22	44641
31	dictum cursus. Nunc mauris	2	in magna. Phasellus	2023-02-24 12:21:59	51793
32	ac nulla. In	83	urna convallis	2022-07-02 14:30:06	3885
33	convallis ligula.	11	sollicitudin orci sem eget massa. Suspendisse eleifend. Cras	2022-08-14 08:27:08	79050
34	Sed	24	at sem molestie sodales. Mauris blandit enim consequat purus.	2023-01-03 16:52:42	83611
35	primis in	7	sodales. Mauris blandit enim consequat purus. Maecenas libero	2022-01-19 03:44:23	55928
36	cursus luctus, ipsum	19	sit amet,	2021-06-21 21:00:23	77077
37	et, euismod et,	31	torquent per	2021-11-15 23:59:55	70101
38	risus a	23	dapibus quam quis diam. Pellentesque habitant morbi tristique senectus	2021-12-07 22:44:55	57242
39	a, auctor non, feugiat	51	fringilla est. Mauris	2021-09-13 07:44:01	67991
40	dictum	24	primis in faucibus orci luctus et ultrices	2021-12-03 02:52:42	16219
41	malesuada malesuada.	21	magna.	2022-04-05 20:42:21	45199
42	tellus. Phasellus	12	congue a, aliquet vel, vulputate eu,	2022-07-10 09:39:13	77035
43	malesuada. Integer	39	iaculis quis, pede. Praesent	2021-09-24 15:14:53	55199
44	posuere, enim nisl elementum	58	egestas blandit. Nam	2023-04-13 12:32:03	95182
45	cursus. Nunc	64	non enim commodo hendrerit.	2023-01-22 17:43:39	47118
46	elit, a feugiat tellus	27	Nulla aliquet. Proin velit. Sed malesuada augue	2022-12-15 20:32:18	17679
47	turpis	61	lacus. Quisque purus sapien, gravida non, sollicitudin a,	2022-04-10 02:08:19	27372
48	dui augue eu	20	Sed diam lorem, auctor	2021-07-22 05:27:05	15475
49	ante	78	posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit	2021-06-26 07:13:29	8133
50	ipsum primis in faucibus	51	risus varius	2021-10-20 11:49:40	27182
51	non, feugiat	22	amet	2022-10-23 23:54:31	97711
52	Donec nibh enim, gravida	80	sit amet ultricies sem magna	2021-05-25 15:25:29	37238
53	hymenaeos. Mauris	46	libero. Donec consectetuer mauris id sapien. Cras	2022-03-23 07:25:51	94164
54	orci quis	86	malesuada ut, sem. Nulla interdum. Curabitur	2022-07-09 18:16:42	63242
55	lobortis mauris. Suspendisse	64	mi enim, condimentum eget, volutpat	2022-01-21 11:07:52	30478
56	vitae purus gravida	39	faucibus leo, in lobortis tellus justo sit	2021-09-16 18:45:17	80974
57	Cras interdum. Nunc sollicitudin	74	laoreet, libero et tristique pellentesque, tellus sem mollis	2022-12-19 08:40:07	50901
58	lacus.	79	sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque	2022-09-25 16:36:53	41441
59	sagittis semper.	3	arcu vel quam dignissim pharetra. Nam ac nulla. In	2021-07-22 17:48:39	3174
60	in faucibus orci	99	pharetra. Nam ac nulla. In tincidunt congue turpis. In	2022-09-12 12:02:04	78157
61	Quisque libero lacus, varius	9	arcu et pede. Nunc sed orci lobortis	2022-12-31 20:29:22	57900
62	mattis	92	sed, est. Nunc laoreet lectus quis	2021-07-03 17:27:05	84432
63	ac nulla. In	55	Proin eget	2021-09-11 13:27:40	19680
64	tincidunt. Donec	49	semper. Nam tempor diam dictum sapien. Aenean	2022-12-06 14:12:54	54587
65	cursus purus. Nullam	64	In at pede. Cras vulputate	2021-11-11 00:51:38	22181
66	dolor, tempus non, lacinia	96	purus, in	2022-09-13 07:02:38	94007
67	lorem tristique	19	Etiam imperdiet dictum magna. Ut tincidunt	2022-04-24 22:21:12	98145
68	quam a felis ullamcorper	78	cursus vestibulum. Mauris magna.	2022-03-01 01:22:11	69493
69	feugiat placerat velit.	13	in, tempus eu, ligula.	2022-02-28 04:41:52	89301
70	et ultrices posuere	82	sodales purus, in molestie tortor nibh sit amet	2022-03-22 14:58:13	20363
71	dapibus ligula. Aliquam	89	dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus	2023-01-02 13:54:00	59227
72	hymenaeos. Mauris ut quam	9	Ut semper pretium neque.	2021-08-20 06:38:38	50099
73	Sed nulla	84	tincidunt dui augue eu	2021-10-20 09:03:09	53889
74	urna. Ut tincidunt vehicula	90	vestibulum lorem, sit amet ultricies sem magna	2021-06-02 02:08:28	51837
75	in, hendrerit	60	risus a ultricies adipiscing, enim	2021-07-15 05:37:56	67058
76	tempor	26	mus. Proin vel	2021-05-21 07:50:32	61680
77	est tempor bibendum. Donec	48	urna suscipit nonummy. Fusce fermentum fermentum arcu.	2022-08-05 23:20:07	51361
78	enim, gravida	29	nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla	2023-03-16 06:52:56	3826
79	ligula tortor,	71	per inceptos	2022-11-24 07:57:55	40828
80	eu, ultrices sit	11	ante	2022-08-16 00:44:37	87646
81	scelerisque dui. Suspendisse	79	nec, mollis	2023-04-08 13:47:48	94815
82	mattis	23	orci tincidunt adipiscing. Mauris molestie	2023-01-11 02:17:43	29873
83	pellentesque, tellus sem mollis	21	dolor quam, elementum at, egestas a, scelerisque	2022-09-14 15:40:51	23955
84	id	8	neque. Nullam ut nisi a odio semper	2021-07-16 20:43:40	92793
85	nascetur ridiculus mus.	13	Quisque varius. Nam porttitor scelerisque neque. Nullam	2022-07-15 06:41:34	17383
86	Morbi vehicula. Pellentesque	66	metus. Vivamus euismod urna. Nullam lobortis quam a	2022-04-25 07:22:30	34640
87	sociosqu ad litora	29	ac metus vitae velit	2022-07-02 04:36:42	38731
88	convallis est, vitae sodales	45	et magnis dis parturient	2022-10-19 08:04:26	49780
89	Nam ac	100	urna suscipit nonummy. Fusce fermentum	2021-08-04 13:42:40	6155
90	faucibus orci luctus	28	in lobortis tellus justo sit amet nulla.	2023-02-12 14:27:38	17707
91	tortor, dictum	74	erat vel pede	2021-09-01 01:09:44	56013
92	ac	72	eu dolor	2021-12-27 10:39:56	41755
93	adipiscing lacus.	12	nisi. Aenean eget metus. In nec orci. Donec	2022-01-31 23:22:58	53945
94	mauris.	95	arcu eu odio tristique pharetra.	2022-06-16 07:39:17	63376
95	interdum. Curabitur	13	adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.	2022-10-16 01:04:54	26176
96	ut,	64	Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis	2021-08-20 08:46:31	24653
97	id, ante.	45	tempus	2022-09-10 20:03:20	19424
98	mi pede, nonummy	9	vulputate, risus a ultricies adipiscing, enim	2023-03-24 14:25:20	40736
99	sed leo. Cras vehicula	72	vulputate dui, nec tempus	2023-02-05 02:03:11	59044
100	a neque. Nullam ut	79	sagittis augue,	2023-02-19 03:23:22	7635
\.


--
-- Data for Name: goods; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.goods (id, name, description, amount, owner_id, added_at) FROM stdin;
1	cursus	dui. Fusce diam nunc, ullamcorper eu,	2	43	2022-05-20 16:11:01
2	Quisque tincidunt pede	auctor, velit eget laoreet posuere, enim nisl	0	94	2022-08-20 12:44:14
3	ligula. Aenean	commodo tincidunt nibh. Phasellus	1	54	2021-09-21 10:30:26
4	sed orci	libero nec ligula consectetuer rhoncus.	1	51	2021-12-10 04:51:14
5	erat neque non	ullamcorper, nisl arcu iaculis enim, sit amet	16	29	2021-05-05 21:08:33
6	nunc sed libero.	varius	38	73	2022-08-29 21:55:05
7	Integer in magna.	libero nec ligula	3	35	2023-01-11 10:07:53
8	enim, condimentum eget, volutpat	sollicitudin adipiscing ligula. Aenean gravida	21	26	2023-03-15 07:55:16
9	torquent	nec quam. Curabitur vel lectus. Cum sociis natoque	40	90	2021-11-18 03:34:25
10	mi pede,	nulla magna, malesuada vel, convallis in, cursus	42	80	2021-12-04 11:58:07
11	tincidunt,	est ac facilisis facilisis, magna tellus	25	55	2023-02-25 09:39:23
12	tempor	pede sagittis augue, eu tempor erat neque	30	53	2023-03-21 04:11:14
13	Donec tempus,	elit, pretium et,	14	10	2022-01-30 09:47:00
14	in lobortis tellus	in aliquet lobortis, nisi nibh lacinia orci,	18	84	2022-02-20 23:20:05
15	Ut tincidunt vehicula	Cras vulputate velit eu sem. Pellentesque ut	32	37	2023-01-03 20:33:59
16	semper egestas, urna	neque. Sed	39	60	2021-10-05 14:27:02
17	per conubia nostra,	eu odio tristique pharetra. Quisque	19	20	2022-01-28 15:04:59
18	mollis.	sagittis semper. Nam tempor diam dictum sapien. Aenean massa.	31	99	2021-12-03 01:35:45
19	faucibus leo, in	ante blandit viverra. Donec tempus, lorem fringilla	25	7	2022-02-18 22:10:08
20	sed pede. Cum	primis in faucibus orci luctus et ultrices posuere cubilia Curae	39	20	2022-05-20 03:01:47
21	placerat velit.	scelerisque dui. Suspendisse ac metus vitae	40	94	2022-03-18 10:47:37
22	dolor sit	justo eu arcu. Morbi sit amet	36	4	2022-09-09 05:39:06
23	eget lacus.	amet, risus. Donec nibh	50	33	2022-06-30 17:29:32
24	eu metus.	ultricies dignissim	3	95	2022-01-14 23:04:29
25	Nullam	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam	35	83	2022-10-05 14:07:06
26	lobortis quis,	tincidunt congue turpis. In	28	69	2023-01-07 19:39:17
27	sed, facilisis	ac libero nec ligula consectetuer rhoncus. Nullam velit dui,	34	97	2023-02-19 05:21:29
28	sed, est. Nunc	eu elit. Nulla facilisi. Sed neque. Sed eget lacus.	34	73	2022-12-22 07:27:31
29	iaculis enim,	Aliquam ornare,	5	27	2022-02-16 20:15:47
30	sociis	dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis	31	13	2022-08-14 14:38:42
31	purus, accumsan interdum	Donec est mauris,	8	99	2021-08-21 19:39:13
32	a, scelerisque sed,	Sed nec metus facilisis	5	97	2022-01-09 06:09:46
33	In condimentum.	Phasellus libero mauris, aliquam eu, accumsan sed, facilisis	2	39	2022-03-04 07:21:58
34	augue	est ac mattis semper, dui lectus	23	37	2022-05-16 04:10:05
35	Duis risus	Mauris vel turpis. Aliquam	2	88	2021-06-18 09:55:58
36	pede. Nunc sed orci	tempus, lorem fringilla ornare placerat, orci lacus	36	31	2021-06-21 19:22:45
37	eu, ultrices	Aliquam	5	51	2021-05-24 04:28:03
38	enim. Etiam	amet, risus. Donec nibh enim, gravida sit amet, dapibus id,	10	41	2021-10-28 12:57:27
39	Aenean	nec, malesuada ut, sem. Nulla interdum. Curabitur	38	83	2022-09-13 16:07:23
40	ac mattis	Curabitur dictum.	41	28	2022-04-06 14:33:28
41	pharetra	sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus	22	47	2022-10-30 21:12:20
42	et ipsum cursus	risus. Donec	38	62	2022-07-27 20:37:54
43	aliquet. Proin	elit. Curabitur sed tortor. Integer	13	37	2023-03-27 06:38:58
44	Integer tincidunt	vel quam dignissim pharetra. Nam ac	44	22	2022-08-30 21:30:37
45	neque sed	vitae, posuere at, velit. Cras lorem	21	10	2022-05-22 09:58:10
46	fringilla mi	Fusce aliquam, enim nec tempus scelerisque, lorem	10	36	2023-01-26 19:50:48
47	urna. Nullam	nec, cursus a, enim. Suspendisse	39	67	2022-04-20 18:23:32
48	urna. Ut tincidunt vehicula	Proin vel	1	21	2022-03-14 06:26:16
49	dolor	urna, nec luctus felis	49	68	2021-05-27 08:13:39
50	Maecenas iaculis	nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,	14	2	2022-01-14 22:37:45
51	ligula. Nullam feugiat placerat	vel nisl. Quisque	34	93	2021-11-26 11:01:00
52	sit amet ante. Vivamus	vulputate, lacus. Cras interdum. Nunc sollicitudin	22	57	2021-07-27 14:51:56
53	inceptos hymenaeos. Mauris	risus odio, auctor	17	40	2023-01-14 05:22:06
54	Maecenas iaculis	tellus id nunc	6	86	2021-07-19 09:47:37
55	lobortis, nisi	rhoncus. Proin	11	60	2021-10-31 04:39:46
56	fermentum	libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit	28	60	2022-01-14 17:35:06
57	magna et ipsum cursus	non lorem vitae odio sagittis semper. Nam tempor diam	17	60	2021-07-20 12:47:50
58	risus a	Etiam ligula tortor, dictum eu, placerat eget, venenatis a,	12	56	2021-08-07 17:01:04
59	vitae	libero est,	9	75	2022-09-03 12:08:18
60	ad litora torquent	tempus, lorem fringilla ornare placerat,	33	7	2021-07-31 03:19:53
61	suscipit, est	semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam	43	83	2023-02-14 23:57:40
62	vitae odio sagittis semper.	dictum eu, placerat eget,	18	13	2022-04-30 03:05:07
63	tristique aliquet.	Sed nunc est, mollis non, cursus non,	2	71	2022-05-26 05:04:11
64	pede ac	Mauris magna. Duis	49	41	2021-07-13 09:04:36
65	at fringilla	laoreet lectus quis massa. Mauris vestibulum, neque sed dictum	20	46	2021-09-26 23:28:20
66	sodales. Mauris blandit enim	Proin mi. Aliquam gravida mauris ut mi. Duis risus odio,	36	80	2021-12-16 05:36:52
67	rhoncus. Proin nisl sem,	ultrices iaculis odio. Nam interdum enim non nisi. Aenean	43	97	2022-06-04 19:42:37
68	dictum eu, placerat eget,	mi tempor lorem, eget mollis lectus pede et risus. Quisque	40	89	2022-05-05 12:33:52
69	pede ac urna. Ut	sed tortor. Integer aliquam adipiscing lacus. Ut nec urna	23	79	2021-11-20 11:10:07
70	Nullam enim. Sed nulla	Morbi non sapien molestie orci tincidunt adipiscing.	33	33	2022-03-03 19:14:58
71	Nullam feugiat placerat	enim. Etiam	7	70	2022-05-14 04:40:20
72	tempus scelerisque, lorem ipsum	pede, nonummy ut, molestie	34	14	2021-06-30 18:36:55
73	penatibus et	cubilia Curae Phasellus ornare. Fusce mollis. Duis	26	39	2023-01-29 03:30:58
74	Phasellus libero mauris,	metus urna convallis erat, eget	36	28	2021-11-09 10:08:05
75	elit fermentum risus,	lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,	14	18	2021-06-10 18:47:38
76	sodales	netus et malesuada	15	99	2022-10-14 00:24:19
77	scelerisque,	ultrices posuere cubilia	23	75	2021-11-24 12:19:51
78	consequat nec,	dui. Fusce diam nunc, ullamcorper eu,	18	3	2021-10-06 14:03:20
79	aliquet, metus urna convallis	mattis ornare, lectus ante dictum mi,	23	50	2021-12-25 11:06:45
80	rutrum urna, nec	Cras convallis convallis dolor. Quisque tincidunt pede	41	53	2021-10-19 11:38:53
81	eget metus	dictum magna. Ut tincidunt orci quis lectus. Nullam	23	68	2023-01-23 01:09:37
82	eget tincidunt dui augue	non leo.	10	13	2021-10-18 15:21:54
83	neque. Sed	risus a ultricies adipiscing, enim mi tempor lorem, eget mollis	37	88	2022-07-21 12:55:29
84	fermentum convallis	in, tempus eu, ligula. Aenean euismod mauris eu	40	99	2022-04-16 05:19:42
85	Etiam laoreet,	Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit	39	27	2023-03-16 23:43:48
86	Morbi vehicula. Pellentesque tincidunt	sapien imperdiet ornare. In faucibus. Morbi vehicula.	2	34	2021-09-20 15:24:16
87	dolor sit	nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse	33	46	2022-03-01 15:44:08
88	magna.	enim, condimentum eget,	6	55	2022-05-11 05:19:56
89	Cras lorem	Donec	32	55	2021-10-25 22:48:34
90	vehicula risus. Nulla	Lorem ipsum dolor sit	33	58	2021-12-16 02:08:22
91	tempor diam	et	15	90	2021-10-25 03:33:53
92	non	Suspendisse eleifend. Cras sed	32	88	2023-03-29 07:47:07
93	Sed	rutrum	3	2	2021-06-20 07:05:57
94	dui augue	dignissim tempor	8	66	2022-05-04 08:44:21
95	ligula. Nullam	velit. Cras lorem lorem, luctus ut,	45	6	2021-06-15 02:08:05
96	vel sapien imperdiet	risus varius orci, in	7	45	2021-12-25 03:58:38
97	nulla at sem molestie	vulputate ullamcorper magna. Sed eu	4	74	2021-06-07 11:54:01
98	tempor diam dictum	Integer vulputate, risus a ultricies adipiscing,	36	72	2021-12-29 20:36:41
99	consequat auctor,	bibendum ullamcorper. Duis	15	68	2022-10-11 10:58:52
100	elementum at, egestas	lorem vitae odio sagittis semper. Nam tempor diam	41	11	2022-03-15 13:57:48
\.


--
-- Data for Name: goods_users; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.goods_users (id, goods_id, user_id) FROM stdin;
1	10	97
2	61	15
3	61	10
4	48	93
5	6	38
6	74	74
7	28	96
8	79	19
9	9	100
10	28	31
11	39	3
12	42	10
13	13	3
14	95	38
15	34	32
16	28	47
17	23	87
18	90	8
19	99	74
20	7	21
21	15	9
22	6	67
23	36	1
24	18	70
25	86	58
26	60	80
27	76	75
28	14	56
29	80	88
30	19	66
31	19	57
32	91	35
33	42	86
34	33	78
35	80	56
36	18	47
37	16	40
38	68	71
39	45	96
40	21	10
41	21	72
42	96	54
43	80	76
44	47	20
45	57	54
46	96	58
47	9	26
48	86	88
49	13	5
50	38	9
51	93	31
52	22	15
53	35	86
54	35	62
55	53	71
56	53	15
57	32	47
58	73	17
59	36	36
60	27	18
61	27	26
62	8	27
63	12	59
64	46	10
65	3	75
66	69	86
67	71	78
68	92	58
69	98	47
70	10	61
71	4	5
72	35	65
73	92	41
74	33	60
75	18	84
76	61	28
77	72	55
78	47	93
79	90	42
80	72	7
81	28	47
82	79	62
83	39	43
84	24	44
85	30	40
86	89	4
87	67	67
88	6	81
89	9	81
90	54	92
91	47	38
92	90	6
93	2	94
94	60	19
95	76	31
96	44	79
97	89	20
98	64	29
99	97	27
100	24	79
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) FROM stdin;
1	73	14	arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis.	False	False	2021-06-28 03:25:31
2	49	29	ornare, elit elit fermentum risus, at fringilla purus mauris a nunc.	True	True	2021-10-15 19:09:01
3	2	18	quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci	False	False	2021-06-26 13:21:09
4	76	43	sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac	True	False	2021-11-25 05:22:51
5	73	55	quis accumsan	False	True	2023-01-12 19:10:13
6	13	74	sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet	False	False	2022-08-16 06:55:38
7	45	99	Pellentesque ut	False	True	2021-12-21 03:08:34
8	3	37	morbi tristique senectus et netus et malesuada fames ac turpis	False	False	2021-10-10 05:33:42
9	88	45	Nunc sollicitudin commodo ipsum. Suspendisse	False	True	2022-12-23 17:08:18
10	18	1	sapien imperdiet ornare.	False	True	2023-03-22 15:37:32
11	54	75	felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a	True	False	2023-02-04 19:48:08
12	56	1	eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus.	True	True	2023-04-18 05:25:32
13	99	27	egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,	False	False	2021-06-10 15:52:30
14	37	61	quis, tristique ac,	True	True	2021-06-25 12:22:45
15	87	69	at pretium	False	True	2022-07-09 03:48:30
16	65	14	felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc	True	True	2021-09-17 00:26:45
17	100	38	Aenean gravida nunc sed	True	True	2022-04-10 12:44:14
18	13	37	lectus justo eu arcu. Morbi	False	False	2021-08-07 16:12:04
19	72	6	Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in,	True	False	2023-02-23 05:51:58
20	32	65	nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis	True	False	2022-10-25 23:53:16
21	88	39	nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris	False	True	2022-03-16 14:53:23
22	20	35	tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie	True	True	2022-02-24 20:38:40
23	29	22	ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio.	True	True	2021-07-10 10:22:53
24	58	16	gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient	True	False	2021-09-20 06:48:11
25	58	51	et netus et malesuada fames ac turpis egestas.	True	False	2022-06-09 07:53:40
26	69	66	aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit	True	False	2022-10-31 00:51:03
27	79	41	tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor.	True	True	2021-08-07 14:05:23
28	48	40	placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada	True	False	2022-04-04 12:14:11
29	4	93	dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis	False	False	2022-12-06 04:05:50
30	60	98	magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus	True	False	2021-11-23 15:43:39
31	22	55	sit amet ante. Vivamus	False	False	2023-02-15 20:56:26
32	39	57	Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat.	False	False	2022-09-13 07:24:58
33	5	32	nec enim. Nunc ut erat. Sed nunc est,	False	False	2022-06-23 15:11:20
34	11	85	aliquam eu, accumsan sed, facilisis vitae, orci.	False	True	2021-11-16 07:40:28
35	61	100	ante ipsum primis in faucibus orci luctus et	True	False	2022-04-13 23:45:31
36	24	77	nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in	False	False	2022-02-27 12:04:14
37	95	95	Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu	True	False	2022-05-16 12:46:07
38	70	9	Nullam suscipit, est	True	True	2022-01-21 01:00:51
39	10	59	sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia	True	False	2023-01-16 14:19:50
40	72	32	libero et tristique pellentesque, tellus sem mollis dui, in	True	False	2022-08-24 07:16:03
41	84	14	diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.	True	False	2022-04-15 00:23:53
42	24	4	magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet	False	True	2021-12-25 02:19:29
43	8	14	quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu.	True	False	2022-05-17 04:37:37
44	20	76	vitae purus	True	False	2022-02-20 13:39:51
45	82	78	nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.	True	False	2022-11-09 21:12:55
46	72	59	Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla	True	False	2022-11-30 01:32:29
47	96	14	imperdiet	False	True	2022-10-18 10:43:36
48	48	67	laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate,	True	True	2022-10-05 00:09:47
49	99	63	fames ac turpis egestas. Fusce aliquet magna a neque.	True	True	2022-09-28 00:41:57
50	58	36	a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet	False	True	2022-11-16 09:02:51
51	99	23	Nulla eu neque pellentesque	False	False	2022-12-12 19:28:28
52	68	1	lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque.	False	False	2023-03-08 01:37:05
53	76	53	nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec	False	False	2022-12-21 20:46:48
54	63	31	eleifend vitae,	False	True	2021-10-31 01:26:08
55	49	5	ipsum primis in	False	True	2022-09-12 21:39:53
56	88	16	turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla	False	True	2022-03-17 07:42:10
57	5	40	mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus	False	True	2022-09-23 21:09:00
58	38	26	consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam	True	True	2021-08-07 07:07:24
59	47	17	mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi	False	False	2021-06-07 17:36:01
60	2	96	velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque	False	False	2022-11-19 21:49:04
61	50	50	ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero	True	False	2022-08-17 11:02:15
62	97	79	augue id ante dictum cursus. Nunc	False	True	2021-07-09 15:09:11
63	95	20	hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula.	True	True	2021-11-06 04:22:28
64	67	63	lacinia	False	True	2023-04-16 06:40:22
65	5	33	leo, in lobortis tellus justo sit amet nulla. Donec	False	True	2022-02-07 23:53:02
66	62	97	Suspendisse eleifend.	False	False	2022-07-02 20:46:12
67	28	21	vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula	True	True	2022-11-28 09:03:54
68	40	61	velit eu sem.	True	False	2022-07-08 04:15:22
69	38	81	in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec	True	False	2022-12-09 21:22:20
70	100	41	lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.	True	True	2021-11-12 18:32:55
71	53	9	odio a purus. Duis elementum, dui	False	False	2021-09-24 16:54:37
72	33	56	egestas ligula. Nullam feugiat placerat velit. Quisque varius.	False	True	2023-01-05 08:42:00
73	75	43	mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit	True	False	2022-06-27 07:45:41
74	55	29	bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius	False	False	2021-08-22 04:53:10
75	71	79	eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod	True	True	2022-08-10 10:34:21
76	64	93	Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus	False	False	2023-02-08 07:29:08
77	65	85	pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit	True	True	2021-10-15 23:42:06
78	98	42	et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor	False	True	2021-06-26 06:27:26
79	89	93	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus	True	False	2022-12-13 11:28:47
80	6	2	Mauris eu turpis. Nulla aliquet.	True	True	2022-01-28 13:54:27
81	79	35	est, congue a, aliquet vel,	False	True	2023-03-27 21:44:56
82	54	46	consectetuer ipsum nunc id enim. Curabitur	False	True	2021-06-13 22:16:40
83	33	50	Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna	True	True	2021-08-25 13:11:45
84	80	73	Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo.	False	True	2022-01-09 10:53:03
85	53	42	turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum	False	False	2022-06-12 13:17:32
86	25	46	Cum sociis natoque penatibus et magnis dis parturient montes,	True	True	2022-02-26 21:16:25
87	24	49	Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit	False	True	2022-03-20 14:38:00
88	16	80	augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.	False	False	2021-09-07 20:49:47
89	7	58	diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus	True	False	2021-12-22 17:20:09
90	26	31	Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem	False	True	2022-08-16 00:32:22
91	80	20	risus varius orci, in consequat enim	True	False	2022-12-01 09:59:27
92	2	30	dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit	False	False	2022-08-22 22:47:54
93	42	16	auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit	False	True	2022-12-15 00:54:29
94	36	47	vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in	True	True	2022-01-04 17:44:04
95	2	56	In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,	False	True	2021-12-30 14:09:24
96	26	6	penatibus et	True	True	2022-08-23 10:58:35
97	26	13	at, iaculis quis, pede. Praesent eu	True	False	2022-02-22 02:18:12
98	13	77	Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet	True	True	2021-12-14 00:54:52
99	53	7	Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus.	False	True	2022-02-01 09:03:27
100	76	74	pulvinar arcu	False	True	2021-10-06 15:06:47
\.


--
-- Data for Name: music; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.music (id, url, owner_id, description, uploaded_at, size) FROM stdin;
1	cubilia Curae Donec tincidunt.	33	Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu	2021-11-01 08:05:13	65
2	Duis risus odio,	92	neque. In ornare sagittis felis. Donec	2022-04-06 17:45:07	212
3	dis parturient montes,	76	quis, pede. Praesent eu dui. Cum sociis natoque	2023-02-14 13:11:59	625
4	magnis dis	10	Fusce diam	2022-11-24 19:28:59	958
5	orci. Ut	56	erat semper rutrum. Fusce dolor quam, elementum at,	2022-07-26 01:24:44	913
6	vitae aliquam	53	neque. Nullam ut nisi	2022-09-17 08:21:57	321
7	cursus. Nunc mauris	41	sit amet, consectetuer adipiscing elit.	2021-04-29 06:18:51	77
8	Donec vitae	20	In mi pede,	2021-11-23 06:11:59	473
9	Nullam lobortis quam a	69	enim. Sed nulla ante, iaculis nec,	2021-09-03 06:48:28	532
10	interdum ligula eu enim.	29	Suspendisse	2022-06-23 21:16:24	883
11	Aenean massa.	82	Curabitur massa. Vestibulum	2022-01-02 15:20:44	819
12	nonummy ut,	83	aliquam adipiscing lacus. Ut nec urna	2022-05-13 01:32:14	297
13	in faucibus	21	Sed eu eros. Nam consequat dolor vitae	2021-07-30 14:49:10	306
14	pharetra ut,	21	sem egestas blandit. Nam	2021-05-08 03:33:44	232
15	dui, in sodales	62	consectetuer euismod est arcu	2021-05-18 09:10:50	807
16	urna. Nunc quis	95	Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,	2021-04-28 18:11:09	398
17	pellentesque, tellus	30	vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.	2022-11-16 20:54:59	682
18	mauris sagittis placerat.	4	vel lectus. Cum sociis natoque	2022-02-20 02:42:27	259
19	metus. In nec	70	egestas. Sed pharetra, felis eget varius ultrices, mauris	2021-09-06 14:35:18	954
20	et	63	lectus convallis est, vitae sodales nisi magna sed dui. Fusce	2022-01-10 06:34:04	199
21	ac mi	99	Nam interdum enim non nisi. Aenean eget metus.	2023-03-10 10:58:31	250
22	Sed pharetra, felis	64	eu erat	2021-09-17 01:01:12	644
23	ut dolor	11	erat nonummy	2022-06-01 01:00:04	864
24	gravida sit amet,	85	amet, consectetuer	2021-09-09 11:37:01	673
25	magna. Cras convallis convallis	77	tincidunt. Donec vitae erat	2021-06-09 21:25:41	631
26	ornare, elit elit fermentum	53	a feugiat	2022-04-05 05:33:45	844
27	luctus.	95	Donec porttitor tellus non magna. Nam	2022-04-28 11:28:45	510
28	molestie	96	id sapien. Cras dolor dolor,	2021-04-26 10:05:22	556
29	suscipit, est	76	blandit congue. In scelerisque scelerisque dui. Suspendisse ac	2021-05-08 18:04:53	192
30	Donec	2	parturient montes, nascetur ridiculus	2022-10-15 07:24:26	701
31	id, blandit	43	urna, nec luctus felis purus ac tellus.	2022-04-30 02:26:23	649
32	laoreet,	1	euismod mauris	2021-09-09 09:15:29	487
33	iaculis odio. Nam	76	arcu et pede. Nunc sed orci lobortis	2023-04-02 17:43:09	234
34	sagittis placerat. Cras	42	purus	2023-03-10 07:46:51	513
35	Cras dictum ultricies	99	lorem tristique aliquet.	2022-12-16 22:02:08	275
36	mattis velit justo	63	Etiam imperdiet dictum magna. Ut tincidunt orci quis	2021-11-13 02:44:49	383
37	semper	13	nunc risus varius orci,	2022-01-14 12:20:32	931
38	vel arcu eu odio	53	egestas. Fusce aliquet magna a	2022-09-26 03:36:04	79
39	velit. Cras	30	Vivamus non lorem vitae	2023-02-21 12:28:03	445
40	ornare, libero at	51	penatibus et magnis dis parturient montes,	2021-12-15 19:53:45	841
41	Vivamus nibh dolor,	67	ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo	2021-08-15 06:33:32	62
42	felis. Nulla tempor	94	Cras lorem	2022-07-27 22:16:00	752
43	ultrices	28	libero. Integer in magna. Phasellus dolor	2021-10-07 15:31:01	602
44	Morbi vehicula.	92	sed dolor. Fusce mi	2022-12-05 09:43:03	53
45	sem,	74	Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.	2023-03-29 08:39:46	12
46	Mauris non dui nec	92	id, blandit at, nisi.	2022-12-17 16:38:41	577
47	eleifend nec, malesuada	87	Integer aliquam adipiscing lacus. Ut nec urna et arcu	2023-04-11 17:44:19	758
48	tincidunt. Donec vitae	97	faucibus ut, nulla. Cras eu tellus eu	2022-06-15 18:23:26	137
49	Aliquam	60	libero et tristique pellentesque, tellus	2021-08-23 04:14:16	145
50	sem ut	19	magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna.	2022-03-19 03:33:09	45
51	interdum.	59	dui quis accumsan convallis, ante lectus convallis	2022-03-14 05:11:05	232
52	habitant morbi tristique	83	ac metus	2023-03-31 05:51:16	924
53	gravida sagittis. Duis	86	at, libero. Morbi accumsan laoreet ipsum. Curabitur	2021-04-19 23:04:28	444
54	quis	52	sed tortor. Integer aliquam	2021-06-05 11:25:50	679
55	Sed	84	lectus convallis est, vitae sodales nisi magna	2021-06-08 00:29:07	170
56	volutpat. Nulla	7	dolor elit, pellentesque a, facilisis non, bibendum	2021-10-02 20:08:03	756
57	Mauris	58	augue. Sed molestie. Sed id risus quis	2022-02-12 05:56:08	949
58	Nullam velit dui,	79	ullamcorper eu, euismod ac, fermentum vel,	2021-12-16 13:52:56	32
59	a, enim. Suspendisse	37	Curae Phasellus ornare. Fusce mollis. Duis sit	2022-12-01 05:12:12	189
60	suscipit, est ac	17	risus. Nunc ac sem ut dolor	2022-08-19 15:18:02	340
61	non lorem	77	eget	2021-06-11 16:21:28	764
62	eget	14	aliquam adipiscing lacus.	2022-03-17 00:45:40	877
63	et magnis dis	33	eget, dictum placerat, augue.	2022-06-13 19:11:38	29
64	eget metus. In	25	magnis	2022-06-13 13:57:55	548
65	dictum	90	vitae	2022-09-19 10:43:23	572
66	a,	85	id, erat.	2022-04-27 13:21:31	448
67	sit amet ultricies	65	sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula	2022-04-07 16:18:17	150
68	laoreet lectus quis	13	sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed	2022-08-11 05:47:23	396
69	lorem. Donec elementum,	72	pharetra ut, pharetra sed,	2021-06-27 03:51:16	722
70	Nullam feugiat	70	Sed diam	2021-08-06 20:26:23	214
71	at	36	risus. Donec egestas. Aliquam nec enim. Nunc ut erat.	2022-12-11 14:26:02	821
72	Curabitur ut	8	magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.	2022-03-10 17:55:02	783
73	et, rutrum non,	27	odio tristique pharetra. Quisque ac libero nec ligula consectetuer	2022-11-22 22:19:36	579
74	vulputate dui, nec	77	at, egestas a, scelerisque sed, sapien. Nunc	2022-09-11 17:31:39	499
75	felis orci,	65	sit amet lorem semper	2022-09-01 21:45:04	395
76	ac, eleifend	35	Aenean massa. Integer vitae nibh.	2022-05-28 18:49:46	620
77	egestas rhoncus. Proin nisl	80	Cum sociis natoque penatibus et magnis dis parturient	2021-11-19 05:40:49	416
78	orci lacus	64	eget laoreet posuere, enim nisl elementum purus, accumsan	2021-09-09 23:29:28	487
79	lectus. Cum sociis	32	enim commodo hendrerit.	2023-02-08 01:03:41	202
80	orci. Phasellus dapibus	13	Vivamus sit amet	2021-11-22 14:40:06	702
81	auctor odio a	18	ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus.	2022-01-13 14:22:46	852
82	libero. Integer in	69	turpis. Aliquam adipiscing lobortis risus. In mi pede,	2022-01-23 06:51:24	39
83	amet metus.	48	adipiscing ligula. Aenean gravida nunc sed pede. Cum	2022-08-02 05:13:21	586
84	urna. Nullam lobortis	67	vel, vulputate eu, odio. Phasellus at	2023-04-09 17:41:18	348
85	nulla. Cras eu	2	nisl. Quisque	2022-09-02 20:45:17	797
86	diam at	90	Nunc quis arcu vel quam dignissim pharetra. Nam ac	2021-05-14 20:40:42	504
87	et, lacinia	61	leo. Vivamus nibh dolor, nonummy ac,	2022-04-17 12:56:48	381
88	ligula. Aenean	50	Sed	2022-10-16 06:07:58	638
89	lobortis mauris. Suspendisse	66	dictum.	2023-04-18 17:47:55	695
90	interdum. Nunc sollicitudin commodo	10	Mauris	2023-01-20 02:52:55	676
91	arcu. Vestibulum ut	55	eu, ligula. Aenean euismod mauris eu elit. Nulla	2023-01-11 13:25:47	541
92	nisi. Mauris	55	vitae, sodales	2022-09-07 11:06:00	918
93	Aliquam gravida mauris	22	eu tellus. Phasellus elit pede,	2021-07-28 00:21:07	285
94	orci. Donec nibh.	91	bibendum ullamcorper. Duis cursus,	2022-07-08 08:21:23	330
95	eget varius ultrices, mauris	43	augue scelerisque mollis. Phasellus libero mauris, aliquam	2022-11-23 20:18:24	36
96	libero at	97	ante. Vivamus non lorem vitae	2021-05-12 22:00:12	74
97	feugiat	50	Quisque libero lacus, varius et, euismod	2021-10-09 08:08:53	686
98	dolor. Nulla semper	97	Quisque varius. Nam	2021-10-17 04:11:26	984
99	Mauris vestibulum, neque	63	molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.	2021-08-14 08:04:44	372
100	Aliquam rutrum	30	et nunc. Quisque ornare tortor at risus.	2021-12-11 16:24:37	607
\.


--
-- Data for Name: photo; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.photo (id, url, owner_id, description, uploaded_at, size) FROM stdin;
1	dolor, nonummy ac,	49	facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.	2022-06-11 01:38:34	842
2	euismod mauris	21	ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem	2023-03-29 10:19:49	701
3	sapien. Nunc pulvinar arcu et pede.	11	nisl. Maecenas malesuada fringilla est.	2022-02-25 13:41:07	403
4	ligula tortor, dictum eu, placerat eget,	74	tristique aliquet. Phasellus fermentum	2022-12-23 07:57:44	766
5	Duis elementum,	15	elit sed consequat auctor, nunc nulla vulputate dui, nec	2021-11-28 15:09:10	777
6	tellus non magna. Nam	85	nunc sed libero. Proin sed	2021-04-27 23:44:27	446
7	ipsum dolor	98	nascetur ridiculus mus. Proin vel arcu eu odio	2022-01-18 13:05:57	781
8	hendrerit. Donec porttitor tellus non	86	non quam. Pellentesque	2022-04-23 06:22:31	768
9	orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras	60	lorem tristique aliquet. Phasellus fermentum convallis ligula.	2022-05-28 06:18:00	331
10	vel, mauris. Integer	83	gravida sagittis.	2021-07-09 04:35:55	334
11	vulputate, nisi sem	30	pellentesque a, facilisis non, bibendum sed,	2021-12-13 14:12:25	192
12	ipsum. Suspendisse sagittis. Nullam vitae diam.	69	molestie sodales. Mauris blandit enim	2021-06-28 07:11:48	464
13	tempus non, lacinia at, iaculis quis, pede. Praesent eu	68	mauris. Integer sem elit, pharetra ut,	2022-10-28 03:05:22	908
14	felis purus ac tellus. Suspendisse sed dolor. Fusce mi	34	malesuada id, erat. Etiam vestibulum massa	2023-03-07 12:49:27	353
15	convallis ligula. Donec luctus	26	mauris, rhoncus id, mollis	2022-08-22 04:22:29	297
16	et tristique pellentesque, tellus sem mollis	6	tempor	2021-08-30 18:56:55	943
17	tortor nibh sit amet orci. Ut	96	Sed neque. Sed eget lacus. Mauris non	2021-08-21 07:18:58	159
18	purus. Duis elementum, dui quis	58	augue id	2023-03-30 05:27:52	174
19	sem molestie sodales. Mauris blandit enim consequat	6	erat neque non	2022-04-04 02:11:34	627
20	at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit	5	tortor at risus. Nunc ac sem	2021-08-10 13:27:51	254
21	risus varius orci, in consequat enim diam vel arcu. Curabitur	96	consequat purus. Maecenas libero est, congue a, aliquet	2023-04-16 21:12:10	500
22	magna et	57	et libero. Proin mi. Aliquam gravida mauris ut	2021-11-28 06:38:50	324
23	diam	92	non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris	2023-01-04 02:35:50	166
24	vitae nibh. Donec est mauris, rhoncus id, mollis nec,	87	aliquet molestie tellus. Aenean egestas hendrerit	2022-01-24 00:26:51	613
25	Nunc pulvinar arcu et pede. Nunc sed orci lobortis	67	sagittis augue, eu tempor	2022-04-08 14:24:02	137
26	vulputate, posuere vulputate, lacus.	59	ante lectus convallis	2022-03-21 11:48:47	122
27	vitae dolor. Donec fringilla. Donec feugiat metus sit amet	84	natoque penatibus	2021-07-25 20:07:46	112
28	ac orci. Ut semper	74	sem semper	2022-11-04 12:28:34	946
29	dolor, tempus	5	hendrerit neque. In ornare	2022-11-13 17:12:57	681
30	arcu. Sed	34	Quisque imperdiet,	2022-12-23 09:39:26	41
31	ipsum. Suspendisse sagittis. Nullam vitae diam. Proin	42	sapien molestie orci	2022-04-02 02:35:54	941
32	orci lacus vestibulum lorem, sit	52	ornare, lectus ante dictum mi,	2021-10-04 20:20:57	259
33	Pellentesque habitant	13	Aliquam ornare, libero at auctor ullamcorper,	2022-05-08 23:18:42	4
34	posuere, enim nisl elementum purus, accumsan interdum libero	53	natoque penatibus et magnis dis	2022-05-13 04:40:41	427
35	euismod est arcu ac orci.	3	et malesuada fames ac turpis egestas.	2022-01-05 04:29:50	966
36	velit in aliquet lobortis,	61	ante bibendum ullamcorper. Duis cursus, diam at pretium	2021-12-08 04:49:08	545
37	iaculis enim, sit amet ornare lectus justo	26	In condimentum. Donec at	2022-10-20 05:01:49	691
38	eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet	21	ligula. Nullam feugiat placerat velit. Quisque varius.	2022-07-26 17:46:24	723
39	Aliquam adipiscing lobortis risus.	50	mauris eu elit. Nulla	2023-04-13 18:08:48	523
40	Lorem ipsum dolor sit amet,	2	scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris	2021-09-24 23:28:57	563
41	massa. Quisque porttitor eros nec tellus. Nunc lectus	58	velit. Quisque varius. Nam porttitor scelerisque neque. Nullam	2021-09-25 16:33:42	941
42	purus sapien, gravida non,	98	luctus aliquet odio. Etiam ligula	2021-11-08 22:46:42	500
43	vestibulum, neque sed dictum eleifend, nunc risus varius	65	arcu. Nunc mauris. Morbi non sapien	2022-01-11 07:23:19	32
44	nunc interdum feugiat. Sed nec metus facilisis lorem tristique	43	Donec egestas. Duis ac arcu. Nunc mauris.	2022-12-28 08:32:44	285
45	sociis natoque penatibus	63	neque tellus, imperdiet non, vestibulum nec, euismod	2021-11-23 01:03:11	586
46	malesuada fames ac turpis egestas.	11	libero. Donec consectetuer mauris id sapien. Cras	2021-09-15 05:49:06	460
47	tellus	78	iaculis, lacus pede	2022-06-13 21:15:04	150
48	justo faucibus lectus, a sollicitudin orci sem	13	arcu. Sed et libero. Proin mi. Aliquam gravida mauris	2021-12-18 11:31:30	476
49	ultrices iaculis odio. Nam	51	non sapien molestie orci tincidunt adipiscing.	2022-01-22 21:24:31	969
50	est. Mauris eu	17	sit amet ultricies	2022-12-28 20:58:52	922
51	ac	91	Etiam gravida molestie	2022-06-23 23:20:59	188
52	quis diam. Pellentesque habitant morbi tristique senectus et netus	3	sit amet nulla. Donec non justo. Proin	2022-01-01 11:12:10	281
53	non quam. Pellentesque habitant morbi tristique senectus et netus	41	lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum	2021-08-03 13:07:33	117
54	ligula. Aenean euismod mauris eu elit. Nulla	71	elit. Curabitur sed tortor. Integer	2023-01-27 20:44:08	432
55	vel arcu. Curabitur	72	lobortis risus. In mi pede, nonummy ut,	2023-03-06 00:27:30	833
56	faucibus lectus, a sollicitudin orci	49	Proin mi. Aliquam gravida	2021-09-11 11:00:56	732
57	faucibus lectus, a sollicitudin orci sem eget	54	consectetuer adipiscing elit.	2022-10-07 18:34:57	169
58	non, egestas a, dui. Cras pellentesque.	8	id, libero.	2023-04-13 22:23:47	249
59	Cras vulputate velit eu	16	sagittis semper. Nam tempor diam dictum	2021-09-30 04:22:10	612
60	Mauris blandit enim consequat purus. Maecenas libero est,	34	aptent taciti sociosqu ad litora torquent	2021-07-22 21:08:29	219
61	vel, venenatis vel, faucibus id, libero.	36	magnis dis parturient montes, nascetur	2022-01-09 01:28:30	382
62	Ut nec	39	ipsum non arcu. Vivamus	2023-02-28 09:27:42	988
63	lobortis tellus justo sit amet nulla. Donec	30	et, rutrum non, hendrerit	2022-01-20 03:56:21	791
64	pede ac urna. Ut tincidunt vehicula risus.	34	eu sem. Pellentesque	2022-09-19 16:15:00	193
65	auctor quis, tristique ac,	72	ligula. Donec	2022-05-01 18:44:55	256
66	neque	45	Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper	2022-07-08 03:15:26	743
67	Nulla eu neque pellentesque massa lobortis ultrices. Vivamus	65	mi tempor lorem, eget mollis lectus pede et	2022-05-17 01:26:00	263
68	justo faucibus lectus, a sollicitudin orci sem eget massa.	87	eget metus. In	2021-05-07 18:54:14	334
69	dolor.	78	at lacus. Quisque	2022-11-17 14:20:25	393
70	magna a tortor. Nunc	2	vitae aliquam eros turpis non enim. Mauris	2022-08-05 08:05:10	908
71	est, congue a,	46	et magnis dis parturient montes, nascetur ridiculus mus. Donec	2021-12-04 22:16:35	676
72	semper egestas, urna	100	nulla. Integer urna. Vivamus molestie	2022-02-20 12:23:46	232
73	nonummy ipsum non arcu. Vivamus sit amet risus. Donec	2	aliquet, metus urna convallis erat, eget tincidunt	2022-12-18 20:59:25	275
74	habitant morbi tristique senectus et netus	34	sapien, gravida non, sollicitudin a, malesuada id, erat.	2021-11-29 21:17:18	119
75	consectetuer adipiscing elit. Aliquam auctor, velit eget	46	eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula	2021-12-08 20:32:54	817
76	libero mauris, aliquam eu, accumsan sed, facilisis vitae,	59	amet, faucibus ut, nulla. Cras	2021-05-22 22:13:32	43
77	eget metus. In nec orci. Donec	45	erat. Sed nunc est, mollis non, cursus non, egestas	2022-10-08 01:42:49	11
78	sed dui. Fusce aliquam, enim nec tempus	77	eros	2022-06-21 20:10:19	25
79	et, rutrum non,	72	velit. Sed malesuada augue ut lacus. Nulla	2021-07-14 21:13:47	64
80	ultrices. Duis	87	Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus	2022-05-01 19:31:23	324
81	ut, nulla. Cras eu tellus eu	6	urna. Nunc quis	2022-06-11 07:49:45	170
82	orci. Donec nibh. Quisque	72	massa	2022-01-15 03:54:26	841
83	elit elit fermentum risus, at fringilla purus	28	condimentum. Donec at arcu. Vestibulum ante ipsum primis	2022-05-18 21:44:36	731
84	vitae, aliquet nec, imperdiet	20	ligula elit, pretium et,	2021-06-22 08:24:21	826
85	laoreet, libero et tristique pellentesque, tellus sem mollis dui, in	57	ultrices sit amet, risus. Donec nibh enim, gravida	2021-07-23 17:15:44	264
86	aliquam adipiscing lacus. Ut nec	99	eu elit. Nulla facilisi. Sed neque. Sed	2021-05-17 06:51:31	549
87	Vestibulum ante ipsum primis in faucibus orci	12	nec quam.	2021-07-16 10:46:24	2
88	convallis est, vitae	11	purus ac tellus. Suspendisse sed dolor. Fusce	2021-08-17 08:46:00	355
89	urna. Ut tincidunt vehicula	76	lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas	2022-06-09 11:15:54	973
90	mus.	12	Sed eget	2021-12-02 00:38:14	525
91	pellentesque a, facilisis non,	79	orci, consectetuer	2021-05-01 23:31:05	516
92	nec	16	Nullam vitae diam. Proin dolor. Nulla semper tellus id	2022-10-23 12:02:14	551
93	sed, sapien. Nunc	40	ipsum. Suspendisse non leo. Vivamus nibh dolor,	2022-08-24 16:21:57	146
94	diam. Proin dolor. Nulla semper	82	pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam	2022-12-08 16:28:47	231
95	blandit enim consequat purus. Maecenas libero est, congue	60	morbi tristique senectus et	2023-01-03 04:31:49	953
96	convallis convallis dolor. Quisque	51	In mi pede, nonummy	2023-03-05 19:55:48	443
97	Nam ligula elit, pretium	74	elit, pellentesque a,	2022-11-14 16:05:36	422
98	gravida. Praesent eu nulla at sem	22	ultrices a, auctor non, feugiat nec, diam.	2022-04-27 01:46:33	36
99	nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.	83	et, lacinia vitae, sodales at,	2023-01-26 05:13:20	165
100	Morbi vehicula. Pellentesque tincidunt tempus	44	mi lorem,	2022-07-22 05:48:33	366
\.


--
-- Data for Name: subscribes; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.subscribes (id, requested_by_user_id, requested_to_user_id, status_id, requested_at, confirmed_at) FROM stdin;
1	13	5	1	2022-05-06 13:23:16	2021-04-20 18:44:37
2	29	36	2	2021-12-10 10:03:09	2021-07-31 21:13:10
3	58	33	2	2023-01-28 07:05:33	2023-01-19 14:59:35
4	25	97	2	2022-11-19 11:04:18	2021-06-04 05:26:23
5	90	98	1	2021-12-03 11:51:43	2022-05-24 11:21:26
6	5	46	1	2021-06-09 21:07:39	2022-12-11 01:25:23
7	51	40	1	2022-01-20 18:14:21	2021-05-31 14:47:43
8	95	17	1	2022-12-08 08:35:21	2023-02-06 07:24:32
9	93	71	1	2023-04-13 22:37:29	2021-08-18 23:08:07
10	26	5	1	2022-04-13 23:11:19	2022-01-23 13:59:04
11	16	41	1	2022-01-03 07:30:43	2021-05-09 16:25:49
12	95	60	1	2021-10-16 11:15:34	2022-09-11 23:37:08
13	38	57	1	2022-12-29 20:02:52	2022-09-18 12:17:23
14	75	33	2	2023-03-15 10:01:50	2023-01-29 19:58:27
15	31	18	1	2022-05-07 12:27:58	2021-07-19 20:36:02
16	55	65	1	2022-11-26 20:33:28	2022-06-05 20:30:16
17	92	27	1	2022-06-02 14:45:48	2021-12-22 06:28:25
18	59	64	2	2021-05-12 18:26:14	2022-06-27 10:14:06
19	96	44	2	2022-05-07 05:34:29	2023-01-27 14:15:12
20	88	61	1	2021-11-14 01:09:09	2022-12-25 20:04:08
21	78	77	2	2021-05-10 05:35:58	2022-05-11 04:00:55
22	32	34	2	2022-03-13 15:28:53	2021-07-19 12:12:37
23	87	8	2	2023-02-17 20:30:34	2023-02-10 02:39:41
24	58	60	1	2022-01-29 16:14:37	2022-08-07 00:47:29
25	47	25	2	2022-07-14 13:29:23	2022-03-08 20:55:09
26	64	78	1	2022-11-30 06:18:55	2021-10-01 13:21:29
27	28	9	2	2021-08-09 14:33:56	2022-09-11 21:07:46
28	78	53	1	2021-10-22 13:44:41	2021-05-10 10:42:54
29	63	88	2	2021-10-18 02:00:45	2022-02-14 13:26:34
30	89	38	2	2022-03-20 16:06:02	2021-10-13 17:58:30
31	60	87	1	2021-10-03 09:58:54	2022-05-26 21:00:17
32	7	21	2	2023-03-14 08:15:56	2022-10-20 10:42:17
33	90	24	2	2022-09-05 04:11:24	2022-12-13 22:29:31
34	13	56	2	2023-02-20 05:11:33	2021-05-08 21:16:05
35	87	88	1	2022-07-20 17:45:13	2022-04-26 00:24:41
36	27	93	2	2022-03-06 16:26:47	2021-05-04 20:02:52
37	60	3	1	2022-11-10 00:18:05	2022-06-11 12:06:03
38	11	91	1	2023-01-16 18:44:39	2021-11-22 22:24:49
39	67	11	2	2022-05-29 22:35:00	2021-10-14 13:59:37
40	12	29	1	2021-05-10 15:54:02	2021-12-19 09:28:36
41	97	17	2	2021-09-26 09:16:08	2022-03-08 13:17:29
42	29	90	1	2021-07-07 00:09:36	2021-04-21 06:19:30
43	97	14	1	2023-04-08 09:03:07	2023-04-16 23:41:50
44	78	77	2	2022-10-18 03:53:57	2022-07-10 13:00:30
45	84	42	2	2022-08-09 23:05:03	2022-03-01 20:21:02
46	63	45	2	2022-10-18 22:55:16	2022-11-02 04:03:41
47	81	45	2	2023-02-21 00:20:03	2023-01-23 12:49:58
48	83	48	1	2022-05-28 22:16:24	2022-05-26 19:16:56
49	49	75	1	2022-01-19 22:45:09	2021-11-15 07:40:01
50	2	34	1	2021-10-30 20:22:38	2023-04-07 16:19:07
51	47	30	2	2022-12-21 01:24:28	2023-02-21 09:40:44
52	76	73	1	2022-03-25 00:58:01	2021-11-25 08:17:20
53	9	18	1	2022-12-22 06:59:12	2021-08-28 07:15:23
54	50	70	2	2022-08-20 00:35:34	2022-02-25 15:15:13
55	36	60	2	2022-01-10 18:29:41	2023-03-31 04:17:23
56	89	44	1	2021-12-09 21:29:02	2021-08-08 19:03:52
57	38	9	1	2022-12-29 01:16:29	2021-10-21 21:56:19
58	43	35	1	2022-06-14 01:59:17	2021-09-18 06:21:08
59	23	77	1	2022-12-09 01:41:22	2021-10-02 12:27:07
60	8	61	2	2022-11-13 09:38:26	2023-02-11 20:57:38
61	59	5	2	2022-09-20 14:28:14	2021-08-15 07:02:50
62	31	94	1	2021-05-22 05:24:34	2023-02-03 18:31:59
63	31	60	2	2021-06-04 18:24:55	2021-07-01 20:30:39
64	49	75	2	2022-05-16 05:41:32	2022-08-07 02:13:27
65	94	1	2	2021-05-01 02:21:17	2022-02-04 19:46:38
66	78	80	2	2021-09-20 02:49:43	2022-05-01 18:09:09
67	41	31	1	2022-09-26 18:28:35	2022-11-18 06:44:58
68	42	70	2	2021-11-07 13:19:34	2023-02-11 09:58:47
69	6	73	1	2022-12-10 07:31:21	2022-11-17 10:01:14
70	93	18	1	2021-08-19 14:29:10	2022-12-22 00:08:20
71	46	7	1	2022-04-27 14:37:05	2021-10-21 17:38:05
72	80	11	1	2021-08-11 04:24:14	2021-09-05 16:34:21
73	17	72	1	2022-02-13 11:01:31	2022-10-27 04:12:20
74	34	82	1	2021-09-11 13:32:38	2022-12-26 17:00:14
75	38	85	1	2023-01-31 13:36:22	2021-09-27 12:26:47
76	2	96	2	2022-05-29 17:45:41	2023-03-30 05:32:55
77	78	13	2	2022-02-20 10:28:40	2021-09-06 13:08:51
78	70	6	2	2022-08-08 23:04:08	2022-05-25 17:58:18
79	48	89	2	2023-03-11 05:43:51	2021-07-05 17:04:20
80	100	61	2	2022-06-17 17:25:42	2021-11-12 17:39:38
81	100	80	1	2021-12-10 12:11:33	2021-06-16 19:33:44
82	57	91	1	2023-01-21 07:21:34	2023-04-10 23:00:33
83	53	56	1	2021-09-11 01:25:08	2023-02-24 00:08:30
84	94	23	1	2022-09-29 18:25:17	2021-09-03 16:08:44
85	94	94	1	2021-09-12 05:33:48	2023-03-24 03:02:49
86	48	61	1	2022-05-04 12:56:35	2022-09-23 22:02:41
87	11	30	2	2022-05-27 11:03:55	2022-07-05 08:34:50
88	3	5	2	2022-10-08 20:57:56	2021-06-05 09:08:32
89	26	24	1	2021-06-06 07:38:28	2022-07-15 10:34:05
90	79	39	2	2021-08-20 16:13:42	2022-12-13 17:01:55
91	56	69	2	2021-06-17 03:49:58	2021-12-12 12:56:36
92	61	73	2	2021-09-16 19:51:47	2021-07-05 09:42:07
93	73	92	1	2022-05-27 23:20:59	2021-12-13 19:41:52
94	38	18	2	2022-07-11 07:17:32	2021-07-14 19:44:53
95	94	89	1	2021-06-24 11:02:47	2022-05-03 22:28:35
96	17	32	2	2023-02-05 08:16:05	2022-12-25 05:40:31
97	31	41	2	2023-03-16 18:41:26	2022-01-18 21:18:51
98	19	56	2	2021-05-03 16:19:32	2021-07-17 08:27:03
99	87	50	2	2022-12-23 10:19:17	2021-09-09 23:07:40
100	6	37	2	2022-01-31 10:49:45	2022-03-03 17:04:28
\.


--
-- Data for Name: subscribes_status; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.subscribes_status (id, name) FROM stdin;
1	Yes
2	No
3	Yes
4	Yes
5	Yes
6	Yes
7	Yes
8	No
9	No
10	Yes
11	No
12	No
13	Yes
14	Yes
15	Yes
16	No
17	No
18	No
19	Yes
20	Yes
21	Yes
22	Yes
23	Yes
24	Yes
25	Yes
26	No
27	Yes
28	Yes
29	Yes
30	No
31	Yes
32	No
33	No
34	No
35	No
36	Yes
37	No
38	No
39	No
40	Yes
41	Yes
42	Yes
43	Yes
44	Yes
45	Yes
46	Yes
47	Yes
48	No
49	No
50	No
51	No
52	Yes
53	No
54	Yes
55	Yes
56	No
57	No
58	Yes
59	Yes
60	Yes
61	Yes
62	No
63	No
64	Yes
65	No
66	No
67	Yes
68	No
69	Yes
70	No
71	No
72	Yes
73	Yes
74	No
75	No
76	Yes
77	No
78	No
79	Yes
80	No
81	No
82	Yes
83	Yes
84	No
85	No
86	No
87	Yes
88	Yes
89	Yes
90	Yes
91	No
92	Yes
93	No
94	No
95	No
96	No
97	No
98	Yes
99	Yes
100	No
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.users (id, first_name, last_name, email, phone, main_photo_id, created_at) FROM stdin;
1	Roanna	Levy	facilisis.vitae@yahoo.net	(231) 254-5529	86	2023-02-26 05:34:59
2	Hiroko	Sweet	integer@protonmail.org	(896) 474-2577	80	2021-10-08 18:57:05
3	Denise	Carter	phasellus@google.couk	1-325-214-3131	24	2022-07-06 12:04:25
4	Nolan	Brooks	neque.sed@hotmail.net	1-676-393-4266	41	2021-08-20 12:52:34
5	Carissa	Kirby	duis.sit@protonmail.ca	(624) 485-6621	24	2022-06-19 15:37:42
6	Hayfa	Parrish	nec.eleifend@yahoo.org	1-515-713-0323	91	2021-08-28 01:23:36
7	Calista	Peters	erat.vel@aol.edu	(982) 849-8158	84	2022-11-22 11:52:47
8	Ryan	Mcneil	pede@protonmail.couk	(429) 817-8972	27	2022-06-27 01:19:36
9	Marvin	Wall	urna.ut@aol.org	1-623-587-4506	73	2022-11-19 12:25:07
10	Tasha	Elliott	curabitur.egestas@protonmail.com	(532) 261-2766	91	2021-09-15 09:59:27
11	Samuel	House	dolor.egestas@aol.ca	(942) 542-5328	23	2022-02-18 00:29:25
12	Timothy	Bowen	at@icloud.com	(643) 262-4113	20	2022-04-13 11:55:56
13	Hunter	Valdez	sed.eu@yahoo.com	(815) 377-1433	24	2022-07-10 00:10:25
14	Shannon	Haynes	dui@google.com	1-318-348-6834	14	2021-07-05 04:54:20
15	Anthony	Woods	nisl.sem.consequat@hotmail.ca	1-299-964-1216	76	2022-05-07 02:35:55
16	Amal	Rodgers	nec.malesuada.ut@outlook.ca	(265) 643-5261	94	2023-02-21 07:02:03
17	Yoshi	Cross	sapien.aenean@aol.couk	(726) 456-7422	53	2022-04-30 06:33:20
18	Shelley	Velasquez	ipsum.dolor@aol.ca	1-651-621-8792	93	2022-05-19 21:10:26
19	Fleur	Woods	dapibus@yahoo.net	1-408-444-7157	65	2023-02-20 05:32:17
20	Idona	Vance	elit.nulla@hotmail.edu	1-461-641-2234	83	2022-12-25 01:36:54
21	Donna	Love	at.nisi.cum@protonmail.net	(642) 282-7282	71	2022-11-30 01:34:41
22	Jason	Barber	nulla@hotmail.couk	1-337-469-6481	16	2022-12-09 11:33:16
23	Avye	Hamilton	vel.est@icloud.edu	(681) 647-3345	46	2022-11-14 14:24:13
24	Darryl	Tyler	lacus.mauris.non@outlook.couk	(882) 960-5605	89	2022-04-20 12:59:49
25	Rowan	Mercado	mauris.ut@hotmail.edu	(764) 265-7454	32	2021-11-09 21:03:16
26	Cody	Stokes	pharetra.nam.ac@outlook.edu	1-775-185-8313	50	2022-08-01 03:39:52
27	Francis	Horne	enim.mauris.quis@outlook.edu	(288) 505-2712	90	2022-09-15 20:24:45
28	Gannon	Mayo	cum.sociis@aol.net	(232) 621-9735	89	2022-04-27 05:28:58
29	Joelle	Ochoa	porttitor.scelerisque@outlook.com	1-378-178-0125	93	2022-09-28 23:21:42
30	Baxter	Barker	egestas.blandit@icloud.net	1-653-742-2713	63	2022-08-16 21:53:18
31	Castor	Hurley	faucibus.id@aol.com	(654) 327-8666	54	2021-08-01 18:48:15
32	Clarke	Rodgers	enim.gravida@protonmail.org	1-400-531-9882	91	2022-03-03 09:43:57
33	Serena	Sykes	risus.a@aol.edu	(314) 622-5208	49	2021-11-14 07:37:43
34	Frances	Roth	auctor@protonmail.net	(431) 724-2623	8	2021-11-02 17:34:52
35	Guinevere	Peck	egestas.lacinia@icloud.org	1-736-334-2713	14	2021-09-06 07:39:21
36	Oleg	Barrera	magna@protonmail.com	(915) 878-2859	89	2021-07-07 04:58:50
37	Kiara	Alvarado	nec@google.ca	(553) 618-1585	82	2022-06-14 20:25:31
38	Garth	Stout	pede.blandit@hotmail.ca	1-183-874-2420	13	2022-09-03 02:41:11
39	Bryar	Allison	vehicula@protonmail.edu	1-434-322-6367	68	2021-11-26 13:28:17
40	Jena	Wilder	nulla.facilisi@protonmail.com	1-236-481-9591	60	2021-06-28 19:41:23
41	Kennedy	Mason	sed.nunc.est@google.org	(817) 454-5045	46	2022-08-14 15:45:52
42	Porter	Scott	et@icloud.org	1-425-334-7864	23	2023-04-12 21:58:37
43	Nigel	Ayala	mollis.lectus@outlook.couk	1-591-827-3365	42	2021-05-13 12:48:41
44	Derek	Booth	aliquam.ultrices.iaculis@protonmail.edu	(166) 449-5019	81	2022-10-05 09:01:11
45	Abigail	Berry	ac.turpis@hotmail.couk	(168) 446-1927	83	2021-06-12 22:55:56
46	Darius	Sweeney	in.faucibus.orci@aol.couk	(617) 618-8081	50	2021-12-30 02:10:14
47	Raphael	Lang	mi.eleifend@icloud.couk	1-280-446-3963	51	2021-07-31 02:48:54
48	Channing	Wilder	semper.et.lacinia@outlook.net	(725) 877-4373	67	2022-10-19 05:29:39
49	Cadman	Dorsey	enim.sed@google.couk	(811) 376-3362	77	2022-08-19 23:30:39
50	Phoebe	Adkins	dui.cras.pellentesque@hotmail.org	1-788-620-8246	6	2022-10-31 18:38:15
51	Russell	Chapman	et@hotmail.com	(863) 357-3940	2	2021-12-05 04:58:43
52	Harrison	Bruce	proin@google.edu	(409) 836-4387	85	2022-06-24 15:13:58
53	Dana	Rollins	magna@aol.org	1-512-648-6963	70	2022-10-09 23:46:10
54	Lenore	Kerr	erat@protonmail.org	(541) 796-1658	62	2021-04-29 06:52:41
55	Paula	Slater	eget.lacus@icloud.com	(537) 211-2076	33	2022-08-27 14:44:42
56	Alexis	Silva	euismod.et@aol.net	1-834-545-4060	28	2022-05-04 23:22:08
57	Kaye	Talley	lorem.donec@aol.edu	(481) 946-8665	85	2022-02-15 19:02:30
58	Isaiah	Mcbride	enim.nisl.elementum@icloud.com	(622) 979-5587	91	2021-09-20 06:27:19
59	Jada	Hicks	integer.sem@yahoo.org	1-612-835-9158	5	2022-10-31 07:59:16
60	Lois	Wall	vestibulum.nec@outlook.com	(658) 445-5356	23	2022-08-29 14:19:59
61	Paki	Rasmussen	montes.nascetur@yahoo.ca	(345) 770-5244	71	2022-07-22 05:07:49
62	Joseph	Maldonado	gravida.nunc@protonmail.couk	(803) 574-8371	91	2021-06-01 21:28:29
63	Wyoming	Aguilar	lacus@protonmail.com	1-839-237-8347	83	2021-07-07 16:00:31
64	Erin	Simpson	quam.a.felis@aol.com	(525) 641-1051	7	2021-11-24 15:34:09
65	Vivien	Duke	donec.egestas@hotmail.couk	(435) 730-4458	46	2022-12-24 13:33:49
66	Nolan	Gould	blandit.viverra@outlook.ca	1-122-806-5180	68	2021-09-27 23:47:30
67	Nicholas	Davenport	odio.vel@google.edu	1-986-228-6902	39	2021-08-17 00:09:47
68	Lillian	Boyd	quis@outlook.org	1-172-331-2354	52	2021-09-20 14:34:35
69	Riley	Harvey	eget.odio@aol.edu	(823) 285-1113	59	2022-06-11 05:32:29
70	Chancellor	Baxter	accumsan.convallis.ante@protonmail.org	1-722-414-6414	55	2022-12-16 22:05:58
71	William	Hendrix	sit.amet@yahoo.net	1-355-707-1276	16	2021-05-04 17:04:50
72	September	Juarez	dapibus@protonmail.edu	(782) 955-9758	65	2022-05-20 04:40:52
73	Constance	Nash	non.egestas.a@outlook.com	1-123-232-2931	11	2021-09-13 04:08:18
74	Heidi	Payne	et.nunc@outlook.com	1-223-532-1253	93	2021-05-27 19:57:59
75	Adara	Guthrie	aliquet.odio.etiam@hotmail.org	(442) 490-1388	93	2022-12-05 21:59:51
76	Kibo	Pearson	sit.amet@outlook.net	(544) 548-2367	85	2021-11-20 21:24:55
77	Irma	Garrison	eget@yahoo.ca	(641) 994-2215	8	2022-11-30 08:32:17
78	Cameran	Michael	pulvinar@yahoo.com	(826) 342-7470	32	2023-04-18 22:57:21
79	Sade	Petty	pellentesque.tincidunt.tempus@protonmail.org	(863) 861-8484	51	2021-09-27 21:37:32
80	Madeson	Mclaughlin	quam@outlook.ca	1-637-552-6457	2	2022-07-16 23:31:35
81	Rinah	Fischer	natoque.penatibus.et@outlook.com	1-276-239-7956	10	2022-08-30 05:58:10
82	Alyssa	Burke	nisl.maecenas.malesuada@yahoo.ca	(359) 512-6163	9	2022-04-27 14:27:12
83	Drake	Harding	amet.luctus@outlook.net	(711) 223-5217	31	2023-01-13 22:14:04
84	Garth	Snow	sodales.at@google.edu	(640) 450-6204	36	2022-12-01 07:17:28
85	Nayda	Cherry	adipiscing.mauris.molestie@aol.com	1-210-518-9721	4	2022-01-14 10:13:25
86	Peter	Buck	nulla.tincidunt.neque@google.edu	1-710-324-5554	64	2022-09-14 13:58:55
87	Nigel	Underwood	vitae@yahoo.edu	1-729-871-9666	75	2022-06-15 09:26:18
88	Mariam	Valentine	velit.dui.semper@yahoo.edu	(241) 375-4122	17	2022-02-09 00:51:50
89	Stephen	Morrow	non.leo@yahoo.ca	(588) 607-8939	5	2021-09-09 23:43:14
90	Kelsie	Delgado	consectetuer@aol.couk	1-561-188-1894	24	2021-08-29 12:13:26
91	Vaughan	Griffin	sed.libero@protonmail.net	1-739-555-9575	68	2022-03-01 01:15:26
92	Karleigh	Romero	ac.mattis.velit@google.com	(546) 646-8376	57	2021-05-29 03:43:34
93	Jordan	Brooks	suspendisse@protonmail.edu	1-577-938-5372	68	2023-03-03 14:21:58
94	Wang	Noble	est.mauris@hotmail.org	(556) 914-3573	99	2022-10-27 03:28:17
95	Wylie	Bailey	nec.urna@yahoo.org	1-467-816-2168	42	2022-01-04 14:15:50
96	Marvin	Larsen	gravida.nunc@aol.net	1-354-311-7372	48	2022-01-04 15:56:00
97	Orlando	Barry	rhoncus.nullam.velit@yahoo.edu	1-852-817-8576	85	2022-01-16 13:50:24
98	Tasha	Britt	sed.sapien@outlook.com	(949) 776-0158	58	2022-05-20 10:50:19
99	Jeremy	Roth	dolor@aol.com	(198) 375-2862	48	2023-04-11 01:09:00
100	Leigh	Walls	vulputate.mauris@aol.ca	1-817-114-8281	55	2021-06-28 15:11:38
\.


--
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: gb_user
--

COPY public.video (id, url, owner_id, description, uploaded_at, size) FROM stdin;
1	iaculis aliquet diam. Sed diam lorem, auctor	20	interdum feugiat. Sed nec metus facilisis lorem	2023-04-02 11:27:33	761
2	arcu. Sed et libero. Proin	57	vel pede blandit congue. In scelerisque scelerisque	2021-06-24 06:45:02	377
3	sodales nisi magna sed dui. Fusce aliquam, enim	48	adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim	2022-11-01 11:16:26	458
4	ligula eu enim. Etiam imperdiet dictum	7	convallis	2021-05-25 18:15:41	638
5	consectetuer ipsum	14	tincidunt dui	2023-03-19 18:14:54	611
6	lacinia at, iaculis quis, pede. Praesent eu dui.	80	ipsum nunc id enim. Curabitur	2022-06-02 01:15:59	599
7	pellentesque, tellus	46	ut erat. Sed nunc est,	2022-05-27 22:41:48	739
8	Morbi quis urna. Nunc quis arcu vel quam dignissim	52	amet ornare lectus justo eu arcu. Morbi sit	2022-02-11 08:58:00	799
9	tempor diam	43	luctus felis purus ac tellus. Suspendisse	2022-06-02 21:37:09	145
10	dolor quam, elementum at,	71	leo. Cras	2022-05-19 21:40:57	637
11	congue, elit sed consequat auctor, nunc nulla	70	lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed	2022-07-30 13:28:19	442
12	Integer in magna. Phasellus dolor elit, pellentesque	18	fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat	2022-05-09 14:49:38	287
13	ac turpis egestas. Aliquam fringilla cursus purus.	55	ullamcorper magna. Sed eu eros. Nam	2022-05-15 19:44:12	812
14	elit, dictum	80	iaculis odio. Nam	2022-06-17 15:34:33	491
15	aliquam arcu. Aliquam	90	at sem	2021-10-24 09:22:47	461
16	non nisi. Aenean eget metus. In	26	euismod in, dolor. Fusce feugiat.	2021-09-02 08:04:00	598
17	enim nec tempus scelerisque, lorem ipsum sodales	54	aliquet libero. Integer in magna. Phasellus dolor	2021-10-12 11:21:19	128
18	auctor non, feugiat nec,	24	amet, consectetuer	2021-11-04 13:42:36	307
19	sollicitudin adipiscing ligula. Aenean gravida nunc	16	feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque.	2022-09-05 00:05:34	462
20	Morbi accumsan laoreet ipsum.	18	ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu,	2021-12-14 00:41:28	228
21	gravida non, sollicitudin	34	nunc. In at pede. Cras	2022-02-09 13:30:38	635
22	velit. Cras lorem lorem, luctus ut,	15	elementum, dui	2022-05-25 16:17:00	252
23	Donec felis orci,	75	posuere cubilia Curae Donec tincidunt.	2022-06-10 05:22:58	128
24	Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam	86	odio, auctor vitae, aliquet	2022-07-16 23:35:06	96
25	adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing	5	Donec egestas. Aliquam nec enim. Nunc ut erat. Sed	2022-05-14 02:24:52	137
26	nulla magna,	13	euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur	2022-01-08 22:02:59	369
27	adipiscing elit. Etiam laoreet, libero et	7	Pellentesque habitant morbi tristique senectus et netus et	2023-03-27 12:48:35	751
28	quis, pede. Praesent eu dui.	88	tristique ac, eleifend vitae, erat. Vivamus nisi.	2021-10-03 08:20:41	630
29	laoreet, libero et tristique	15	metus. Vivamus euismod urna. Nullam lobortis quam a	2022-06-01 13:47:36	160
30	hendrerit a, arcu. Sed et libero. Proin	59	nec	2022-06-21 16:47:41	839
31	ridiculus mus. Proin vel	35	lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,	2021-06-12 03:01:53	598
32	a neque. Nullam ut nisi a odio semper cursus. Integer	11	orci lacus vestibulum lorem, sit amet ultricies sem magna	2021-06-14 09:57:48	52
33	rutrum eu, ultrices sit amet,	76	laoreet lectus quis massa. Mauris vestibulum,	2021-08-23 19:30:40	735
34	dui nec urna suscipit nonummy.	1	tristique ac, eleifend vitae, erat. Vivamus nisi.	2021-05-10 19:01:56	122
35	Nam interdum enim non nisi.	34	egestas hendrerit neque. In ornare	2022-12-15 06:48:09	961
36	ut, nulla. Cras eu tellus eu augue porttitor	79	Mauris molestie pharetra nibh. Aliquam ornare, libero at	2022-05-21 11:35:45	13
37	pharetra. Nam ac nulla. In	74	dictum mi, ac mattis	2023-01-27 19:07:24	121
38	Aliquam ornare, libero at	85	consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus	2021-11-26 01:52:38	501
39	risus quis diam luctus lobortis. Class aptent taciti	73	Suspendisse sed	2023-02-25 20:42:34	865
40	dis parturient montes, nascetur ridiculus mus.	93	Suspendisse ac metus vitae velit	2022-09-16 21:45:31	576
41	quis, pede. Praesent eu	98	elementum at, egestas	2023-02-13 21:30:59	429
42	leo, in lobortis	63	enim non nisi. Aenean eget metus.	2023-03-12 21:02:43	721
43	convallis in, cursus et, eros. Proin ultrices. Duis volutpat	36	dignissim magna a tortor. Nunc commodo auctor velit.	2023-01-21 02:07:42	949
44	convallis in, cursus	40	purus ac	2021-05-16 18:24:01	577
45	nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus	64	mi. Aliquam gravida	2022-06-27 14:27:56	911
46	id, mollis nec, cursus a, enim. Suspendisse aliquet, sem	19	et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.	2023-02-27 22:38:27	862
47	non enim commodo hendrerit. Donec	87	dui. Suspendisse ac metus	2022-03-17 15:44:11	87
48	ultricies adipiscing,	39	vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.	2021-11-05 22:27:19	439
49	tempor, est ac mattis semper, dui lectus rutrum	69	erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.	2022-01-09 12:20:01	192
50	Nulla interdum. Curabitur dictum. Phasellus in felis.	95	Nunc ut erat. Sed nunc est, mollis non, cursus	2021-06-23 13:07:04	125
51	semper cursus. Integer mollis. Integer	5	erat neque non quam. Pellentesque habitant morbi tristique	2021-06-04 02:36:36	454
52	Nullam nisl. Maecenas malesuada fringilla	25	congue turpis. In condimentum. Donec at arcu.	2022-04-24 02:26:36	280
53	montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod	95	consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate	2021-04-29 21:11:23	374
54	tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet	30	dolor elit, pellentesque	2022-10-19 11:10:27	362
55	at, libero. Morbi accumsan	50	libero at auctor ullamcorper, nisl arcu iaculis enim, sit	2022-08-16 06:44:08	998
56	arcu. Sed eu nibh	39	adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc	2023-03-01 01:09:26	534
57	risus. In mi pede, nonummy ut, molestie in,	46	dictum magna. Ut tincidunt orci quis lectus. Nullam	2022-10-14 11:58:11	972
58	nec quam. Curabitur vel lectus. Cum sociis natoque penatibus	62	nec metus facilisis lorem tristique	2022-10-18 16:58:11	514
59	quis massa. Mauris	52	magna. Duis dignissim	2022-01-25 01:31:47	720
60	et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.	68	mollis nec, cursus a, enim. Suspendisse aliquet,	2022-10-21 01:15:46	620
61	commodo ipsum.	98	Mauris ut quam vel sapien imperdiet ornare. In	2021-12-08 08:13:19	581
62	sociosqu ad litora torquent per conubia nostra, per	70	odio.	2022-02-07 03:52:11	449
63	massa rutrum magna.	6	dapibus id,	2021-06-09 06:02:49	435
64	lectus	97	tellus eu augue porttitor interdum. Sed auctor odio a	2022-10-08 10:58:49	10
65	ipsum. Suspendisse sagittis.	31	vestibulum massa rutrum magna. Cras convallis	2021-09-29 21:13:44	231
66	risus. Donec egestas. Duis ac arcu. Nunc mauris.	28	Praesent interdum	2022-05-08 08:59:55	639
67	sagittis felis. Donec tempor,	90	Sed eu nibh vulputate mauris	2022-07-06 16:52:59	220
68	lectus rutrum urna,	11	Integer id magna et ipsum cursus vestibulum. Mauris	2022-06-23 13:52:29	801
69	Aliquam fringilla cursus purus. Nullam scelerisque neque sed	96	enim commodo hendrerit. Donec	2022-01-12 22:20:55	548
70	rutrum, justo. Praesent	88	placerat eget, venenatis a, magna. Lorem ipsum dolor	2022-02-05 22:13:12	64
71	vel, vulputate eu, odio. Phasellus at augue	13	eu odio tristique pharetra.	2022-07-08 12:44:22	990
72	a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.	87	vel est tempor bibendum. Donec felis orci,	2021-07-02 17:43:27	735
73	Aliquam	79	Quisque ornare tortor at risus. Nunc ac	2023-02-02 16:38:41	35
74	elit, pretium et, rutrum non, hendrerit id, ante.	48	rhoncus. Nullam velit dui, semper et,	2022-06-28 20:52:37	822
75	consequat auctor, nunc nulla vulputate dui, nec tempus	76	vitae aliquam eros	2021-11-24 21:40:17	32
76	adipiscing, enim mi tempor	60	non,	2023-02-16 05:39:35	812
77	ut cursus luctus,	40	ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,	2023-03-17 17:14:57	41
78	nibh vulputate mauris sagittis placerat. Cras	85	consectetuer, cursus et, magna.	2021-06-07 20:20:30	723
79	nec tempus	5	id ante dictum cursus. Nunc	2021-12-30 16:22:36	921
80	magnis dis	85	sem. Pellentesque ut	2022-10-27 12:18:40	109
81	semper et, lacinia vitae, sodales at, velit.	22	Sed malesuada augue ut lacus.	2021-09-19 03:56:12	608
82	Sed eu	87	orci. Phasellus	2021-12-16 09:26:21	158
83	vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor	13	leo elementum sem, vitae	2022-04-15 18:55:48	530
84	nec orci. Donec nibh. Quisque nonummy	60	nunc id enim.	2021-04-20 04:17:12	15
85	risus quis diam luctus	71	Donec feugiat metus sit amet ante. Vivamus	2022-03-03 19:09:23	610
86	sagittis lobortis mauris. Suspendisse aliquet molestie tellus.	48	bibendum fermentum	2022-10-26 03:05:20	840
87	a, auctor non, feugiat nec, diam. Duis mi enim, condimentum	38	nunc risus varius orci,	2021-12-27 07:25:07	361
88	eu nibh	48	primis in faucibus orci luctus et	2023-01-14 12:28:14	128
89	gravida sit amet, dapibus id, blandit at, nisi.	57	tellus. Nunc lectus pede, ultrices a, auctor non,	2021-10-21 08:54:29	346
90	nec	9	Pellentesque ultricies dignissim lacus. Aliquam rutrum	2021-06-05 18:52:24	204
91	at pede. Cras vulputate velit eu sem.	87	tristique ac, eleifend vitae,	2021-10-23 21:43:30	15
92	et ipsum cursus	93	malesuada	2022-03-28 23:48:50	361
93	imperdiet nec, leo. Morbi neque tellus, imperdiet	95	Suspendisse sed dolor. Fusce mi	2022-04-20 00:42:59	495
94	metus	60	blandit at, nisi. Cum	2021-10-20 14:18:49	198
95	ante dictum mi, ac	11	Fusce aliquet magna	2021-08-29 02:34:18	214
96	libero at auctor	41	lorem,	2021-12-06 22:20:32	903
97	Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum	98	Fusce mi lorem, vehicula et, rutrum	2022-02-13 15:00:03	805
98	gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum	41	Phasellus fermentum convallis ligula. Donec luctus	2023-02-20 07:17:39	933
99	non, cursus	48	mauris ut	2022-08-12 13:48:17	197
100	nisi dictum augue malesuada malesuada. Integer id magna	31	eu, odio. Phasellus at augue id ante dictum cursus.	2022-03-18 01:50:06	938
\.


--
-- Name: communities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.communities_id_seq', 100, true);


--
-- Name: communities_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.communities_users_id_seq', 100, true);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.games_id_seq', 100, true);


--
-- Name: goods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.goods_id_seq', 100, true);


--
-- Name: goods_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.goods_users_id_seq', 100, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.messages_id_seq', 100, true);


--
-- Name: music_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.music_id_seq', 100, true);


--
-- Name: photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.photo_id_seq', 100, true);


--
-- Name: subscribes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.subscribes_id_seq', 100, true);


--
-- Name: subscribes_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.subscribes_status_id_seq', 100, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.users_id_seq', 100, true);


--
-- Name: video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.video_id_seq', 100, true);


--
-- Name: communities communities_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_pkey PRIMARY KEY (id);


--
-- Name: communities_users communities_users_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities_users
    ADD CONSTRAINT communities_users_pkey PRIMARY KEY (id);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: goods goods_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.goods
    ADD CONSTRAINT goods_pkey PRIMARY KEY (id);


--
-- Name: goods_users goods_users_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.goods_users
    ADD CONSTRAINT goods_users_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: music music_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.music
    ADD CONSTRAINT music_pkey PRIMARY KEY (id);


--
-- Name: photo photo_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);


--
-- Name: subscribes subscribes_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.subscribes
    ADD CONSTRAINT subscribes_pkey PRIMARY KEY (id);


--
-- Name: subscribes_status subscribes_status_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.subscribes_status
    ADD CONSTRAINT subscribes_status_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

