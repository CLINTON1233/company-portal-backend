--
-- PostgreSQL database dump
--

\restrict ZjmP4rxbDlXMQnrCwf2PypCVeDaOSOmDazEeskjtP1He2I4SIU7qvod1oUD9rE4

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-12-11 07:38:34

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 219 (class 1259 OID 49623)
-- Name: applications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applications (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    "fullName" character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    icon character varying(50) NOT NULL,
    "categoryId" integer NOT NULL,
    status integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.applications OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 49636)
-- Name: applications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.applications_id_seq OWNER TO postgres;

--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 220
-- Name: applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applications_id_seq OWNED BY public.applications.id;


--
-- TOC entry 221 (class 1259 OID 49637)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(255)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 49642)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 222
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 223 (class 1259 OID 49643)
-- Name: icons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.icons (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    icon_key character varying(100) NOT NULL,
    category character varying(50),
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.icons OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 49651)
-- Name: icons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.icons_id_seq OWNER TO postgres;

--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 224
-- Name: icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.icons_id_seq OWNED BY public.icons.id;


--
-- TOC entry 225 (class 1259 OID 49652)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    nama character varying(100),
    email character varying NOT NULL,
    password character varying NOT NULL,
    badge character varying,
    telp character varying,
    departemen character varying,
    role character varying DEFAULT 'admin'::character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 49664)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 226
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- TOC entry 4871 (class 2604 OID 49665)
-- Name: applications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applications ALTER COLUMN id SET DEFAULT nextval('public.applications_id_seq'::regclass);


--
-- TOC entry 4873 (class 2604 OID 49666)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 4874 (class 2604 OID 49667)
-- Name: icons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.icons ALTER COLUMN id SET DEFAULT nextval('public.icons_id_seq'::regclass);


--
-- TOC entry 4876 (class 2604 OID 49668)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 5039 (class 0 OID 49623)
-- Dependencies: 219
-- Data for Name: applications; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.applications VALUES (2, 'WLC Controllers', 'WLC LAN Controllers', 'https://10.5.252.64:8443', 'Wifi', 1, 1);
INSERT INTO public.applications VALUES (6, 'Network Monitoring', 'Network Dashboard', 'https://myinternship.id/index.php', 'Network', 1, 0);
INSERT INTO public.applications VALUES (4, 'SMOE Portal', 'SMOE Batam Portal', 'https://www.smoebatam.com/smoe_portal/home', 'Globe', 41, 0);
INSERT INTO public.applications VALUES (5, 'Documentation Drive', 'Document Storage', 'https://drive.google.com/drive/u/0/my-drive', 'Folder', 11, 0);
INSERT INTO public.applications VALUES (7, 'IPAM', 'IP Address Management', 'https://10.5.252.156', 'Globe', 1, 1);
INSERT INTO public.applications VALUES (3, 'Drive', 'Google Drive Shared Folder', 'https://drive.google.com/drive/folders/1MB165zrlJnRILudeJrh5HfMlRglJcF1G', 'File', 11, 0);
INSERT INTO public.applications VALUES (1, 'VmWare', 'vSphere & VMware Management', 'https://10.5.252.101', 'Monitor', 1, 1);
INSERT INTO public.applications VALUES (8, 'WebSSH `', 'SSH Secure Terminal', 'http://localhost:3001/', 'Code', 12, 0);
INSERT INTO public.applications VALUES (9, 'WebSSH', 'Secure Shell Terminal', 'http://localhost:3001/', 'Code', 12, 1);
INSERT INTO public.applications VALUES (10, 'Seatrium', 'Seatrium', 'https://www.seatrium.com/', 'Activity', 15, 1);
INSERT INTO public.applications VALUES (11, 'SmoeApps', 'Seatrium Applications Dashboard', 'http://localhost:3002', 'Package', 41, 1);
INSERT INTO public.applications VALUES (12, 'InfraDash', 'InfraDash', 'localhost:3000', 'AlertCircle', 12, 1);


