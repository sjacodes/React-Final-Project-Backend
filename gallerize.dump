--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: ritz
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO ritz;

--
-- Name: artworks; Type: TABLE; Schema: public; Owner: ritz
--

CREATE TABLE public.artworks (
    id bigint NOT NULL,
    title character varying,
    artist character varying,
    collection character varying,
    image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    date character varying
);


ALTER TABLE public.artworks OWNER TO ritz;

--
-- Name: artworks_id_seq; Type: SEQUENCE; Schema: public; Owner: ritz
--

CREATE SEQUENCE public.artworks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artworks_id_seq OWNER TO ritz;

--
-- Name: artworks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ritz
--

ALTER SEQUENCE public.artworks_id_seq OWNED BY public.artworks.id;


--
-- Name: captions; Type: TABLE; Schema: public; Owner: ritz
--

CREATE TABLE public.captions (
    id bigint NOT NULL,
    text character varying,
    gallery_wall_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    x_position integer,
    y_position integer,
    width integer,
    height integer,
    rendered boolean,
    title boolean
);


ALTER TABLE public.captions OWNER TO ritz;

--
-- Name: captions_id_seq; Type: SEQUENCE; Schema: public; Owner: ritz
--

CREATE SEQUENCE public.captions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.captions_id_seq OWNER TO ritz;

--
-- Name: captions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ritz
--

ALTER SEQUENCE public.captions_id_seq OWNED BY public.captions.id;


--
-- Name: gallery_walls; Type: TABLE; Schema: public; Owner: ritz
--

CREATE TABLE public.gallery_walls (
    id bigint NOT NULL,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.gallery_walls OWNER TO ritz;

--
-- Name: gallery_walls_id_seq; Type: SEQUENCE; Schema: public; Owner: ritz
--

CREATE SEQUENCE public.gallery_walls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gallery_walls_id_seq OWNER TO ritz;

--
-- Name: gallery_walls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ritz
--

ALTER SEQUENCE public.gallery_walls_id_seq OWNED BY public.gallery_walls.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ritz
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ritz;

--
-- Name: titles; Type: TABLE; Schema: public; Owner: ritz
--

CREATE TABLE public.titles (
    id bigint NOT NULL,
    text character varying,
    gallery_wall_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    x_position integer,
    y_position integer,
    width integer,
    height integer
);


ALTER TABLE public.titles OWNER TO ritz;

--
-- Name: titles_id_seq; Type: SEQUENCE; Schema: public; Owner: ritz
--

CREATE SEQUENCE public.titles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.titles_id_seq OWNER TO ritz;

--
-- Name: titles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ritz
--

ALTER SEQUENCE public.titles_id_seq OWNED BY public.titles.id;


--
-- Name: user_selections; Type: TABLE; Schema: public; Owner: ritz
--

CREATE TABLE public.user_selections (
    id bigint NOT NULL,
    gallery_wall_id bigint,
    artwork_id bigint,
    x_position integer,
    y_position integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    width integer,
    height integer
);


ALTER TABLE public.user_selections OWNER TO ritz;

--
-- Name: user_selections_id_seq; Type: SEQUENCE; Schema: public; Owner: ritz
--

CREATE SEQUENCE public.user_selections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_selections_id_seq OWNER TO ritz;

--
-- Name: user_selections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ritz
--

ALTER SEQUENCE public.user_selections_id_seq OWNED BY public.user_selections.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ritz
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    password_digest character varying
);


ALTER TABLE public.users OWNER TO ritz;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ritz
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ritz;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ritz
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: artworks id; Type: DEFAULT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.artworks ALTER COLUMN id SET DEFAULT nextval('public.artworks_id_seq'::regclass);


--
-- Name: captions id; Type: DEFAULT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.captions ALTER COLUMN id SET DEFAULT nextval('public.captions_id_seq'::regclass);


--
-- Name: gallery_walls id; Type: DEFAULT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.gallery_walls ALTER COLUMN id SET DEFAULT nextval('public.gallery_walls_id_seq'::regclass);


--
-- Name: titles id; Type: DEFAULT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.titles ALTER COLUMN id SET DEFAULT nextval('public.titles_id_seq'::regclass);


