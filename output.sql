--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Ubuntu 13.5-2.pgdg20.04+1)
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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."account_emailaddress" (
    "id" integer NOT NULL,
    "email" character varying(254) NOT NULL,
    "verified" boolean NOT NULL,
    "primary" boolean NOT NULL,
    "user_id" integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO bhhegmzremocwp;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."account_emailaddress_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."account_emailaddress_id_seq" OWNED BY "public"."account_emailaddress"."id";


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."account_emailconfirmation" (
    "id" integer NOT NULL,
    "created" timestamp with time zone NOT NULL,
    "sent" timestamp with time zone,
    "key" character varying(64) NOT NULL,
    "email_address_id" integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO bhhegmzremocwp;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."account_emailconfirmation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."account_emailconfirmation_id_seq" OWNED BY "public"."account_emailconfirmation"."id";


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."auth_group" (
    "id" integer NOT NULL,
    "name" character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO bhhegmzremocwp;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."auth_group_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "public"."auth_group"."id";


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."auth_group_permissions" (
    "id" bigint NOT NULL,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO bhhegmzremocwp;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "public"."auth_group_permissions"."id";


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."auth_permission" (
    "id" integer NOT NULL,
    "name" character varying(255) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO bhhegmzremocwp;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."auth_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "public"."auth_permission"."id";


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
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


ALTER TABLE public.auth_user OWNER TO bhhegmzremocwp;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."auth_user_groups" (
    "id" bigint NOT NULL,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO bhhegmzremocwp;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."auth_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "public"."auth_user_groups"."id";


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."auth_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "public"."auth_user"."id";


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."auth_user_user_permissions" (
    "id" bigint NOT NULL,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO bhhegmzremocwp;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "public"."auth_user_user_permissions"."id";


--
-- Name: checkout_order; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."checkout_order" (
    "id" bigint NOT NULL,
    "order_number" character varying(32) NOT NULL,
    "full_name" character varying(50) NOT NULL,
    "email" character varying(254) NOT NULL,
    "phone_number" character varying(20) NOT NULL,
    "country" character varying(2) NOT NULL,
    "postcode" character varying(20),
    "town_or_city" character varying(40) NOT NULL,
    "street_address1" character varying(80) NOT NULL,
    "street_address2" character varying(80),
    "county" character varying(80),
    "date" timestamp with time zone NOT NULL,
    "delivery_cost" numeric(6,2) NOT NULL,
    "order_total" numeric(10,2) NOT NULL,
    "grand_total" numeric(10,2) NOT NULL,
    "original_bag" "text" NOT NULL,
    "stripe_pid" character varying(254) NOT NULL,
    "user_profile_id" bigint
);


ALTER TABLE public.checkout_order OWNER TO bhhegmzremocwp;

--
-- Name: checkout_order_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."checkout_order_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.checkout_order_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: checkout_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."checkout_order_id_seq" OWNED BY "public"."checkout_order"."id";


--
-- Name: checkout_orderlineitem; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."checkout_orderlineitem" (
    "id" bigint NOT NULL,
    "product_size" character varying(2),
    "quantity" integer NOT NULL,
    "lineitem_total" numeric(6,2) NOT NULL,
    "order_id" bigint NOT NULL,
    "product_id" bigint NOT NULL
);


ALTER TABLE public.checkout_orderlineitem OWNER TO bhhegmzremocwp;

--
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."checkout_orderlineitem_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.checkout_orderlineitem_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."checkout_orderlineitem_id_seq" OWNED BY "public"."checkout_orderlineitem"."id";


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
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


ALTER TABLE public.django_admin_log OWNER TO bhhegmzremocwp;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."django_admin_log_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "public"."django_admin_log"."id";


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."django_content_type" (
    "id" integer NOT NULL,
    "app_label" character varying(100) NOT NULL,
    "model" character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO bhhegmzremocwp;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."django_content_type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "public"."django_content_type"."id";


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."django_migrations" (
    "id" bigint NOT NULL,
    "app" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "applied" timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO bhhegmzremocwp;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."django_migrations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."django_migrations_id_seq" OWNED BY "public"."django_migrations"."id";


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."django_session" (
    "session_key" character varying(40) NOT NULL,
    "session_data" "text" NOT NULL,
    "expire_date" timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO bhhegmzremocwp;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."django_site" (
    "id" integer NOT NULL,
    "domain" character varying(100) NOT NULL,
    "name" character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO bhhegmzremocwp;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."django_site_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."django_site_id_seq" OWNED BY "public"."django_site"."id";


--
-- Name: products_category; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."products_category" (
    "id" bigint NOT NULL,
    "name" character varying(254) NOT NULL,
    "friendly_name" character varying(254)
);


ALTER TABLE public.products_category OWNER TO bhhegmzremocwp;

--
-- Name: products_category_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."products_category_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_category_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: products_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."products_category_id_seq" OWNED BY "public"."products_category"."id";


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."products_product" (
    "id" bigint NOT NULL,
    "sku" character varying(254),
    "name" character varying(254) NOT NULL,
    "description" "text" NOT NULL,
    "has_sizes" boolean,
    "price" numeric(6,2) NOT NULL,
    "rating" numeric(6,2),
    "image_url" character varying(1024),
    "image" character varying(100),
    "category_id" bigint
);


ALTER TABLE public.products_product OWNER TO bhhegmzremocwp;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."products_product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."products_product_id_seq" OWNED BY "public"."products_product"."id";


--
-- Name: profiles_userprofile; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."profiles_userprofile" (
    "id" bigint NOT NULL,
    "default_phone_number" character varying(20),
    "default_street_address1" character varying(80),
    "default_street_address2" character varying(80),
    "default_town_or_city" character varying(40),
    "default_county" character varying(80),
    "default_postcode" character varying(20),
    "default_country" character varying(2),
    "user_id" integer NOT NULL
);


ALTER TABLE public.profiles_userprofile OWNER TO bhhegmzremocwp;

--
-- Name: profiles_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."profiles_userprofile_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_userprofile_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: profiles_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."profiles_userprofile_id_seq" OWNED BY "public"."profiles_userprofile"."id";


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."socialaccount_socialaccount" (
    "id" integer NOT NULL,
    "provider" character varying(30) NOT NULL,
    "uid" character varying(191) NOT NULL,
    "last_login" timestamp with time zone NOT NULL,
    "date_joined" timestamp with time zone NOT NULL,
    "extra_data" "text" NOT NULL,
    "user_id" integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO bhhegmzremocwp;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."socialaccount_socialaccount_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."socialaccount_socialaccount_id_seq" OWNED BY "public"."socialaccount_socialaccount"."id";


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."socialaccount_socialapp" (
    "id" integer NOT NULL,
    "provider" character varying(30) NOT NULL,
    "name" character varying(40) NOT NULL,
    "client_id" character varying(191) NOT NULL,
    "secret" character varying(191) NOT NULL,
    "key" character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO bhhegmzremocwp;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."socialaccount_socialapp_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."socialaccount_socialapp_id_seq" OWNED BY "public"."socialaccount_socialapp"."id";


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."socialaccount_socialapp_sites" (
    "id" bigint NOT NULL,
    "socialapp_id" integer NOT NULL,
    "site_id" integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO bhhegmzremocwp;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."socialaccount_socialapp_sites_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."socialaccount_socialapp_sites_id_seq" OWNED BY "public"."socialaccount_socialapp_sites"."id";


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: bhhegmzremocwp
--

CREATE TABLE "public"."socialaccount_socialtoken" (
    "id" integer NOT NULL,
    "token" "text" NOT NULL,
    "token_secret" "text" NOT NULL,
    "expires_at" timestamp with time zone,
    "account_id" integer NOT NULL,
    "app_id" integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO bhhegmzremocwp;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: bhhegmzremocwp
--

CREATE SEQUENCE "public"."socialaccount_socialtoken_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO bhhegmzremocwp;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhhegmzremocwp
--

ALTER SEQUENCE "public"."socialaccount_socialtoken_id_seq" OWNED BY "public"."socialaccount_socialtoken"."id";


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."account_emailaddress" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."account_emailaddress_id_seq"'::"regclass");


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."account_emailconfirmation" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."account_emailconfirmation_id_seq"'::"regclass");


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_group" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_id_seq"'::"regclass");


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_group_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_permissions_id_seq"'::"regclass");


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_permission" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_permission_id_seq"'::"regclass");


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_id_seq"'::"regclass");


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_groups" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_groups_id_seq"'::"regclass");


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_user_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_user_permissions_id_seq"'::"regclass");


--
-- Name: checkout_order id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."checkout_order" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."checkout_order_id_seq"'::"regclass");


--
-- Name: checkout_orderlineitem id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."checkout_orderlineitem" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."checkout_orderlineitem_id_seq"'::"regclass");


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_admin_log" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_admin_log_id_seq"'::"regclass");


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_content_type" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_content_type_id_seq"'::"regclass");


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_migrations" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_migrations_id_seq"'::"regclass");


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_site" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_site_id_seq"'::"regclass");


--
-- Name: products_category id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."products_category" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."products_category_id_seq"'::"regclass");


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."products_product" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."products_product_id_seq"'::"regclass");


--
-- Name: profiles_userprofile id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."profiles_userprofile" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."profiles_userprofile_id_seq"'::"regclass");


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialaccount" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."socialaccount_socialaccount_id_seq"'::"regclass");


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialapp" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."socialaccount_socialapp_id_seq"'::"regclass");


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialapp_sites" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."socialaccount_socialapp_sites_id_seq"'::"regclass");


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialtoken" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."socialaccount_socialtoken_id_seq"'::"regclass");


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."account_emailaddress" ("id", "email", "verified", "primary", "user_id") FROM stdin;
1	lukewillmore67@gmail.com	t	t	1
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."account_emailconfirmation" ("id", "created", "sent", "key", "email_address_id") FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."auth_group" ("id", "name") FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."auth_group_permissions" ("id", "group_id", "permission_id") FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."auth_permission" ("id", "name", "content_type_id", "codename") FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add site	7	add_site
26	Can change site	7	change_site
27	Can delete site	7	delete_site
28	Can view site	7	view_site
29	Can add email address	8	add_emailaddress
30	Can change email address	8	change_emailaddress
31	Can delete email address	8	delete_emailaddress
32	Can view email address	8	view_emailaddress
33	Can add email confirmation	9	add_emailconfirmation
34	Can change email confirmation	9	change_emailconfirmation
35	Can delete email confirmation	9	delete_emailconfirmation
36	Can view email confirmation	9	view_emailconfirmation
37	Can add social account	10	add_socialaccount
38	Can change social account	10	change_socialaccount
39	Can delete social account	10	delete_socialaccount
40	Can view social account	10	view_socialaccount
41	Can add social application	11	add_socialapp
42	Can change social application	11	change_socialapp
43	Can delete social application	11	delete_socialapp
44	Can view social application	11	view_socialapp
45	Can add social application token	12	add_socialtoken
46	Can change social application token	12	change_socialtoken
47	Can delete social application token	12	delete_socialtoken
48	Can view social application token	12	view_socialtoken
49	Can add category	13	add_category
50	Can change category	13	change_category
51	Can delete category	13	delete_category
52	Can view category	13	view_category
53	Can add product	14	add_product
54	Can change product	14	change_product
55	Can delete product	14	delete_product
56	Can view product	14	view_product
57	Can add order	15	add_order
58	Can change order	15	change_order
59	Can delete order	15	delete_order
60	Can view order	15	view_order
61	Can add order line item	16	add_orderlineitem
62	Can change order line item	16	change_orderlineitem
63	Can delete order line item	16	delete_orderlineitem
64	Can view order line item	16	view_orderlineitem
65	Can add user profile	17	add_userprofile
66	Can change user profile	17	change_userprofile
67	Can delete user profile	17	delete_userprofile
68	Can view user profile	17	view_userprofile
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") FROM stdin;
2	pbkdf2_sha256$260000$IoiHoKt3thv8UgY10geziL$msIcr+vX3SLnb/iQxhNcT8MBwvA3yCZ36lsHxJUMtoc=	2021-12-31 00:52:51.885942+00	t	code_institute				t	t	2021-12-31 00:52:11+00
1	pbkdf2_sha256$260000$WscpgxiWOVFy2DFDZvWRBU$IVn1vw6IHyTm/9GZ85Du7xbiL9m+18O0KomK97MLDVw=	2022-01-18 20:46:58.989975+00	t	luke.willmore			lukewillmore67@gmail.com	t	t	2021-12-29 21:45:43.298463+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."auth_user_groups" ("id", "user_id", "group_id") FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."auth_user_user_permissions" ("id", "user_id", "permission_id") FROM stdin;
\.


--
-- Data for Name: checkout_order; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."checkout_order" ("id", "order_number", "full_name", "email", "phone_number", "country", "postcode", "town_or_city", "street_address1", "street_address2", "county", "date", "delivery_cost", "order_total", "grand_total", "original_bag", "stripe_pid", "user_profile_id") FROM stdin;
1	A3F5D43082884DB4AECE265ADD4D8CD5	test	test@this.com	test	GB	\N	test	test	\N	\N	2022-01-18 20:35:49.041569+00	0.50	4.99	5.49	{"11": {"items_by_size": {"m": 1}}}	pi_3KJOOoL30gvN7JUG06DLV0S8	\N
2	A7108ACCEF6F4D2FB61E5869A7D96DBF	test	lukewillmore67@gmail.com	07474851984	GB	\N	1321	123	\N	\N	2022-01-18 20:41:30.781227+00	0.00	63.98	63.98	{"10": {"items_by_size": {"m": 2}}}	pi_3KJOTOL30gvN7JUG0kRjHjfr	\N
3	6A8444DDA546480297FCABE8340700B8	Luke Willmore	lukewillmore67@gmail.com	test	GB	\N	test	test	\N	\N	2022-01-18 20:45:25.851627+00	0.00	50.28	50.28	{"8": 3}	pi_3KJOY9L30gvN7JUG0coo1WIP	1
4	B60C70A42E0249CBAFAEDB3AA7055A84	luke	lukewillmore67@gmail.com	test	GB	\N	test	test	\N	\N	2022-01-18 20:50:05.027533+00	0.00	125.97	125.97	{"7": {"items_by_size": {"m": 3}}}	pi_3KJOcjL30gvN7JUG1jZE3jyH	1
5	512595C986524FAE8C58CE589C0A9E89	Testy Test	test@test.com	1234567890	IE	12345	anywhere	anywhere	\N	Anywhere	2022-02-07 13:47:27.387166+00	3.00	29.99	32.99	{"3": {"items_by_size": {"m": 1}}}	pi_3KQXYjL30gvN7JUG0ZbcDDNA	\N
6	C8EE7B2DD677422DAEAF531690C58CBC	Sourojit sourojit	sourojit@abc.com	2333	AT	sssss90	knkdnkndk	dnndK	kknkdnkdkn	sksss	2022-02-08 08:50:27.33364+00	0.50	4.99	5.49	{"2": 1}	pi_3KQpOmL30gvN7JUG1KvvMPRO	\N
\.


--
-- Data for Name: checkout_orderlineitem; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."checkout_orderlineitem" ("id", "product_size", "quantity", "lineitem_total", "order_id", "product_id") FROM stdin;
1	m	1	4.99	1	11
2	m	2	63.98	2	10
3	\N	3	50.28	3	8
4	m	3	125.97	4	7
5	m	1	29.99	5	3
6	\N	1	4.99	6	2
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") FROM stdin;
1	2021-12-29 21:48:23.425473+00	1	lukewillmore67@gmail.com	1	[{"added": {}}]	8	1
2	2021-12-29 22:13:25.606489+00	1	underwear_socks	1	[{"added": {}}]	13	1
3	2021-12-29 22:13:33.998538+00	2	bed_bath	1	[{"added": {}}]	13	1
4	2021-12-29 22:13:42.927473+00	3	clearance	1	[{"added": {}}]	13	1
5	2021-12-29 22:13:49.309522+00	4	deals	1	[{"added": {}}]	13	1
6	2021-12-29 22:13:56.759594+00	5	essentials	1	[{"added": {}}]	13	1
7	2021-12-29 22:14:03.93671+00	6	jeans	1	[{"added": {}}]	13	1
8	2021-12-29 22:14:12.035191+00	7	kitchen_dining	1	[{"added": {}}]	13	1
9	2021-12-29 22:14:18.52528+00	8	new_arrivals	1	[{"added": {}}]	13	1
10	2021-12-29 22:14:35.520409+00	9	shirts	1	[{"added": {}}]	13	1
11	2021-12-29 22:17:38.275011+00	1	Banana Patterned Socks	1	[{"added": {}}]	14	1
12	2021-12-29 22:20:36.219027+00	2	Bathroom Soap	1	[{"added": {}}]	14	1
13	2021-12-29 22:21:06.028587+00	3	Bedroom Duvet Set	1	[{"added": {}}]	14	1
14	2021-12-29 22:21:39.630954+00	4	Bag of Loose Lego Toys	1	[{"added": {}}]	14	1
15	2021-12-29 22:23:07.239899+00	5	Multipack of socks	1	[{"added": {}}]	14	1
16	2021-12-29 22:23:47.777557+00	6	First Aid Kit	1	[{"added": {}}]	14	1
17	2021-12-29 22:24:59.241881+00	7	Levi Jeans - PK of 3	1	[{"added": {}}]	14	1
18	2021-12-29 22:25:33.9252+00	8	Patterned Plates	1	[{"added": {}}]	14	1
19	2021-12-29 22:27:18.243145+00	9	Mountains Canvas	1	[{"added": {}}]	14	1
20	2021-12-29 22:27:56.270634+00	10	Shirts	1	[{"added": {}}]	14	1
21	2021-12-29 22:28:37.926172+00	11	Puma Boxer Shorts	1	[{"added": {}}]	14	1
22	2021-12-30 21:52:04.967644+00	8	Patterned Plates	2	[{"changed": {"fields": ["Image"]}}]	14	1
23	2021-12-30 21:52:11.837032+00	8	Patterned Plates	2	[{"changed": {"fields": ["Image"]}}]	14	1
24	2021-12-31 00:11:40.013577+00	1	whitehatstudio.example.com	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	7	1
25	2021-12-31 00:52:11.727616+00	2	code_institute	1	[{"added": {}}]	4	1
26	2021-12-31 00:52:26.497995+00	2	code_institute	2	[{"changed": {"fields": ["Staff status", "Superuser status"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."django_content_type" ("id", "app_label", "model") FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	sites	site
8	account	emailaddress
9	account	emailconfirmation
10	socialaccount	socialaccount
11	socialaccount	socialapp
12	socialaccount	socialtoken
13	products	category
14	products	product
15	checkout	order
16	checkout	orderlineitem
17	profiles	userprofile
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."django_migrations" ("id", "app", "name", "applied") FROM stdin;
1	contenttypes	0001_initial	2021-12-28 22:49:57.844269+00
2	auth	0001_initial	2021-12-28 22:49:58.547998+00
3	account	0001_initial	2021-12-28 22:49:58.825124+00
4	account	0002_email_max_length	2021-12-28 22:49:58.912343+00
5	admin	0001_initial	2021-12-28 22:49:59.139762+00
6	admin	0002_logentry_remove_auto_add	2021-12-28 22:49:59.207059+00
7	admin	0003_logentry_add_action_flag_choices	2021-12-28 22:49:59.293612+00
8	contenttypes	0002_remove_content_type_name	2021-12-28 22:49:59.425267+00
9	auth	0002_alter_permission_name_max_length	2021-12-28 22:49:59.53038+00
10	auth	0003_alter_user_email_max_length	2021-12-28 22:49:59.635647+00
11	auth	0004_alter_user_username_opts	2021-12-28 22:49:59.719726+00
12	auth	0005_alter_user_last_login_null	2021-12-28 22:49:59.82527+00
13	auth	0006_require_contenttypes_0002	2021-12-28 22:49:59.902983+00
14	auth	0007_alter_validators_add_error_messages	2021-12-28 22:49:59.99276+00
15	auth	0008_alter_user_username_max_length	2021-12-28 22:50:00.10604+00
16	auth	0009_alter_user_last_name_max_length	2021-12-28 22:50:00.216588+00
17	auth	0010_alter_group_name_max_length	2021-12-28 22:50:00.326635+00
18	auth	0011_update_proxy_permissions	2021-12-28 22:50:00.414794+00
19	auth	0012_alter_user_first_name_max_length	2021-12-28 22:50:00.528114+00
20	profiles	0001_initial	2021-12-28 22:50:00.696802+00
21	products	0001_initial	2021-12-28 22:50:00.883685+00
22	products	0002_alter_category_options	2021-12-28 22:50:00.946369+00
23	checkout	0001_initial	2021-12-28 22:50:01.193356+00
24	checkout	0002_auto_20211224_1044	2021-12-28 22:50:01.340487+00
25	checkout	0003_alter_order_country	2021-12-28 22:50:01.474973+00
26	checkout	0004_order_user_profile	2021-12-28 22:50:01.654375+00
27	sessions	0001_initial	2021-12-28 22:50:01.821623+00
28	sites	0001_initial	2021-12-28 22:50:01.913372+00
29	sites	0002_alter_domain_unique	2021-12-28 22:50:02.038307+00
30	socialaccount	0001_initial	2021-12-28 22:50:02.631148+00
31	socialaccount	0002_token_max_lengths	2021-12-28 22:50:02.778909+00
32	socialaccount	0003_extra_data_default_dict	2021-12-28 22:50:02.873626+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."django_session" ("session_key", "session_data", "expire_date") FROM stdin;
ktsr6ww73v9yg6nmc2hy3tfh1woh2ra4	.eJxVjDsOg0AMBe_iOloFvB9MmT5nQF57-SQRSCxUiLsHJIqkfTNvNmh4XfpmzWluBoUaCrj9bpHlncYT6IvHbjIyjcs8RHMq5qLZPCdNn8fl_gV6zv3xZi5ZsUUhH9ShVFiVinfrScm6oJqoYmKSEK13PmqraDEkLoITauWIRu6g3qCEutj3LxqpO_8:1n35wm:Un0h614VNPplpVf5zlfkH_vnqzluqZ43ceddnZKXkWc	2022-01-14 00:39:04.268351+00
3lbnng0la20nam9qra9a8vbp9cnrk29r	.eJxVjMsOwiAQRf-FtSGtvEqX7v0GMjCDRQ0YaI3G-O_apJtu7zn3fFiDJ7mUY2HjXBc6MAfLPLmlUXUJ2ch6tts8hBvlFeAV8qXwUPJck-erwjfa-Lkg3U-buwtM0Kb_G-AIKKIIVhtUIgxiOKLopLZopTKIZAewYIPxUivtMaKQwhD0RgUbwxpt1Foq2dHrkeqbjd33B22kRbM:1n9vM5:O4-54QBQLHTSpECoqh7CG1By54LB_V_uPy2fqTB-KEM	2022-02-01 20:45:25.985749+00
upld4tnygqmbcudght86fgvf61qlyq3w	.eJxVjMsOwiAQRf-FtSGtvEqX7v0GMjCDRQ0YaI3G-O_apJtu7zn3fFiDJ7mUY2HjXBc6MAfLPLmlUXUJ2ch6tts8hBvlFeAV8qXwUPJck-erwjfa-Lkg3U-buwtM0Kb_G-AIKKIIVhtUIgxiOKLopLZopTKIZAewYIPxUivtMaKQwhD0RgUbwxpt1Foq2dHrkeqbjd33B22kRbM:1n9vQb:Wgvt9AB02rv1JOrhTTKAseYX-cg0qjTDEflse0VQtkM	2022-02-01 20:50:05.609486+00
5tgxxg03eusheauae534ovplxxn3b9qh	eyJzYXZlX2luZm8iOmZhbHNlLCJiYWciOnsiMyI6eyJpdGVtc19ieV9zaXplIjp7Im0iOjF9fX19:1nH4Sl:R8zB2flZS_OcPupJRXykLoBaz3fAjg0ha7PbITfFYVU	2022-02-21 13:53:51.878458+00
lhyzlq5jk3c351i1zb7vniyc4a6ex51p	eyJzYXZlX2luZm8iOmZhbHNlfQ:1nHMCh:dT4kgR_NjLnK_R9Gaq9mdFkC11w87gMR1byJGXoarTU	2022-02-22 08:50:27.578997+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."django_site" ("id", "domain", "name") FROM stdin;
1	whitehatstudio.example.com	Whitehat Studio
\.


--
-- Data for Name: products_category; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."products_category" ("id", "name", "friendly_name") FROM stdin;
1	underwear_socks	Underwear & Socks
2	bed_bath	Bed & Bath
3	clearance	Clearance
4	deals	Deals
5	essentials	Essentials
6	jeans	Jeans
7	kitchen_dining	Kitchen & Dining
8	new_arrivals	New Arrivals
9	shirts	Shirts
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."products_product" ("id", "sku", "name", "description", "has_sizes", "price", "rating", "image_url", "image", "category_id") FROM stdin;
1	whs100001	Banana Patterned Socks	Banana Patterned Socks	f	14.99	4.10	\N	socks.jpg	1
2	whs100002	Bathroom Soap	Soap for the bathroom	f	4.99	4.30	\N	bathroom_soap.jpg	2
3	whs100003	Bedroom Duvet Set	Bedroom duvet set	t	29.99	3.70	\N	bedroom.jpg	2
4	whs100004	Bag of Loose Lego Toys	Bag of Loose Lego Toys	f	19.99	4.00	\N	clearance_toys.jpg	3
5	whs100005	Multipack of socks	Multipack of socks	f	14.99	3.80	\N	multipack_socks_deals.jpg	4
6	whs100006	First Aid Kit	First aid kit	f	21.99	3.60	\N	firstaid_essential.jpg	5
7	whs100007	Levi Jeans - PK of 3	Levi Jeans - pack of 3	t	41.99	4.90	\N	jeans.jpg	6
9	whs100009	Mountains Canvas	Mountains Canvas	f	6.99	2.90	\N	new_arrival_canvas.jpg	8
10	whs100010	Shirts	Shirts	t	31.99	4.50	\N	shirts.jpg	9
11	whs100011	Puma Boxer Shorts	Puma Boxer Shorts	t	4.99	3.70	\N	boxers.jpg	1
8	whs100008	Patterned Plates	Plates	f	16.76	3.80	\N	plates.jpg	7
\.


--
-- Data for Name: profiles_userprofile; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."profiles_userprofile" ("id", "default_phone_number", "default_street_address1", "default_street_address2", "default_town_or_city", "default_county", "default_postcode", "default_country", "user_id") FROM stdin;
2	\N	\N	\N	\N	\N	\N	\N	2
1	test	test	\N	test	\N	\N	GB	1
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."socialaccount_socialaccount" ("id", "provider", "uid", "last_login", "date_joined", "extra_data", "user_id") FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."socialaccount_socialapp" ("id", "provider", "name", "client_id", "secret", "key") FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."socialaccount_socialapp_sites" ("id", "socialapp_id", "site_id") FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: bhhegmzremocwp
--

COPY "public"."socialaccount_socialtoken" ("id", "token", "token_secret", "expires_at", "account_id", "app_id") FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."account_emailaddress_id_seq"', 1, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."account_emailconfirmation_id_seq"', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."auth_group_id_seq"', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."auth_group_permissions_id_seq"', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."auth_permission_id_seq"', 68, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."auth_user_groups_id_seq"', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."auth_user_id_seq"', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."auth_user_user_permissions_id_seq"', 1, false);


--
-- Name: checkout_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."checkout_order_id_seq"', 6, true);


--
-- Name: checkout_orderlineitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."checkout_orderlineitem_id_seq"', 6, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."django_admin_log_id_seq"', 26, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."django_content_type_id_seq"', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."django_migrations_id_seq"', 32, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."django_site_id_seq"', 1, true);


--
-- Name: products_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."products_category_id_seq"', 9, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."products_product_id_seq"', 11, true);


--
-- Name: profiles_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."profiles_userprofile_id_seq"', 2, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."socialaccount_socialaccount_id_seq"', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."socialaccount_socialapp_id_seq"', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."socialaccount_socialapp_sites_id_seq"', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhhegmzremocwp
--

SELECT pg_catalog.setval('"public"."socialaccount_socialtoken_id_seq"', 1, false);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."account_emailaddress"
    ADD CONSTRAINT "account_emailaddress_email_key" UNIQUE ("email");


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."account_emailaddress"
    ADD CONSTRAINT "account_emailaddress_pkey" PRIMARY KEY ("id");


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."account_emailconfirmation"
    ADD CONSTRAINT "account_emailconfirmation_key_key" UNIQUE ("key");


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."account_emailconfirmation"
    ADD CONSTRAINT "account_emailconfirmation_pkey" PRIMARY KEY ("id");


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_group_id_94350c0c_uniq" UNIQUE ("user_id", "group_id");


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user"
    ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id");


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user"
    ADD CONSTRAINT "auth_user_username_key" UNIQUE ("username");


--
-- Name: checkout_order checkout_order_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."checkout_order"
    ADD CONSTRAINT "checkout_order_pkey" PRIMARY KEY ("id");


--
-- Name: checkout_orderlineitem checkout_orderlineitem_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."checkout_orderlineitem"
    ADD CONSTRAINT "checkout_orderlineitem_pkey" PRIMARY KEY ("id");


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_migrations"
    ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_session"
    ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_site"
    ADD CONSTRAINT "django_site_domain_a2e37b91_uniq" UNIQUE ("domain");


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_site"
    ADD CONSTRAINT "django_site_pkey" PRIMARY KEY ("id");


--
-- Name: products_category products_category_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."products_category"
    ADD CONSTRAINT "products_category_pkey" PRIMARY KEY ("id");


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."products_product"
    ADD CONSTRAINT "products_product_pkey" PRIMARY KEY ("id");


--
-- Name: profiles_userprofile profiles_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."profiles_userprofile"
    ADD CONSTRAINT "profiles_userprofile_pkey" PRIMARY KEY ("id");


--
-- Name: profiles_userprofile profiles_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."profiles_userprofile"
    ADD CONSTRAINT "profiles_userprofile_user_id_key" UNIQUE ("user_id");


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialaccount"
    ADD CONSTRAINT "socialaccount_socialaccount_pkey" PRIMARY KEY ("id");


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialaccount"
    ADD CONSTRAINT "socialaccount_socialaccount_provider_uid_fc810c6e_uniq" UNIQUE ("provider", "uid");


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialapp_sites"
    ADD CONSTRAINT "socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq" UNIQUE ("socialapp_id", "site_id");


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialapp"
    ADD CONSTRAINT "socialaccount_socialapp_pkey" PRIMARY KEY ("id");


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialapp_sites"
    ADD CONSTRAINT "socialaccount_socialapp_sites_pkey" PRIMARY KEY ("id");


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq" UNIQUE ("app_id", "account_id");


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_socialtoken_pkey" PRIMARY KEY ("id");


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "account_emailaddress_email_03be32b2_like" ON "public"."account_emailaddress" USING "btree" ("email" "varchar_pattern_ops");


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "account_emailaddress_user_id_2c513194" ON "public"."account_emailaddress" USING "btree" ("user_id");


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "account_emailconfirmation_email_address_id_5b7f8c58" ON "public"."account_emailconfirmation" USING "btree" ("email_address_id");


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "account_emailconfirmation_key_f43612bd_like" ON "public"."account_emailconfirmation" USING "btree" ("key" "varchar_pattern_ops");


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING "btree" ("name" "varchar_pattern_ops");


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING "btree" ("group_id");


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING "btree" ("permission_id");


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING "btree" ("content_type_id");


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups" USING "btree" ("group_id");


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups" USING "btree" ("user_id");


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions" USING "btree" ("permission_id");


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions" USING "btree" ("user_id");


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING "btree" ("username" "varchar_pattern_ops");


--
-- Name: checkout_order_user_profile_id_949184a7; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "checkout_order_user_profile_id_949184a7" ON "public"."checkout_order" USING "btree" ("user_profile_id");


--
-- Name: checkout_orderlineitem_order_id_b4cfbe6b; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "checkout_orderlineitem_order_id_b4cfbe6b" ON "public"."checkout_orderlineitem" USING "btree" ("order_id");


--
-- Name: checkout_orderlineitem_product_id_739c699d; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "checkout_orderlineitem_product_id_739c699d" ON "public"."checkout_orderlineitem" USING "btree" ("product_id");


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING "btree" ("content_type_id");


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING "btree" ("user_id");


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING "btree" ("expire_date");


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING "btree" ("session_key" "varchar_pattern_ops");


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "django_site_domain_a2e37b91_like" ON "public"."django_site" USING "btree" ("domain" "varchar_pattern_ops");


--
-- Name: products_product_category_id_9b594869; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "products_product_category_id_9b594869" ON "public"."products_product" USING "btree" ("category_id");


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "socialaccount_socialaccount_user_id_8146e70c" ON "public"."socialaccount_socialaccount" USING "btree" ("user_id");


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "socialaccount_socialapp_sites_site_id_2579dee5" ON "public"."socialaccount_socialapp_sites" USING "btree" ("site_id");


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "socialaccount_socialapp_sites_socialapp_id_97fb6e7d" ON "public"."socialaccount_socialapp_sites" USING "btree" ("socialapp_id");


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "socialaccount_socialtoken_account_id_951f210e" ON "public"."socialaccount_socialtoken" USING "btree" ("account_id");


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: bhhegmzremocwp
--

CREATE INDEX "socialaccount_socialtoken_app_id_636a42d7" ON "public"."socialaccount_socialtoken" USING "btree" ("app_id");


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."account_emailaddress"
    ADD CONSTRAINT "account_emailaddress_user_id_2c513194_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."account_emailconfirmation"
    ADD CONSTRAINT "account_emailconfirm_email_address_id_5b7f8c58_fk_account_e" FOREIGN KEY ("email_address_id") REFERENCES "public"."account_emailaddress"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: checkout_order checkout_order_user_profile_id_949184a7_fk_profiles_; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."checkout_order"
    ADD CONSTRAINT "checkout_order_user_profile_id_949184a7_fk_profiles_" FOREIGN KEY ("user_profile_id") REFERENCES "public"."profiles_userprofile"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: checkout_orderlineitem checkout_orderlineit_product_id_739c699d_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."checkout_orderlineitem"
    ADD CONSTRAINT "checkout_orderlineit_product_id_739c699d_fk_products_" FOREIGN KEY ("product_id") REFERENCES "public"."products_product"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: checkout_orderlineitem checkout_orderlineitem_order_id_b4cfbe6b_fk_checkout_order_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."checkout_orderlineitem"
    ADD CONSTRAINT "checkout_orderlineitem_order_id_b4cfbe6b_fk_checkout_order_id" FOREIGN KEY ("order_id") REFERENCES "public"."checkout_order"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_category_id_9b594869_fk_products_category_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."products_product"
    ADD CONSTRAINT "products_product_category_id_9b594869_fk_products_category_id" FOREIGN KEY ("category_id") REFERENCES "public"."products_category"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profiles_userprofile profiles_userprofile_user_id_616bed88_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."profiles_userprofile"
    ADD CONSTRAINT "profiles_userprofile_user_id_616bed88_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_social_account_id_951f210e_fk_socialacc" FOREIGN KEY ("account_id") REFERENCES "public"."socialaccount_socialaccount"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_social_app_id_636a42d7_fk_socialacc" FOREIGN KEY ("app_id") REFERENCES "public"."socialaccount_socialapp"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialapp_sites"
    ADD CONSTRAINT "socialaccount_social_site_id_2579dee5_fk_django_si" FOREIGN KEY ("site_id") REFERENCES "public"."django_site"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialapp_sites"
    ADD CONSTRAINT "socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc" FOREIGN KEY ("socialapp_id") REFERENCES "public"."socialaccount_socialapp"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bhhegmzremocwp
--

ALTER TABLE ONLY "public"."socialaccount_socialaccount"
    ADD CONSTRAINT "socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