--
-- TOC entry 5041 (class 0 OID 49637)
-- Dependencies: 221
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories VALUES (1, 'Network', 'Network infrastructure and connectivity applications');
INSERT INTO public.categories VALUES (2, 'Server', 'Server management and monitoring applications');
INSERT INTO public.categories VALUES (3, 'Cloud', 'Cloud services and platforms');
INSERT INTO public.categories VALUES (4, 'Security', 'Security and access management applications');
INSERT INTO public.categories VALUES (5, 'Database', 'Database management systems');
INSERT INTO public.categories VALUES (6, 'Monitoring', 'System monitoring and alerting tools');
INSERT INTO public.categories VALUES (7, 'Storage', 'Storage and backup solutions');
INSERT INTO public.categories VALUES (8, 'Virtualization', 'Virtualization and container platforms');
INSERT INTO public.categories VALUES (9, 'Collaboration', 'Collaboration and communication tools');
INSERT INTO public.categories VALUES (10, 'Development', 'Development and DevOps tools');
INSERT INTO public.categories VALUES (11, 'Documentation', 'Documentation and knowledge base systems');
INSERT INTO public.categories VALUES (12, 'Automation', 'Automation and orchestration tools');
INSERT INTO public.categories VALUES (13, 'ITSM', 'IT Service Management applications');
INSERT INTO public.categories VALUES (14, 'Backup', 'Backup and recovery solutions');
INSERT INTO public.categories VALUES (15, 'Compliance', 'Compliance and governance tools');
INSERT INTO public.categories VALUES (16, 'Reporting', 'Reporting and analytics applications');
INSERT INTO public.categories VALUES (17, 'API Management', 'API management and gateway services');
INSERT INTO public.categories VALUES (18, 'Identity Management', 'Identity and access management systems');
INSERT INTO public.categories VALUES (19, 'Network Security', 'Network security appliances and tools');
INSERT INTO public.categories VALUES (20, 'Container Platform', 'Container orchestration platforms');
INSERT INTO public.categories VALUES (41, 'Applications', 'General application systems and software used in IT operations');
INSERT INTO public.categories VALUES (42, 'Email System', 'Corporate email and messaging systems');
INSERT INTO public.categories VALUES (43, 'Asset Management', 'IT asset and inventory management systems');
INSERT INTO public.categories VALUES (44, 'Endpoint Management', 'Management tools for laptops, desktops, and mobile devices');
INSERT INTO public.categories VALUES (45, 'Patch Management', 'Automated software update and patching systems');
INSERT INTO public.categories VALUES (46, 'Firewall', 'Firewall and perimeter security appliances');
INSERT INTO public.categories VALUES (47, 'VPN Services', 'Virtual private network solutions');
INSERT INTO public.categories VALUES (48, 'Load Balancer', 'Traffic distribution and load balancing technologies');
INSERT INTO public.categories VALUES (49, 'DNS & DHCP', 'DNS and DHCP server systems');
INSERT INTO public.categories VALUES (50, 'Logging', 'Centralized logging and log analysis tools');
INSERT INTO public.categories VALUES (51, 'Observability', 'End-to-end observability platforms');
INSERT INTO public.categories VALUES (53, 'Messaging Queue', 'Messaging queue and event streaming systems');
INSERT INTO public.categories VALUES (54, 'Data Warehouse', 'Enterprise data warehouse platforms');
INSERT INTO public.categories VALUES (55, 'ETL / Data Pipeline', 'Data integration and ETL pipeline tools');
INSERT INTO public.categories VALUES (56, 'Configuration Management', 'Tools for managing configuration and infrastructure state');
INSERT INTO public.categories VALUES (57, 'SaaS Management', 'Management of software-as-a-service applications');
INSERT INTO public.categories VALUES (58, 'Mobile Device Management', 'MDM tools for enterprise mobile devices');
INSERT INTO public.categories VALUES (59, 'Web Hosting', 'Web hosting and web server platforms');
INSERT INTO public.categories VALUES (60, 'API Gateway', 'Gateways for managing API traffic and routing');
INSERT INTO public.categories VALUES (61, 'Business Intelligence', 'BI and dashboarding tools');
INSERT INTO public.categories VALUES (62, 'Helpdesk', 'Helpdesk and ticketing systems');
INSERT INTO public.categories VALUES (63, 'Project Management', 'Project collaboration and task management tools');
INSERT INTO public.categories VALUES (52, 'AI Tools & Software', 'Artificial intelligence and machine learning platforms');