--
-- Name: user_selections id; Type: DEFAULT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.user_selections ALTER COLUMN id SET DEFAULT nextval('public.user_selections_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: ritz
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-10-03 12:40:03.18451	2018-10-03 12:40:03.18451
\.


--
-- Data for Name: artworks; Type: TABLE DATA; Schema: public; Owner: ritz
--

COPY public.artworks (id, title, artist, collection, image, created_at, updated_at, date) FROM stdin;
2	Olympia	Edouard Manet	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/82970/l?t=sK8V-ghn2LcjSsfSQ0buhg	2018-10-03 13:27:48.901703	2018-10-03 13:27:48.901703	1863
3	La Vierge du chancelier Rolin	Jan Van Eyck	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/294416/l?t=mOmFvMqbktjT1p9FiE2_ug	2018-10-03 13:27:48.909336	2018-10-03 13:27:48.909336	Unknown Date
4	La Grande Odalisque	Jean-Auguste-Dominique Ingres	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/230854/l?t=dywpEOBuAlODNfzm1R743w	2018-10-03 13:27:48.91432	2018-10-03 13:27:48.91432	1814
5	Le Joueur de fifre	Edouard Manet	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/714395/l?t=5D2_BySu1jhg2UyKhzy4vw	2018-10-03 13:27:48.91843	2018-10-03 13:27:48.91843	1866
6	L'Absinthe	Edgar Degas	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/504014/l?t=V3mW--xJYmAZzntGokNXyQ	2018-10-03 13:27:48.923526	2018-10-03 13:27:48.923526	1875
7	La Joconde	Léonard de Vinci	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/503545/l?t=1YEAxRU1Ij14B9iOg7pfjg	2018-10-03 13:27:48.927521	2018-10-03 13:27:48.927521	1503
8	Napoléon Ier sur le champ de bataille d'Eylau (9 février 1807)	Antoine-Jean Gros	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/147879/l?t=xMhzUpqXIDJN5Y5s_N5m-Q	2018-10-03 13:27:48.930917	2018-10-03 13:27:48.930917	Unknown Date
9	L'impératrice Eugénie entourée des dames d'honneur du palais	Franz Xaver Winterhalter	Compiègne, château	https://api.art.rmngp.fr/v1/images/429/185408/l?t=0MOIAA03TBFTkYTPiDVq5g	2018-10-03 13:27:48.934839	2018-10-03 13:27:48.934839	1855
10	Le Nouveau-né	Georges de La Tour	Rennes, musée des Beaux-Arts	https://api.art.rmngp.fr/v1/images/429/234802/l?t=WyiuYmP0gcRCZNly7qjeAg	2018-10-03 13:27:48.9405	2018-10-03 13:27:48.9405	Unknown Date
11	Homère déifié dit aussi l'apothéose d'Homère	Jean-Auguste-Dominique Ingres	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/215075/l?t=4XCS9fBrIBgi1GBiD02RwQ	2018-10-03 13:27:48.945426	2018-10-03 13:27:48.945426	1827
12	Bonaparte visitant les pestiférés de Jaffa	Antoine-Jean Gros	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/230840/l?t=zp4vbrPFb8Au7l2pYzJqxw	2018-10-03 13:27:48.950679	2018-10-03 13:27:48.950679	1804
13	La Montagne Sainte-Victoire	Paul Cézanne	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/639433/l?t=TqQ05CggH8VCdMPlsfX6fA	2018-10-03 13:27:48.954707	2018-10-03 13:27:48.954707	Unknown Date
14	Bal masqué donné pour le mariage du dauphin	Charles Nicolas Cochin, le Jeune	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/162140/l?t=UpFzBIDW6i0JtFDQGEvQXw	2018-10-03 13:27:48.958541	2018-10-03 13:27:48.958541	1745
15	La Barque de Dante	Eugène Delacroix	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/1288027/l?t=5xT5du967xk_XDvdL2joxA	2018-10-03 13:27:48.962498	2018-10-03 13:27:48.962498	1822
16	Petite danseuse de quatorze ans dite aussi Grande danseuse habillée	Edgar Degas	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/76460/l?t=qIRvq4dF4wXWLyW5d6AI4g	2018-10-03 13:27:48.96671	2018-10-03 13:27:48.96671	Unknown Date
17	L'astronome dit aussi l'Astrologue	Johannes Vermeer	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/1061142/l?t=95yk9gmnKBqKrL4sIc_f9Q	2018-10-03 13:27:48.970671	2018-10-03 13:27:48.970671	Unknown Date
18	Sacre de l'empereur Napoléon et couronnement de l'impératrice Joséphine	Jacques-Louis David	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/195338/l?t=3wnKB6BtsCJQ4luIyareGg	2018-10-03 13:27:48.975561	2018-10-03 13:27:48.975561	Unknown Date
19	Service à thé	Charles-Nicolas Odiot	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/240240/l?t=6WpZ8vPa-NBCmzagoD03NQ	2018-10-03 13:27:48.980858	2018-10-03 13:27:48.980858	Unknown Date
20	Artémis de Versailles, Diane chasseresse accompagnée d'une biche	Unknown Artist	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/181812/l?t=PU5Do_xCNnMvRPVBx3nAZQ	2018-10-03 13:27:48.985396	2018-10-03 13:27:48.985396	Unknown Date
21	Baigneurs	Paul Cézanne	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/295584/l?t=7c9uD9VDYWlY8lvJ9Msmqw	2018-10-03 13:27:48.997499	2018-10-03 13:27:48.997499	Unknown Date
22	Bataille de Poitiers, octobre 732	Charles de Steuben	Versailles, châteaux de Versailles et de Trianon	https://api.art.rmngp.fr/v1/images/429/186423/l?t=lSSCPk-tf8v47fxUDTjhAg	2018-10-03 13:27:49.000438	2018-10-03 13:27:49.000438	1837
23	Aphrodite dite Vénus d'Arles	Unknown Artist	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/212363/l?t=F77B-L-WqNesI9YGQjF-ug	2018-10-03 13:27:49.003682	2018-10-03 13:27:49.003682	Unknown Date
24	Statère d'or de Vercingétorix	Unknown Artist	Saint-Germain-en-Laye, musée d'Archéologie nationale et Domaine national de Saint-Germain-en-Laye	https://api.art.rmngp.fr/v1/images/429/168189/l?t=xepfIVvW0pfU1Bbv5rsg-w	2018-10-03 13:27:49.007257	2018-10-03 13:27:49.007257	Unknown Date
25	La chute des damnés	Dieric Bouts, le Vieux	Lille, Palais des Beaux-Arts	https://api.art.rmngp.fr/v1/images/429/153671/l?t=Xg69ohILValXKyw1a9se5A	2018-10-03 13:27:49.011218	2018-10-03 13:27:49.011218	Unknown Date
26	Vue du val d'Arco dans le Tyrol méridional	Albrecht Dürer	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/203998/l?t=UaWcXA-oEA3SMM2nzy1KbA	2018-10-03 13:27:49.01522	2018-10-03 13:27:49.01522	Unknown Date
27	Saint Sébastien	Andrea Mantegna	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/334541/l?t=9KNTnrYsmJO_m337GFUE7g	2018-10-03 13:27:49.019295	2018-10-03 13:27:49.019295	Unknown Date
28	"La lutte pour l'étendard" de la "Bataille d'Anghiari"	Peter Paul Rubens	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/1045835/l?t=xAitkvJcJoJ-RAREgkfSuQ	2018-10-03 13:27:49.023044	2018-10-03 13:27:49.023044	Unknown Date
29	Les Trois premiers livres de Diodore de Sicile, traduits en français par Antoine Macault	Jean Clouet	Chantilly, musée Condé	https://api.art.rmngp.fr/v1/images/429/924541/l?t=cn77IxqKV3kUxYWqqtzZPw	2018-10-03 13:27:49.028462	2018-10-03 13:27:49.028462	1534
30	La falaise d'Etretat après l'orage	Gustave Courbet	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/47664/l?t=RTRHN1aj-YwhwisPQ5sHaQ	2018-10-03 13:27:49.032642	2018-10-03 13:27:49.032642	1870
31	La Mort de Sardanapale	Eugène Delacroix	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/194931/l?t=EbRg2l5FK88eWGQvoXCNhA	2018-10-03 13:27:49.036047	2018-10-03 13:27:49.036047	1827
32	Les Nymphéas : Reflets verts	Claude Monet	Paris, musée de l'Orangerie	https://api.art.rmngp.fr/v1/images/429/446716/l?t=5S8TkxHcTnFSagovCPE9KA	2018-10-03 13:27:49.040413	2018-10-03 13:27:49.040413	Unknown Date
33	Bethsabée au bain	Rembrandt	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/991838/l?t=8JqpJMiUIa2pZyHSQyzYJw	2018-10-03 13:27:49.046093	2018-10-03 13:27:49.046093	1654
34	Denderah, chapelle est d'Osiris sur le temple d'Hathor, plafond : zodiaque	Unknown Artist	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/111110/l?t=dHfM2v6YZlM99P2euVEE0w	2018-10-03 13:27:49.051262	2018-10-03 13:27:49.051262	Unknown Date
35	Le Chancelier Séguier	Charles Le Brun	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/161211/l?t=y_Afmq7KRMWjXabgsERGLA	2018-10-03 13:27:49.054743	2018-10-03 13:27:49.054743	Unknown Date
36	Henri IV reçoit le portrait de Marie de Médicis	Peter Paul Rubens	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/73302/l?t=osntUoL630y1h_nqJIRe8w	2018-10-03 13:27:49.057797	2018-10-03 13:27:49.057797	Unknown Date
37	L'enlèvement des Sabines	Nicolas Poussin	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/757807/l?t=vzWe00LiQuvYz1qPITW01w	2018-10-03 13:27:49.06122	2018-10-03 13:27:49.06122	Unknown Date
38	La construction d'un grand chemin	Claude-Joseph Vernet	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/234265/l?t=Eb54Lo6YK7jFbGl6-CWK6A	2018-10-03 13:27:49.064481	2018-10-03 13:27:49.064481	Unknown Date
39	Jean II le Bon (1319-1364), roi de France	Unknown Artist	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/158519/l?t=VAyhVT9zsyGr9q09vHjaCg	2018-10-03 13:27:49.067912	2018-10-03 13:27:49.067912	Unknown Date
40	Danse à la campagne	Auguste Renoir	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/162878/l?t=EWOg47NzbKdTG3Dv0u-29g	2018-10-03 13:27:49.072903	2018-10-03 13:27:49.072903	1883
41	L'église de Gréville	Jean-François Millet	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/639429/l?t=e85PWr8lP5_oaqfpiflUpg	2018-10-03 13:27:49.077094	2018-10-03 13:27:49.077094	Unknown Date
42	La Belle Ferronnière	Léonard de Vinci	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/1049214/l?t=LMeky2CspO_WvOOBB2Tdqw	2018-10-03 13:27:49.08104	2018-10-03 13:27:49.08104	1494
43	Bataille de la Moskowa, le 7 septembre 1812 (seconde attaque de la grande Redoute)	Louis François Lejeune	Versailles, châteaux de Versailles et de Trianon	https://api.art.rmngp.fr/v1/images/429/899708/l?t=SVq--e-uTlaJqXvDBBNFTA	2018-10-03 13:27:49.084703	2018-10-03 13:27:49.084703	1822
44	Attaque du grand convoi ramenant les dames de la cour du roi Joseph en France	Louis François Lejeune	Versailles, châteaux de Versailles et de Trianon	https://api.art.rmngp.fr/v1/images/429/899730/l?t=jtHGFLbqXtJK8_8WWNrunw	2018-10-03 13:27:49.087986	2018-10-03 13:27:49.087986	Unknown Date
45	Triptyque de saint Etienne	Peter Paul Rubens	Valenciennes, musée des Beaux-Arts	https://api.art.rmngp.fr/v1/images/429/1150330/l?t=xRKJc5tL_eiMkkBlO7od6g	2018-10-03 13:27:49.09119	2018-10-03 13:27:49.09119	Unknown Date
46	Orphée et Eurydice	Nicolas Poussin	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/891138/l?t=yi4pSxM-IliefzKOwdZGWA	2018-10-03 13:27:49.094196	2018-10-03 13:27:49.094196	Unknown Date
47	Napoléon Ier passe en revue la garde	Horace Vernet	Versailles, châteaux de Versailles et de Trianon	https://api.art.rmngp.fr/v1/images/429/185780/l?t=JN6oujXC0Z8rmK9fAijCdQ	2018-10-03 13:27:49.097143	2018-10-03 13:27:49.097143	1836
48	Dieu dit de Bouray	Unknown Artist	Saint-Germain-en-Laye, musée d'Archéologie nationale et Domaine national de Saint-Germain-en-Laye	https://api.art.rmngp.fr/v1/images/429/130966/l?t=5-mYR5p0kv2HASaPeNX7Jg	2018-10-03 13:27:49.100367	2018-10-03 13:27:49.100367	Unknown Date
49	Le printemps	Jean-François Millet	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/84184/l?t=17LETC8joW7qiQEVFkP37A	2018-10-03 13:27:49.103515	2018-10-03 13:27:49.103515	Unknown Date
50	Marcellus	l'Athénien Cléoménès	Musée du Louvre	https://api.art.rmngp.fr/v1/images/429/167690/l?t=2skKFmJpVfFD1hyB2ZaVnw	2018-10-03 13:27:49.107287	2018-10-03 13:27:49.107287	Unknown Date
51	Les Raboteurs de parquet	Gustave Caillebotte	musée d'Orsay	https://api.art.rmngp.fr/v1/images/429/59427/l?t=UKY73ApSeIpYweJCnWSsmw	2018-10-03 13:27:49.111297	2018-10-03 13:27:49.111297	1875
52	\N	\N	\N	\N	2018-10-03 13:27:49.115205	2018-10-03 13:27:49.115205	\N
53	Untitled (portrait of a man in a top hat)	John Deusing	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV131017N_dynmc	2018-10-03 13:27:49.118748	2018-10-03 13:27:49.118748	c. 1940
54	Untitled (portrait of a man)	John Deusing	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014381N_dynmc	2018-10-03 13:27:49.122403	2018-10-03 13:27:49.122403	c. 1940
55	Untitled (a young photograher taking a studio picture)	John Deusing	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014406N_dynmc	2018-10-03 13:27:49.125738	2018-10-03 13:27:49.125738	c. 1940
56	Untitled (portrait of two children with hobby horse)	John Deusing	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014298N_dynmc	2018-10-03 13:27:49.12883	2018-10-03 13:27:49.12883	c. 1945
57	Untitled (portrait of child in bandana)	John Deusing	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014327N_dynmc	2018-10-03 13:27:49.132095	2018-10-03 13:27:49.132095	c. 1945
58	Untitled (portrait of a young woman)	John Deusing	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV013814N_dynmc	2018-10-03 13:27:49.135331	2018-10-03 13:27:49.135331	c. 1950
59	Untitled (Lee's Esso Grill, interior, stools at counter)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014221N_dynmc	2018-10-03 13:27:49.138522	2018-10-03 13:27:49.138522	1949
60	Untitled (portrait of child in "Buster" hat)	John Deusing	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014320N_dynmc	2018-10-03 13:27:49.142449	2018-10-03 13:27:49.142449	c. 1945
61	Untitled (woman cutting her birthday cake)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014256N_dynmc	2018-10-03 13:27:49.146344	2018-10-03 13:27:49.146344	1950
62	Untitled (portrait of a seated woman in cloche hat and fur stole)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV013140N_dynmc	2018-10-03 13:27:49.150588	2018-10-03 13:27:49.150588	1920
63	Untitled (airplane on field at Suffolk fair grounds)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014189N_dynmc	2018-10-03 13:27:49.153752	2018-10-03 13:27:49.153752	1935
64	Untitled (men's rugby team)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014192N_dynmc	2018-10-03 13:27:49.158382	2018-10-03 13:27:49.158382	c. 1930
65	Untitled (workers in field)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014218N_dynmc	2018-10-03 13:27:49.161278	2018-10-03 13:27:49.161278	c. 1940
66	Untitled (workers in field)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014219N_dynmc	2018-10-03 13:27:49.165147	2018-10-03 13:27:49.165147	c. 1940
67	Untitled (one-year old sitting on bed)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014234N_dynmc	2018-10-03 13:27:49.169699	2018-10-03 13:27:49.169699	1945
68	Untitled (one-year old sitting on bed)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014235N_dynmc	2018-10-03 13:27:49.174009	2018-10-03 13:27:49.174009	1945
69	Untitled (marching band in parade through town)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014286N_dynmc	2018-10-03 13:27:49.177837	2018-10-03 13:27:49.177837	1941
70	Untitled (girl in tutu)	Hamblin Studio	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014248N_dynmc	2018-10-03 13:27:49.183268	2018-10-03 13:27:49.183268	1949
71	Untitled (two portraits of a little girl with headband)	John Deusing	Harvard Art Museums/Fogg Museum, Transfer from the Carpenter Center for the Visual Arts, American Professional Photographers Collection	https://nrs.harvard.edu/urn-3:HUAM:INV014409N_dynmc	2018-10-03 13:27:49.187002	2018-10-03 13:27:49.187002	c. 1940
72	grayscale two people standing on hallway	Anthony DELANOIX	A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.	https://images.unsplash.com/photo-1428976386736-54acf0ea08ba?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2eb9bb4f36e5ec829ef267e8a108692d	2018-10-03 13:27:49.191887	2018-10-03 13:27:49.191887	2015
73	person standing in front of tree trunks	Kevin Hou	A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.	https://images.unsplash.com/photo-1445334668512-47d6fb88d603?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=37f6d4d63176687982a8785a50813ad5	2018-10-03 13:27:49.196417	2018-10-03 13:27:49.196417	2015
74	\N	Julia Caesar	A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.	https://images.unsplash.com/photo-1456945836540-b5e8178fce4d?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=50ff3fbef1132e42d632d987db6b210a	2018-10-03 13:27:49.199467	2018-10-03 13:27:49.199467	2016
75	grayscale photo of person walking on road outside building	Jon Tyson	A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.	https://images.unsplash.com/photo-1468870045442-e7d799d8c98a?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=08e21ed971006e18812f1bf5cb66273f	2018-10-03 13:27:49.202564	2018-10-03 13:27:49.202564	2016
76	man walking outside train door in grayscale photo	Marcus Zymmer	A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.	https://images.unsplash.com/photo-1484320524730-2ee02a688c8e?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=ca4693c55088acd25e015d0a42a0f97c	2018-10-03 13:27:49.206296	2018-10-03 13:27:49.206296	2017
77	grayscale photo of closed-eyes woman	Cristian Newman	A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.	https://images.unsplash.com/photo-1496672254107-b07a26403885?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=ff0c87909dc3fb50a26fc4058d11176c	2018-10-03 13:27:49.210395	2018-10-03 13:27:49.210395	2017
78	photo of high-rise building	Artem Sapegin	A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.	https://images.unsplash.com/photo-1501661525007-7ec985fc94d6?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=7ff8390f4cb82723818b078ef3f5383c	2018-10-03 13:27:49.214553	2018-10-03 13:27:49.214553	2017
79	grayscale photo of woman wearing monokini on body of water	Stefano Zocca	A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.	https://images.unsplash.com/photo-1518859003798-1d5d342165a5?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=c2c676bd186fa644d8dc1089b5556cc3	2018-10-03 13:27:49.218212	2018-10-03 13:27:49.218212	2018
80	grayscale photography of empty stair	Sven Read	A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.	https://images.unsplash.com/photo-1523287714700-e9574dd1ce0e?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=54947511ec96c46cd296fdd6aed5fb2b	2018-10-03 13:27:49.221696	2018-10-03 13:27:49.221696	2018
81	Untitled	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537523399442-b431e9f3c586?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2fb9ba73b108c43d44a279c0335335c1	2018-10-03 13:27:49.224847	2018-10-03 13:27:49.224847	2018
82	Untitled	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537526265105-8a4b601d27af?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=be31c2fccd0c9fbe2a219d84422e71a9	2018-10-03 13:27:49.228002	2018-10-03 13:27:49.228002	2018
83	tribal man with mask	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537528563841-38fd59ec80bb?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=5c1a9df3a54d0ccc0d542ddbc79204e0	2018-10-03 13:27:49.231278	2018-10-03 13:27:49.231278	2018
84	Native American poster	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537528922527-806f6f318e3f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=636190eedf99a4d74d92661ef7b0b148	2018-10-03 13:27:49.234301	2018-10-03 13:27:49.234301	2018
85	Untitled	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537529842694-9cde18eca91d?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=b99b8aa06fb1928662ef4117f20a6734	2018-10-03 13:27:49.237587	2018-10-03 13:27:49.237587	2018
86	Untitled	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537530163033-ae4271441fb7?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=904c316ea7cbe8ad58e3ece8bd036159	2018-10-03 13:27:49.241116	2018-10-03 13:27:49.241116	2018
87	Untitled	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537530360953-3b8b369e01fe?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=32e9632d786e2666dc932e9db216c63d	2018-10-03 13:27:49.245946	2018-10-03 13:27:49.245946	2018
88	Untitled	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537530290513-1644669d51eb?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=218d61d965eaf53161d6cbea14abff1e	2018-10-03 13:27:49.249628	2018-10-03 13:27:49.249628	2018
89	Untitled	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537532194387-b58d36b54095?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=9028d5022e1e9cef65581e6a202a2dd4	2018-10-03 13:27:49.253506	2018-10-03 13:27:49.253506	2018
90	Untitled	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537532113570-1eb0f6344dbc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=afd3edfabd1c2a6e9fc7e964e9d0daca	2018-10-03 13:27:49.256826	2018-10-03 13:27:49.256826	2018
91	Untitled	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537532051625-c0468e17a4c5?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=8f454ed33e30ad84a28efe2280aa68eb	2018-10-03 13:27:49.259638	2018-10-03 13:27:49.259638	2018
92	man with paint on face	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537528250557-5638e2265272?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=81dd6293ffe52b39cc59d639ad5bc2da	2018-10-03 13:27:49.262806	2018-10-03 13:27:49.262806	2018
93	selective focus photography of girl while smiling	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537528323192-7ac79aefec73?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=213828158f01ad130a611b8afb503ed3	2018-10-03 13:27:49.265877	2018-10-03 13:27:49.265877	2018
94	shallow focus photo of man smoking	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537528850105-ce4558948b68?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=27d6707b211aa1442bd9d2d8a1071627	2018-10-03 13:27:49.268922	2018-10-03 13:27:49.268922	2018
95	boy wearing gray hoodie	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537529091814-3853f1e579dc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=da1c3f178d60b0e2a432525c3170ecd4	2018-10-03 13:27:49.27211	2018-10-03 13:27:49.27211	2018
96	man wearing hat	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1537529150690-c1ca260001ce?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=84b0174cc2c7767c94062dce4d09ae3f	2018-10-03 13:27:49.276122	2018-10-03 13:27:49.276122	2018
97	three person beside assorted foods	Jessica To'oto'o	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1529335934975-2e2114d38406?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=317d981734f89a80cb9c7f4c062d492a	2018-10-03 13:27:49.280199	2018-10-03 13:27:49.280199	2018
98	man wearing orange turban	davide ragusa	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1523827449357-10a2882155b6?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=fb5b11137cdade240bb9a7fa6bf7bb35	2018-10-03 13:27:49.283989	2018-10-03 13:27:49.283989	2018
99	group of children nearby house	Nischal Masand	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1495983239379-7f250e210f10?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=a8e6754ac988308b7db53c6ea2d59544	2018-10-03 13:27:49.287906	2018-10-03 13:27:49.287906	2017
100	man standing between two boys	Aleksandar Popovski	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1505993109925-9ef56be1a9b9?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=119bef06561648ebb48b4ba6477ddbda	2018-10-03 13:27:49.291383	2018-10-03 13:27:49.291383	2017
101	children smiling closeup photography	Annie Spratt	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1509099927777-1b8a87bc3b21?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=d76ad6684e1ffad3b5b576472b9b48cd	2018-10-03 13:27:49.295086	2018-10-03 13:27:49.295086	2017
102	shallow focus photo of man	Joshua Watson	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1510976308242-cab15dbb17da?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=40833d8bf38257c9735246a37f8e28b1	2018-10-03 13:27:49.298328	2018-10-03 13:27:49.298328	2017
103	smiling children gathering taken during daytime	Trevor Cole	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1506506637031-5e2cabd00f30?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=cf2102407a54beb14dd10ed8f4ea7f47	2018-10-03 13:27:49.301852	2018-10-03 13:27:49.301852	2017
104	girl wearing red tank top carrying baby	Vishnu Nishad	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1519193293811-9fc61be15ac9?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2f0aa90cd6a6bb65a88e2a53f8ebccbd	2018-10-03 13:27:49.305366	2018-10-03 13:27:49.305366	2018
105	children dancing traditional dance	Austin Nicomedez	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1511334089307-ff73e97dff22?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=61af35e6c363c3db1ae8af4dbd54cc76	2018-10-03 13:27:49.309875	2018-10-03 13:27:49.309875	2017
106	two boy riding on red step-through bicycle during daytime	Chelsea Aaron	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1500283281129-71909ce26948?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=1d99e5d6ace3feb96bb6b34e0d0e0b3b	2018-10-03 13:27:49.314084	2018-10-03 13:27:49.314084	2017
107	group of children standing on grass field during daytime	Siddhant Soni	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1505155485412-30b3a45080ec?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=e6c7f86c19022219fd43c823c2f9a163	2018-10-03 13:27:49.31811	2018-10-03 13:27:49.31811	2017
108	group of children photo	Amevi Wisdom	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1511524511424-6fd4e055e7ba?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=16986cef6fc21a730df147a89bdec008	2018-10-03 13:27:49.32164	2018-10-03 13:27:49.32164	2017
109	selective focus photography of woman holding long wallet	Alexander Andrews	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1520203126673-bf1d6fcebd2f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=249fc86e95e69eb3197c60aaa276bd1a	2018-10-03 13:27:49.325086	2018-10-03 13:27:49.325086	2018
110	man holding oranges	Mika	Images that capture the diversity of our world.	https://images.unsplash.com/photo-1520123704147-ed3a34036262?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=206fad3999d9d16fe6121c2a8bbb4ce5	2018-10-03 13:27:49.328769	2018-10-03 13:27:49.328769	2018
111	Untitled	Steve Halama	Night Lights	https://images.unsplash.com/photo-1504144945390-cb7aa99e8e6a?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=42920815690c1247ebba64e219067724	2018-10-03 13:27:49.331882	2018-10-03 13:27:49.331882	2017
112	Untitled	ARTHUR YAO	Night Lights	https://images.unsplash.com/photo-1504388664877-c025f9f197e9?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=73996e7e83f873295aa0649c8d76af7d	2018-10-03 13:27:49.335552	2018-10-03 13:27:49.335552	2017
113	time-lapse photography of highway road	Clément M.	Night Lights	https://images.unsplash.com/photo-1504350274292-13f3a028f36b?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=bb6ee7946d2fdc9a2d4fa65a1d50bd61	2018-10-03 13:27:49.338894	2018-10-03 13:27:49.338894	2017
114	black taxi in the street passing trough Harrods Mall during nighttime	Biel Morro	Night Lights	https://images.unsplash.com/photo-1504081957329-d6542dbe9de6?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=ec520ebef601ba06ccefae8d9da8c10a	2018-10-03 13:27:49.343006	2018-10-03 13:27:49.343006	2017
115	people gathering in Time Square, New York	Hanny Naibaho	Night Lights	https://images.unsplash.com/photo-1503788311183-fa3bf9c4bc32?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=89e6d56a84b00a6a8104592b068b3aa5	2018-10-03 13:27:49.34802	2018-10-03 13:27:49.34802	2017
116	city nights	Tommy	Night Lights	https://images.unsplash.com/photo-1503707663-64584849606b?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=49165a16713b885ff76ce1b3bfdd16cb	2018-10-03 13:27:49.35186	2018-10-03 13:27:49.35186	2017
117	gray pavement beside body of water at night time	Yannis Papanastasopoulos	Night Lights	https://images.unsplash.com/photo-1503705559672-5cbe9b762ead?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=bb1ceb7bd749d9c2fadb136ff7b5b736	2018-10-03 13:27:49.356157	2018-10-03 13:27:49.356157	2017
118	steel wool photography during nighttime	Jeremy Perkins	Night Lights	https://images.unsplash.com/photo-1502085026219-54ac00e06fd9?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2d014c2073c979276b97dec5558b709a	2018-10-03 13:27:49.359518	2018-10-03 13:27:49.359518	2017
119	high-angle photography of road at nighttime	Robin Pierre	Night Lights	https://images.unsplash.com/photo-1501290301209-7a0323622985?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2a916909dcfd9fc711913a7c7ea73b7d	2018-10-03 13:27:49.362632	2018-10-03 13:27:49.362632	2017
120	person standing on rock formation near body of water on steel wool photography	Steve Halama	Night Lights	https://images.unsplash.com/photo-1501399616969-b4edbe362118?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=9942d7774c97e15bc2ac1cb3db09d4c5	2018-10-03 13:27:49.365619	2018-10-03 13:27:49.365619	2017
121	time-lapse photography of man standing beside road and bridge during daytime	Ahsan Avi	Night Lights	https://images.unsplash.com/photo-1501281819477-eb42ada01d39?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=9d76a1de7391c54b2a56efa9b546ab73	2018-10-03 13:27:49.369141	2018-10-03 13:27:49.369141	2017
122	Untitled	JANNIK SELZ	Night Lights	https://images.unsplash.com/photo-1501274001734-dbc5625c2286?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=c31a1ac46ba644da3419f7b0c5d86b84	2018-10-03 13:27:49.372593	2018-10-03 13:27:49.372593	2017
123	long exposure photography of lights	Johannes Groll	Night Lights	https://images.unsplash.com/photo-1490781744427-4ed7163d1eaf?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=cdaa2c0e26bb3be005f07b93dcf730a4	2018-10-03 13:27:49.376572	2018-10-03 13:27:49.376572	2017
124	shallow focus photography of Taxi signage	Lexi Ruskell	Night Lights	https://images.unsplash.com/photo-1490650404312-a2175773bbf5?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=1f6122ec49b726660e96f882739ec69e	2018-10-03 13:27:49.380503	2018-10-03 13:27:49.380503	2017
125	black shadow with pink scratches digital wallpaper	Joshua Fuller	Night Lights	https://images.unsplash.com/photo-1490643152483-07b79cdd4db1?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2658c75021c81dd56595f26f2e11638a	2018-10-03 13:27:49.384173	2018-10-03 13:27:49.384173	2017
126	timelapes photography of car lights on road during night time	云 陌	Night Lights	https://images.unsplash.com/photo-1489843704329-b420d20a0b43?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=ac735ed45c512a62d9814ce70debb80f	2018-10-03 13:27:49.38728	2018-10-03 13:27:49.38728	2017
127	time-lapse photography of road	Alex Iby	Night Lights	https://images.unsplash.com/photo-1487951460320-9eefafc44f13?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=ed4be5923e671293397f2b7cec6c6e7c	2018-10-03 13:27:49.390543	2018-10-03 13:27:49.390543	2017
128	cars near buildings	Christian DeKnock	Night Lights	https://images.unsplash.com/photo-1487788270274-b0a7d600569f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=48518bd54b78a09dc3b8b0d6ec83c807	2018-10-03 13:27:49.393932	2018-10-03 13:27:49.393932	2017
129	city and road light photography	Daniel Chen	Night Lights	https://images.unsplash.com/photo-1487492547841-8504faad40cf?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=438976d165f149d15fc3cb946deff79d	2018-10-03 13:27:49.397345	2018-10-03 13:27:49.397345	2017
130	timelapse photography of road	CBX.	Night Lights	https://images.unsplash.com/photo-1486674776040-2aeda9228e76?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=96c5b1f61cde46917a444e3bc91cce1d	2018-10-03 13:27:49.400967	2018-10-03 13:27:49.400967	2017
131	aerial photography of buildings	Alex Shutin	Night Lights	https://images.unsplash.com/photo-1486607303850-bc051a4ffad4?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=90bc3d49088ca0c33df0ac7ffc1ee3bb	2018-10-03 13:27:49.404071	2018-10-03 13:27:49.404071	2017
132	photo of a lighted tree and stars	Brent Cox	Night Lights	https://images.unsplash.com/photo-1486010865012-2d2c1c266145?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=189b67004a05835fc57447b5ebb3c2b7	2018-10-03 13:27:49.407741	2018-10-03 13:27:49.407741	2017
133	brown rock formations under starry night	Brent Cox	Night Lights	https://images.unsplash.com/photo-1486010586814-abd061e90cf9?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=d7f4d9a3cc759aad9c6b95f738fb6a1c	2018-10-03 13:27:49.411718	2018-10-03 13:27:49.411718	2017
134	brown stone in the mountain during nighttime	Brent Cox	Night Lights	https://images.unsplash.com/photo-1486012345871-f47c8c407079?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=9347fb8607d1a30758fb5f8bee2564be	2018-10-03 13:27:49.415447	2018-10-03 13:27:49.415447	2017
135	time lapse photography of orange light	Benjamin Blättler	Night Lights	https://images.unsplash.com/photo-1485758152456-1e91810337e0?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=f9cc1aba35a2950007c9d312c779de4f	2018-10-03 13:27:49.419211	2018-10-03 13:27:49.419211	2017
136	Untitled	Annie Spratt	Night Lights	https://images.unsplash.com/photo-1485257135005-edc85ed96c0f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=423561e9290e58d46174d0503b6e4191	2018-10-03 13:27:49.422687	2018-10-03 13:27:49.422687	2017
137	silhouette of off-road car	Jonatan Pie	Night Lights	https://images.unsplash.com/photo-1484950763426-56b5bf172dbb?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=9b9ad31a9715ec4205d6c82d13bb95f9	2018-10-03 13:27:49.425744	2018-10-03 13:27:49.425744	2017
138	timelapse photography of cars in road during nighttime	Puk Patrick	Night Lights	https://images.unsplash.com/photo-1484669970465-b0c50d7f6964?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=f7f14446474f2c1f5386562e219c7bf8	2018-10-03 13:27:49.428806	2018-10-03 13:27:49.428806	2017
139	long exposure photography of red and white lights	PAUL SMITH	Night Lights	https://images.unsplash.com/photo-1484734278752-212d8c88a568?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=a6b01e79587c4fad208ba5f537132824	2018-10-03 13:27:49.432188	2018-10-03 13:27:49.432188	2017
140	black concrete road between post lamps under black sky at nighttime	Filip Mroz	Night Lights	https://images.unsplash.com/photo-1484536831193-ff11d0792d3d?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=539491edfee479d84ca05bce4c0f88d4	2018-10-03 13:27:49.435316	2018-10-03 13:27:49.435316	2017
141	Untitled	Wilfried Santer	Unsplash Animals	https://images.unsplash.com/photo-1537334980590-75a0ed763efe?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=12c4b29951bb4348137b72c8094d3067	2018-10-03 13:27:49.438437	2018-10-03 13:27:49.438437	2018
142	Untitled	Max Di Capua	Unsplash Animals	https://images.unsplash.com/photo-1537330937885-671c6d316721?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2f2fee55567b3e57c26412fe7605ab35	2018-10-03 13:27:49.44232	2018-10-03 13:27:49.44232	2018
143	selective focus photograph of giraffe	Kasper Rasmussen	Unsplash Animals	https://images.unsplash.com/photo-1526324501029-b242dd694c02?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=1a4f40ab4c724a247973368b01782ad2	2018-10-03 13:27:49.446261	2018-10-03 13:27:49.446261	2018
144	Untitled	Paweł Czerwiński	Unsplash Animals	https://images.unsplash.com/photo-1537126051263-80a6188f274a?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=e94079f9f7ad174c72b3d62457aa3995	2018-10-03 13:27:49.450688	2018-10-03 13:27:49.450688	2018
145	Untitled	Jeroen Wehkamp	Unsplash Animals	https://images.unsplash.com/photo-1537135086-ca6612c6550b?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=113a6b9157fdcf10d7f12126db3b4985	2018-10-03 13:27:49.454705	2018-10-03 13:27:49.454705	2018
146	Untitled	Егор Камелев	Unsplash Animals	https://images.unsplash.com/photo-1537056074944-f3761ac527d5?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=88be267d1c79e6aa7cdecabea0e2357c	2018-10-03 13:27:49.458215	2018-10-03 13:27:49.458215	2018
147	Untitled	David Clode	Unsplash Animals	https://images.unsplash.com/photo-1536797843593-ec2832810622?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=24a4c78b96dbde38ed0c75bb049cf11c	2018-10-03 13:27:49.461185	2018-10-03 13:27:49.461185	2018
148	Untitled	David Clode	Unsplash Animals	https://images.unsplash.com/photo-1536797162890-55dd8c7b38eb?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=78a7166a02e75e6a9864455efe35c6c0	2018-10-03 13:27:49.464196	2018-10-03 13:27:49.464196	2018
149	Untitled	Bryce olsen	Unsplash Animals	https://images.unsplash.com/photo-1536766124229-31a2f84a15e4?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=09e3e5c7bdfd3b739300a922f7f38a13	2018-10-03 13:27:49.467335	2018-10-03 13:27:49.467335	2018
150	Untitled	David Clode	Unsplash Animals	https://images.unsplash.com/photo-1536798227072-f571dcefdef1?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=3e3469eaf212bfa42cb0a16325a4da12	2018-10-03 13:27:49.471138	2018-10-03 13:27:49.471138	2018
151	selective focus photography of green snake	Jason Leung	Unsplash Animals	https://images.unsplash.com/photo-1535313072129-1d68ee8d6a24?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2c1ed965cfe5263f20495f3a6b782162	2018-10-03 13:27:49.475601	2018-10-03 13:27:49.475601	2018
152	Untitled	David Clode	Unsplash Animals	https://images.unsplash.com/photo-1536540290748-6dc6fa89adda?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=4cb24155cd2e00ec5376d1e7fd6cdd33	2018-10-03 13:27:49.479786	2018-10-03 13:27:49.479786	2018
153	Untitled	Todd Trapani	Unsplash Animals	https://images.unsplash.com/photo-1536626733238-1bb1f7782c87?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=7fc67cb9fa281dbac71a28e6bec80126	2018-10-03 13:27:49.483749	2018-10-03 13:27:49.483749	2018
154	photo of lion crawling on green grass at daytime	David Clode	Unsplash Animals	https://images.unsplash.com/photo-1536539021558-1c10ce35dc23?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=12f8497a17023f5d1b3101850e348805	2018-10-03 13:27:49.487477	2018-10-03 13:27:49.487477	2018
155	Untitled	Nandini Khandelwal	Unsplash Animals	https://images.unsplash.com/photo-1519358475365-d328fccb5e8b?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=a7a78a1c57a7d99d26f977ca6b499e38	2018-10-03 13:27:49.490677	2018-10-03 13:27:49.490677	2018
156	brown horse	Melinda Derksen	Unsplash Animals	https://images.unsplash.com/photo-1536141442894-ed5987d76d05?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=f6dd0699dd95fa2cbc655af4cf357229	2018-10-03 13:27:49.493774	2018-10-03 13:27:49.493774	2018
157	Untitled	Laura Cros	Unsplash Animals	https://images.unsplash.com/photo-1536146021566-627ce3c4d813?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2de7258f3383a8dd320e0c4ca536a4bf	2018-10-03 13:27:49.49678	2018-10-03 13:27:49.49678	2018
158	Untitled	Rob Wingate	Unsplash Animals	https://images.unsplash.com/photo-1505596611004-48ec7de47b02?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=30f19a71d132ab394163f273b35d9e59	2018-10-03 13:27:49.499895	2018-10-03 13:27:49.499895	2017
159	Untitled	Rob Wingate	Unsplash Animals	https://images.unsplash.com/photo-1527427909435-5d50a6a9d4e0?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=0fa3d101506fbaec0c243f2b3dcaf137	2018-10-03 13:27:49.503524	2018-10-03 13:27:49.503524	2018
160	elephant on grass during daytime	David Clode	Unsplash Animals	https://images.unsplash.com/photo-1535941339077-2dd1c7963098?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=ff68b538ab71ef413f873d2e1beadb86	2018-10-03 13:27:49.507266	2018-10-03 13:27:49.507266	2018
161	green and gray bird standing on rock	Tomas Sobek	Unsplash Animals	https://images.unsplash.com/photo-1482046187924-50f27dc64333?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=a97226bea4cbc102d9f24ed0abd64142	2018-10-03 13:27:49.51149	2018-10-03 13:27:49.51149	2016
162	Untitled	Tomas Sobek	Unsplash Animals	https://images.unsplash.com/photo-1482049633748-8784d066dabe?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=2e5e3707bec3ff68c55d1c6fc4c71390	2018-10-03 13:27:49.5154	2018-10-03 13:27:49.5154	2016
163	Untitled	Tomas Sobek	Unsplash Animals	https://images.unsplash.com/photo-1482130067294-b3c7015fb532?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=3bbc5a6e941644e74048e6dc9a65d89d	2018-10-03 13:27:49.518677	2018-10-03 13:27:49.518677	2016
164	Untitled	Tomas Sobek	Unsplash Animals	https://images.unsplash.com/photo-1485851930460-ba25600adb42?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=37c998959e149ed69b0e337220a48ba3	2018-10-03 13:27:49.522414	2018-10-03 13:27:49.522414	2017
165	Untitled	Tomas Sobek	Unsplash Animals	https://images.unsplash.com/photo-1471245470419-de1b05cc4cee?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=b711dac6510a74da2af36431a86210be	2018-10-03 13:27:49.525623	2018-10-03 13:27:49.525623	2016
166	selective focus photography of white goose	Fábio Scaletta	Unsplash Animals	https://images.unsplash.com/photo-1535586315911-7fafb6a273f7?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=72ee170f52b35d5369948f9446892888	2018-10-03 13:27:49.529028	2018-10-03 13:27:49.529028	2018
167	clown fish in shallow focus photography	Rachel Hisko	Unsplash Animals	https://images.unsplash.com/photo-1535591273668-578e31182c4f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=6fbee0f4fcb1ed8a100c3c8598147faf	2018-10-03 13:27:49.532108	2018-10-03 13:27:49.532108	2018
168	white and black cattle on empty field under cloudy sky	Daniel Leone	Unsplash Animals	https://images.unsplash.com/photo-1535376311202-25673871a926?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=9c65a68fbf0190fb8989cb9235b99b67	2018-10-03 13:27:49.535089	2018-10-03 13:27:49.535089	2018
169	orange fox	Rishabh Pandoh	Unsplash Animals	https://images.unsplash.com/photo-1535393857990-03242fe70580?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=766c5bef30a14e362d0104c0a2547b8a	2018-10-03 13:27:49.538447	2018-10-03 13:27:49.538447	2018
170	Untitled	Cassie Matias	Unsplash Animals	https://images.unsplash.com/photo-1493328802296-81f23f63ac24?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM3NTMxfQ&s=9bae71c29a4301c67839fdefabd0111b	2018-10-03 13:27:49.542119	2018-10-03 13:27:49.542119	2017
\.


--
-- Data for Name: captions; Type: TABLE DATA; Schema: public; Owner: ritz
--

COPY public.captions (id, text, gallery_wall_id, created_at, updated_at, x_position, y_position, width, height, rendered, title) FROM stdin;
\.


--
-- Data for Name: gallery_walls; Type: TABLE DATA; Schema: public; Owner: ritz
--

COPY public.gallery_walls (id, user_id, created_at, updated_at) FROM stdin;
9	4	2018-10-04 21:24:02.71877	2018-10-04 21:24:02.71877
10	4	2018-10-04 21:24:02.729189	2018-10-04 21:24:02.729189
11	4	2018-10-04 21:24:02.738637	2018-10-04 21:24:02.738637
12	5	2018-10-05 08:48:15.039625	2018-10-05 08:48:15.039625
13	5	2018-10-05 08:48:15.048069	2018-10-05 08:48:15.048069
14	5	2018-10-05 08:48:15.055424	2018-10-05 08:48:15.055424
15	6	2018-10-05 09:04:24.480636	2018-10-05 09:04:24.480636
16	6	2018-10-05 09:04:24.487275	2018-10-05 09:04:24.487275
17	6	2018-10-05 09:04:24.502173	2018-10-05 09:04:24.502173
18	7	2018-10-05 09:12:33.388786	2018-10-05 09:12:33.388786
19	7	2018-10-05 09:12:33.396735	2018-10-05 09:12:33.396735
20	7	2018-10-05 09:12:33.404098	2018-10-05 09:12:33.404098
21	8	2018-10-05 09:14:11.796078	2018-10-05 09:14:11.796078
22	8	2018-10-05 09:14:11.804669	2018-10-05 09:14:11.804669
23	8	2018-10-05 09:14:11.81234	2018-10-05 09:14:11.81234
24	9	2018-10-05 09:15:39.608313	2018-10-05 09:15:39.608313
25	9	2018-10-05 09:15:39.615419	2018-10-05 09:15:39.615419
26	9	2018-10-05 09:15:39.622418	2018-10-05 09:15:39.622418
27	10	2018-10-05 09:26:39.207047	2018-10-05 09:26:39.207047
28	10	2018-10-05 09:26:39.216687	2018-10-05 09:26:39.216687
29	10	2018-10-05 09:26:39.22407	2018-10-05 09:26:39.22407
30	11	2018-10-05 09:28:54.423266	2018-10-05 09:28:54.423266
31	11	2018-10-05 09:28:54.430591	2018-10-05 09:28:54.430591
32	11	2018-10-05 09:28:54.437065	2018-10-05 09:28:54.437065
33	12	2018-10-05 13:25:17.87139	2018-10-05 13:25:17.87139
34	12	2018-10-05 13:25:17.881668	2018-10-05 13:25:17.881668
35	12	2018-10-05 13:25:17.889048	2018-10-05 13:25:17.889048
36	13	2018-10-05 13:28:24.70861	2018-10-05 13:28:24.70861
37	13	2018-10-05 13:28:24.717689	2018-10-05 13:28:24.717689
38	13	2018-10-05 13:28:24.724304	2018-10-05 13:28:24.724304
39	14	2018-10-05 13:38:48.023634	2018-10-05 13:38:48.023634
40	14	2018-10-05 13:38:48.030324	2018-10-05 13:38:48.030324
41	14	2018-10-05 13:38:48.038025	2018-10-05 13:38:48.038025
42	15	2018-10-05 13:54:29.592766	2018-10-05 13:54:29.592766
43	15	2018-10-05 13:54:29.599226	2018-10-05 13:54:29.599226
44	15	2018-10-05 13:54:29.608291	2018-10-05 13:54:29.608291
45	16	2018-10-05 14:09:46.568586	2018-10-05 14:09:46.568586
46	16	2018-10-05 14:09:46.576742	2018-10-05 14:09:46.576742
47	16	2018-10-05 14:09:46.583955	2018-10-05 14:09:46.583955
48	17	2018-10-05 14:15:16.810607	2018-10-05 14:15:16.810607
49	17	2018-10-05 14:15:16.818249	2018-10-05 14:15:16.818249
50	17	2018-10-05 14:15:16.829756	2018-10-05 14:15:16.829756
51	18	2018-11-07 17:33:32.801685	2018-11-07 17:33:32.801685
52	18	2018-11-07 17:33:32.961127	2018-11-07 17:33:32.961127
53	18	2018-11-07 17:33:33.11506	2018-11-07 17:33:33.11506
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ritz
--

COPY public.schema_migrations (version) FROM stdin;
20180927094707
20180927094824
20180927094939
20180927130932
20181002091913
20181003121652
20181003121713
20181003121926
20181003131949
20181003132027
20181004102648
20181005075008
20181005080016
\.


--
-- Data for Name: titles; Type: TABLE DATA; Schema: public; Owner: ritz
--

COPY public.titles (id, text, gallery_wall_id, created_at, updated_at, x_position, y_position, width, height) FROM stdin;
1	hey there	1	2018-10-03 13:22:07.020772	2018-10-03 13:22:07.020772	43	523	\N	\N
\.


--
-- Data for Name: user_selections; Type: TABLE DATA; Schema: public; Owner: ritz
--

COPY public.user_selections (id, gallery_wall_id, artwork_id, x_position, y_position, created_at, updated_at, width, height) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ritz
--

COPY public.users (id, name, email, created_at, updated_at, password_digest) FROM stdin;
\.


--
-- Name: artworks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ritz
--

SELECT pg_catalog.setval('public.artworks_id_seq', 170, true);


--
-- Name: captions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ritz
--

SELECT pg_catalog.setval('public.captions_id_seq', 50, true);


--
-- Name: gallery_walls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ritz
--

SELECT pg_catalog.setval('public.gallery_walls_id_seq', 53, true);


--
-- Name: titles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ritz
--

SELECT pg_catalog.setval('public.titles_id_seq', 1, true);


--
-- Name: user_selections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ritz
--

SELECT pg_catalog.setval('public.user_selections_id_seq', 304, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ritz
--

SELECT pg_catalog.setval('public.users_id_seq', 18, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: artworks artworks_pkey; Type: CONSTRAINT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.artworks
    ADD CONSTRAINT artworks_pkey PRIMARY KEY (id);


--
-- Name: captions captions_pkey; Type: CONSTRAINT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.captions
    ADD CONSTRAINT captions_pkey PRIMARY KEY (id);


--
-- Name: gallery_walls gallery_walls_pkey; Type: CONSTRAINT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.gallery_walls
    ADD CONSTRAINT gallery_walls_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (id);


--
-- Name: user_selections user_selections_pkey; Type: CONSTRAINT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.user_selections
    ADD CONSTRAINT user_selections_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: ritz
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_captions_on_gallery_wall_id; Type: INDEX; Schema: public; Owner: ritz
--

CREATE INDEX index_captions_on_gallery_wall_id ON public.captions USING btree (gallery_wall_id);


--
-- Name: index_gallery_walls_on_user_id; Type: INDEX; Schema: public; Owner: ritz
--

CREATE INDEX index_gallery_walls_on_user_id ON public.gallery_walls USING btree (user_id);


--
-- Name: index_titles_on_gallery_wall_id; Type: INDEX; Schema: public; Owner: ritz
--

CREATE INDEX index_titles_on_gallery_wall_id ON public.titles USING btree (gallery_wall_id);


--
-- Name: index_user_selections_on_artwork_id; Type: INDEX; Schema: public; Owner: ritz
--

CREATE INDEX index_user_selections_on_artwork_id ON public.user_selections USING btree (artwork_id);


--
-- Name: index_user_selections_on_gallery_wall_id; Type: INDEX; Schema: public; Owner: ritz
--

CREATE INDEX index_user_selections_on_gallery_wall_id ON public.user_selections USING btree (gallery_wall_id);


--
-- PostgreSQL database dump complete
--

