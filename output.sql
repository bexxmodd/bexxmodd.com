--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Ubuntu 13.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.1

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."auth_group" (
    "id" integer NOT NULL,
    "name" character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."auth_group_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "public"."auth_group"."id";


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."auth_group_permissions" (
    "id" bigint NOT NULL,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "public"."auth_group_permissions"."id";


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."auth_permission" (
    "id" integer NOT NULL,
    "name" character varying(255) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."auth_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "public"."auth_permission"."id";


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."auth_user" (
    "id" integer NOT NULL,
    "password" character varying(128) NOT NULL,
    "last_login" timestamp with time zone,
    "is_superuser" boolean NOT NULL,
    "username" character varying(150) NOT NULL,
    "first_name" character varying(150) NOT NULL,
    "last_name" character varying(150) NOT NULL,
    "email" character varying(254) NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "date_joined" timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."auth_user_groups" (
    "id" bigint NOT NULL,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."auth_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "public"."auth_user_groups"."id";


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."auth_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "public"."auth_user"."id";


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."auth_user_user_permissions" (
    "id" bigint NOT NULL,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "public"."auth_user_user_permissions"."id";


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."blog_post" (
    "id" bigint NOT NULL,
    "title" character varying(150) NOT NULL,
    "content" "text" NOT NULL,
    "date_posted" timestamp with time zone NOT NULL,
    "author_id" integer NOT NULL,
    "tags" character varying,
    "slug" character varying(100)
);


ALTER TABLE public.blog_post OWNER TO cqjjlyadmnjwko;

--
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."blog_post_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: blog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."blog_post_id_seq" OWNED BY "public"."blog_post"."id";


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."django_admin_log" (
    "id" integer NOT NULL,
    "action_time" timestamp with time zone NOT NULL,
    "object_id" "text",
    "object_repr" character varying(200) NOT NULL,
    "action_flag" smallint NOT NULL,
    "change_message" "text" NOT NULL,
    "content_type_id" integer,
    "user_id" integer NOT NULL,
    CONSTRAINT "django_admin_log_action_flag_check" CHECK (("action_flag" >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO cqjjlyadmnjwko;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."django_admin_log_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "public"."django_admin_log"."id";


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."django_content_type" (
    "id" integer NOT NULL,
    "app_label" character varying(100) NOT NULL,
    "model" character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO cqjjlyadmnjwko;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."django_content_type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "public"."django_content_type"."id";


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."django_migrations" (
    "id" bigint NOT NULL,
    "app" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "applied" timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO cqjjlyadmnjwko;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE SEQUENCE "public"."django_migrations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO cqjjlyadmnjwko;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER SEQUENCE "public"."django_migrations_id_seq" OWNED BY "public"."django_migrations"."id";


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE TABLE "public"."django_session" (
    "session_key" character varying(40) NOT NULL,
    "session_data" "text" NOT NULL,
    "expire_date" timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO cqjjlyadmnjwko;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_group" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_id_seq"'::"regclass");


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_group_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_permissions_id_seq"'::"regclass");


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_permission" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_permission_id_seq"'::"regclass");


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_id_seq"'::"regclass");


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_groups" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_groups_id_seq"'::"regclass");


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_user_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_user_permissions_id_seq"'::"regclass");


--
-- Name: blog_post id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."blog_post" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."blog_post_id_seq"'::"regclass");


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_admin_log" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_admin_log_id_seq"'::"regclass");


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_content_type" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_content_type_id_seq"'::"regclass");


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_migrations" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_migrations_id_seq"'::"regclass");


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."auth_group" ("id", "name") FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."auth_group_permissions" ("id", "group_id", "permission_id") FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."auth_permission" ("id", "name", "content_type_id", "codename") FROM stdin;
1	Can add post	1	add_post
2	Can change post	1	change_post
3	Can delete post	1	delete_post
4	Can view post	1	view_post
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add permission	3	add_permission
10	Can change permission	3	change_permission
11	Can delete permission	3	delete_permission
12	Can view permission	3	view_permission
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add content type	6	add_contenttype
22	Can change content type	6	change_contenttype
23	Can delete content type	6	delete_contenttype
24	Can view content type	6	view_contenttype
25	Can add session	7	add_session
26	Can change session	7	change_session
27	Can delete session	7	delete_session
28	Can view session	7	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") FROM stdin;
1	pbkdf2_sha256$260000$SpcTdT7jT81PqO0taJXvzB$K8bsDRvi1XqJ9i35i59nUbdhKS/1dDQdNSE1ceHMB5c=	2021-07-10 02:13:57.194621+00	t	bexx			bexx.modd@gmail.com	t	t	2021-06-06 12:20:39.751815+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."auth_user_groups" ("id", "user_id", "group_id") FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."auth_user_user_permissions" ("id", "user_id", "permission_id") FROM stdin;
\.


--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."blog_post" ("id", "title", "content", "date_posted", "author_id", "tags", "slug") FROM stdin;
2	Getting Started with Systems Programming with Rust (Part 2)	<h3> Building a Mini-Shell </h3>\r\n\r\n<br>\r\n\r\n<p>\r\n    In the introductory Part 1, we discussed what system processes are, how to spawn them, and how to pass commands and execute them. If you want to review this material first you can \r\n    <a href="https://bexxmodd.herokuapp.com/post/1/">click here.</a>\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    In this section we’ll learn:\r\n\r\n    <ul>- What are system signals and how to handle them.</ul>\r\n    <ul>- What are stdout, stdin, and stderr, and how to use them efficiently.</ul>\r\n    <ul>- Writing to stdout and reading from stdin, instead of printing and what’s the advantage of doing so.</ul>\r\n    <ul>- Managing parent and child processes and their execution order.</ul>\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    To demonstrate the above-listed topics in practice, we’ll be building a UNIX mini-shell, which will be able to take commands from a user in the terminal and execute them. The program will also handle some invalid commands and deal with stuck programs gracefully.\r\n</p>\r\n\r\n<br>\r\n\r\n<h3>stdin, stdout, and stderr</h3>\r\n\r\n<p>\r\n    Probably you are familiar with what streams are in computing, if not just like water streams, it refers to the flow of data from source to an endpoint. Streams allow connecting commands, processes, files, etc. There are three special streams:\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    <ul>- stdin (Standard Input): which takes text as an input.</ul>\r\n    <ul>- stdout (Standard Output): stores text output in the stdout stream.</ul>\r\n    <ul>- stderr (Standard Error): When an error occurs during a stream the error message is stored in this stream.</ul>\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\nThe Linux system is file-oriented. This means nearly all streams are treated as files, and those streams are processed based on the unique identifier code that each file type has. For stdio (collection of standard output, input, and error) assigned values are 0 for stdin, 1 for stdout, and 2 for stderr. If we want to read a stream of text from the command line, in C we use the function <code>read()</code> and supply code 0 as one of the arguments for stdin (Figure 1-a).\r\n</p>\r\n\r\n<br>\r\n\r\n<center><img src="https://miro.medium.com/max/2400/1*y3_tArgpKbZp1CiR5MpKeg.png" alt="centered image" width="550"><p>Figure 1-a. Stdin Stdout & Stderr diagram</p></center>\r\n\r\n<br>\r\n\r\n<p>\r\n    Reading and writing from <code>stdio</code> is a little bit different in Rust, but fundamentals remain the same. To better demonstrate their use we’ll start writing code for our mini-shell program. Initially, we’ll create a loop that will be asking the user to type in a command that the system will execute. The first two functionalities we need to create are writing to stdout and reading from stdin.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    <script src="https://gist.github.com/bexxmodd/d61cd4361b0580b64fc93e9cb51ecf16.js"></script>\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    We’ll use a standard <code>io</code>> module to write to the terminal. Instead of passing <code>String</code> by copy, the function <code>write_to_stdout()</code> takes a reference to a string slice as an argument. The <code>str</code> is different from <code>String</code>. It’s what Rust refers to as a slice, is a reference to a part of a <code>String</code>. If you want to better understand the difference between those two, I’d recommend reading <a href="https://doc.rust-lang.org/nightly/book/ch04-01-what-is-ownership.html">chapter 4 from Rust's official book.</a>\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    The <code>write_to_stdout()</code> function returns <code>Result</code> object which can be <code>Ok</code> or <code>Err</code>. As those names suggest if everything goes as planned we’ll return <code>Ok</code> otherwise <code>Err</code> is returned. This procedure is so common in Rust that to return <code>Err</code> we have a special symbol <code>?</code> at the end of the function call that can end up in error.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    Inside the function, we call a <code>write()</code> function that fills the text buffer of the <code>stdout</code> and then we flush text on the screen. Inside <code>write()</code> we usa <code>as_ref()</code> method which converts string slice into an ASCII byte literal, as this is what the above-mentioned function expects as an argument.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    Next, we need to build a function that will read the user inputted command, and process it. For this, we’ll write a custom function <code>get_user_command()</code> that returns <code>String</code>.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    <script src="https://gist.github.com/bexxmodd/f1b15a573ec7267dd88b7811258b1881.js"></script>\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    The function reads a full line from the terminal and copies a value into an <code>input</code> variable. The <code>read_line()</code> takes mutable reference of the input <code>String</code> variable, dereferences inside the function call, writes user-supplied command, and returns <code>Result</code>. When we read a line from stdin it’s EOL (end of line) terminated, which includes the <code>\\n</code> control character at the end and we need to get rid of it before returning input.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    Finally, we glue our input and output functions together with our mini-shell program.\r\n</p>\r\n\r\n<br>\r\n\r\n<script src="https://gist.github.com/bexxmodd/e033e9d9e4880688a4c1c4b825828b36.js"></script>\r\n\r\n<br>\r\n\r\n<p>\r\n    In our <code>main()</code> function we run a loop that prints the shell name to the terminal screen and waits for the user to input the command. The <code>run_shell()</code> writes to stdout using previously defined function by us and handles an error if it occurs during printing. If something goes wrong it notifies a user about it and exits the program with error code 1 (Unsuccessful compilation).\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    Next, it reads the user-supplied command and passes that command to a newly created process. Then we check the status of the command execution, and if the command was unsuccessful we notify a user that the <i>“command not found”</i> and instead of exiting here, we return to the loop of prompting the user for an input.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    Run the program with <code>cargo run</code> and we should see output similar to this:\r\n</p>\r\n\r\n<br>\r\n\r\n<center><img src="https://miro.medium.com/max/2400/1*RYlhw2gMUvCkS3eJpvUD3w.png" alt="centered image" width="650"><p></p></center>\r\n\r\n<br>\r\n\r\n<p>\r\n    A good question to ask here is why we use to read and write functions instead of simply printing to the screen. The reason behind this is that directives like <code>read</code> and <code>write</code> are what’s called <i>Async-Signal Safe</i> functions, while C's <code>printf</code> is not. They can be safely called within a signal handler (which we’ll review next).\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    The functions that are <i>Async-Signal Safe</i> are guaranteed not to be interrupted or interfered with when some signal is sent. For example, if we are in the middle of <code>println!()</code> call and a signal occurs whose handler itself calls <code>println!()</code> can result in undefined behavior. Because in this case, the output of the two <code>println!()</code> statements would be intertwined.\r\n</p>\r\n\r\n<br>\r\n\r\n<h3>System Signals</h3>\r\n\r\n<p>\r\n    To improve our mini-shell we have to handle system signals. Signals in the UNIX environment are sort of notifications that are sent by an operating system to a process to notify about a certain event, which usually ends up interrupting the process. Each signal has a unique name and integer value assigned to it. You can check the full list of signals of your system by typing <code>kill -l</code> in your terminal.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    By default, each signal has its handler defined which is a function that is called when a certain signal arrives. We can modify the handling of those signals (which we’ll do for our mini-shell project). However, some of the signal handlers can’t be modified.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    For our project will take a look at four following signals:\r\n</p>\r\n\r\n<br>\r\n\r\n<ul>- <code>SIGINT</code> which is called by pressing <b>Ctrl+C</b> and causes the system to send a <b>INT</b> signal to the running process. By default this causes the processes to terminate immediately. The Signal code for <code>SIGINT</code> is 2.</ul>\r\n\r\n<ul>- <code>SIGQUIT</code> is called by pressing <b>Ctrl+\\</b> and will send the <b>QUIT</b> signal to the running process. This also terminates the process but more ungracefully. However, cleanup of absolutely necessary resources that need to be cleaned is performed. The assigned code is 3</ul>\r\n\r\n<ul>\r\n    - <code>SIGALRM</code> is like an alarm clock with a countdown in seconds. If the seconds' count hits zero, any pending alarm is canceled and the <code>SIGALRM</code> signal is sent to the process. The alarm code is 14.\r\n</ul>\r\n\r\n<ul>- <code>SIGKILL</code> is the most forceful signal sent by the system which forces the process to halt. This signal can’t be handled manually by a user but the system will still perform a cleanup after process termination. It has a code 9.</ul>\r\n\r\n<br>\r\n\r\n<p>\r\n    Now, it’s time to check how we’ll be handling the above-listed signals in Rust (except <code>SIGKILL</code> for which we can’t change default behavior). For example, if you run <code>cat</code> command in the Linux terminal without a file argument it will get stuck in an infinite loop. When this happens in our mini-shell we’ll rewire the <code>SIGINT</code> signal so it will forward the interrupt signal to the child process. This will only terminate the running loop but will keep our shell program running.\r\n</p>\r\n\r\n<br>\r\n\r\n<script src="https://gist.github.com/bexxmodd/7afb177e50f4f78f9a5d8e500b468685.js"></script>\r\n\r\n<br>\r\n\r\n<p>\r\n    First, we create an iterator of signals which stores a vector of signal references. Here we indicate which signals are expected to be handled. Next, we need to forward the signal to the child process, the one which is actively running, and perform desired behavior on it. This is done by spawning a new thread that returns a <code>JoinHandler</code>.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    This handler will <i>detach</i> a child process after being dropped. This means when <code>SIGINT</code> arrives at the child's process, that process will be separated from the parent and it will only interrupt whatever the child process is doing, while the parent process will continue running. If there is no child process in execution it will do nothing.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    We use <code>forever()</code> function on signals iterator which returns an infinite loop over arriving signals. As soon as the signal arrives it will be evaluated with a match-case and if it matches <code>SIGINT</code> it will assert that signal was sent successfully. For any other signal, the iterator will continue to wait for the next signal.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    Since we rewired the <code>SIGINT</code> signal to only handle child processes, what if we want to exit the program completely? We’ll handle a different signal and let it print “Goodbye” to the stdout and exit graciously. For this one, we’ll use the <code>SIGQUIT</code> signal, which can be sent from the keyboard by pressing <b>Ctrl + \\</b>.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    <script src="https://gist.github.com/bexxmodd/6c9d34ff604bfc8fc0e95ed078289842.js"></script>\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    When the <code>SIGQUIT</code> signal is called it’s matched in our iterator and this calls our <code>write_to_stdout()</code> function. Then program exits with code 0, which in Linux stands for a successful compilation. Notice we are importing <code>SIGNAL</code> consts from <code>signal_hook</code> library, which is a library for easier Unix signal handling.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    Finally, we’ll add a small feature to our program. The user will supply an integer at the program's start. This number will be used as a countdown for the program’s execution time. For example, if a user supplies 5, this will invoke <code>alarm(5)</code> when the child process is started. If a function isn’t complete when the countdown ends, our manually defined <code>SIGALRM</code> signal will kill it and return the program to the initial state.\r\n</p>\r\n\r\n<br>\r\n\r\n<script src="https://gist.github.com/bexxmodd/186ff45a3450ef9637f4e6c6c385d3e6.js"></script>\r\n\r\n<br>\r\n\r\n<p>\r\n    When <code>SIGALRM</code> is matched, first, it will write to the stdout, and next, it does a very interesting thing. It will use the <code>signal::kill()</code> function to send the <code>SIGINT</code> signal on a process it operates. But since the same function handles <code>SIGINT</code> by forwarding it to a child process it will only kill the child process and return to the main program of running mini-shell. Full function:\r\n</p>\r\n\r\n<br>\r\n\r\n<script src="https://gist.github.com/bexxmodd/a55827d8c407c6068234823700412bac.js"></script>\r\n\r\n<br>\r\n\r\n<p>\r\n    These should be an expected outcome if you run our mini-shell through the terminal:\r\n</p>\r\n\r\n<br>\r\n\r\n<center><img src="https://miro.medium.com/max/2400/1*pn1CzSKuvPAH2MJtg115ZA.png" alt="centered image" width="650"><p></p></center>\r\n\r\n<br>\r\n\r\n<p>\r\n    You can find a full code of the mini-shell, which includes some additional features besides covered here, in <a href="https://github.com/bexxmodd/systems-with-rust/blob/master/src/main.rs">this GitHub repository</a>.\r\n</p>\r\n\r\n<br>\r\n\r\n<h3>Summary</h3>\r\n\r\n<p>\r\n    Today we learned what are stdin, stdout, and stderr, and how to use them properly. We looked at the common UNIX system signals and manually handled three of them to fit the needs of our mini-shell program. The combined knowledge from <a href="https://bexxmodd.herokuapp.com/post/1/">Part 1</a> allowed us to build a program that executes system commands and handles system signals safely and fast thanks to the Rust language.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    In the upcoming parts, we’ll take a look at communicating between processes between pipes and review concurrency. We’ll demonstrate why Rust can be the best choice for this.\r\n</p>\r\n\r\n<br>\r\n\r\n<p>\r\n    <center>...</center>\r\n</p>	2021-06-21 12:31:24.846445+00	1	\N	\N
1	Getting Started with Systems Programming with Rust (Part 1)	<p>A modern computer is a very complex creation that evolved into the current state through decades of research and development. Sometimes it appears to be like black magic. There’s no magic in it, just science. However, some of the minds like Alan Turing, Charles Babbage, Ada Lovelace, John von Neumann, and many others are magical, as they made this possible.</p>\r\n<br>\r\n<p>Ok, that’s enough of introductions and let us dive into the fundamentals of systems programming. In this part we’ll learn:</p>\r\n<br>\r\n<ul>- What is the process?</ul>\r\n<ul>- How are they created and executed?</ul>\r\n<ul>- Look at some code examples in Rust and compare them to C.</ul>\r\n<br>\r\n<p>\r\n  Before diving into code we’ll start to build up from the lowest level of the main components of the operating systems. As shown in Figure 1-a the lowest level of any computer is Hardware, next comes the Kernel mode which runs on bare metal. This is where the operating system, like Linux, is located.\r\n</p>\r\n<br>\r\n<center><img src="https://miro.medium.com/max/2400/1*YFdpr8NZXzEo8vSOOVKj0g.png" width=650><p>\r\n  Figure 1-a.\r\n  </p></img></center>\r\n<br>\r\n<p>\r\n  On top of the <i>Kernel mode,</i> we have a User-mode. For a user to be able to interact with the kernel AND use other higher-level software, like web browser, E-mail reader, etc. it requires a user interface program. This can be a window, Graphical User Interface, or it can be a shell which is a <b>command interpreted </b>that is used to read commands from a terminal and execute them\r\n</p>\r\n<br>\r\n\r\n<h2>\r\n  Processes: Parent and Child\r\n</h2>\r\n<p>\r\n  The main concept in all operating systems is a process. A process is basically a running program. You can think of it as a drawer that contains all the information about that particular program. Some processes start running at the start of the computer, some run in the background, and some are called and interacted by the user, through the shell, for example.\r\n</p>\r\n<br>\r\n<p>\r\n  All the processes have an id. The very first process is initiated, when the system is booted. This process has an id of 1 and is called init. After that, init will call other processes and so on. When we type a command in a shell for the OS to execute, the system should create a new process that will run the compiler. When the process has finished compiling, it will make a system call to terminate itself.\r\n</p>\r\n<br>\r\n<p>\r\n  In UNIX systems every new process is a child process of some parent process. Process creation is done by cloning a parent process, which is referred to as <i>forking</i> (Figure 1-b). Each process has one parent but can have multiple child processes. The structure of the processes resembles a tree, where <i>init</i> is the root, meaning it’s at the top of the hierarchy.\r\n</p>\r\n<br>\r\n<p>\r\n  After the process’s creation, the parent and the child processes are the same, except the parent will have some arbitrary ID number, and the child process will have an ID equal to 0. Next, the system substitutes the child process’s execution with a new program. When the process is done fulfilling its purpose, it’s terminated and exited normally (voluntary). The process can also be exited due to an error or killed by another process (involuntary).\r\n</p>\r\n<br>\r\n<center><img src="https://miro.medium.com/max/700/1*lCncraMXCqZZlRqm9mT31g.gif" width=650><p>\r\n  Figure 1-b.\r\n  </p>\r\n</img></center>\r\n<br>\r\n<br>\r\n<p>\r\n  The system also keeps track of all the processes, maintaining their data in what’s called a <b>processes table</b>. It holds information like process id, process owner, process priority, environment variables for each process, the parent process. In addition to that, it also holds the info in what state a particular process is. Each process can be in one of the following four states:\r\n</p>\r\n<br>\r\n<ul>RUNNABLE — The process is running / actively using the CPU.</ul>\r\n<ul>SLEEPING — The process is runnable, but is waiting for another process to stop/finish first.</ul>\r\n<ul>STOPPED — This state indicates that the process has been suspended for further proceeding. It can be restarted to run again by a signal.</ul>\r\n<ul>ZOMBIE — The process is terminated when ‘system exit’ is called or someone else kills the process. However, the process has not been removed from the process table.</ul>\r\n<br>\r\n<p>\r\n  Often processes have to interact with each other and can change the state and go from Running to sleeping, then back to running (Figure 1-c). This is usually done by a <code>SIGSTOP</code> signal, which is issued by Ctrl + Z (We’ll review signals in-depth in upcoming parts). Same with the stopped process, its activity can be restarted. Except for the Zombie state, which once killed can’t be restarted or continued.\r\n</p>\r\n<br>\r\n\r\n<center><img src="https://miro.medium.com/max/700/1*9FvTHt_LyvtmJhfnjmwzFw.png" width=650><p>\r\n  Figure 1-c.\r\n  </p></img></center>\r\n\r\n<br>\r\n<h2>C vs Rust</h2>\r\n<p>\r\n  In C, which is an official Linux kernel programming language, process creation is done first by forking the new process and then explicitly asking a system to execute a new directive on a child process. If we don’t do that, both parent and child processes will be executing the same directive. Here is an example of executing <code>ls</code> command, which lists files of given directory:\r\n  </p>\r\n\r\n<br>\r\n<p>\r\n  <script src="https://gist.github.com/bexxmodd/a282b16d587ac6a8fc585d72d964ce8b.js"></script>\r\n</p>\r\n<br>\r\n<br>\r\n<p>\r\n  As you can see we have to manage the processes manually and monitor if the execution was successful. Also, we have to handle errors. If we want a command to be executed only by a child we have to manually check if the current process is a child, which is done here by <code>case 0</code>. In Rust, the same can be achieved with a <a href="https://doc.rust-lang.org/std/process/struct.Command.html">standard library’s process module</a>:\r\n</p>\r\n<br>\r\n<p>\r\n  <script src="https://gist.github.com/bexxmodd/7721bd5ae32f5b9169abe308ba06e67c.js"></script>\r\n</p>\r\n<br>\r\n<p>\r\n  Here <code>Command::new()</code>is a process builder which is responsible for spawning and handling a child process. Just like in a C code, we supply a command we want to execute, environmental variables, command argument, and call <code>output</code> method on it. The output will execute the command as a child process, waiting for it to finish, and returns the collected output.\r\n</p>\r\n\r\n<br>\r\n<p>\r\n  Instead of <code>output()</code> we also have options to use either <code>status()</code> or <code>spawn()</code>. Each of these methods is responsible for forking a child process with subtle differences:\r\n</p>\r\n<br>\r\n<ul>\r\n<code>output()</code> : Will run the program and return a result of the <code>Output</code>, only after child processes finish running.  \r\n</ul>\r\n<ul><code>status()</code>: Will run the program and return a result of <code>ExitStatus</code> after process compilation. This allows checking the status of the compiled program.</ul>\r\n<ul><code>spawn()</code>: Will run the program and return a result which is a <code>Child</code> process. This doesn’t wait for the program compilation. This option allows for <code>wait</code> and <code>kill</code> directives or we can get an id of that process.</ul>\r\n<br>\r\n<p>\r\n  Here, <code>env()</code> is optional, as the Command is smart enough to look for the path of a <i>/bin</i> folder. Finally, all the error handling is done by <code>expect()</code>. It unwraps the result if <code>Ok</code>, meaning the program was executed successfully, or <code>Err</code> if something went wrong and will <code>panic!</code>. If you want your program not to terminate if <code>Err</code> encountered you can do something like this:\r\n</p>\r\n<br>\r\n<p>\r\n  <script src="https://gist.github.com/bexxmodd/2ce934871c8a69facd3dc70beb8eec2d.js"></script>\r\n</p>\r\n<br>\r\n<p>\r\n  Here <code>status()</code> is handier and calling it will return <code>Ok</code> if the legit command is supplied by the user and execute. But we are only interested in handling if the unavailable command was supplied. That’s why we only check if <code>Err</code> was returned, and if so print that “command was not found” into the terminal and continue the current program execution, instead of terminating.\r\n</p>\r\n\r\n<p>\r\n  Finally, the <code>spawn()</code> is used to manage the order of execution between several children and parent processes. It contains <code>stdin</code> <code>stdout</code> and <code>stderr</code> fields and has, familiar to C programmers, <code>wait()</code> , <code>kill()</code> and <code>id()</code> methods. We’ll look at this part of the processes in the next part and we’ll also see how Rust takes care of race conditions when two or more threads can access shared data and they try to change it at the same time.\r\n</p>\r\n<br>\r\n<h2>\r\n  Summary\r\n</h2>\r\n\r\n<p>\r\n  In this introductory part, we reviewed what are processes, how they are created and compared Rust's implementation of the processes creation and command execution to C. We saw that Rust code not only is less prone to human errors but it’s less verbose and more concise. In the next parts, we’ll take a look at managing processes execution time and states, and handling system signals\r\n</p>	2021-06-06 12:47:28.407666+00	1	\N	\N
3	All You Need To Know About Python 3.10's Structural Pattern Matching	<p>\r\n    Finally, Gods of Python decided to add a highly requested feature - pattern matching. As a part of the <a href="https://docs.python.org/3.10/whatsnew/3.10.html#pep-634-structural-pattern-matching">PEP634</a>, a structural pattern matching feature has been added to Python 3.10 and currently is in beta mode for testing.\r\n</p>\r\n\r\n<br>\r\n<p>    \r\n    Why is this good news and how does structural pattern matching will make Python developer's life easier? In this post I'll:\r\n</p>\r\n<br>\r\n\r\n    <ul>- Introduce what is a structural pattern matching and it's syntax.</ul>\r\n    <ul>- What's the difference between <code>switch</code> and <code>match</code> statements?</ul>\r\n    <ul>- Where does match statement fits in Python and it's advantages over <code>if/elif/else</code> statement</ul>\r\n\r\n\r\n<br>\r\n\r\n<p>\r\n    <h3>Structural Pattern Matching</h3>\r\n\r\n    Soon (Official release is planned in October) we'll see a Python's structural pattern matching with a form of <code>match</code>/<code>case</code> statement. Pattern matching will be available for primitive data types matching, extracting data from more complex data types, and then applying specific instructions based on retrieved values.\r\n</p>\r\n\r\n<br>\r\n<p>\r\n    Example syntax for Python's pattern matching:\r\n\r\n    <br>\r\n    <br>\r\n    <center><img src="https://i.imgur.com/v0dkpDm.png" width=350></a></center>\r\n</p>\r\n\r\n<br>\r\n<p>\r\n    When the pattern is evaluated case compares value to the <code>pattern_1</code> if it's true <code>action_1</code> will be executed and the program will break. If evaluated result is false then case #2 will be compared to <code>pattern_2</code> and if matched <code>action_2</code> will be executed, etc. up until program reaches <code>_</code> which stands for default execution, if no other match is found.\r\n</p>\r\n\r\n<br>\r\n<p>\r\n    If we left out <code>_</code> case from our code and none of the other cases match, default will be a <i>no-op</i> that is similar to <code>pass</code> i.e. no action will be conducted. We can also use a <code>|</code> ("or") operator if we want to evaluate two or more cases for a single action.\r\n\r\n    <br>\r\n    <br>\r\n    <center><img src="https://i.imgur.com/ML3KkLI.png" width=550></a></center>\r\n</p>\r\n\r\n<br>\r\n<p>\r\n    This is a simple review of the syntax of this anticipated feature. Before diving into examples and use cases let's explore what's the difference between <code>switch</code> and <code>match</code> as often these words are used interchangeably but mean two different attributes.\r\n\r\n</p>\r\n\r\n<br>\r\n<h3>Switch vs Match</h3>\r\n\r\n<p>\r\n    Many popular programming languages like Java, C, C++ have a switch statement. It is used extensively due to its readability and fast execution speed compared to if/else statements when you have to evaluate multiple if-else cases. On a lower level switch case is executed faster compared to multiple if-else statements.\r\n</p>\r\n\r\n<br>\r\n<p>\r\n    This is because the switch evaluates the data type of the subject and creates a look-up/hash table of the expected cases. Then comparison to identify which case to execute can be done in a near-constant time. The difference in runtime is minuscule for 99% of the time but good readability and clean design give preference to the switch cases on many occasions.\r\n</p>\r\n\r\n<br>\r\n<p>\r\n    However, limitations of the switch case is that, for example in C it can't go beyond primitive data types like <code>int</code>, <code>char</code>, and <code>enum</code>. For example, let's look at this simple C code:\r\n</p>\r\n    <br>\r\n\r\n<!-- HTML generated using hilite.me -->\r\n<div style="background: #202020; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #cd2828; font-weight: bold">    #include &lt;stdio.h&gt;</span>\r\n\r\n    <span style="color: #6ab825; font-weight: bold">int</span> <span style="color: #447fcf">main</span><span style="color: #d0d0d0">()</span>\r\n    <span style="color: #d0d0d0">{</span>\r\n        <span style="color: #6ab825; font-weight: bold">float</span> <span style="color: #d0d0d0">val</span> <span style="color: #d0d0d0">=</span> <span style="color: #3677a9">2.1</span><span style="color: #d0d0d0">;</span>\r\n        <span style="color: #6ab825; font-weight: bold">switch</span> <span style="color: #d0d0d0">(val)</span> <span style="color: #d0d0d0">{</span>\r\n            <span style="color: #6ab825; font-weight: bold">case</span> <span style="color: #3677a9">1.1</span>:   <span style="color: #d0d0d0">printf(</span><span style="color: #ed9d13">&quot;Value = %f\\n&quot;</span><span style="color: #d0d0d0">,</span> <span style="color: #d0d0d0">val);</span>\r\n            <span style="color: #6ab825; font-weight: bold">case</span> <span style="color: #3677a9">2.1</span>:   <span style="color: #d0d0d0">printf(</span><span style="color: #ed9d13">&quot;Value = %f\\n&quot;</span><span style="color: #d0d0d0">,</span> <span style="color: #d0d0d0">val);</span>\r\n            <span style="color: #d0d0d0">default:</span>    <span style="color: #d0d0d0">printf(</span><span style="color: #ed9d13">&quot;No match found&quot;</span><span style="color: #d0d0d0">);</span>\r\n        <span style="color: #d0d0d0">}</span>\r\n        <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #3677a9">0</span><span style="color: #d0d0d0">;</span>\r\n    <span style="color: #d0d0d0">}</span>\r\n    </pre></div>\r\n    \r\n<br>\r\n<p>\r\n    If we try to pass a String or a float we'll get a compiler error (though Strings are allowed in Java):\r\n    <br>\r\n    <br>\r\n    <p><code>\r\n        <p>error: statement requires expression of integer type ('float' invalid)</p>\r\n    <pre class="tab" style="color:white">   switch (val) {</pre>\r\n    <pre class="tab" style="color:green">   ^       ~~~</pre>\r\n<p>1 error generated.</p>\r\n    </code></p>\r\n</p>\r\n\r\n<br>\r\n<p>\r\n    So here is the difference with <code>match</code> statement. <code>switch</code> is used as a statement (to just evaluate primitive data types) but <code>match</code> can be used as a statement and as an expression. What's the difference between statement and expression? The rule of thumb is that statements are instructions. They perform actions. Expressions hold data; they resolve to some value. So we can do more complex pattern evaluations using match expression, which we'll demonstrate below.\r\n</p>\r\n\r\n<br>\r\n<h3>Match Case Examples</h3>\r\n<p>\r\n    Python pattern matching can be used in diverse ways. It can be used as a match statement for the literals and a match expression for more complex situations. We can capture patterns in the following style:\r\n</p>\r\n    <br>\r\n\r\n<!-- HTML generated using hilite.me -->\r\n<div style="background: #202020; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #d0d0d0">match</span> <span style="color: #d0d0d0">string:</span>\r\n    <span style="color: #d0d0d0">case</span> <span style="color: #ed9d13">&quot;&quot;</span><span style="color: #d0d0d0">:</span>\r\n    <span style="color: #24909d">    print</span><span style="color: #d0d0d0">(</span><span style="color: #ed9d13">&#39;The boy has no name&#39;</span><span style="color: #d0d0d0">)</span>\r\n<span style="color: #d0d0d0">    case</span> <span style="color: #ed9d13">&quot;Edward&quot;</span><span style="color: #d0d0d0">:</span>\r\n    <span style="color: #24909d">    print</span><span style="color: #d0d0d0">(f</span><span style="color: #ed9d13">&#39;His name is {string}&#39;</span><span style="color: #d0d0d0">)</span>\r\n</pre></div>\r\n<br>\r\n    <p>\r\n        We can use an underscore <code>_</code> as a wildcard. This is a special kind of pattern that always matches but never binds:\r\n    </p>\r\n\r\n    <br>\r\n    <!-- HTML generated using hilite.me --><div style="background: #202020; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #d0d0d0">match</span> <span style="color: #d0d0d0">point:</span>\r\n        <span style="color: #d0d0d0">case</span> <span style="color: #d0d0d0">(x,</span> <span style="color: #d0d0d0">_):</span>\r\n        <span style="color: #24909d">print</span><span style="color: #d0d0d0">(f</span><span style="color: #ed9d13">&#39;x is located at {x}&#39;</span><span style="color: #d0d0d0">)</span>\r\n</pre></div>\r\n\r\n<br>\r\n\r\n<p>\r\n    Mapping pattern is also a thing that allows matching a key, value pair. It's done by unpacking the iterable where both key and value are evaluated as patterns. The syntax is similar to dictionary display and can even use <code>**rest</code> to extract remaining items from the data:\r\n</p>\r\n\r\n<br>\r\n<!-- HTML generated using hilite.me --><div style="background: #202020; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #d0d0d0">match</span> <span style="color: #d0d0d0">score:</span>\r\n    <span style="color: #d0d0d0">case</span> <span style="color: #d0d0d0">{</span><span style="color: #ed9d13">&#39;five&#39;</span><span style="color: #d0d0d0">:</span> <span style="color: #3677a9">5</span><span style="color: #d0d0d0">}:</span>\r\n        <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #3677a9">5.1</span>\r\n    <span style="color: #d0d0d0">case</span> <span style="color: #d0d0d0">{</span><span style="color: #ed9d13">&#39;four&#39;</span><span style="color: #d0d0d0">:</span> <span style="color: #3677a9">4</span><span style="color: #d0d0d0">}:</span>\r\n        <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #3677a9">4.1</span>\r\n    <span style="color: #d0d0d0">case</span> <span style="color: #d0d0d0">{**rest}:</span>\r\n        <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #3677a9">0.1</span>\r\n</pre></div>\r\n\r\n\r\n<br>\r\n\r\n<p>\r\n    The variety of patterns we can match allows us to get creative and I'm sure the Python community will give us a great use case. Now, let's look at how it compares to the if/else statement and how we can match classes and a variety of other patterns within a single run.\r\n</p>\r\n\r\n\r\n<br>\r\n<h3>Match-Case vs If-Elif-Else</h3>\r\n</p>\r\n<p>\r\n    Let's say we've two classes <code>Color</code> that has three mandatory fields for red, green, and blue and <code>StabilizedColor</code> which has all above mentioned fields plus an alpha field. We want to have a function that takes various types of numerical arguments (and not only) and returns <code>StabilizedColor</code> object. This's how we'd implement it using match expression.\r\n</p>\r\n\r\n<br>\r\n\r\n<!-- HTML generated using hilite.me -->\r\n<div style="background: #202020; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #6ab825; font-weight: bold">    from</span> <span style="color: #447fcf; text-decoration: underline">dataclasses</span> <span style="color: #6ab825; font-weight: bold">import</span> <span style="color: #d0d0d0">dataclass</span>\r\n\r\n    <span style="color: #ffa500">@dataclass</span>\r\n    <span style="color: #6ab825; font-weight: bold">class</span> <span style="color: #447fcf; text-decoration: underline">Color</span><span style="color: #d0d0d0">:</span>\r\n        <span style="color: #d0d0d0">red:</span> <span style="color: #24909d">int</span>\r\n        <span style="color: #d0d0d0">green:</span> <span style="color: #24909d">int</span>\r\n        <span style="color: #d0d0d0">blue:</span> <span style="color: #24909d">int</span>\r\n    \r\n    <span style="color: #ffa500">@dataclass</span>\r\n    <span style="color: #6ab825; font-weight: bold">class</span> <span style="color: #447fcf; text-decoration: underline">StabilizedColor</span><span style="color: #d0d0d0">:</span>\r\n        <span style="color: #d0d0d0">red:</span> <span style="color: #24909d">int</span>\r\n        <span style="color: #d0d0d0">green:</span> <span style="color: #24909d">int</span>\r\n        <span style="color: #d0d0d0">blue:</span> <span style="color: #24909d">int</span>\r\n        <span style="color: #d0d0d0">alpha:</span> <span style="color: #24909d">int</span>\r\n    \r\n    <span style="color: #6ab825; font-weight: bold">def</span> <span style="color: #447fcf">stabilize_rgb_color</span><span style="color: #d0d0d0">(color)</span> <span style="color: #d0d0d0">-&gt;</span> <span style="color: #d0d0d0">StabilizedColor:</span>\r\n        <span style="color: #d0d0d0">match</span> <span style="color: #d0d0d0">color:</span>\r\n            <span style="color: #d0d0d0">case</span> <span style="color: #d0d0d0">(r,</span> <span style="color: #d0d0d0">g,</span> <span style="color: #d0d0d0">b,</span> <span style="color: #d0d0d0">a):</span>\r\n                <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #d0d0d0">StabilizedColor(r,</span> <span style="color: #d0d0d0">g,</span> <span style="color: #d0d0d0">b,</span> <span style="color: #d0d0d0">a)</span>\r\n            <span style="color: #d0d0d0">case</span> <span style="color: #d0d0d0">(r,</span> <span style="color: #d0d0d0">g,</span> <span style="color: #d0d0d0">b):</span>\r\n                <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #d0d0d0">StabilizedColor(r,</span> <span style="color: #d0d0d0">g,</span> <span style="color: #d0d0d0">b,</span> <span style="color: #3677a9">0</span><span style="color: #d0d0d0">)</span>\r\n            <span style="color: #d0d0d0">case</span> <span style="color: #d0d0d0">Color(r,</span> <span style="color: #d0d0d0">g,</span> <span style="color: #d0d0d0">b):</span>\r\n                <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #d0d0d0">StabilizedColor(r,</span> <span style="color: #d0d0d0">g,</span> <span style="color: #d0d0d0">b,</span> <span style="color: #3677a9">0</span><span style="color: #d0d0d0">)</span>\r\n            <span style="color: #d0d0d0">case</span> <span style="color: #d0d0d0">StabilizedColor(_,</span> <span style="color: #d0d0d0">_,</span> <span style="color: #d0d0d0">_,</span> <span style="color: #d0d0d0">_):</span>\r\n                <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #d0d0d0">color</span>\r\n            <span style="color: #d0d0d0">case</span> <span style="color: #d0d0d0">_:</span>\r\n                <span style="color: #6ab825; font-weight: bold">raise</span> <span style="color: #bbbbbb">TypeError</span><span style="color: #d0d0d0">(</span><span style="color: #ed9d13">&quot;Only supports RGB color&quot;</span><span style="color: #d0d0d0">)</span>\r\n    \r\n    <span style="color: #999999; font-style: italic"># match based on a tuple</span>\r\n    <span style="color: #24909d">print</span><span style="color: #d0d0d0">(stabilize_rgb_color((</span><span style="color: #3677a9">123</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">22</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">22</span><span style="color: #d0d0d0">)))</span>\r\n    <span style="color: #24909d">print</span><span style="color: #d0d0d0">(stabilize_rgb_color((</span><span style="color: #3677a9">123</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">22</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">31</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">1</span><span style="color: #d0d0d0">)))</span>\r\n    \r\n    <span style="color: #999999; font-style: italic"># match based on a list</span>\r\n    <span style="color: #24909d">print</span><span style="color: #d0d0d0">(stabilize_rgb_color([</span><span style="color: #3677a9">220</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">225</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">100</span><span style="color: #d0d0d0">]))</span>\r\n    <span style="color: #24909d">print</span><span style="color: #d0d0d0">(stabilize_rgb_color([</span><span style="color: #3677a9">55</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">75</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">120</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">1</span><span style="color: #d0d0d0">]))</span>\r\n    \r\n    <span style="color: #999999; font-style: italic"># match based on a class</span>\r\n    <span style="color: #24909d">print</span><span style="color: #d0d0d0">(stabilize_rgb_color(Color(</span><span style="color: #3677a9">255</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">255</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">0</span><span style="color: #d0d0d0">)))</span>\r\n    <span style="color: #24909d">print</span><span style="color: #d0d0d0">(stabilize_rgb_color(StabilizedColor(</span><span style="color: #3677a9">100</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">100</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">1</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">1</span><span style="color: #d0d0d0">)))</span>\r\n    \r\n    \r\n    <span style="color: #6ab825; font-weight: bold">from</span> <span style="color: #447fcf; text-decoration: underline">collections</span> <span style="color: #6ab825; font-weight: bold">import</span> <span style="color: #d0d0d0">namedtuple</span>\r\n    \r\n    <span style="color: #d0d0d0">BlackAndWhite</span> <span style="color: #d0d0d0">=</span> <span style="color: #d0d0d0">namedtuple(</span><span style="color: #ed9d13">&#39;BlackAndWhite&#39;</span><span style="color: #d0d0d0">,</span> <span style="color: #d0d0d0">[</span><span style="color: #ed9d13">&#39;r&#39;</span><span style="color: #d0d0d0">,</span> <span style="color: #ed9d13">&#39;g&#39;</span><span style="color: #d0d0d0">,</span> <span style="color: #ed9d13">&#39;b&#39;</span><span style="color: #d0d0d0">])</span>\r\n    <span style="color: #24909d">print</span><span style="color: #d0d0d0">(stabilize_rgb_color(BlackAndWhite(</span><span style="color: #3677a9">255</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">255</span><span style="color: #d0d0d0">,</span> <span style="color: #3677a9">255</span><span style="color: #d0d0d0">)))</span>\r\n    </pre></div>\r\n    \r\n\r\n<br>\r\n\r\n<p>\r\n    We can pass heterogeneous data types like lists, tuples, <code>Color</code> class, StabilizedColor class, namedtuple, and every other object that will contain at least three numerical data fields and get a StabilizecColor object in return. What if we try to do the same without <code>match</code> expression and use good ol' if/elif/else? It gets messy:\r\n</p>\r\n\r\n<br>\r\n\r\n<!-- HTML generated using hilite.me --><div style="background: #202020; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #6ab825; font-weight: bold">def</span> <span style="color: #447fcf">stabilize_rgb_color</span><span style="color: #d0d0d0">(color)</span> <span style="color: #d0d0d0">-&gt;</span> <span style="color: #d0d0d0">StabilizedColor:</span>\r\n    <span style="color: #6ab825; font-weight: bold">if</span> <span style="color: #d0d0d0">(</span>\r\n        <span style="color: #24909d">isinstance</span><span style="color: #d0d0d0">(color,</span> <span style="color: #d0d0d0">(</span><span style="color: #24909d">list</span><span style="color: #d0d0d0">,</span> <span style="color: #24909d">tuple</span><span style="color: #d0d0d0">))</span>\r\n        <span style="color: #6ab825; font-weight: bold">and</span> <span style="color: #24909d">len</span><span style="color: #d0d0d0">(color)</span> <span style="color: #d0d0d0">&gt;=</span> <span style="color: #3677a9">3</span>\r\n        <span style="color: #6ab825; font-weight: bold">and</span> <span style="color: #24909d">isinstance</span><span style="color: #d0d0d0">(color[</span><span style="color: #3677a9">0</span><span style="color: #d0d0d0">],</span> <span style="color: #24909d">int</span><span style="color: #d0d0d0">)</span>\r\n        <span style="color: #6ab825; font-weight: bold">and</span> <span style="color: #24909d">isinstance</span><span style="color: #d0d0d0">(color[-</span><span style="color: #3677a9">1</span><span style="color: #d0d0d0">],</span> <span style="color: #24909d">int</span><span style="color: #d0d0d0">)</span>\r\n    <span style="color: #d0d0d0">):</span>\r\n        <span style="color: #6ab825; font-weight: bold">if</span> <span style="color: #24909d">len</span><span style="color: #d0d0d0">(color)</span> <span style="color: #d0d0d0">&gt;</span> <span style="color: #3677a9">3</span><span style="color: #d0d0d0">:</span>\r\n            <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #d0d0d0">StabilizedColor(</span>\r\n                <span style="color: #d0d0d0">color[</span><span style="color: #3677a9">0</span><span style="color: #d0d0d0">],</span> <span style="color: #d0d0d0">color[</span><span style="color: #3677a9">1</span><span style="color: #d0d0d0">],</span> <span style="color: #d0d0d0">color[</span><span style="color: #3677a9">2</span><span style="color: #d0d0d0">],</span> <span style="color: #d0d0d0">color[</span><span style="color: #3677a9">3</span><span style="color: #d0d0d0">]</span>\r\n            <span style="color: #d0d0d0">)</span>\r\n        <span style="color: #6ab825; font-weight: bold">else</span><span style="color: #d0d0d0">:</span>\r\n            <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #d0d0d0">StabilizedColor(</span>\r\n                <span style="color: #d0d0d0">color[</span><span style="color: #3677a9">0</span><span style="color: #d0d0d0">],</span> <span style="color: #d0d0d0">color[</span><span style="color: #3677a9">1</span><span style="color: #d0d0d0">],</span> <span style="color: #d0d0d0">color[</span><span style="color: #3677a9">2</span><span style="color: #d0d0d0">],</span> <span style="color: #3677a9">0</span>\r\n            <span style="color: #d0d0d0">)</span>\r\n    <span style="color: #6ab825; font-weight: bold">elif</span> <span style="color: #24909d">isinstance</span><span style="color: #d0d0d0">(color,</span> <span style="color: #d0d0d0">Color):</span>\r\n        <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #d0d0d0">StabilizedColor(</span>\r\n            <span style="color: #d0d0d0">color.red,</span> <span style="color: #d0d0d0">color.green,</span> <span style="color: #d0d0d0">color.blue,</span> <span style="color: #3677a9">0</span>\r\n        <span style="color: #d0d0d0">)</span>\r\n    <span style="color: #6ab825; font-weight: bold">elif</span> <span style="color: #24909d">isinstance</span><span style="color: #d0d0d0">(color,</span> <span style="color: #d0d0d0">StabilizedColor):</span>\r\n        <span style="color: #6ab825; font-weight: bold">return</span> <span style="color: #d0d0d0">color</span>\r\n    <span style="color: #999999; font-style: italic"># Some other elif&#39;s for each Data Type we want to cover</span>\r\n    <span style="color: #999999; font-style: italic"># elif...</span>\r\n    <span style="color: #999999; font-style: italic"># elif...</span>\r\n    <span style="color: #6ab825; font-weight: bold">else</span><span style="color: #d0d0d0">:</span>\r\n        <span style="color: #6ab825; font-weight: bold">raise</span> <span style="color: #bbbbbb">TypeError</span><span style="color: #d0d0d0">(</span><span style="color: #ed9d13">&quot;Only supports RGB color&quot;</span><span style="color: #d0d0d0">)</span>\r\n</pre></div>\r\n\r\n\r\n<br>\r\n<p>\r\n    There are just too many things we need to evaluate and check before deciding what to do. What if our function goes beyond lists and tuples and expects some custom data classes? we need to add <code>elif</code> statement for each case and the function gets cumbersome fast.\r\n</p>\r\n\r\n<br>\r\n\r\n<h3>Summary</h3>\r\n\r\n<br>\r\n\r\n<p>\r\n    Match case not only is more readable in many instances, but it can also handle complex situations with grace, and evaluate various patterns. Its syntax is very intuitive, as it borrows many aspects from other languages but maintains pythonic sway. This is a great addition to the language and we should be excited about it.\r\n</p>\r\n<br>\r\n<center>...</center>	2021-06-26 02:16:55.672087+00	1	\N	\N
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."django_content_type" ("id", "app_label", "model") FROM stdin;
1	blog	post
2	admin	logentry
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."django_migrations" ("id", "app", "name", "applied") FROM stdin;
1	contenttypes	0001_initial	2021-06-06 12:19:09.823265+00
2	auth	0001_initial	2021-06-06 12:19:10.14768+00
3	admin	0001_initial	2021-06-06 12:19:10.215595+00
4	admin	0002_logentry_remove_auto_add	2021-06-06 12:19:10.237248+00
5	admin	0003_logentry_add_action_flag_choices	2021-06-06 12:19:10.271406+00
6	contenttypes	0002_remove_content_type_name	2021-06-06 12:19:10.323129+00
7	auth	0002_alter_permission_name_max_length	2021-06-06 12:19:10.346032+00
8	auth	0003_alter_user_email_max_length	2021-06-06 12:19:10.365777+00
9	auth	0004_alter_user_username_opts	2021-06-06 12:19:10.38431+00
10	auth	0005_alter_user_last_login_null	2021-06-06 12:19:10.404227+00
11	auth	0006_require_contenttypes_0002	2021-06-06 12:19:10.413301+00
12	auth	0007_alter_validators_add_error_messages	2021-06-06 12:19:10.442077+00
13	auth	0008_alter_user_username_max_length	2021-06-06 12:19:10.512097+00
14	auth	0009_alter_user_last_name_max_length	2021-06-06 12:19:10.569175+00
15	auth	0010_alter_group_name_max_length	2021-06-06 12:19:10.59814+00
16	auth	0011_update_proxy_permissions	2021-06-06 12:19:10.629733+00
17	auth	0012_alter_user_first_name_max_length	2021-06-06 12:19:10.674866+00
18	blog	0001_initial	2021-06-06 12:19:10.729925+00
19	sessions	0001_initial	2021-06-06 12:19:10.768114+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: cqjjlyadmnjwko
--

COPY "public"."django_session" ("session_key", "session_data", "expire_date") FROM stdin;
f56ir8qvzvthyfgl6syipfxqyonblrdp	.eJxVjMsOwiAQRf-FtSFMy1B06b7fQIZhkKqBpI-V8d-1SRe6veec-1KBtrWEbZE5TEldFKjT7xaJH1J3kO5Ub01zq-s8Rb0r-qCLHluS5_Vw_w4KLeVbRwR3tr5jBujBmmScydBl9hZgEPSRIWXcNUQ0PQ2GxFiXJAOjkHp_ALjBN1A:1lprmZ:Xwjk5XNL8Xnjzx18QEBXwiFhpBYoXYLcVr9IbQKI9sQ	2021-06-20 12:21:35.349945+00
mulz4mmk292zoh8ai4hdh6yg5iqtjn9u	.eJxVjMsOwiAQRf-FtSFMy1B06b7fQIZhkKqBpI-V8d-1SRe6veec-1KBtrWEbZE5TEldFKjT7xaJH1J3kO5Ub01zq-s8Rb0r-qCLHluS5_Vw_w4KLeVbRwR3tr5jBujBmmScydBl9hZgEPSRIWXcNUQ0PQ2GxFiXJAOjkHp_ALjBN1A:1lvISz:tNMY0zE9LyZhyecM-mA_xDHSzEVfqccCyOs8L9CvBDs	2021-07-05 11:51:49.581087+00
5r8l7llb83kg1j3hakhfby8gnbyy9zc4	.eJxVjMsOwiAQRf-FtSFMy1B06b7fQIZhkKqBpI-V8d-1SRe6veec-1KBtrWEbZE5TEldFKjT7xaJH1J3kO5Ub01zq-s8Rb0r-qCLHluS5_Vw_w4KLeVbRwR3tr5jBujBmmScydBl9hZgEPSRIWXcNUQ0PQ2GxFiXJAOjkHp_ALjBN1A:1m22VB:1pFz1SYOs95ekfvP6efPsiM0RiW_WZseEg2JbEPD4QA	2021-07-24 02:13:57.20055+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."auth_group_id_seq"', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."auth_group_permissions_id_seq"', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."auth_permission_id_seq"', 28, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."auth_user_groups_id_seq"', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."auth_user_id_seq"', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."auth_user_user_permissions_id_seq"', 1, false);


--
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."blog_post_id_seq"', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."django_admin_log_id_seq"', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."django_content_type_id_seq"', 7, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cqjjlyadmnjwko
--

SELECT pg_catalog.setval('"public"."django_migrations_id_seq"', 19, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_group_id_94350c0c_uniq" UNIQUE ("user_id", "group_id");


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user"
    ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id");


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user"
    ADD CONSTRAINT "auth_user_username_key" UNIQUE ("username");


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."blog_post"
    ADD CONSTRAINT "blog_post_pkey" PRIMARY KEY ("id");


--
-- Name: blog_post blog_post_slug_key; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."blog_post"
    ADD CONSTRAINT "blog_post_slug_key" UNIQUE ("slug");


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_migrations"
    ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_session"
    ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING "btree" ("name" "varchar_pattern_ops");


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING "btree" ("group_id");


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING "btree" ("permission_id");


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING "btree" ("content_type_id");


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups" USING "btree" ("group_id");


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups" USING "btree" ("user_id");


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions" USING "btree" ("permission_id");


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions" USING "btree" ("user_id");


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING "btree" ("username" "varchar_pattern_ops");


--
-- Name: blog_post_author_id_dd7a8485; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "blog_post_author_id_dd7a8485" ON "public"."blog_post" USING "btree" ("author_id");


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING "btree" ("content_type_id");


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING "btree" ("user_id");


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING "btree" ("expire_date");


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: cqjjlyadmnjwko
--

CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING "btree" ("session_key" "varchar_pattern_ops");


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_author_id_dd7a8485_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."blog_post"
    ADD CONSTRAINT "blog_post_author_id_dd7a8485_fk_auth_user_id" FOREIGN KEY ("author_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cqjjlyadmnjwko
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