--
-- TOC entry 5043 (class 0 OID 49643)
-- Dependencies: 223
-- Data for Name: icons; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.icons VALUES (1, 'Activity', 'Activity', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (2, 'Airplay', 'Airplay', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (3, 'AlertCircle', 'AlertCircle', 'feedback', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (4, 'AlertTriangle', 'AlertTriangle', 'feedback', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (5, 'AlignCenter', 'AlignCenter', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (6, 'AlignJustify', 'AlignJustify', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (7, 'AlignLeft', 'AlignLeft', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (8, 'AlignRight', 'AlignRight', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (9, 'Anchor', 'Anchor', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (10, 'Aperture', 'Aperture', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (11, 'Archive', 'Archive', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (12, 'ArrowDown', 'ArrowDown', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (13, 'ArrowDownCircle', 'ArrowDownCircle', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (14, 'ArrowDownLeft', 'ArrowDownLeft', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (15, 'ArrowDownRight', 'ArrowDownRight', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (16, 'ArrowLeft', 'ArrowLeft', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (17, 'ArrowLeftCircle', 'ArrowLeftCircle', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (18, 'ArrowRight', 'ArrowRight', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (19, 'ArrowRightCircle', 'ArrowRightCircle', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (20, 'ArrowUp', 'ArrowUp', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (21, 'ArrowUpCircle', 'ArrowUpCircle', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (22, 'ArrowUpLeft', 'ArrowUpLeft', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (23, 'ArrowUpRight', 'ArrowUpRight', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (24, 'AtSign', 'AtSign', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (25, 'Award', 'Award', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (26, 'BarChart', 'BarChart', 'charts', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (27, 'BarChart2', 'BarChart2', 'charts', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (28, 'Battery', 'Battery', 'devices', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (29, 'BatteryCharging', 'BatteryCharging', 'devices', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (30, 'Bell', 'Bell', 'notifications', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (31, 'BellOff', 'BellOff', 'notifications', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (32, 'Bluetooth', 'Bluetooth', 'devices', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (33, 'Bold', 'Bold', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (34, 'Book', 'Book', 'education', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (35, 'BookOpen', 'BookOpen', 'education', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (36, 'Bookmark', 'Bookmark', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (37, 'Box', 'Box', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (38, 'Briefcase', 'Briefcase', 'business', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (39, 'Calendar', 'Calendar', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (40, 'Camera', 'Camera', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (41, 'CameraOff', 'CameraOff', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (42, 'Cast', 'Cast', 'devices', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (43, 'Check', 'Check', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (44, 'CheckCircle', 'CheckCircle', 'feedback', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (45, 'CheckSquare', 'CheckSquare', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (46, 'ChevronDown', 'ChevronDown', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (47, 'ChevronLeft', 'ChevronLeft', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (48, 'ChevronRight', 'ChevronRight', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (49, 'ChevronUp', 'ChevronUp', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (50, 'ChevronsDown', 'ChevronsDown', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (51, 'ChevronsLeft', 'ChevronsLeft', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (52, 'ChevronsRight', 'ChevronsRight', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (53, 'ChevronsUp', 'ChevronsUp', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (54, 'Chrome', 'Chrome', 'browsers', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (55, 'Circle', 'Circle', 'shapes', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (56, 'Clipboard', 'Clipboard', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (57, 'Clock', 'Clock', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (58, 'Cloud', 'Cloud', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (59, 'CloudDrizzle', 'CloudDrizzle', 'weather', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (60, 'CloudLightning', 'CloudLightning', 'weather', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (61, 'CloudOff', 'CloudOff', 'weather', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (62, 'CloudRain', 'CloudRain', 'weather', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (63, 'CloudSnow', 'CloudSnow', 'weather', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (64, 'Code', 'Code', 'development', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (65, 'Codepen', 'Codepen', 'development', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (66, 'Codesandbox', 'Codesandbox', 'development', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (67, 'Coffee', 'Coffee', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (68, 'Columns', 'Columns', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (69, 'Command', 'Command', 'keyboard', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (70, 'Compass', 'Compass', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (71, 'Copy', 'Copy', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (72, 'CornerDownLeft', 'CornerDownLeft', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (73, 'CornerDownRight', 'CornerDownRight', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (74, 'CornerLeftDown', 'CornerLeftDown', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (75, 'CornerLeftUp', 'CornerLeftUp', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (76, 'CornerRightDown', 'CornerRightDown', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (77, 'CornerRightUp', 'CornerRightUp', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (78, 'CornerUpLeft', 'CornerUpLeft', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (79, 'CornerUpRight', 'CornerUpRight', 'arrows', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (80, 'Cpu', 'Cpu', 'devices', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (81, 'CreditCard', 'CreditCard', 'finance', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (82, 'Crop', 'Crop', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (83, 'Crosshair', 'Crosshair', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (84, 'Database', 'Database', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (85, 'Delete', 'Delete', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (86, 'Disc', 'Disc', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (87, 'Divide', 'Divide', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (88, 'DivideCircle', 'DivideCircle', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (89, 'DivideSquare', 'DivideSquare', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (90, 'DollarSign', 'DollarSign', 'finance', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (91, 'Download', 'Download', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (92, 'DownloadCloud', 'DownloadCloud', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (93, 'Dribbble', 'Dribbble', 'social', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (94, 'Droplet', 'Droplet', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (95, 'Edit', 'Edit', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (96, 'Edit2', 'Edit2', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (97, 'Edit3', 'Edit3', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (98, 'ExternalLink', 'ExternalLink', 'navigation', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (99, 'Eye', 'Eye', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (100, 'EyeOff', 'EyeOff', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (101, 'Facebook', 'Facebook', 'social', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (102, 'FastForward', 'FastForward', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (103, 'Feather', 'Feather', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (104, 'Figma', 'Figma', 'design', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (105, 'File', 'File', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (106, 'FileMinus', 'FileMinus', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (107, 'FilePlus', 'FilePlus', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (108, 'FileText', 'FileText', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (109, 'Film', 'Film', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (110, 'Filter', 'Filter', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (111, 'Flag', 'Flag', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (112, 'Folder', 'Folder', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (113, 'FolderMinus', 'FolderMinus', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (114, 'FolderPlus', 'FolderPlus', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (115, 'Framer', 'Framer', 'design', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (116, 'Frown', 'Frown', 'feedback', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (117, 'Gift', 'Gift', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (118, 'GitBranch', 'GitBranch', 'development', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (119, 'GitCommit', 'GitCommit', 'development', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (120, 'GitMerge', 'GitMerge', 'development', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (121, 'GitPullRequest', 'GitPullRequest', 'development', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (122, 'Github', 'Github', 'social', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (123, 'Gitlab', 'Gitlab', 'development', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (124, 'Globe', 'Globe', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (125, 'Grid', 'Grid', 'layout', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (126, 'HardDrive', 'HardDrive', 'devices', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (127, 'Hash', 'Hash', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (128, 'Headphones', 'Headphones', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (129, 'Heart', 'Heart', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (130, 'HelpCircle', 'HelpCircle', 'feedback', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (131, 'Hexagon', 'Hexagon', 'shapes', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (132, 'Home', 'Home', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (133, 'Image', 'Image', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (134, 'Inbox', 'Inbox', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (135, 'Info', 'Info', 'feedback', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (136, 'Instagram', 'Instagram', 'social', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (137, 'Italic', 'Italic', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (138, 'Key', 'Key', 'security', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (139, 'Layers', 'Layers', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (140, 'Layout', 'Layout', 'layout', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (141, 'LifeBuoy', 'LifeBuoy', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (142, 'Link', 'Link', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (143, 'Link2', 'Link2', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (144, 'Linkedin', 'Linkedin', 'social', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (145, 'List', 'List', 'editor', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (146, 'Loader', 'Loader', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (147, 'Lock', 'Lock', 'security', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (148, 'LogIn', 'LogIn', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (149, 'LogOut', 'LogOut', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (150, 'Mail', 'Mail', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (151, 'Map', 'Map', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (152, 'MapPin', 'MapPin', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (153, 'Maximize', 'Maximize', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (154, 'Maximize2', 'Maximize2', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (155, 'Meh', 'Meh', 'feedback', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (156, 'Menu', 'Menu', 'navigation', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (157, 'MessageCircle', 'MessageCircle', 'communication', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (158, 'MessageSquare', 'MessageSquare', 'communication', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (159, 'Mic', 'Mic', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (160, 'MicOff', 'MicOff', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (161, 'Minimize', 'Minimize', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (162, 'Minimize2', 'Minimize2', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (163, 'Minus', 'Minus', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (164, 'MinusCircle', 'MinusCircle', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (165, 'MinusSquare', 'MinusSquare', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (166, 'Monitor', 'Monitor', 'devices', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (167, 'Moon', 'Moon', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (168, 'MoreHorizontal', 'MoreHorizontal', 'navigation', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (169, 'MoreVertical', 'MoreVertical', 'navigation', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (170, 'MousePointer', 'MousePointer', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (171, 'Move', 'Move', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (172, 'Music', 'Music', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (173, 'Navigation', 'Navigation', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (174, 'Navigation2', 'Navigation2', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (175, 'Octagon', 'Octagon', 'shapes', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (176, 'Package', 'Package', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (177, 'Paperclip', 'Paperclip', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (178, 'Pause', 'Pause', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (179, 'PauseCircle', 'PauseCircle', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (180, 'PenTool', 'PenTool', 'design', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (181, 'Percent', 'Percent', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (182, 'Phone', 'Phone', 'communication', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (183, 'PhoneCall', 'PhoneCall', 'communication', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (184, 'PhoneForwarded', 'PhoneForwarded', 'communication', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (185, 'PhoneIncoming', 'PhoneIncoming', 'communication', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (186, 'PhoneMissed', 'PhoneMissed', 'communication', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (187, 'PhoneOff', 'PhoneOff', 'communication', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (188, 'PhoneOutgoing', 'PhoneOutgoing', 'communication', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (189, 'PieChart', 'PieChart', 'charts', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (190, 'Play', 'Play', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (191, 'PlayCircle', 'PlayCircle', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (192, 'Plus', 'Plus', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (193, 'PlusCircle', 'PlusCircle', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (194, 'PlusSquare', 'PlusSquare', 'math', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (195, 'Pocket', 'Pocket', 'general', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (196, 'Power', 'Power', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (197, 'Printer', 'Printer', 'devices', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (198, 'Radio', 'Radio', 'devices', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (199, 'RefreshCw', 'RefreshCw', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (200, 'RefreshCcw', 'RefreshCcw', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (201, 'Repeat', 'Repeat', 'system', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (202, 'Rewind', 'Rewind', 'media', '2025-11-17 20:48:45.427132');
INSERT INTO public.icons VALUES (203, 'Laptop', 'Laptop', 'General', '2025-11-17 21:32:04.794737');
INSERT INTO public.icons VALUES (204, 'Fingerprint', 'Fingerprint', 'Security', '2025-11-17 21:32:04.854393');


--
-- TOC entry 5045 (class 0 OID 49652)
-- Dependencies: 225
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."user" VALUES (2, 'Ikhsan Kurniawan', 'ikhsan.kurniawan@seatrium.com', '$2b$10$KEzY6WZNPxDDQx8.BKOLe.WlPPsIIX21iAFdFlOUCuGhO5yRWdNEq', '10031059', '081372282668', 'IT Infrastructure', 'superadmin', '2025-11-17 21:03:17.910714');
INSERT INTO public."user" VALUES (3, 'Taufik', 'taufik.hidayat4@seatrium.com', '$2b$10$k/mefifnNs1JiLdxGkVLWuC1MGDMoSXhWGl27KigVbYAuS.KEoAwm', '102000', '082284360944', 'IT Infrastructure', 'superadmin', '2025-11-17 21:04:48.299111');
INSERT INTO public."user" VALUES (4, 'Yovan Sakti', 'yovan.sakti@seatrium.com', '$2b$10$4rmgqKrei9Oy1U0YOFxy6.30rKZ6KG5/Gx7JlBiNck0bF5AJUF14q', '10058875', '081218982570', 'IT Infrastructure', 'superadmin', '2025-11-17 21:08:59.406797');
INSERT INTO public."user" VALUES (5, 'Fery', 'fery@gmail.com', '$2b$10$m3yCaCAlDM7ETeVxI/0GcehgThIgCHvnVdjus6h0MvMT/entj26qO', '12344567', '08888912131', 'IT Infrastructure', 'admin', '2025-10-10 07:36:31.584341');
INSERT INTO public."user" VALUES (1, 'Clinton Alfaro', 'clintonalfaro664@gmail.com', '$2b$10$Dw3FR1Ddco9yVh6yJajygujycHhXSehGdz80JycniR5C3FmJ2lAN2', '9090223', '088270801123', 'IT Infrastructure', 'superadmin', '2025-11-17 20:58:17.537201');


--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 220
-- Name: applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applications_id_seq', 12, true);


--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 222
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 100, true);


--
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 224
-- Name: icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.icons_id_seq', 175, true);


--
-- TOC entry 5059 (class 0 OID 0)
-- Dependencies: 226
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 6, true);


--
-- TOC entry 4882 (class 2606 OID 49670)
-- Name: categories UQ_8b0be371d28245da6e4f4b61878; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "UQ_8b0be371d28245da6e4f4b61878" UNIQUE (name);


--
-- TOC entry 4888 (class 2606 OID 49672)
-- Name: user UQ_e12875dfb3b1d92d7d7c5377e22; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_e12875dfb3b1d92d7d7c5377e22" UNIQUE (email);


--
-- TOC entry 4880 (class 2606 OID 49674)
-- Name: applications applications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applications
    ADD CONSTRAINT applications_pkey PRIMARY KEY (id);


--
-- TOC entry 4884 (class 2606 OID 49676)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4886 (class 2606 OID 49678)
-- Name: icons icons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.icons
    ADD CONSTRAINT icons_pkey PRIMARY KEY (id);


--
-- TOC entry 4890 (class 2606 OID 49680)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 4891 (class 2606 OID 49681)
-- Name: applications FK_e8a06d416399a4c08b4a86574bb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applications
    ADD CONSTRAINT "FK_e8a06d416399a4c08b4a86574bb" FOREIGN KEY ("categoryId") REFERENCES public.categories(id);


-- Completed on 2025-12-11 07:38:34

--
-- PostgreSQL database dump complete
--

\unrestrict ZjmP4rxbDlXMQnrCwf2PypCVeDaOSOmDazEeskjtP1He2I4SIU7qvod1oUD9rE4

