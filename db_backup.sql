toc.dat                                                                                             0000600 0004000 0002000 00000212041 14045752571 0014451 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       (    :        	        y            check_db #   11.7 (Ubuntu 11.7-0ubuntu0.19.10.1) #   11.7 (Ubuntu 11.7-0ubuntu0.19.10.1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         �           1262    84993    check_db    DATABASE     n   CREATE DATABASE check_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';
    DROP DATABASE check_db;
             postgres    false         �            1259    84994    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public      	   espatatis    false         �            1259    84997    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public    	   espatatis    false    196         �           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
            public    	   espatatis    false    197         �            1259    84999    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public      	   espatatis    false         �            1259    85002     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public    	   espatatis    false    198         �           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
            public    	   espatatis    false    199         �            1259    85004 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public      	   espatatis    false         �            1259    85007    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public    	   espatatis    false    200         �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public    	   espatatis    false    201         �            1259    85009    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public      	   espatatis    false         �            1259    85012    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public    	   espatatis    false    202         �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public    	   espatatis    false    203         �            1259    85014    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public      	   espatatis    false         �            1259    85017    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public    	   espatatis    false    204         �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public    	   espatatis    false    205         �            1259    85019    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public      	   espatatis    false         �            1259    85026    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public    	   espatatis    false    206         �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public    	   espatatis    false    207         �            1259    85028    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public      	   espatatis    false         �            1259    85031    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public    	   espatatis    false    208         �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public    	   espatatis    false    209         �            1259    85033    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public      	   espatatis    false         �            1259    85039    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public    	   espatatis    false    210         �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public    	   espatatis    false    211         �            1259    85041    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public      	   espatatis    false         �            1259    85047    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public      	   espatatis    false         �            1259    85050    django_site_id_seq    SEQUENCE     {   CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public    	   espatatis    false    213         �           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
            public    	   espatatis    false    214         �            1259    85052    events_event    TABLE     �  CREATE TABLE public.events_event (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    homepage character varying(200) NOT NULL,
    is_published boolean NOT NULL,
    auth_token character varying(50) NOT NULL,
    owner_email character varying(256) NOT NULL
);
     DROP TABLE public.events_event;
       public      	   espatatis    false         �            1259    85058    events_eventreview    TABLE       CREATE TABLE public.events_eventreview (
    id uuid NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    comment text,
    is_approved boolean NOT NULL,
    event_id uuid NOT NULL,
    moderator_id integer NOT NULL
);
 &   DROP TABLE public.events_eventreview;
       public      	   espatatis    false         �            1259    85064    reversion_revision    TABLE     �   CREATE TABLE public.reversion_revision (
    id integer NOT NULL,
    manager_slug character varying(191) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    comment text NOT NULL,
    user_id integer
);
 &   DROP TABLE public.reversion_revision;
       public      	   espatatis    false         �            1259    85070    reversion_revision_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reversion_revision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.reversion_revision_id_seq;
       public    	   espatatis    false    217         �           0    0    reversion_revision_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.reversion_revision_id_seq OWNED BY public.reversion_revision.id;
            public    	   espatatis    false    218         �            1259    85072    reversion_version    TABLE     1  CREATE TABLE public.reversion_version (
    id integer NOT NULL,
    object_id text NOT NULL,
    object_id_int integer,
    format character varying(255) NOT NULL,
    serialized_data text NOT NULL,
    object_repr text NOT NULL,
    content_type_id integer NOT NULL,
    revision_id integer NOT NULL
);
 %   DROP TABLE public.reversion_version;
       public      	   espatatis    false         �            1259    85078    reversion_version_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reversion_version_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.reversion_version_id_seq;
       public    	   espatatis    false    219         �           0    0    reversion_version_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.reversion_version_id_seq OWNED BY public.reversion_version.id;
            public    	   espatatis    false    220         �            1259    85080    socialaccount_socialaccount    TABLE     D  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(255) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public      	   espatatis    false         �            1259    85086 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public    	   espatatis    false    221         �           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
            public    	   espatatis    false    222         �            1259    85088    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(100) NOT NULL,
    secret character varying(100) NOT NULL,
    key character varying(100) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public      	   espatatis    false         �            1259    85091    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public    	   espatatis    false    223         �           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
            public    	   espatatis    false    224         �            1259    85093    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public      	   espatatis    false         �            1259    85096 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public    	   espatatis    false    225         �           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
            public    	   espatatis    false    226         �            1259    85098    socialaccount_socialtoken    TABLE     �   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public      	   espatatis    false         �            1259    85104     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public    	   espatatis    false    227         �           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
            public    	   espatatis    false    228         �            1259    85106 
   users_user    TABLE        CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    is_moderator boolean NOT NULL
);
    DROP TABLE public.users_user;
       public      	   espatatis    false         �            1259    85109    users_user_groups    TABLE     �   CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public      	   espatatis    false         �            1259    85112    users_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public    	   espatatis    false    230         �           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
            public    	   espatatis    false    231         �            1259    85114    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public    	   espatatis    false    229         �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
            public    	   espatatis    false    232         �            1259    85116    users_user_user_permissions    TABLE     �   CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public      	   espatatis    false         �            1259    85119 "   users_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public    	   espatatis    false    233         �           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
            public    	   espatatis    false    234         t           2604    85121    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    197    196         u           2604    85122    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    199    198         v           2604    85123    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    201    200         w           2604    85124    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    203    202         x           2604    85125    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    205    204         y           2604    85126    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    207    206         {           2604    85127    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    209    208         |           2604    85128    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    211    210         }           2604    85129    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    214    213         ~           2604    85130    reversion_revision id    DEFAULT     ~   ALTER TABLE ONLY public.reversion_revision ALTER COLUMN id SET DEFAULT nextval('public.reversion_revision_id_seq'::regclass);
 D   ALTER TABLE public.reversion_revision ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    218    217                    2604    85131    reversion_version id    DEFAULT     |   ALTER TABLE ONLY public.reversion_version ALTER COLUMN id SET DEFAULT nextval('public.reversion_version_id_seq'::regclass);
 C   ALTER TABLE public.reversion_version ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    220    219         �           2604    85132    socialaccount_socialaccount id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    222    221         �           2604    85133    socialaccount_socialapp id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    224    223         �           2604    85134     socialaccount_socialapp_sites id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    226    225         �           2604    85135    socialaccount_socialtoken id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    228    227         �           2604    85136    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    232    229         �           2604    85137    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    231    230         �           2604    85138    users_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public    	   espatatis    false    234    233         y          0    84994    account_emailaddress 
   TABLE DATA               W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public    	   espatatis    false    196       3193.dat {          0    84999    account_emailconfirmation 
   TABLE DATA               ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public    	   espatatis    false    198       3195.dat }          0    85004 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public    	   espatatis    false    200       3197.dat           0    85009    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public    	   espatatis    false    202       3199.dat �          0    85014    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public    	   espatatis    false    204       3201.dat �          0    85019    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public    	   espatatis    false    206       3203.dat �          0    85028    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public    	   espatatis    false    208       3205.dat �          0    85033    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public    	   espatatis    false    210       3207.dat �          0    85041    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public    	   espatatis    false    212       3209.dat �          0    85047    django_site 
   TABLE DATA               7   COPY public.django_site (id, domain, name) FROM stdin;
    public    	   espatatis    false    213       3210.dat �          0    85052    events_event 
   TABLE DATA               �   COPY public.events_event (created, modified, id, name, description, start_date, end_date, homepage, is_published, auth_token, owner_email) FROM stdin;
    public    	   espatatis    false    215       3212.dat �          0    85058    events_eventreview 
   TABLE DATA               q   COPY public.events_eventreview (id, created, modified, comment, is_approved, event_id, moderator_id) FROM stdin;
    public    	   espatatis    false    216       3213.dat �          0    85064    reversion_revision 
   TABLE DATA               ^   COPY public.reversion_revision (id, manager_slug, date_created, comment, user_id) FROM stdin;
    public    	   espatatis    false    217       3214.dat �          0    85072    reversion_version 
   TABLE DATA               �   COPY public.reversion_version (id, object_id, object_id_int, format, serialized_data, object_repr, content_type_id, revision_id) FROM stdin;
    public    	   espatatis    false    219       3216.dat �          0    85080    socialaccount_socialaccount 
   TABLE DATA               v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public    	   espatatis    false    221       3218.dat �          0    85088    socialaccount_socialapp 
   TABLE DATA               ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public    	   espatatis    false    223       3220.dat �          0    85093    socialaccount_socialapp_sites 
   TABLE DATA               R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public    	   espatatis    false    225       3222.dat �          0    85098    socialaccount_socialtoken 
   TABLE DATA               l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public    	   espatatis    false    227       3224.dat �          0    85106 
   users_user 
   TABLE DATA               �   COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_moderator) FROM stdin;
    public    	   espatatis    false    229       3226.dat �          0    85109    users_user_groups 
   TABLE DATA               B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public    	   espatatis    false    230       3227.dat �          0    85116    users_user_user_permissions 
   TABLE DATA               Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public    	   espatatis    false    233       3230.dat �           0    0    account_emailaddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 2, true);
            public    	   espatatis    false    197         �           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 2, true);
            public    	   espatatis    false    199         �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public    	   espatatis    false    201         �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public    	   espatatis    false    203         �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
            public    	   espatatis    false    205         �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 105, true);
            public    	   espatatis    false    207         �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
            public    	   espatatis    false    209         �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);
            public    	   espatatis    false    211         �           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 2, true);
            public    	   espatatis    false    214         �           0    0    reversion_revision_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.reversion_revision_id_seq', 72, true);
            public    	   espatatis    false    218         �           0    0    reversion_version_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.reversion_version_id_seq', 72, true);
            public    	   espatatis    false    220         �           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
            public    	   espatatis    false    222         �           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
            public    	   espatatis    false    224         �           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
            public    	   espatatis    false    226         �           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
            public    	   espatatis    false    228         �           0    0    users_user_groups_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);
            public    	   espatatis    false    231         �           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 7, true);
            public    	   espatatis    false    232         �           0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
            public    	   espatatis    false    234         �           2606    85149 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public      	   espatatis    false    196         �           2606    85151 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public      	   espatatis    false    196         �           2606    85153 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public      	   espatatis    false    198         �           2606    85155 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public      	   espatatis    false    198         �           2606    85157    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public      	   espatatis    false    200         �           2606    85159 H   auth_group_permissions auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public      	   espatatis    false    202    202         �           2606    85161 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public      	   espatatis    false    202         �           2606    85163    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public      	   espatatis    false    200         �           2606    85165 <   auth_permission auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public      	   espatatis    false    204    204         �           2606    85167 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public      	   espatatis    false    204         �           2606    85169 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public      	   espatatis    false    206         �           2606    85171 G   django_content_type django_content_type_app_label_4a8cda6e846a4926_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_4a8cda6e846a4926_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_4a8cda6e846a4926_uniq;
       public      	   espatatis    false    208    208         �           2606    85173 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public      	   espatatis    false    208         �           2606    85175 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public      	   espatatis    false    210         �           2606    85177 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public      	   espatatis    false    212         �           2606    85179 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public      	   espatatis    false    213         �           2606    85181    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public      	   espatatis    false    213         �           2606    85183    events_event events_event_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.events_event
    ADD CONSTRAINT events_event_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.events_event DROP CONSTRAINT events_event_pkey;
       public      	   espatatis    false    215         �           2606    85185 *   events_eventreview events_eventreview_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.events_eventreview
    ADD CONSTRAINT events_eventreview_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.events_eventreview DROP CONSTRAINT events_eventreview_pkey;
       public      	   espatatis    false    216         �           2606    85187 *   reversion_revision reversion_revision_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.reversion_revision
    ADD CONSTRAINT reversion_revision_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.reversion_revision DROP CONSTRAINT reversion_revision_pkey;
       public      	   espatatis    false    217         �           2606    85189 (   reversion_version reversion_version_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.reversion_version
    ADD CONSTRAINT reversion_version_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.reversion_version DROP CONSTRAINT reversion_version_pkey;
       public      	   espatatis    false    219         �           2606    85191 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public      	   espatatis    false    221         �           2606    85193 V   socialaccount_socialaccount socialaccount_socialaccount_provider_3dbfab48c8215d28_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_3dbfab48c8215d28_uniq UNIQUE (provider, uid);
 �   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_3dbfab48c8215d28_uniq;
       public      	   espatatis    false    221    221         �           2606    85195 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public      	   espatatis    false    223         �           2606    85197 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public      	   espatatis    false    225         �           2606    85199 T   socialaccount_socialapp_sites socialaccount_socialapp_sites_socialapp_id_site_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_socialapp_id_site_id_key UNIQUE (socialapp_id, site_id);
 ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_socialapp_id_site_id_key;
       public      	   espatatis    false    225    225         �           2606    85201 P   socialaccount_socialtoken socialaccount_socialtoken_app_id_59f7b445c6fe75aa_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_59f7b445c6fe75aa_uniq UNIQUE (app_id, account_id);
 z   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_59f7b445c6fe75aa_uniq;
       public      	   espatatis    false    227    227         �           2606    85203 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public      	   espatatis    false    227         �           2606    85205 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public      	   espatatis    false    230         �           2606    85207 8   users_user_groups users_user_groups_user_id_group_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 b   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_key;
       public      	   espatatis    false    230    230         �           2606    85209    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public      	   espatatis    false    229         �           2606    85211 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public      	   espatatis    false    233         �           2606    85213 Q   users_user_user_permissions users_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 {   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_key;
       public      	   espatatis    false    233    233         �           2606    85215 "   users_user users_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_username_key;
       public      	   espatatis    false    229         �           1259    85216    account_emailaddress_e8701ad4    INDEX     a   CREATE INDEX account_emailaddress_e8701ad4 ON public.account_emailaddress USING btree (user_id);
 1   DROP INDEX public.account_emailaddress_e8701ad4;
       public      	   espatatis    false    196         �           1259    85217 0   account_emailaddress_email_67ce424d24fd2336_like    INDEX     �   CREATE INDEX account_emailaddress_email_67ce424d24fd2336_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 D   DROP INDEX public.account_emailaddress_email_67ce424d24fd2336_like;
       public      	   espatatis    false    196         �           1259    85218 "   account_emailconfirmation_6f1edeac    INDEX     t   CREATE INDEX account_emailconfirmation_6f1edeac ON public.account_emailconfirmation USING btree (email_address_id);
 6   DROP INDEX public.account_emailconfirmation_6f1edeac;
       public      	   espatatis    false    198         �           1259    85219 3   account_emailconfirmation_key_117b4449a0cddffd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_117b4449a0cddffd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 G   DROP INDEX public.account_emailconfirmation_key_117b4449a0cddffd_like;
       public      	   espatatis    false    198         �           1259    85220 %   auth_group_name_69de3b9b9e90297a_like    INDEX     p   CREATE INDEX auth_group_name_69de3b9b9e90297a_like ON public.auth_group USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.auth_group_name_69de3b9b9e90297a_like;
       public      	   espatatis    false    200         �           1259    85221    auth_group_permissions_0e939a4f    INDEX     f   CREATE INDEX auth_group_permissions_0e939a4f ON public.auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public      	   espatatis    false    202         �           1259    85222    auth_group_permissions_8373b171    INDEX     k   CREATE INDEX auth_group_permissions_8373b171 ON public.auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public      	   espatatis    false    202         �           1259    85223    auth_permission_417f1b1c    INDEX     _   CREATE INDEX auth_permission_417f1b1c ON public.auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public      	   espatatis    false    204         �           1259    85224    django_admin_log_417f1b1c    INDEX     a   CREATE INDEX django_admin_log_417f1b1c ON public.django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public      	   espatatis    false    206         �           1259    85225    django_admin_log_e8701ad4    INDEX     Y   CREATE INDEX django_admin_log_e8701ad4 ON public.django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public      	   espatatis    false    206         �           1259    85226    django_session_de54fa62    INDEX     Y   CREATE INDEX django_session_de54fa62 ON public.django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public      	   espatatis    false    212         �           1259    85227 0   django_session_session_key_304e106b8e5653c2_like    INDEX     �   CREATE INDEX django_session_session_key_304e106b8e5653c2_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 D   DROP INDEX public.django_session_session_key_304e106b8e5653c2_like;
       public      	   espatatis    false    212         �           1259    85228     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public      	   espatatis    false    213         �           1259    85229    events_eventreview_4437cfac    INDEX     ^   CREATE INDEX events_eventreview_4437cfac ON public.events_eventreview USING btree (event_id);
 /   DROP INDEX public.events_eventreview_4437cfac;
       public      	   espatatis    false    216         �           1259    85230    events_eventreview_89cad286    INDEX     b   CREATE INDEX events_eventreview_89cad286 ON public.events_eventreview USING btree (moderator_id);
 /   DROP INDEX public.events_eventreview_89cad286;
       public      	   espatatis    false    216         �           1259    85231    reversion_revision_b16b0f06    INDEX     b   CREATE INDEX reversion_revision_b16b0f06 ON public.reversion_revision USING btree (manager_slug);
 /   DROP INDEX public.reversion_revision_b16b0f06;
       public      	   espatatis    false    217         �           1259    85232    reversion_revision_c69e55a4    INDEX     b   CREATE INDEX reversion_revision_c69e55a4 ON public.reversion_revision USING btree (date_created);
 /   DROP INDEX public.reversion_revision_c69e55a4;
       public      	   espatatis    false    217         �           1259    85233    reversion_revision_e8701ad4    INDEX     ]   CREATE INDEX reversion_revision_e8701ad4 ON public.reversion_revision USING btree (user_id);
 /   DROP INDEX public.reversion_revision_e8701ad4;
       public      	   espatatis    false    217         �           1259    85234 5   reversion_revision_manager_slug_54d21219582503b1_like    INDEX     �   CREATE INDEX reversion_revision_manager_slug_54d21219582503b1_like ON public.reversion_revision USING btree (manager_slug varchar_pattern_ops);
 I   DROP INDEX public.reversion_revision_manager_slug_54d21219582503b1_like;
       public      	   espatatis    false    217         �           1259    85235    reversion_version_0c9ba3a3    INDEX     a   CREATE INDEX reversion_version_0c9ba3a3 ON public.reversion_version USING btree (object_id_int);
 .   DROP INDEX public.reversion_version_0c9ba3a3;
       public      	   espatatis    false    219         �           1259    85236    reversion_version_417f1b1c    INDEX     c   CREATE INDEX reversion_version_417f1b1c ON public.reversion_version USING btree (content_type_id);
 .   DROP INDEX public.reversion_version_417f1b1c;
       public      	   espatatis    false    219         �           1259    85237    reversion_version_5de09a8d    INDEX     _   CREATE INDEX reversion_version_5de09a8d ON public.reversion_version USING btree (revision_id);
 .   DROP INDEX public.reversion_version_5de09a8d;
       public      	   espatatis    false    219         �           1259    85238 $   socialaccount_socialaccount_e8701ad4    INDEX     o   CREATE INDEX socialaccount_socialaccount_e8701ad4 ON public.socialaccount_socialaccount USING btree (user_id);
 8   DROP INDEX public.socialaccount_socialaccount_e8701ad4;
       public      	   espatatis    false    221         �           1259    85239 &   socialaccount_socialapp_sites_9365d6e7    INDEX     s   CREATE INDEX socialaccount_socialapp_sites_9365d6e7 ON public.socialaccount_socialapp_sites USING btree (site_id);
 :   DROP INDEX public.socialaccount_socialapp_sites_9365d6e7;
       public      	   espatatis    false    225         �           1259    85240 &   socialaccount_socialapp_sites_fe95b0a0    INDEX     x   CREATE INDEX socialaccount_socialapp_sites_fe95b0a0 ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 :   DROP INDEX public.socialaccount_socialapp_sites_fe95b0a0;
       public      	   espatatis    false    225         �           1259    85241 "   socialaccount_socialtoken_8a089c2a    INDEX     n   CREATE INDEX socialaccount_socialtoken_8a089c2a ON public.socialaccount_socialtoken USING btree (account_id);
 6   DROP INDEX public.socialaccount_socialtoken_8a089c2a;
       public      	   espatatis    false    227         �           1259    85242 "   socialaccount_socialtoken_f382adfe    INDEX     j   CREATE INDEX socialaccount_socialtoken_f382adfe ON public.socialaccount_socialtoken USING btree (app_id);
 6   DROP INDEX public.socialaccount_socialtoken_f382adfe;
       public      	   espatatis    false    227         �           1259    85243    users_user_groups_0e939a4f    INDEX     \   CREATE INDEX users_user_groups_0e939a4f ON public.users_user_groups USING btree (group_id);
 .   DROP INDEX public.users_user_groups_0e939a4f;
       public      	   espatatis    false    230         �           1259    85244    users_user_groups_e8701ad4    INDEX     [   CREATE INDEX users_user_groups_e8701ad4 ON public.users_user_groups USING btree (user_id);
 .   DROP INDEX public.users_user_groups_e8701ad4;
       public      	   espatatis    false    230         �           1259    85245 $   users_user_user_permissions_8373b171    INDEX     u   CREATE INDEX users_user_user_permissions_8373b171 ON public.users_user_user_permissions USING btree (permission_id);
 8   DROP INDEX public.users_user_user_permissions_8373b171;
       public      	   espatatis    false    233         �           1259    85246 $   users_user_user_permissions_e8701ad4    INDEX     o   CREATE INDEX users_user_user_permissions_e8701ad4 ON public.users_user_user_permissions USING btree (user_id);
 8   DROP INDEX public.users_user_user_permissions_e8701ad4;
       public      	   espatatis    false    233         �           1259    85247 )   users_user_username_1c658b9c99010171_like    INDEX     x   CREATE INDEX users_user_username_1c658b9c99010171_like ON public.users_user USING btree (username varchar_pattern_ops);
 =   DROP INDEX public.users_user_username_1c658b9c99010171_like;
       public      	   espatatis    false    229         �           2606    85248 Y   account_emailconfirmation ac_email_address_id_763e89745d674cbe_fk_account_emailaddress_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT ac_email_address_id_763e89745d674cbe_fk_account_emailaddress_id FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT ac_email_address_id_763e89745d674cbe_fk_account_emailaddress_id;
       public    	   espatatis    false    196    2956    198         �           2606    85253 S   account_emailaddress account_emailaddress_user_id_19c3b50ffaa908b5_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_19c3b50ffaa908b5_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_19c3b50ffaa908b5_fk_users_user_id;
       public    	   espatatis    false    196    229    3035         �           2606    85258 O   auth_permission auth_content_type_id_5d733595301a4c0d_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_content_type_id_5d733595301a4c0d_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_content_type_id_5d733595301a4c0d_fk_django_content_type_id;
       public    	   espatatis    false    2986    204    208         �           2606    85263 V   auth_group_permissions auth_group__permission_id_b004cbfa1003c8a_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group__permission_id_b004cbfa1003c8a_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group__permission_id_b004cbfa1003c8a_fk_auth_permission_id;
       public    	   espatatis    false    202    204    2978         �           2606    85268 V   auth_group_permissions auth_group_permissio_group_id_2e61430ffa76d0e7_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_2e61430ffa76d0e7_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_group_id_2e61430ffa76d0e7_fk_auth_group_id;
       public    	   espatatis    false    202    200    2967         �           2606    85273 P   django_admin_log djan_content_type_id_3788cef025957f74_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT djan_content_type_id_3788cef025957f74_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT djan_content_type_id_3788cef025957f74_fk_django_content_type_id;
       public    	   espatatis    false    206    208    2986         �           2606    85278 K   django_admin_log django_admin_log_user_id_627034519188c2e9_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_627034519188c2e9_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_627034519188c2e9_fk_users_user_id;
       public    	   espatatis    false    206    229    3035         �           2606    85283 J   events_eventreview events_eventreview_event_id_4fddf426_fk_events_event_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_eventreview
    ADD CONSTRAINT events_eventreview_event_id_4fddf426_fk_events_event_id FOREIGN KEY (event_id) REFERENCES public.events_event(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.events_eventreview DROP CONSTRAINT events_eventreview_event_id_4fddf426_fk_events_event_id;
       public    	   espatatis    false    216    215    2999         �           2606    85288 L   events_eventreview events_eventreview_moderator_id_dee3c3f5_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_eventreview
    ADD CONSTRAINT events_eventreview_moderator_id_dee3c3f5_fk_users_user_id FOREIGN KEY (moderator_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.events_eventreview DROP CONSTRAINT events_eventreview_moderator_id_dee3c3f5_fk_users_user_id;
       public    	   espatatis    false    216    229    3035         �           2606    85293 Q   reversion_version rever_content_type_id_c01a11926d4c4a9_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.reversion_version
    ADD CONSTRAINT rever_content_type_id_c01a11926d4c4a9_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.reversion_version DROP CONSTRAINT rever_content_type_id_c01a11926d4c4a9_fk_django_content_type_id;
       public    	   espatatis    false    219    2986    208         �           2606    85298 Q   reversion_version reversion__revision_id_48ec3744916a950_fk_reversion_revision_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.reversion_version
    ADD CONSTRAINT reversion__revision_id_48ec3744916a950_fk_reversion_revision_id FOREIGN KEY (revision_id) REFERENCES public.reversion_revision(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.reversion_version DROP CONSTRAINT reversion__revision_id_48ec3744916a950_fk_reversion_revision_id;
       public    	   espatatis    false    217    219    3009         �           2606    85303 O   reversion_revision reversion_revision_user_id_53d027e45b2ec55e_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.reversion_revision
    ADD CONSTRAINT reversion_revision_user_id_53d027e45b2ec55e_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.reversion_revision DROP CONSTRAINT reversion_revision_user_id_53d027e45b2ec55e_fk_users_user_id;
       public    	   espatatis    false    229    217    3035         �           2606    85308 Y   socialaccount_socialtoken s_account_id_1eb85597c432c824_fk_socialaccount_socialaccount_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT s_account_id_1eb85597c432c824_fk_socialaccount_socialaccount_id FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT s_account_id_1eb85597c432c824_fk_socialaccount_socialaccount_id;
       public    	   espatatis    false    227    221    3017         �           2606    85313 ]   socialaccount_socialapp_sites soc_socialapp_id_6d8d94c8003756da_fk_socialaccount_socialapp_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT soc_socialapp_id_6d8d94c8003756da_fk_socialaccount_socialapp_id FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT soc_socialapp_id_6d8d94c8003756da_fk_socialaccount_socialapp_id;
       public    	   espatatis    false    225    223    3021         �           2606    85318 Y   socialaccount_socialtoken socialacco_app_id_5e3fcb3b510133c_fk_socialaccount_socialapp_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialacco_app_id_5e3fcb3b510133c_fk_socialaccount_socialapp_id FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialacco_app_id_5e3fcb3b510133c_fk_socialaccount_socialapp_id;
       public    	   espatatis    false    3021    227    223         �           2606    85323 ]   socialaccount_socialapp_sites socialaccount_social_site_id_711de24bb34bb060_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_711de24bb34bb060_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_711de24bb34bb060_fk_django_site_id;
       public    	   espatatis    false    225    2997    213         �           2606    85328 [   socialaccount_socialaccount socialaccount_sociala_user_id_63acb999239a8a59_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_sociala_user_id_63acb999239a8a59_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_sociala_user_id_63acb999239a8a59_fk_users_user_id;
       public    	   espatatis    false    229    3035    221         �           2606    85333 N   users_user_groups users_user_groups_group_id_50400b02b5efdd14_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_50400b02b5efdd14_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_50400b02b5efdd14_fk_auth_group_id;
       public    	   espatatis    false    2967    230    200         �           2606    85338 M   users_user_groups users_user_groups_user_id_5e6923b36e185d93_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5e6923b36e185d93_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5e6923b36e185d93_fk_users_user_id;
       public    	   espatatis    false    229    3035    230         �           2606    85343 [   users_user_user_permissions users_user_permission_id_68fe8f82461536c7_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_permission_id_68fe8f82461536c7_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_permission_id_68fe8f82461536c7_fk_auth_permission_id;
       public    	   espatatis    false    233    204    2978         �           2606    85348 [   users_user_user_permissions users_user_user_permi_user_id_3613262ec851acbd_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permi_user_id_3613262ec851acbd_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permi_user_id_3613262ec851acbd_fk_users_user_id;
       public    	   espatatis    false    229    233    3035                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3193.dat                                                                                            0000600 0004000 0002000 00000000103 14045752571 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	maithani.aniket@gmail.com	t	t	1
2	satyaakam@gmail.com	t	t	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                             3195.dat                                                                                            0000600 0004000 0002000 00000000423 14045752571 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2015-04-30 15:55:08.968121+05:30	2015-04-30 15:55:09.160431+05:30	iiic5d2ggadplum1c9ksnxcsvhq4pw8wf5akuz7rrrdef7tclgksd2htfkzklbgz	1
2	2015-04-30 15:55:18.309958+05:30	2015-04-30 15:55:18.411933+05:30	cntruvmfximcj5jqjh49lrhdrbcxyrqambfovczpuyyzjr7vtybukdtq8an8mibx	2
\.


                                                                                                                                                                                                                                             3197.dat                                                                                            0000600 0004000 0002000 00000000005 14045752571 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3199.dat                                                                                            0000600 0004000 0002000 00000000005 14045752571 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3201.dat                                                                                            0000600 0004000 0002000 00000004011 14045752571 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add content type	3	add_contenttype
8	Can change content type	3	change_contenttype
9	Can delete content type	3	delete_contenttype
10	Can add session	4	add_session
11	Can change session	4	change_session
12	Can delete session	4	delete_session
13	Can add site	5	add_site
14	Can change site	5	change_site
15	Can delete site	5	delete_site
16	Can add log entry	6	add_logentry
17	Can change log entry	6	change_logentry
18	Can delete log entry	6	delete_logentry
19	Can add email address	7	add_emailaddress
20	Can change email address	7	change_emailaddress
21	Can delete email address	7	delete_emailaddress
22	Can add email confirmation	8	add_emailconfirmation
23	Can change email confirmation	8	change_emailconfirmation
24	Can delete email confirmation	8	delete_emailconfirmation
25	Can add social application	9	add_socialapp
26	Can change social application	9	change_socialapp
27	Can delete social application	9	delete_socialapp
28	Can add social account	10	add_socialaccount
29	Can change social account	10	change_socialaccount
30	Can delete social account	10	delete_socialaccount
31	Can add social application token	11	add_socialtoken
32	Can change social application token	11	change_socialtoken
33	Can delete social application token	11	delete_socialtoken
34	Can add user	12	add_user
35	Can change user	12	change_user
36	Can delete user	12	delete_user
37	Can add event	13	add_event
38	Can change event	13	change_event
39	Can delete event	13	delete_event
40	Can add revision	14	add_revision
41	Can change revision	14	change_revision
42	Can delete revision	14	delete_revision
43	Can add version	15	add_version
44	Can change version	15	change_version
45	Can delete version	15	delete_version
46	Can add event review	16	add_eventreview
47	Can change event review	16	change_eventreview
48	Can delete event review	16	delete_eventreview
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3203.dat                                                                                            0000600 0004000 0002000 00000025775 14045752571 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2015-05-26 15:18:38.259107+05:30	705fbfe2-e9a9-4576-a9b3-2c57dcb27d5c	Fudcon Pune	1		13	3
2	2016-03-13 01:47:47.496589+05:30	1	beta.fossevents.in	2	Changed domain and name.	5	5
3	2016-03-13 01:52:35.235332+05:30	a4d12cab-17c3-486a-96c1-7107cdc0549e	Rootconf	1	Added.	13	5
4	2016-03-13 01:55:11.690536+05:30	a4d12cab-17c3-486a-96c1-7107cdc0549e	Rootconf 2016	2	Changed name.	13	5
5	2016-03-13 03:39:07.591771+05:30	1	aniketmaithani	3		12	5
6	2016-03-13 03:39:07.596201+05:30	2	satyaakam	3		12	5
7	2016-03-13 03:39:07.599845+05:30	3	saurabh	3		12	5
8	2016-03-13 03:40:23.410556+05:30	705fbfe2-e9a9-4576-a9b3-2c57dcb27d5c	Fudcon Pune	2	Changed description.	13	5
9	2016-03-17 21:39:24.437849+05:30	a4d12cab-17c3-486a-96c1-7107cdc0549e	Rootconf 2016	2	Changed description.	13	5
10	2016-10-17 20:00:57.183906+05:30	a4d12cab-17c3-486a-96c1-7107cdc0549e	Rootconf 2016	2	Changed is_published.	13	4
11	2016-10-17 20:01:08.01645+05:30	420437d0-82b1-4eb4-9105-80844bb04237	HackBeach 2016	2	Changed is_published.	13	4
12	2016-10-17 20:01:29.710048+05:30	25631d9b-14d8-4ad2-b069-4aaec0b191fb	DroidCon India	2	Changed is_published.	13	4
43	2017-09-16 08:35:14.746771+05:30	e597df95-e1f9-4668-bbc7-150c854b11e4	Software Freedom Day 2017 ( New Delhi)	1	Added.	13	4
14	2016-10-18 09:44:54.948798+05:30	edbc9ce6-42df-4902-a2a7-c76371a8a60f	ILUG-D	2	Changed is_published.	13	4
15	2016-10-18 10:03:06.299459+05:30	9de1a73b-2ad4-4119-91c2-ca5f1f268ab7	HackNiT	2	Changed is_published.	13	4
16	2016-10-18 18:00:31.749278+05:30	6	jainmickey	1	Added.	12	4
17	2016-10-18 18:00:59.594647+05:30	6	jainmickey	2	Changed first_name, last_name, email, is_staff and is_superuser.	12	4
18	2016-10-19 09:37:59.109508+05:30	5c93e087-b191-480b-a915-235f7f0cd574	Science Hack Day India - Belgaum 2016	2	Changed is_published.	13	4
19	2016-10-20 19:44:42.306656+05:30	2cc1c73d-2bbb-4952-bd86-5c0e9fd4624b	The Next OpenAQ Workshop is in Delhi! Apply to come!	2	Changed is_published.	13	4
20	2016-10-26 23:30:41.006276+05:30	edbc9ce6-42df-4902-a2a7-c76371a8a60f	ILUG-D	2	Changed start_date and end_date.	13	4
21	2016-10-28 11:57:11.821726+05:30	86ea86b7-27c3-4b00-90fc-812af9425f43	FOSS4G-ASIA 2017	2	Changed is_published.	13	4
22	2016-10-28 12:22:23.874187+05:30	cde2736e-d982-480d-ac76-53ba4943e0f9	ICANN 57th meeting	2	Changed is_published.	13	4
23	2016-10-28 12:25:18.904605+05:30	7840b68b-75ff-43cc-b548-e0a0d44e8517	Test Event	3		13	4
24	2016-10-28 12:25:37.480485+05:30	79228f3a-7eba-46b3-af4d-2c33c8f42005	A Test workshop for fossevents	3		13	4
25	2016-10-28 12:25:37.493622+05:30	849a44e8-2822-4a98-ace9-3be0450ed44f	New event	3		13	4
26	2016-10-28 12:25:37.496028+05:30	a4d12cab-17c3-486a-96c1-7107cdc0549e	Rootconf 2016	3		13	4
27	2016-10-29 17:33:20.281974+05:30	ceaacb85-3334-4045-806f-0c7c90e9328f	Free Software Movement India, 2nd National Conference	2	Changed is_published.	13	4
28	2016-10-29 19:37:05.464706+05:30	1	fossevents.in	2	Changed domain and name.	5	5
29	2016-10-31 18:40:46.698436+05:30	2cc1c73d-2bbb-4952-bd86-5c0e9fd4624b	The Next OpenAQ Workshop is in Delhi!	2	Changed name.	13	4
30	2016-11-07 21:15:46.119321+05:30	0b74f62a-44ee-4b1b-833a-1030c088ea1f	GeoHYD Meetup 1	2	Changed is_published.	13	4
31	2016-11-07 21:18:22.889194+05:30	25fed812-04e1-4539-8cf6-5099b1b0241e	Drupal Camp Delhi 2016	1	Added.	13	4
32	2016-12-10 18:11:25.621207+05:30	0d31e9f0-d451-47e7-bc21-105ca4cc453f	PYCON PUNE 2017	2	Changed is_published.	13	4
33	2016-12-10 21:38:32.673051+05:30	7b1f1e83-920a-42ac-8593-0bf484619503	Talk on GNU Taler	2	Changed is_published.	13	4
34	2016-12-11 19:18:20.817154+05:30	f4782737-d679-4eae-8814-e9cbbc688f6e	WikiToLearn CONF INDIA 2017	2	Changed is_published.	13	4
35	2016-12-11 19:26:51.873028+05:30	2764e73c-cade-4d63-b885-7a3666c1438e	RUBYCONF INDIA 2017	2	Changed is_published.	13	4
36	2016-12-11 19:27:14.157629+05:30	9e416ddf-0c1e-4566-9b0e-bb8fccedd073	Gophercon India 2017	2	Changed is_published.	13	4
37	2017-01-18 13:25:46.673368+05:30	02901ba5-92da-4dc1-9dbe-f51becfda4a8	FOSSMeet 2017	2	Changed is_published.	13	4
38	2017-02-09 13:31:28.589996+05:30	6ebcd3ea-efa8-43e3-91a6-40fadcb97405	GNUnify 2017	2	Changed is_published.	13	4
39	2017-02-22 15:04:23.262175+05:30	5	theskumar	2	Changed first_name and last_name.	12	6
40	2017-02-22 15:04:37.446567+05:30	5	theskumar	2	Changed password.	12	6
41	2017-02-26 07:54:43.823263+05:30	d7a58323-85a7-4695-a47a-438129395732	PyDelhi Conf 2017	2	Changed is_published.	13	4
42	2017-03-14 17:44:02.981827+05:30	d7a58323-85a7-4695-a47a-438129395732	PyDelhi Conf 2017	2	Changed description, start_date and end_date.	13	4
44	2017-09-16 08:36:52.27657+05:30	17a3a323-973e-4a94-8ea9-fc5dbccd614f	PyCon India 2017	2	Changed is_published.	13	4
45	2017-09-22 03:46:42.055043+05:30	69270a5a-9993-420f-8880-febec5adf52f	ERPNext Conference 2017, Mumbai	1	Added.	13	4
46	2017-11-13 08:30:41.50995+05:30	d255e77e-9fe0-44cc-b416-7a2f0ec96842	PyCon Pune 2018	2	Changed is_published.	13	4
47	2017-11-13 08:30:59.21203+05:30	3dd268e0-ec7b-4fc5-9045-f1ce91ddcf36	PyBITS 2017	2	Changed is_published.	13	4
48	2017-11-13 08:34:26.35433+05:30	ee5d587c-76fe-40f1-914a-d4755e5c44b8	FOSSMeet'18	1	Added.	13	4
49	2018-01-22 07:08:10.439191+05:30	d255e77e-9fe0-44cc-b416-7a2f0ec96842	PyCon Pune 2018	2	Changed is_published.	13	4
50	2018-01-30 07:01:31.462261+05:30	f23e9dfe-2c84-4f61-827e-740a8df8bf2b	GNUnify 2018	2	Changed is_published.	13	4
51	2018-05-12 13:50:00.237055+05:30	27021828-06c5-44b7-b9b5-9a57b1ebb7bf	Hillhacks 2018	2	Changed is_published.	13	4
52	2018-05-21 20:05:18.67228+05:30	3ea8cb3c-5efd-4343-9237-6d0efe796855	Pycon India 2018	2	Changed description and is_published.	13	4
53	2018-07-03 17:49:25.718785+05:30	ebb75dc0-37b8-46fc-965c-6d835892e71f	Devconf.in	2	Changed is_published.	13	4
54	2018-08-12 10:50:49.161153+05:30	ceb07736-7c58-4a03-aa60-903df4c350be	satyakam goswami	1	Added.	13	4
55	2018-08-12 10:51:45.134713+05:30	ceb07736-7c58-4a03-aa60-903df4c350be	Debutsav	2	Changed name.	13	4
56	2018-08-12 10:52:28.308203+05:30	ceb07736-7c58-4a03-aa60-903df4c350be	Debutsav.in	2	Changed name.	13	4
57	2018-11-17 07:24:21.800226+05:30	ceb07736-7c58-4a03-aa60-903df4c350be	Debutsav.in	2	Changed start_date and end_date.	13	4
58	2018-12-12 07:10:59.088902+05:30	90e88c4a-8009-4d95-af08-b3964c6a727d	SciPy India	1	Added.	13	4
59	2018-12-31 17:50:31.643494+05:30	da47b7fa-2c50-4b7c-9c40-21a04f33bb57	FOSSMeet '19	2	Changed is_published.	13	4
60	2019-02-03 21:21:49.443888+05:30	f23e9dfe-2c84-4f61-827e-740a8df8bf2b	GNUnify 2019	2	Changed name, start_date and end_date.	13	4
61	2019-02-03 21:24:13.824916+05:30	f23e9dfe-2c84-4f61-827e-740a8df8bf2b	GNUnify 2019	2	Changed homepage.	13	4
62	2019-02-03 21:25:03.235605+05:30	f23e9dfe-2c84-4f61-827e-740a8df8bf2b	GNUnify 2019	2	Changed start_date and end_date.	13	4
63	2019-02-06 19:30:12.88281+05:30	049df525-af39-4cd0-93da-0fd41a1ef183	COEP FOSSMeet'19	2	Changed is_published.	13	4
64	2019-02-17 20:51:04.388706+05:30	055c4850-49d8-493b-bb92-bd03f79ba8c2	DebUtsav Delhi	2	Changed is_published.	13	4
65	2019-02-25 09:38:30.945635+05:30	e5878f0d-16c6-4a7b-9af4-09a4749032a8	ILUG-D's Raspberry Pi Jam - 2019	2	Changed is_published.	13	4
66	2019-02-25 10:40:02.371732+05:30	e5878f0d-16c6-4a7b-9af4-09a4749032a8	ILUG-D's Raspberry Pi Jam - 2019	2	Changed start_date and end_date.	13	4
67	2019-02-25 10:41:22.551603+05:30	e5878f0d-16c6-4a7b-9af4-09a4749032a8	ILUG-D's Raspberry Pi Jam - 2019	2	No fields changed.	13	4
68	2019-03-29 12:03:33.725538+05:30	ebb75dc0-37b8-46fc-965c-6d835892e71f	Devconf.in	2	Changed start_date and end_date.	13	4
69	2019-03-29 12:04:00.094559+05:30	ebb75dc0-37b8-46fc-965c-6d835892e71f	Devconf.in	2	Changed start_date and end_date.	13	4
70	2019-03-29 12:05:04.794727+05:30	ebb75dc0-37b8-46fc-965c-6d835892e71f	Devconf.in	2	Changed description.	13	4
71	2019-05-31 09:11:59.055066+05:30	19c3ed52-0fc7-4bda-8c72-bd3a5a039382	satyakam goswami	1	Added.	13	4
72	2019-05-31 09:12:59.977974+05:30	19c3ed52-0fc7-4bda-8c72-bd3a5a039382	Drupal Camp Delhi 2019	2	Changed name.	13	4
73	2019-06-28 17:19:42.515684+05:30	faccdbe6-55fe-4a47-be1e-61cadd490bd2	PyCon India 2019	2	Changed is_published.	13	4
74	2019-09-11 15:17:57.060747+05:30	7c9fe590-ea0d-4aff-a930-fc8fb6cfdcda	DrupapCamp Pune 2019	2	Changed is_published.	13	4
75	2019-10-14 20:57:36.668404+05:30	dbd091de-d84c-4536-8a21-a20ea59e3217	ILUG-D's Raspberry Pi Jam - 2019	3		13	4
76	2019-10-14 20:57:36.672507+05:30	497c9731-6054-4ec2-9463-4d7256b67e60	ILUG-D's Raspberry Pi Jam - 2019	3		13	4
77	2019-10-14 20:59:40.327822+05:30	a157276c-2f60-429a-aa01-6eec62c1f21d	satyakam goswami	1	Added.	13	4
78	2019-10-14 21:00:13.391846+05:30	a157276c-2f60-429a-aa01-6eec62c1f21d	OpenHack 2019	2	Changed name.	13	4
79	2019-11-11 20:58:24.322092+05:30	801f46dc-8630-4362-a553-3051bd33e0c1	PyConf Hyderabad 2019	1	Added.	13	4
80	2019-11-12 22:46:14.552599+05:30	65144498-afcb-460e-8534-b81ae2d8c54a	satyakam goswami	1	Added.	13	4
81	2019-11-12 22:46:49.795772+05:30	65144498-afcb-460e-8534-b81ae2d8c54a	KDE Conference India 2020	2	Changed name.	13	4
82	2019-11-14 17:02:53.787379+05:30	3918ba21-4650-4615-8744-1f47e6d40837	Drupal Camp Chennai 2019	1	Added.	13	4
83	2019-11-14 17:03:23.069486+05:30	3918ba21-4650-4615-8744-1f47e6d40837	Drupal Camp Chennai 2019	2	Changed is_published.	13	4
84	2019-12-13 09:25:49.91224+05:30	64571ae8-c370-4e05-91dd-8be9b93e4f40	R Conference	1	Added.	13	4
85	2020-05-18 06:56:18.689821+05:30	0e981286-abb8-4b33-aec4-e8e4d2843687	Kubernetes Forum	2	Changed is_published.	13	4
86	2020-05-18 06:56:37.556692+05:30	20186c2a-81c5-4d50-b59c-23dd47ac19e9	FOSSMeet'20	2	Changed is_published.	13	4
87	2020-05-18 06:56:53.721278+05:30	f967cab5-a48e-4a82-ae54-8be2edc6dcfc	COEP FOSSMeet'20	2	Changed is_published.	13	4
88	2020-12-01 20:17:25.249389+05:30	c3412178-9ae3-48de-8e6a-85607b5e8c12	xyz	3		13	4
89	2020-12-01 20:17:25.25218+05:30	729d07ac-e531-4b44-b9f6-3f1f8a6031ee	qwyr	3		13	4
90	2021-01-17 09:41:46.382352+05:30	7ca30e16-7281-4d6d-b14e-a031e8f15d32	MiniDebConf India	2	Changed is_published.	13	4
91	2021-01-17 10:08:02.914497+05:30	a4348c83-e114-4f91-9e3e-c915782fec56	test event	3		13	4
92	2021-01-17 10:08:02.916572+05:30	faced5e4-e7a9-4764-b1ac-2cf2c729b83e	test event 2	3		13	4
93	2021-01-17 10:08:13.56957+05:30	932ab5c1-889a-4f39-a05f-8a1569869217	MiniDebConf India	3		13	4
94	2021-01-17 10:10:05.423552+05:30	7	saurabhn	1	Added.	12	4
95	2021-01-17 10:11:30.994338+05:30	7	saurabhn	2	Changed first_name, last_name, email, is_staff and is_superuser.	12	4
96	2021-01-17 11:40:35.043615+05:30	1	fossevents.in	2	No fields changed.	5	7
97	2021-01-17 11:41:00.16682+05:30	2	test.saurabhn.com	1	Added.	5	7
98	2021-01-17 11:41:34.784368+05:30	2	test.saurabhn.com	2	No fields changed.	5	7
99	2021-01-17 11:41:49.423545+05:30	2	test.saurabhn.com	3		5	7
100	2021-01-17 11:42:46.244692+05:30	7	saurabhn	2	Changed last_name.	12	7
101	2021-01-17 11:49:53.528555+05:30	1	fossevents.in	2	No fields changed.	5	7
102	2021-01-17 11:49:59.601382+05:30	1	fossevents.in	2	No fields changed.	5	7
103	2021-01-17 11:51:06.830105+05:30	1	fossevents.in	2	No fields changed.	5	7
104	2021-01-19 10:01:37.66229+05:30	7c9fe590-ea0d-4aff-a930-fc8fb6cfdcda	Drupal Camp Pune 2019	2	Changed name.	13	4
105	2021-04-01 19:18:46.526714+05:30	df680659-f22b-41c1-8086-058b431fb8a5	Event submission Check	3		13	4
\.


   3205.dat                                                                                            0000600 0004000 0002000 00000000530 14045752571 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	auth	permission
2	auth	group
3	contenttypes	contenttype
4	sessions	session
5	sites	site
6	admin	logentry
7	account	emailaddress
8	account	emailconfirmation
9	socialaccount	socialapp
10	socialaccount	socialaccount
11	socialaccount	socialtoken
12	users	user
13	events	event
14	reversion	revision
15	reversion	version
16	events	eventreview
\.


                                                                                                                                                                        3207.dat                                                                                            0000600 0004000 0002000 00000004067 14045752571 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2015-04-30 15:53:29.761116+05:30
2	contenttypes	0002_remove_content_type_name	2015-04-30 15:53:29.797776+05:30
3	auth	0001_initial	2015-04-30 15:53:30.097036+05:30
4	auth	0002_alter_permission_name_max_length	2015-04-30 15:53:30.124695+05:30
5	auth	0003_alter_user_email_max_length	2015-04-30 15:53:30.151661+05:30
6	auth	0004_alter_user_username_opts	2015-04-30 15:53:30.173432+05:30
7	auth	0005_alter_user_last_login_null	2015-04-30 15:53:30.194635+05:30
8	auth	0006_require_contenttypes_0002	2015-04-30 15:53:30.200598+05:30
9	users	0001_initial	2015-04-30 15:53:30.51641+05:30
10	account	0001_initial	2015-04-30 15:53:30.73195+05:30
11	admin	0001_initial	2015-04-30 15:53:30.855812+05:30
12	sessions	0001_initial	2015-04-30 15:53:30.971901+05:30
13	sites	0001_initial	2015-04-30 15:53:31.025049+05:30
14	sites	0002_set_site_domain_and_name	2015-04-30 15:53:31.077053+05:30
15	socialaccount	0001_initial	2015-04-30 15:53:31.710499+05:30
16	events	0001_initial	2015-05-10 13:57:23.942266+05:30
17	reversion	0001_initial	2015-06-02 14:58:44.141208+05:30
18	reversion	0002_auto_20141216_1509	2015-06-02 14:58:44.274857+05:30
19	account	0002_email_max_length	2015-06-03 11:14:58.065029+05:30
20	events	0002_auto_20150925_1127	2015-09-26 11:19:34.171278+05:30
21	admin	0002_logentry_remove_auto_add	2016-03-13 00:31:14.024663+05:30
22	auth	0007_alter_validators_add_error_messages	2016-03-13 00:31:14.046691+05:30
23	events	0003_auto_20160314_0819	2016-03-14 08:22:41.218558+05:30
24	sites	0002_alter_domain_unique	2016-03-14 08:22:41.284938+05:30
25	users	0002_auto_20160314_0819	2016-03-14 08:22:41.303243+05:30
26	events	0004_auto_20160317_2129	2016-09-26 21:12:59.866756+05:30
27	events	0005_auto_20160905_1554	2016-10-17 18:07:30.605683+05:30
28	events	0006_auto_20160924_1204	2016-10-17 18:07:31.408418+05:30
29	users	0003_auto_20160317_2129	2016-10-17 18:07:31.469183+05:30
30	users	0004_user_is_moderator	2016-10-17 18:07:31.515013+05:30
31	events	0007_eventreview	2017-02-21 17:41:24.975415+05:30
32	users	0005_auto_20170212_1138	2017-02-21 17:41:25.075186+05:30
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3209.dat                                                                                            0000600 0004000 0002000 00000051243 14045752571 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        dms7vo7qd5qele0wvxf7hljpopkh7p4d	MDUwNmM2MGQ2NmIwNTczNThhOWQ0NWM0NGM4YmRjNWZmZDgwZjE0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2017-09-29 07:32:28.308449+05:30
w4h44ude3ucyrdlt09vnpwla2j6sxhqe	NjBhMzJmZmViZTkwMDJlYWU1ZDg3ZGU2MzUxNmQ3NjI1MjNhN2FmODp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTc0MTNlYzc0ZTcxOGExMDNiYzJhYmE5MTU0YTdkYWIxYjljYWI1MyJ9	2015-05-14 15:56:39.606125+05:30
bre13jpgrk0elr3hautt8lisevhh3d9h	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-27 08:29:42.419527+05:30
ehfold5eia34pvpvnz6ax8ya6jcu8a58	NTc3YWVjZDQxOTQwNGUzNzcxMjA3YWZkM2IzYjdjNmRjMWExMjBmZTp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY1NWVkZDY5NDFmNzI5ZjY0NzVhOTM2YTc1MzQ4ZjA2YmVmMDkxMyJ9	2015-05-14 15:56:48.907692+05:30
9m8a9n7y5jwapjwpbfp7robt1mtk5w5f	ZmIzNWY5NDVlY2Y2NDhlZWQxNjZiZjI4MTRmNDBiZGIzNTY5MWI4Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjRhYzc2MDZlMDcwMjFmZWMwNzE0OWUzMWY1MWM4MmEwNTljNjhiMjgiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2015-06-09 15:16:10.159648+05:30
bqb7vi5jobj1f3vs5e5a8qc9gfzubfd5	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2016-10-31 19:58:58.039147+05:30
mzq1wivyeq9a6q2xqqx0a9btsux5goy3	YThiMzNkMzg3NDJhZmQ1ZjI4ZTEwYTdjYjFkMmEyODA3ZThlMzhhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY1ZWE4YmY4OThjOWU0NTk5NzZiMTM2NzE1NzcxM2VjNzQ2NGVhNjEiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-03-25 15:16:05.446058+05:30
4mrok48ly6hd1ax038qec6dekvc9b8gf	ZjdjY2VmYjhlNjE0OTMwYzhiYjM5MDg4MWJmZmFkODBjMjk4MDY3MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYxNjMwY2JiNmMyMDYxMjdhNTM4ZDliM2I3M2RmNWJmMWM4NzZmM2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2016-03-27 01:47:21.735429+05:30
sx72w0fc1tsdgpy6dqqsh5s2ynbahuyg	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2016-10-31 20:00:19.357421+05:30
j1v7ketiw6q4cv837y1fzliaqhendne3	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-11-03 19:44:11.83057+05:30
q4ojfqjkhrcw7xkotzt5tsv9dvyun4wl	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-03-13 14:20:08.9955+05:30
pcv73ri0zd62mg3myd51yi4jifbwmcy0	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-11-09 18:48:06.204017+05:30
mt7yeu9zcht09xeumj1dpnt6wkbi48ei	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2016-11-09 23:29:08.649889+05:30
gmusibiw9poqrfj01pw0w4xpnn3stpty	NWJkNjc3NWNjNDU3Y2U0NzRmZTBmM2YwMmFmZTZlM2VkODYyNjY5Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjdlOTYxYzI0NGI1MDEyYTI5Y2E0ZTUxYWUyOTVmYWUyMWZmMWZiOSIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2016-11-12 19:36:40.35969+05:30
afhfms5149smp6emlxud8fl2d7q2ttfa	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-11-14 18:40:16.936581+05:30
ly28jo2hghipfezirepko8uihiuvi4su	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-11-18 09:37:54.358936+05:30
eeoy0go5c23thbv3wihhvgyvktpm8rdv	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2016-11-21 21:15:20.865091+05:30
v7ob1d0xof54aug6qusko73ffo3jltw6	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-12-24 18:10:36.544969+05:30
583veoklatj6g5umzo2njybh79fladgp	MmU3YWMzM2RkZTkzN2VjOWFhMTkxOTZjMmY2NWVlOTY5NWQyNjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImZkOTE3NzQwOTE5MjQ3YTMyOWFjNDY5NmUzY2Q0YTA0YTA5ZTgyNDAiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-01-26 18:07:52.070207+05:30
8cphi1pxf5lv0nffdmlbckbu1db6spex	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-02-01 13:24:49.929379+05:30
9wnr73xlofw9fvn5l88wv1lbzbkxsf7t	NGVjYzA1N2M2YzdlMTE3NTZhMzA2YTI4M2Q0N2M2N2U1N2ViMjYwMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2017-02-23 13:30:41.028419+05:30
m6t9ub5hv4oryi83p9ul9wixyw11923b	YjY4NzQ1MjEzMTY1MDQ4ZDZhODRiY2YyY2VhZGExYjY5YWY0YTg1Mzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9oYXNoIjoiZmQ5MTc3NDA5MTkyNDdhMzI5YWM0Njk2ZTNjZDRhMDRhMDllODI0MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-03-08 15:03:49.272721+05:30
otjbfvvd8d4e5otik4wusffvj0zalg5e	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-03-12 07:53:23.406364+05:30
dsgxamacd0jcx5n0c0t4d16whq34thi2	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-03-28 17:41:22.593818+05:30
i4nrqh6eu15ljkbmhyfw1siwbsfpzz4o	NGVjYzA1N2M2YzdlMTE3NTZhMzA2YTI4M2Q0N2M2N2U1N2ViMjYwMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2018-03-25 06:17:05.512912+05:30
3twbeo2eye0gv178wpaeoqpiwevgoa69	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-05-15 21:49:44.905245+05:30
4ebo6wgwanr7rrr15dvo6mnlxtwy57p4	NGVjYzA1N2M2YzdlMTE3NTZhMzA2YTI4M2Q0N2M2N2U1N2ViMjYwMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2018-05-31 12:53:49.572564+05:30
1avg4pno1l2o1j7udj4cgwk43sivs31d	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-06-24 18:50:43.256142+05:30
njth3igvzh3kn6e6s9sznf5ui8w2g6uu	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-07-17 17:48:40.062606+05:30
yesnbjxoow9m5nxii3a97i3j3qdc87bk	Y2NiNDJjZTI3YjY3ZDFkMWI3ZmJkOTBjNjU2YzQwYzU4YjI5YjViOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2018-08-19 04:14:03.570173+05:30
41yw9acx4qqbqlcisv0wf2faffv2zbqq	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-10-26 23:24:20.644931+05:30
263e1gko1v3atf4yf9x0m698c4yjkcp8	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-11-30 05:48:21.724709+05:30
dm5fdfm69pxkp2wd1pmqclteaxwdzlxd	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2018-12-01 07:23:28.030865+05:30
8dglq5qhzkb3278ymx4ox6kku5jo9dh2	NGVjYzA1N2M2YzdlMTE3NTZhMzA2YTI4M2Q0N2M2N2U1N2ViMjYwMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2018-12-12 21:35:13.609254+05:30
foxfy09dbf9piid5li7d3ntfoblydd4g	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-12-26 07:08:53.04951+05:30
gkkc03zv3f7ych7xj5oa8c7ij4sbhtzl	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2019-01-14 17:50:05.779535+05:30
tltmim1zqk6nsjd5fjfyt8a3yrligsvw	NGVjYzA1N2M2YzdlMTE3NTZhMzA2YTI4M2Q0N2M2N2U1N2ViMjYwMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2019-02-11 10:41:53.327707+05:30
87644jj91s7ajm49eggrpdyxqhm5lfk1	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-27 07:56:23.680604+05:30
g3pmvgf1lufux0lkci1vpv5y2bwfvaje	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-03-13 09:51:20.192613+05:30
lxjacpf6dvyp7o4cxqbsc3nha65u09sr	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2019-04-08 22:21:23.655439+05:30
7mhztw4c0ge259wl1iz6litapwfjye6q	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2019-04-29 13:02:21.028282+05:30
suxeaoahcf8y53c4bclk8fdckcqro5s6	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-05-26 20:37:43.386938+05:30
pfrm01wo3vas3s4fnx2pt0xtdp514dje	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2019-06-14 09:09:46.436652+05:30
gmgb8jv3gc4hjtppqrwkpybo7gvg1s2t	MDUwNmM2MGQ2NmIwNTczNThhOWQ0NWM0NGM4YmRjNWZmZDgwZjE0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2019-07-12 17:19:08.921423+05:30
02jrfzf76zy2rmqwofiro5edpapby8po	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2019-09-15 05:35:17.857054+05:30
nog16b0zg71q3j4q86wfwbuv3epmwla8	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-10-01 19:14:45.211658+05:30
0l5z7esvyz8ha67o7vajppniqnaq9801	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-11-08 16:26:51.27425+05:30
17u105iq6sp6no99x4rmvbck8eb3oihr	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-11-25 20:55:25.980563+05:30
amjahyvrkc4lcgyn5xcibe238hc68nl2	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2019-12-18 22:21:18.949951+05:30
6fzw0sq1f6yv9advcz34xpncgz3ha5jf	MDUwNmM2MGQ2NmIwNTczNThhOWQ0NWM0NGM4YmRjNWZmZDgwZjE0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2020-01-09 09:59:19.234653+05:30
75rbvgscgrkb2flhowmpqjmiqr8ynklw	MDUwNmM2MGQ2NmIwNTczNThhOWQ0NWM0NGM4YmRjNWZmZDgwZjE0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2020-03-09 16:56:41.423222+05:30
92xirjvbtcn4d1rklilirx0i1x4jrzij	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-06-01 06:54:54.939592+05:30
4oyjfonzjdr3ydz592tw6j2ppzhryij5	MDUwNmM2MGQ2NmIwNTczNThhOWQ0NWM0NGM4YmRjNWZmZDgwZjE0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2020-08-23 08:29:08.488562+05:30
jsbj668kq9eungfld3qpzerplw0y0aqg	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-08-27 22:01:13.882841+05:30
x2yxg6n4warleoq39692hohlh5j8722t	MDUwNmM2MGQ2NmIwNTczNThhOWQ0NWM0NGM4YmRjNWZmZDgwZjE0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2020-09-03 05:53:54.550525+05:30
pjudhmgm43arxmc7e3abvm0d6oe2cgco	NGVjYzA1N2M2YzdlMTE3NTZhMzA2YTI4M2Q0N2M2N2U1N2ViMjYwMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2020-10-07 17:48:31.5629+05:30
2spzni95cp73yay5ag7mc3rnggkwj06u	MDUwNmM2MGQ2NmIwNTczNThhOWQ0NWM0NGM4YmRjNWZmZDgwZjE0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2020-11-07 06:44:17.792353+05:30
hy41vf8cr0kc0j7m1ab3igjrof5mxo26	NjRjNDYwMzYzZTc5MjNhZGM2ZmY0MDZmODM2M2U0MTZjNTUzZGMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2020-12-15 20:13:52.585769+05:30
e0gtas6qrxm4r52nzeq0mreq2fvgf9kw	NGVjYzA1N2M2YzdlMTE3NTZhMzA2YTI4M2Q0N2M2N2U1N2ViMjYwMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2021-01-12 16:45:46.122277+05:30
i6r2sxi5i030emv814wnn3k3e6fjj1nt	Y2NiNDJjZTI3YjY3ZDFkMWI3ZmJkOTBjNjU2YzQwYzU4YjI5YjViOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2021-01-31 09:40:36.124773+05:30
d6avfnrcouhwdyvuzg9vqwu3fl5jj1nh	OTcwOWUxOTI1OGJmODZiNjk4ZmI1NDcyOWJmMzNhNzNjOTI4Y2E5Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNhOTdjMzQ0ZDFkZWEzNmVmZTc0NDQyZGZjY2JiMWE2ZjNkYWZiMiIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2021-01-31 10:12:57.596962+05:30
gev4tych2mralo9k0nybbb63o303s9rc	OTcwOWUxOTI1OGJmODZiNjk4ZmI1NDcyOWJmMzNhNzNjOTI4Y2E5Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmNhOTdjMzQ0ZDFkZWEzNmVmZTc0NDQyZGZjY2JiMWE2ZjNkYWZiMiIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2021-01-31 11:49:29.955942+05:30
cnsdzkwkt1wicb861njg17l9km0srank	Y2NiNDJjZTI3YjY3ZDFkMWI3ZmJkOTBjNjU2YzQwYzU4YjI5YjViOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2021-03-19 18:05:46.025425+05:30
uwbjod0pr6simnqvgzecl3s7nz9avijt	NGVjYzA1N2M2YzdlMTE3NTZhMzA2YTI4M2Q0N2M2N2U1N2ViMjYwMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzIwNjllNjBlNzczODNkYjQ2ZTA1MTYzN2ExYzEyZGZmYzkwYWMwIn0=	2021-04-15 19:17:51.600502+05:30
i88gpjfdgvedre4b3xvtha6qfguenp4o	MGRiMzYxMGVkODMzMTlkZWRlZmI3Y2Q4NDNjM2Q0NTg0ZTAwYjhjZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMjA2OWU2MGU3NzM4M2RiNDZlMDUxNjM3YTFjMTJkZmZjOTBhYzAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-05-08 06:58:26.199548+05:30
xw82w8opefuj2mpcgfwcg3o7pbbapgrn	MzVhNDRiNWRmOTkwYmM1NzgzZDZkN2NjZTBhNmRkMzdkZWRkY2QyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiZWMyMDY5ZTYwZTc3MzgzZGI0NmUwNTE2MzdhMWMxMmRmZmM5MGFjMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-05-23 08:38:36.723482+05:30
\.


                                                                                                                                                                                                                                                                                                                                                             3210.dat                                                                                            0000600 0004000 0002000 00000000040 14045752571 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	fossevents.in	FOSSEvents
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                3212.dat                                                                                            0000600 0004000 0002000 00000166507 14045752571 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2015-05-26 15:18:38.218834+05:30	2016-03-13 03:40:23.407705+05:30	705fbfe2-e9a9-4576-a9b3-2c57dcb27d5c	Fudcon Pune	FUDCon is the Fedora Users and Developers Conference, a major free software event held in various regions around the world, usually annually per region.\r\n\r\nFUDCon is a mix of sessions. There are talks that range from technology introductions to deep dives, hands-on workshops, BoFs where like-minded people get together to discuss a project or technology and hackfests where contributors work on specific initiatives. Topics include infrastructure, feature development, community building, general management and governance, marketing, testing and QA, packaging, etc.\r\n\r\nFUDCon is always free to attend for anyone in the world.\r\n\r\nFUDCon APAC 2015 is organised in association with the Maharashtra Institute of Technology College of Engineering (MIT COE), one of the premier engineering colleges in Pune, at their Campus.\r\n\r\nhttp://fudcon.in/	2015-06-26 09:00:00+05:30	2015-06-28 17:00:00+05:30	http://fudcon.in/	t	none	admin@fossevents.in
2016-10-15 20:28:29.865898+05:30	2016-10-17 20:01:08.013434+05:30	420437d0-82b1-4eb4-9105-80844bb04237	HackBeach 2016	A hangout for hackers to chill and to share knowledge	2016-11-26 00:00:00+05:30	2016-12-04 00:00:00+05:30	https://hackbeach.in/	t	29cb5f22-c2dd-4fef-aef6-70b47c76795e	wr@xyz.com
2016-09-26 12:58:10.321831+05:30	2016-10-17 20:01:29.706506+05:30	25631d9b-14d8-4ad2-b069-4aaec0b191fb	DroidCon India	Sixth edition of droidconIN. This edition spans two days of talks.\r\n\r\n## Important dates\r\n\r\nDeadline for submitting proposals:\r\n\r\n- Proposal submission deadline(updated): 19 September 2016\r\n- Schedule announcement: 10 October 2016\r\n- Conference dates: 10 and 11 November 2016	2016-11-10 00:00:00+05:30	2016-11-11 00:00:00+05:30	https://droidconin.talkfunnel.com/2016/	t	59958c24-35ae-43d3-9c80-41ebe9693985	thes.kumar@gmail.com
2016-10-18 09:56:57.992818+05:30	2016-10-18 10:03:06.290476+05:30	9de1a73b-2ad4-4119-91c2-ca5f1f268ab7	HackNiT	Planning to organise is feb	2017-01-30 09:54:00+05:30	2017-02-02 09:54:00+05:30	https://www.hackNit.ac.in	t	65fe4634-504c-4010-b033-688d1f8c0791	hacknit@gmail.ac.in
2016-10-18 23:13:54.579422+05:30	2016-10-19 09:37:59.106416+05:30	5c93e087-b191-480b-a915-235f7f0cd574	Science Hack Day India - Belgaum 2016	Science Hack Day is a two-day event where anyone excited about making weird, silly or serious things with science comes together in the same physical space to see what they can prototype within 30 consecutive hours. Designers, developers, scientists and anyone who is excited about making things with science are welcome to attend – no experience in science or hacking is necessary, just an insatiable curiosity. The mission of Science Hack Day is to get excited and make things with science! People organically form	2016-10-22 10:00:00+05:30	2016-10-23 18:00:00+05:30	http://sciencehack.in	t	221c8286-6f3e-44e2-9ebe-10e5f76173f2	shdbelgaum@gmail.com
2016-11-06 17:31:21.846762+05:30	2016-11-07 21:15:46.11612+05:30	0b74f62a-44ee-4b1b-833a-1030c088ea1f	GeoHYD Meetup 1	Monthly Geospatial Gathering of Hyderabad. Srikanth Lakshmanan will be speaking about generating localized language Indic maps using openstreetmap.	2016-11-07 19:00:00+05:30	2016-11-07 20:30:00+05:30	http://geohyd.in	t	c29d8e5a-c1a5-4125-93f4-d61bcd39540f	iota.kodali@gmail.com
2016-10-16 11:31:34.848172+05:30	2016-10-26 23:30:41.001865+05:30	edbc9ce6-42df-4902-a2a7-c76371a8a60f	ILUG-D	Would be updated soon	2016-11-05 12:00:00+05:30	2016-11-05 18:00:00+05:30		t	608eca4e-096f-478f-a491-4237d8183dfa	mayhs11saini@gmail.com
2016-10-28 11:32:05.997161+05:30	2016-10-28 11:57:11.815915+05:30	86ea86b7-27c3-4b00-90fc-812af9425f43	FOSS4G-ASIA 2017	OSGeo-India is glad to announce the second edition of FOSS4G-Asia organized on 26th-29th January, 2017 at IIIT-Hyderabad. The FOSS4G conference series are designed to foster the development and promote the widespread use of open source geospatial technologies. FOSS4G-Asia extends this movement in Asia and welcomes all GIS communities and tribes.	2017-01-26 09:00:00+05:30	2017-01-29 17:30:00+05:30	http://www.foss4g-asia.org/2017/	t	3a3f8971-7ded-413a-a553-29aa7d9c9652	iota.kodali@gmail.com
2016-10-29 12:56:07.410586+05:30	2016-10-29 17:33:20.271773+05:30	ceaacb85-3334-4045-806f-0c7c90e9328f	Free Software Movement India, 2nd National Conference	The 2nd National Conference of Free Software Movement of India (FSMI), which will be one of the biggest gatherings of free software activists, developers, hackers, geeks, academicians, researchers and students in India.	2017-01-26 00:00:00+05:30	2017-01-29 00:00:00+05:30	http://fsmi.in/2nd-national-conference-free-software-movement-india	t	d28ec39e-91ea-494c-bb30-3773e89a7885	rajuvindane@cryptolab.net
2016-10-28 11:59:47.658697+05:30	2016-10-28 12:22:23.865466+05:30	cde2736e-d982-480d-ac76-53ba4943e0f9	ICANN 57th meeting	The Internet Corporation for Assigned Names and Numbers (ICANN) holds periodic public meetings rotated between continents for the purpose of encouraging global participation in its processes. The 57th ICANN meeting is scheduled to happen in Hyderabad, India.	2016-11-03 09:00:00+05:30	2016-11-09 17:30:00+05:30	https://meetings.icann.org/en/	t	d44abae0-0870-4e0d-ab30-b769dbc1f220	iota.kodali@gmail.com
2016-10-20 19:43:51.688275+05:30	2016-10-31 18:40:46.689796+05:30	2cc1c73d-2bbb-4952-bd86-5c0e9fd4624b	The Next OpenAQ Workshop is in Delhi!	We are SO excited to announce that the next OpenAQ workshop, held in partnership with Care for Air, (careforair.org) an independent clean air awareness and advocacy platform, will be in Delhi, India on November 25th and 26th at Social Lounge in Hauz Khaz Village.	2016-11-24 10:00:00+05:30	2016-11-25 16:00:00+05:30	https://medium.com/@openaq/the-next-openaq-workshop-is-in-delhi-apply-to-come-7622aa60e48e#.9zqmdd8h2	t	1c02b6fd-440b-4168-adb9-50b56eb119c4	satyaakam@gmail.com
2016-11-07 21:18:22.887065+05:30	2016-11-07 21:18:22.887109+05:30	25fed812-04e1-4539-8cf6-5099b1b0241e	Drupal Camp Delhi 2016	“Drupal Camp Delhi” aka DCD is the largest watering hole for the Drupal community in North India, and the most frequently held Drupal event across the country. It brings together the Drupal developer and business user community.\r\n\r\nFor developers, the event presents opportunities for learning, getting involved in community contributions via code/ review/ QA sprints for Drupal 7 and Drupal 8, and even find potential employers.\r\n\r\nFor the business community there is an opportunity for learning from presentations made on case studies of Drupal websites, meeting representatives of the leading Drupal companies in India, and some of the brightest individuals working on Drupal in the country. Their experience at DCD will help them leverage the technology and resources available to build amazing digital platforms for their customers. Strong Drupal partnerships are also forged during such events. Companies can also look forward to hiring their next batch of freshers/interns who already pre-trained/experienced in Drupal.	2016-11-12 09:00:00+05:30	2016-11-13 18:00:00+05:30	http://2016.drupalcampdelhi.com/	t	15494b00-0d5f-4797-b6ad-6f9e7d6b68de	satyaakam@gmail.com
2016-12-01 16:06:04.893237+05:30	2016-12-10 18:11:25.607884+05:30	0d31e9f0-d451-47e7-bc21-105ca4cc453f	PYCON PUNE 2017	PyCon, the gathering for the community using and developing the open-source Python programming language. This is the first year of the PyCon Pune where the community will meet for two days of talks and working on upstream projects in two days of dev sprint.	2017-02-16 09:00:00+05:30	2017-02-19 17:00:00+05:30	https://pune.pycon.org/	t	8bd7cb8c-5938-426b-9a7a-557bf23e426a	iota.kodali@gmail.com
2019-02-03 15:34:50.460656+05:30	2019-02-06 19:30:12.877887+05:30	049df525-af39-4cd0-93da-0fd41a1ef183	COEP FOSSMeet'19	COEP FOSSMeet brings you its 2nd edition on Free and Open Source Software, conducted at College of Engineering, Pune. This meet has a vision to create a culture of innovation, evolution and open standards. It intends to support the FOSS Community through hands-on sessions, discussions and lectures, introducing you to the world of FOSS by experts in this field. The event is an excellent opportunity for those who want to learn about FOSS and contribute to it. The event is scheduled on 30th and 31st March, 2019.\r\n\r\nVisit us at : https://foss.coep.org.in/fossmeet/	2019-03-30 09:00:00+05:30	2019-03-31 18:00:00+05:30	https://coepfossmeet.talkfunnel.com/2019/	t	5348ac0e-7aea-4e2a-b948-eb1a7dae693a	osjadhav1408@gmail.com
2016-12-10 21:37:49.142747+05:30	2016-12-10 21:38:32.669316+05:30	7b1f1e83-920a-42ac-8593-0bf484619503	Talk on GNU Taler	GNU Taler is an online payment system that uses Chaum's blind signatures to provide robust unbreakable privacy for customers along with accountability for merchants. Taler avoids the the performance issues that plague Byzantine fault-tolerant consensus based solutions, and is developed entirely as free software, enabling groups outside the usual financial system to deploy online payments.\r\n\r\nThese two features, along with Taler being developerd entirely as free software, allow Taler to provide far cheaper transactions than the existing financial system, or block-chain based alternatives. In particular, Taler can realistically be deployed by groups outside the usual financial system.\r\n\r\nWe will give a demonstration of Taler and a discussion of integrating the merchant software into existing websites. We shall outline the Taler protocol, explaining how it accomplishes goals such as partial spending, and anonymous refunds. \r\n\r\nSpeaker Bio: Christian Grothoff is leading the Décentralisé research team at Inria, a French institute for applied computer science and mathematics research. He maintains GNUnet, an experimental network designed with the goal to provide privacy and security without the need for trusted third parties. He earned his PhD in computer science from UCLA, an M.S. in computer science from Purdue University, and a Diplom in mathematics from the University of Wuppertal. He is also a freelance journalist reporting on technology and national security.\r\n\r\nThis session is open to all and is free. RSVP please, so that we can do all necessary arrangements.	2016-12-14 18:00:00+05:30	2016-12-14 19:30:00+05:30	https://www.facebook.com/events/344544115923362/	t	8d342293-adea-4991-9c97-28ae8d4f60f0	satyaakam@gmail.com
2016-12-11 19:17:56.32117+05:30	2016-12-11 19:18:20.80273+05:30	f4782737-d679-4eae-8814-e9cbbc688f6e	WikiToLearn CONF INDIA 2017	WikiToLearnConf India is a global event comprising WikiToLearn, Mediawiki and KDE developers from all over India and world.\r\nThis year our event is a 2 day, single track event focused on WikiToLearn, Mediawiki, KDE and Open Source Software. While we welcome all kinds of talks, we would love to have more talks around Mediawiki and KDE.\r\n\r\nWe are lining up speakers from well known international and Indian WikiToLearn, Wikimedia and KDE community. We are accepting talks till 5th January 2017. Please submit your talks here.\r\n\r\nNote: The conference is entirely in English.	2017-01-18 09:00:00+05:30	2017-01-19 19:00:00+05:30	https://india2017.wikitolearn.events/	t	1102bc35-5b32-4fce-b4bc-2dfa3ea8d0f6	satyaakam@gmail.com
2016-12-11 19:23:45.06902+05:30	2016-12-11 19:26:51.869002+05:30	2764e73c-cade-4d63-b885-7a3666c1438e	RUBYCONF INDIA 2017	RubyConf India is a global event complementing other RubyConf events across the world.\r\nThis year our event is a 2 day, single track event focused on Ruby Language, Framework and Tools. While we welcome all kinds of talks, we would love to have more talks around Ruby and experience reports around big data with Ruby.\r\n\r\nOur CFP is closed now and we are lining up speakers from well known international and Indian Ruby community.\r\n\r\nStudent Scholars: Please submit your applications for attending Ruby Conf India. See more details on the student scholarship page.\r\n\r\nNote: The conference is entirely in English.	2017-01-27 09:00:00+05:30	2017-01-29 19:00:00+05:30	http://rubyconfindia.org/	t	6a3fd59d-a0ce-44b6-bb93-a9ed99343a13	satyaakam@gmail.com
2016-12-11 19:26:19.427136+05:30	2016-12-11 19:27:14.152148+05:30	9e416ddf-0c1e-4566-9b0e-bb8fccedd073	Gophercon India 2017	Go is an open source project developed by a team at Google and many contributors from the open source community.\r\n\r\nGo makes it easy to build simple, reliable, and efficient software.\r\n\r\nThis conference is brought to you by the Go Language Community in India together with the Emerging Technology Trust (ETT). ETT is a non-profit organization, established to organize and conduct technology conferences in India. It's current portfolio includes DeccanRuby Conf, DevOpsDays India, GopherCon India and RubyConf India.\r\n\r\nWe love going to conferences that don't make you choose between two great presentations. So we created GopherConIndia as a single-track event that you don't want to miss and where everyone gets the opportunity to see the same talks. We think you'll enjoy the speakers we're lining up so much, you won't want to miss anyone of them. Friday and Saturday will offer full days of conference sessions.\r\n\r\nNote: The conference is entirely in English.	2017-02-24 09:00:00+05:30	2017-02-25 19:00:00+05:30	http://www.gophercon.in/	t	f367792d-d352-4e92-98fc-4ae4b23d6769	satyaakam@gmail.com
2017-01-18 13:21:59.521941+05:30	2017-01-18 22:57:26.998848+05:30	02901ba5-92da-4dc1-9dbe-f51becfda4a8	FOSSMeet 2017	FOSSMeet is the annual event on Free and Open source software, conducted at National Institute of technology, Calicut to create awareness and encourage the use of free and open source software. \r\n\r\nThis will be the 11th edition of FOSSMeet starting from 2005. Started with a vision to create a culture of innovation, evolution and open standards, the meet intends to support the FOSS community and the dissemination of FOSS ideology through hands-on sessions, discussions and lectures.	2017-03-10 15:30:00+05:30	2017-03-12 18:30:00+05:30	http://fossmeet.in	t	b21324b9-9efb-449b-900e-4ef570619287	info@fossmeet.in
2017-02-09 13:29:40.603274+05:30	2017-02-09 13:31:28.587034+05:30	6ebcd3ea-efa8-43e3-91a6-40fadcb97405	GNUnify 2017	This is the 15th Year of GNUnify !! The conference is completely free for all !!! Do join us and support the FOSS movement !! Please check out the site for speaker profiles and schedules and for registrations !!! http://gnunify.in	2017-02-10 09:00:00+05:30	2017-02-11 18:00:00+05:30	http://gnuify.in	t	37f20f92-4576-49c4-a1b7-363aad93627c	satyaakam@gmail.com
2017-02-14 00:20:21.882345+05:30	2017-02-14 00:20:21.882395+05:30	c3a97b83-1cca-4e37-9366-a2293f243639	MECHNOVATE'17	Mechnovate is an international level technical symposium organized by the international chapter, ASME VIT. This symposium is a carnival for all those engineering students out there that is interested in learning new things and is looking forward to enlighten their knowledge. It aims to bring the best minds in India together on a common platform where new ideas come forth and newer opportunities could be created. This fest will have various technical and nontechnical events, series of lectures; seminars and exhibitions, which will enrich an engineer with advanced knowledge in their field and attract students of various disciplines from all over India. Right from the beginning Mechnovate has been improving its standards to meet its tag ENVISION THE CHANGE. This March, Mechnovate 2017 is coming with much better events and lectures handled by expert professors and perfectly designed workshops to make sure students make something out of it. So come join us on an adventurous ride along with the best events and workshops. Have fun and enhance your skills this March from the 9th to 12th.\r\n\r\nNexus\r\nNEXUS is a premium event under Mechnovate .It comprises of showcase events like RC BAJA, Impulse. It also includes Guest Lecture Series by some of most successful CEO’s , Entrepreneurs and Leaders in the field of techanical and management branches.It promises to provide great knowledge,experience , hands on experience and opportunity to interact with some experienced people of the world. \r\n\r\nRC BAJA\r\nIt is a intercollege design competition in which teams from various universities all over the country design unique small off-road cars. The main objective of RC BAJA Racing is to deign, build and race vechicles that can withstand harshest Elements of rough terrain.The students function as a team to design, build, test and promote their vehicle within limit of rules to a fictitious firm.The vehicles should be economical,safe and be able to function even in roug terrains.\r\nDate - 10-11 March   \r\nTime - 11:00 AM – 5:00 PM\r\nVenue – Basketball ground\r\nRegistration Fees: Rs. 700 *(exclusive of taxes) \r\n\r\nIMPLUSE: WATER ROCKETRY\r\nWhy do rockets use fuel always, its time to think different? This is a mechanical event that involves manufacturing of rocket that uses water pressure as thrust to propel and travel. The students should have knowledge of fabrication, materials and other physical terms. The rocket’s flight, time of flight, range excites consists of 2 rounds of elimination for the ultimate battle between the winners\r\nDate - 10-11 March   \r\nTime - 11:00 AM – 5:00 PM\r\nVenue – SJT Ground\r\nRegistration Fees:  Rs. 400 *(exclusive of taxes) \r\n Guest Lecture Series\r\n1.\tArvind Pani\r\nCo-Founder & CEO at Reverie Language Technologies Pvt. Ltd\r\nPreviously worked as \r\n•\tDirector - Strategy & Business Development  Reverie Technologies Pvt. Ltd\r\n•\tEngineering Manager at Intel Technology India Pvt Ltd.\r\nEducation NIT Rourkela \r\n2.\tBal Krishna Birla\r\nCEO at Zimplify\r\nCo-founder and founder at TheSongPedia and AdalBdal\r\nPresident Four Interactive(AskLaila).\r\nEducation IIT Kanpur.\r\n3.\tShree Bhise\r\nDirector at Mobisy technologies Pvt Ltd\r\nPreviously worked as\r\n•\tTest Lead IBM.\r\n•\tSoftware Engineer Tech Mahindra\r\nEducation: Walchand College Of Engineering.\r\n4.\tVenkat Shyam\r\nCEO at Signet Enterprises.\r\nFounder-Mentor-Executive Partner GreenTree Ventures.\r\nPreviously worked at Bajaj Auto.\r\nEducation: IIM Bangalore\r\n\r\n5.\tSameer Shisodiya\r\nVP, Products at Reverie Language Technologies Pvt Ltd\r\nCEO/Founder Linger Leisure\r\nPreviously worked as\r\n•\tHead of content and strategy at NextBigWhat\r\n•\tHead of products at Ziva Software.\r\nEducation: BITS\r\nRegistration fees: Rs. 500 *(exclusive of all taxes)\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nWorkshops\r\n\r\nAutomobile Dynamics And Design\r\nIndia is fast becoming the Automobile manufacturing Hub of the world. This training program covers concepts related to design and dynamics of car. Its helps students gain knowledge on design suspension parameters, aerodynamics, braking system steering effort chassis balancing etc needed to create their own design of cars.\r\nDate:   11-12 March\r\nTiming:   9:30 AM - 06:00 PM\r\nVenue - TT Gallery 2\r\nRegistration fees: Rs. 1000 *(exclusive of all taxes)\r\n\r\n\r\n\r\nCFD with ANSYS\r\nThis is one of the important tools for solving the current industrial mechanical problems in machines and any dynamic objects that are in contact with the fluids (liquid or air). \r\n\r\nANSYS, Inc. Is an American Computer-aided engineering software developer headquartered south of Pittsburgh in Cecil Township, Pennsylvania, United States? Andy’s publishes engineering analysis software across a range of disciplines including finite element analysis, computational fluid dynamics, and explicit and implicit methods.\r\n\r\nIn 2 days workshop students will learn the concept of Fluid dynamics and how to solve the fluid dynamics problems with the help of Andy’s software with no of projects. Laptops are compulsory.\r\nDate:   10 - 11 March\r\nTiming:   9:30 AM - 06:00 PM\r\nVenue – Kamraj Auditorium\r\nRegistration fees: Rs. 950 *(exclusive of all taxes)\r\n\r\n\r\n\r\nVehicle Reconstructing\r\nInterested in building cars then this is your event. In this event vehicle is reconstructed from the scratch, from engine installation, cooling systems, electrical system installation and checking. These events give you hands on experience to build a car and offer you great knowledge too.\r\nDate:   11th-12th March\r\nTiming:   9:30 AM - 06:00 PM\r\nVenue - TT Gallery 1\r\nRegistration fees: Rs. 1000 *(exclusive of all taxes)\r\n\r\n\r\nAero Design\r\nThis is event that gives every knowledge you need to know about aircraft from designing of wings, engines to aerodynamics and troubleshooting. It will help you gain a lot of experience and boost your aircraft technology knowledge.\r\nDate:   9 - 10 March\r\nTiming:   9:30 AM - 06:00 PM\r\nVenue- MB210\r\nRegistration fees: Rs. 900 *(exclusive of all taxes)\r\n\r\n\r\n\r\n\r\nEVENTS\r\n\r\nStratagem\r\nThis event unlocks your imagination and building the most complex structures to make the object fly, swing, swirl, and travel. ‘Stratagem’ turns on its head in that where most other events seek to simplify a complex problem; this requires you to enthrall the judges and the audience with your ability to convolute the simplest of actions with an infinite array of steps. The more complex it is the better is the point you score.\r\nDate - 9 March   \r\nTime - 06:00 PM - 8:30 PM\r\nVenue – MB220\r\nRegistration fees: Rs. 100 *(exclusive of all taxes)\r\n\r\nCAD Quest\r\nComputer-aided design (CAD) is the use of computer systems (or workstations) to aid in the creation, modification, analysis, or optimization of a design. CAD software is used to increase the productivity of the designer, improve the quality of design, improve communications through documentation, and to create a database for manufacturing. Computer-aided drafting (CAD), which includes the process of creating a technical drawing with the use of computer software.\r\n\r\nThe participants will have to design a 3D model in CAD Software. A prototype will be provided and, participants have to add an innovation in that product. One team can choose only one product out of three designs provided and submit it within the given deadline\r\n\r\nQuestionnaire session in which the judges and the opponents can ask questions on the designed model.\r\nDate  - 9 March  \r\nTime - 06:00 PM – 8:30 PM\r\nVenue – MB113 and MB115\r\nRegistration fees: Rs. 100 (per team of 2) *(exclusive of all taxes)\r\n\r\nReverse engineering\r\nThis is event in Mechnovate where Participants will be provided 2/3 products (manufactured). It will be divided among the participants. Then the participants will be given a certain time limit and then they will study the product and start writing the steps and principles involved in manufacturing.\r\nDate  - 10 March  \r\nTime - 06:00 PM – 8:30 PM\r\nVenue – MB220\r\nRegistration fees: Rs. 100 (per team of 2)*(exclusive of all taxes)   \r\n\r\nPaper Presentation\r\nASME VIT student chapter presents Paper Presentation .The event showcases vivid range of topics to capture the bright minds and their innovative ideas, as it unfolds to achieve the ultimate aim to 'Envision The Change'. The paper can be related to any topic majorly related to Mechanical, Energy, Chemical and Automobile Engineering. Minor relation to other branches is allowed.\r\nDate  - 11 March  \r\nTime - 11:30 AM – 6:00 PM\r\nVenue – MB210\r\nRegistration fees: Rs. 500 *(exclusive of all taxes)	2017-03-09 00:00:00+05:30	2017-03-12 00:00:00+05:30	http://www.mechnovate.org/	f	1ea995c4-0574-4c1b-8082-daed5b9b11f2	publicity.m17@gmail.com
2017-02-26 22:41:12.974064+05:30	2017-02-26 22:41:12.974136+05:30	af937234-21f2-40ac-b925-08e87160ae5d	RC BAJA VIT 2017	MECHNOVATE'17 : RC BAJA\r\n\r\nIntroduction:\r\n\r\nMechnovate'17 : RC Baja is an intercollegiate design competition organised by the American Society of Mechanical Engineers -VIT. Teams of students from universities all over the country design and build small off-road cars. The cars all have engines of the same specifications. The goal in RC Baja racing is to design, build and race off-road vehicles that can withstand the harshest elements of rough terrain.\r\n\r\nThe object of the competition is to simulate real-world engineering design projects and their related challenges. Each team is competing to have its design accepted for manufacture by a fictitious firm. The students must function as a team to design, build, test, promote and compete a vehicle within the limits of the rules, also to generate financial support for their project and manage their educational priorities. Each team's goal is to design and build a prototype of a rugged, single seat, off-road recreational vehicle intended for sale to the non-professional weekend off-road enthusiast. The vehicle must be safe, easily transported, easily maintained and fun to drive. It should be able to negotiate rough terrain without damage.\r\n\r\nEligibility :\r\n\r\nCompetition Teams must be comprised entirely of undergraduate students. There is no limit on the number of Teams that may enter the Competition nor is there a limit on the number of Teams from any given school. Each Team is responsible to produce a remote controlled vehicle in accordance with these regulations. Each Team is encouraged to bring sufficient spare parts and supporting equipment needed to complete the Events outlined herein. Each Team wishing to compete in the RC Baja Car Competition must register online or on spot at the event.\r\n\r\n\r\n\r\nVehicle Requirements :\r\n\r\n1.\tVehicle Restrictions\r\nThe purpose of these restrictions is to ensure an event competition of student-produced vehicles, all of which use common, easily available drive trains; rather than allowing expensive, off-the-shelf "professional-sports" entries. The vehicle must be conceived, designed, and fabricated by students without any direct involvement from professional engineers, automotive engineers, or related professionals. The student competition Team may use any literature or knowledge related to the design of the vehicle. The students may use information from professionals or from professors as long as the information is received in a discussion of alternatives with their pro's and con's. Professionals may not make decisions of design or drawings, or fabricate parts for the Team except as needed by shop rules and safety considerations.\r\n\r\n\r\nMandatory Components :\r\n\r\nRadio-controlled car parts which you must use, as specified here, without alterations. You must use the motor and the battery pack as specified below; these are the only sources of power that can be used for propulsion:\r\n\r\na) Propulsion Motor: One per vehicle. Propulsion motor may perform additional functions, and additional motors may be carried on the vehicle for other purposes, but only one motor may propel the vehicle.\r\n\r\nb) Propulsion Battery Pack: One per vehicle. The propulsion battery-pack may perform additional functions, and additional batteries of other types may be carried on the vehicle for other purposes, but only one battery-pack may propel the vehicle. Propulsion battery-pack is defined as: any 7.2-Volt 6-cell RC battery, or, any 7.4-Volt 2-cell or 2S LiPo RC battery when used with proper “balancing” charger and allied equipment. Batteries may be un-wrapped and wired separately but not altered internally; bring the original case or wrapper to show type and classification. Teams may bring and swap-out more than one battery-pack to minimize “re-charging” downtime. Battery must be securely mounted to vehicle.\r\n\r\nPurchased or Custom Made Components, Make or Buy, It’s your choice:\r\nCommerciallymanufactured vehicle parts which you may select and purchase, subject to these limitations; you may also make any of these items:\r\na) Transmitter, receiver, servo's: Your choice, make or buy, with proper Channel.\r\nb) Speed control: Any available RC style – e.g. mechanical, resistor, or electronic – is okay. Home-made controls can be of any common RC style. Separate dedicated batteries just for your controls are acceptable, but they may not help propel the vehicle. \r\nc)Wheels, shocks, tank-treads, springs, hubs and spindles. Tires and traction devices that would leave marks on the venue’s floors will not be allowed.\r\nd) Multiple servo's are okay. \r\ne) Store-bought universal joints are okay.\r\nf) Nuts, bolts, shafting, ordinary hardware and machine components; transistor and chip components. g) Differentials made by the Team from pre-existing separate components, or "toy-kit" (e.g: Erector SetTM; iThinkTM , LegoTM ) differentials, ARE acceptable. Differentials sold or intended for radio-controlled vehicles are NOT acceptable. You must describe the origin of your differential unit.\r\nh) Non-functional ornaments. Body, if used, shall not interfere with inspection of vehicle components.\r\n\r\n"YOU MAKE IT” = the rest of the vehicle.\r\n\r\nTransmitter / Controller Requirements :\r\n\r\nFor non-interference during the Competition, transmitter frequencies must be unique and at least two Channel numbers apart. Request approval of your desired Channel with the Mechnovate'17 Team  via e-mail, and request that confirmation be returned. Channels will be allotted on a first-requested first-accepted basis by time of correspondence, so do this early. Drivers and Teams required to use their assigned-frequency. Before set-up and competition, the Mechnovate'17 Team will examine the transmitter frequencies to verify that they are as pre-registered or at least unique and properly spaced from others; if not, transmitters will have to be changed or isolated so as not to interfere with other competitors.\r\n\r\nBaja Driving Rules : \r\n\r\n1)Drivers are expected to become familiar with the lay-out and conditions of the Baja Course, before and during the Races, and to immediately call any apparent Course flaws to the attention of the Judges for possible correction.\r\n\r\n2)Special agents that increase traction may not be added to the tires or track surface. Tires that would leave marks on the nice venue’s floors will not be allowed, and shall be disqualified if not corrected. \r\n\r\n3)Before the start of each match up, one of the Drivers, selected at random by coin-toss or ‘matching pennies’ or anything similar, shall choose one of the lanes, with the other Driver taking the other lane. Keeping in mind, the lanes shall be as identical as we can make them, and if one Driver ‘knows’ something good or bad about the lanes, that information needs to be disclosed. Drivers may stand anywhere or move about, during the run. The Driver (only) may rescue, by hand, a stranded or marooned vehicle. Rescues may not improve track location or velocity of vehicle; except: if the vehicle cannot get over a course obstacle after three good-faith attempts, the Driver can carry or drive around to the other side. \r\n\r\n4)Vehicle may go completely outside a non-barrier-type (e.g. masking tape, chalk) track boundary on an outside turn or a straight portion of the track; but if ALL of the vehicle’s wheels or tracks go outside a lane or track boundary on an inside turn (“taking a short-cut”), that turn must be repeated from at or behind point of departure. A vehicle may intrude into the other vehicle’s lane, so long as the intrusion does not influence or impede the other vehicle nor “take a short-cut” to shorten the designated travel distance. \r\n\r\n5)In the event of detrimental lane violations, vehicle collisions, track defects, or unsportsmanlike driver conduct, a “Foul!” may be shouted-out by either driver or by any Judge. Both vehicles shall stop and the Judges shall make an at-fault, no-fault, or track fault determination. Judges may gather information from the drivers and witnesses. As a general rule, the vehicle determined to have been on the “wrong side” of the centerline shall be presumed to be ‘at fault’ and the other vehicle shall be declared the winner of the match, but, the Judges may make contrary or cancelling determinations in cases of actions needed for safety, bad conduct or enticement by either driver, or improper Course conditions. A driver making an unjustified “Foul!” call loses the match-up. If an offended driver, voluntarily and after vehicle examination, declares “forgiveness” of a collision or violation, or, after faulty Course conditions are corrected, the Race shall begin again, with both vehicles starting in their own lanes, located as at the moment of the incident.\r\n\r\n6)After each run, in order to save time, Team members shall assist in clearing their car (and remnants) off the track so that another Team can be running.\r\n\r\n7.\tDisqualification :\r\n\r\nTeams may be disqualified for not following the rules contained within this document, particularly relating to vehicle requirements and team conduct.\r\nTeams may be disqualified for unruly or unsportsmanlike behavior, or by showing a deliberate pattern of avoiding or circumventing the intent of the race courses. Teams should conduct themselves in a professional manner throughout the event, keeping in mind they are representing not only themselves but also their school and ASME Student Section.\r\nVehicles whose equipment or construction is in violation of these Rules may, at the option of the Mechonvate'17 Organising and Judges, be allowed to make solo ‘demonstration’ runs on the Courses, but shall be not eligible to be ranked or “win”.\r\n\r\nDate: 10 – 11 March\r\nTime: 10:00 AM – 5:00 PM\r\nVenue: Basketball Ground ( Anna Audi)\r\nContact:\r\nAtharva Kulkarni: +91 9843888968\r\nParth Pramesh: +91 7878284253\r\nRegistration Fee:\r\nVehicle Registration: Rs.700\r\nIndividual Registration: Rs.100*(exclusive of all taxes)	2017-03-10 00:00:00+05:30	2017-03-11 00:00:00+05:30	http://MECHNOVATE.ORG	f	cd8bc842-ffbb-448e-a40e-9313a2a34aec	prashastmukesh24@gmail.com
2017-02-26 07:53:00.989623+05:30	2017-03-14 17:44:02.976564+05:30	d7a58323-85a7-4695-a47a-438129395732	PyDelhi Conf 2017	PyDelhi conference is hosted annually by PyDelhi Community with an aim to promote Python programming language. We provide a single platform to users from different spheres such as students, global entrepreneurs and professionals from startups and established firms to connect and share their ideas. Experts from various domains showcase their use of Python besides discussing about the recent and upcoming trends in technology.	2017-03-18 09:00:00+05:30	2017-03-19 18:00:00+05:30	http://conference.pydelhi.org/	t	47a16a54-c98f-46c4-9d09-a9f84cb8afa5	satyaakam@gmail.com
2018-08-12 10:50:49.154923+05:30	2018-11-17 07:24:21.793039+05:30	ceb07736-7c58-4a03-aa60-903df4c350be	Debutsav.in	Debian is the Universal Operating System of the users, by the users, for the users.”\r\n\r\n— Anonymous\r\n\r\nDebConf is the annual Debian conference which is held in a different country every year. DebConf18 was held in Hsinchu, Taiwan, from July 29 to August 5, 2018.\r\n\r\nMiniDebConfs are local meetings organized by Debian project members to achieve similar objectives to those of the DebConf, but on a regional context.\r\n\r\nWhen majority of talks are not Debian specific, it is called DebUtsav - celebration of Free Software by Debian community.	2018-09-24 09:00:00+05:30	2018-09-25 18:00:00+05:30	https://debutsav.in/	t	a88afc29-45b8-44fb-adfb-749231d30e54	satyaakam@gmail.com
2017-02-28 23:14:16.195397+05:30	2017-02-28 23:14:16.195421+05:30	89a6da3f-52b0-4adf-b09f-cb96829b88fe	guest lecture series	An entrepreneur has been defined as "a person who starts, organizes and manages any enterprise, especially a business, usually with considerable initiative and risk "Rather than working as anemployee, an entrepreneur runs a small business and assumes all the risk and reward of a given business venture, idea, or good or service offered for sale.\r\nGet to know the everything about entrepreneurship and startups.\r\nFollowing are the speakers for Guest lecture series.\r\n\r\n\r\n1. Arvind Pani\r\nCo-Founder & CEO at Reverie Language Technologies Pvt. Ltd\r\nPreviously worked as \r\n• Director - Strategy & Business Development Reverie Technologies Pvt. Ltd\r\n• Engineering Manager at Intel Technology India Pvt Ltd.\r\nEducation NIT Rourkela \r\n\r\n2. Bal Krishna Birla\r\nCEO at Zimplify\r\nCo-founder and founder at TheSongPedia and AdalBdal\r\nPresident Four Interactive(AskLaila).\r\nEducation IIT Kanpur.\r\n\r\n3. Shree Bhise\r\nDirector at Mobisy technologies Pvt Ltd\r\nPreviously worked as\r\n• Test Lead IBM.\r\n• Software Engineer Tech Mahindra\r\nEducation: Walchand College Of Engineering.\r\n\r\n4. Venkat Shyam\r\nCEO at Signet Enterprises.\r\nFounder-Mentor-Executive Partner GreenTree Ventures.\r\nPreviously worked at Bajaj Auto.\r\nEducation: IIM Bangalore\r\n\r\n5. Sameer Shisodiya\r\nVP, Products at Reverie Language Technologies Pvt Ltd\r\nCEO/Founder Linger Leisure\r\nPreviously worked as\r\n• Head of content and strategy at NextBigWhat\r\n• Head of products at Ziva Software.\r\nEducation: BITS\r\n6.Mr.Anand Pande\r\nDirector,SPM.\r\n\r\nWe have the following combos available for registrations – \r\n1)\tIndividual lecture\t  - 150 rs\r\n2)\t2 Lectures \t\t  - 250 rs\r\n3)\t3 Lectures + T Shirt \t  - 500 rs\r\n4)\t5 Lectures\t\t  - 600 rs\r\n5)\t5 Lectures + T Shirt    - 700 rs\r\n6)\tAll Lectures + T Shirt  - 850 rs	2017-03-09 00:00:00+05:30	2017-03-12 00:00:00+05:30	http://mechnovate.org	f	b91a1333-e4c4-4964-91ea-058216ddc904	prashastmukesh24@gmail.com
2017-09-16 08:35:14.74406+05:30	2017-09-16 08:35:14.744086+05:30	e597df95-e1f9-4668-bbc7-150c854b11e4	Software Freedom Day 2017 ( New Delhi)	Software Freedom Day 2017 Celebration & Community Mashup\r\n\r\nLet's celebrate Software Freedom Day ! \r\n\r\nSoftware Freedom Day (SFD) is an annual worldwide celebration of Free Software. SFD is a public education effort with the aim of increasing awareness of Free Software and its virtues, and encouraging its use.\r\n\r\nOver 1000 volunteer groups in over 120 countries all around the globe celebrate the Software Freedom Day every year in September.\r\n\r\nSoftware Freedom Day is aimed to educate the public and encourage the use of free and open source software. Join Indian Linux User's Group Delhi(NCR) at CIC, University of Delhi.\r\n\r\nLets celebrate the 'Software Freedom' with ILUG-D\r\n\r\nSee you there. \r\n\r\nbetween the groups.\r\n\r\n-----------------------------	2017-09-16 12:00:00+05:30	2017-09-16 18:00:00+05:30	https://www.meetup.com/ILUGDelhi/events/243178964/?rv=md1&_af=event&_af_eid=243178964&https=on	t	54b1d99e-52cf-4f33-bfa0-52d673794118	satyaakam@gmail.com
2017-07-13 16:17:25.860172+05:30	2017-09-16 08:36:52.274457+05:30	17a3a323-973e-4a94-8ea9-fc5dbccd614f	PyCon India 2017	PyCon India, the premier conference in India on using and developing the Python programming language is conducted annually by the Python developer community. It attracts the best Python programmers from across the country and abroad.	2017-11-02 00:00:00+05:30	2017-11-05 00:00:00+05:30	https://in.pycon.org/2017/	t	e2e83655-a750-4b32-84c0-9a3c8417eeda	thes.kumar@gmail.com
2017-09-22 03:46:42.050429+05:30	2017-09-22 03:46:42.050455+05:30	69270a5a-9993-420f-8880-febec5adf52f	ERPNext Conference 2017, Mumbai	Better Together\r\n\r\nStarted more than 10 years ago, ERPNext has come a long way as a project and a viable community. Over the last year we kick started the ERPNext Foundation and the community is more growing and vibrant than ever.\r\n\r\nWorking together ultimately makes us better. Life on earth evolved from single-cell organisms to multi-celled organisms when some cells started to specialise and co-operate with each other, increasing their chance of survival and growth. Similary the ERPNext community is now coming togther, where by specialization and co-operation, all of us become better.	2017-10-12 09:00:00+05:30	2017-10-14 18:00:00+05:30	https://erpnext.org/conf/2017/	t	ab638d45-6841-4812-82ac-1c7e8540b069	satyaakam@gmail.com
2017-10-03 02:28:35.600149+05:30	2017-11-13 08:30:59.208711+05:30	3dd268e0-ec7b-4fc5-9045-f1ce91ddcf36	PyBITS 2017	The Python Conference for Students	2017-10-28 00:00:00+05:30	2017-10-29 00:00:00+05:30	https://www.bits-atmos.org/pybits	t	0f0a8e46-d10e-4913-8fce-5ca58dd52346	crux@hyderabad.bits-pilani.ac.in
2017-11-13 08:34:26.352713+05:30	2017-11-13 08:34:26.352769+05:30	ee5d587c-76fe-40f1-914a-d4755e5c44b8	FOSSMeet'18	FOSSMeet is an annual event on Free and Open source software, conducted at National Institute of Technology, Calicut. Started with a vision to create a culture of innovation, evolution and open standards, the meet intends to support the FOSS community and the dissemination of FOSS ideology through hands-on sessions, discussions and lectures. Nothing better to get you introduced to the world of FOSS.\r\n\r\nOur main aim being contributing to the FOSS community, we focus on the quality and standard of each of the events that is a part of FOSSMeet. Experts, professionals and students come in from all over south India to attend FOSSMeet.	2018-02-17 09:00:00+05:30	2018-02-18 18:00:00+05:30	http://fossmeet.in/	t	9a8bfef1-a9be-4aa8-aad2-992bf0b6ae87	satyaakam@gmail.com
2017-10-29 00:42:17.807201+05:30	2018-01-22 07:08:10.436344+05:30	d255e77e-9fe0-44cc-b416-7a2f0ec96842	PyCon Pune 2018	PyCon, the gathering for the community using and developing the open-source Python programming language. During PyCon Pune, the community will meet for two days of talks and work on upstream projects in two days of dev sprint.	2018-02-08 00:00:00+05:30	2018-02-11 00:00:00+05:30	https://pune.pycon.org/	f	e220f40d-8f44-4aca-9e97-9fac8d3a2fb0	pyconpune@python.org
2018-05-08 06:41:22.123084+05:30	2018-05-12 13:50:00.23416+05:30	27021828-06c5-44b7-b9b5-9a57b1ebb7bf	Hillhacks 2018	Hacking and making in the Himalayas	2018-05-18 00:00:00+05:30	2018-05-31 00:00:00+05:30	https://hillhacks.in/	t	62a776ca-1902-4c9b-a55e-dbacd5141f5d	sahil@disroot.org
2018-05-21 20:04:16.976555+05:30	2018-05-21 20:05:18.647908+05:30	3ea8cb3c-5efd-4343-9237-6d0efe796855	Pycon India 2018	10 years of Pycon India , Happening from 5th Oct  to 9th Oct\r\n\r\nPyCon India, the premier conference in India on using and developing the Python programming language is conducted annually by the Python developer community. It attracts the best Python programmers from across the country and abroad.	2018-10-05 09:00:00+05:30	2018-10-09 18:00:00+05:30	https://in.pycon.org/2018/	t	ad997edd-b3f0-4bf0-9670-2a034e2b66dc	satyaakam@gmail.com
2018-12-12 07:10:59.083057+05:30	2018-12-12 07:10:59.0831+05:30	90e88c4a-8009-4d95-af08-b3964c6a727d	SciPy India	SciPy India is a conference providing opportunities to spread the use of the Python programming language in the Scientific Computing community in India. It provides a unique opportunity to interact with the "Who's who" of the Python for Scientific Computing fraternity and learn, understand, participate, and contribute to Scientific Computing using Python. One of the goals of the conference is to combine education, engineering, and science with computing through the medium of Python.	2018-12-21 09:00:00+05:30	2018-12-22 18:00:00+05:30	https://scipy.in/2018	t	25a62630-003c-42a0-be68-746925745459	satyaakam@gmail.com
2018-01-30 07:00:46.221185+05:30	2019-02-03 21:25:03.232084+05:30	f23e9dfe-2c84-4f61-827e-740a8df8bf2b	GNUnify 2019	A forum to Unite Open Minds	2019-02-15 09:00:00+05:30	2019-02-16 18:00:00+05:30	http://gnunify.sicsr.ac.in/	t	195ec9a9-449d-4371-9451-48301c65e899	satyaakam@gmail.com
2018-12-02 13:47:53.941002+05:30	2019-02-01 12:44:22.741201+05:30	da47b7fa-2c50-4b7c-9c40-21a04f33bb57	FOSSMeet '19	FOSSMeet is an annual event at NIT Calicut that brings together the Free and Open Source Community from around the country. Celebrating its fifteenth year, we have thus far, had an array of speakers and experts, open discussions, introduce new technology, and so much more, in line with the ideology of FOSS. It's time to set the stage once again and we urge you to join us in supporting the project that you believe in. We are inviting proposals for talks and workshops at FOSSMeet 2019. You may propose to conduct a lecture, demo, tutorial, workshop, discussion or panel at FOSSMeet by visiting the link above. Join us: Think Better, Code Free	2019-02-15 13:00:00+05:30	2019-02-17 07:00:00+05:30	https://fossmeet.in	t	22f0af00-df36-4926-91e7-8ea4b00ce6a4	fosscell@nitc.ac.in
2019-02-14 20:51:26.595216+05:30	2019-02-17 20:51:04.383304+05:30	055c4850-49d8-493b-bb92-bd03f79ba8c2	DebUtsav Delhi	DebConf is the annual Debian conference which is held in a different country every year. DebConf18 was held in Hsinchu, Taiwan, from July 29 to August 5, 2018. MiniDebConfs are local meetings organized by Debian project members to achieve similar objectives to those of the DebConf, but on a regional context. When majority of talks are not Debian specific, it is called DebUtsav - celebration of Free Software by Debian community. DebUtsav Delhi will be happening on 9th and 10th March. Venue will soon be announced on the website. You are invited to attend the event and participate in all the sessions you like, attendance is FREE of cost.	2019-03-09 11:00:00+05:30	2019-03-10 17:00:00+05:30	https://debutsav.in/	t	e5f2cd10-dcc5-45e9-8ebd-9999c3845198	guptautkarsh2102@gmail.com
2019-02-22 15:06:27.050433+05:30	2019-02-25 10:41:22.548512+05:30	e5878f0d-16c6-4a7b-9af4-09a4749032a8	ILUG-D's Raspberry Pi Jam - 2019	Raspberry Pi Jam organised by India Linux User Group - Delhi. Come play and hack with single board computer The Raspberry Pi.	2019-03-02 09:00:00+05:30	2019-03-02 17:00:00+05:30	https://www.meetup.com/ilugdelhi/events/258641253/	t	606f6029-cd34-4b43-ba7e-51ccd64b0a1c	iayanpahwa@gmail.com
2019-06-27 11:21:44.986805+05:30	2019-06-28 17:19:42.507127+05:30	faccdbe6-55fe-4a47-be1e-61cadd490bd2	PyCon India 2019	PyCon India is the annual gathering of Pythonistas, run by the Indian Python community, to foster adoption of the Python programming language. PyCon India 2019, will take place in Chennai, between Oct 12 and 15. This is 11th edition of the conference and about 1200 people are expected to participate in this event, from all over the country.\r\n\r\nPyCon India 2019 is actually 3 events rolled into one mega event.\r\n\r\n- Conference Days\r\n\r\n- Workshop Day\r\n\r\n- Developer Sprints\r\n\r\nThe Conference Days are on Oct 12 and 13, 2019 at the Chennai Trade Centre. On the conference days, people connect with each other, discuss their experiences and present their ideas.\r\n\r\n- Talks with slides is where people do a 25 min talk, on a topic. These talks are selected through a CFP process, before the event. There will be 3 talk tracks, where presentations will happen in parallel.\r\n\r\n- Poster session is a 1-hour session, right after the lunch break, on the first day of the conference. One of the halls is temporarily converted into a poster exhibition hall, where presenters use a graphic poster and a laptop to present their topic.\r\n\r\n- Open spaces is where people have informal presentations and discussions along side the talk tracks. Open spaces slots can be booked at the venue, on the day of the event.\r\n\r\n- Lightning talks is a 1-hour session, right after the lunch break, on the second day of the conference. Lightning talks are rapid 5 min presentations, that is presented to the entire conference crowd, a great way to get a message across to the entire audience.\r\n\r\n- Sponsor stalls are where you can meet companies supporting the conference. These companies use Python and are looking for Python developers. You can visit their stalls to get to know more about them, and the openings in their organization.\r\n\r\nThe Workshop Day is on Oct 14, 2019 at the IITM Research Park. (Please note that Workshop overlaps with Devsprints) On the workshop day, people can attend hands-on workshops, and learn about a topic from an expert. A separate ticket needs to be purchased for each workshop you would like to attend.\r\n\r\nThe Developer Sprints is on Oct 14 and 15, 2019 at the IITM Research Park. During the Devsprints people contribute to open source projects, guided by mentors. This is a nice way to get started with contributing to Python and other open source projects. A separate ticket is required to attend the Devsprints.	2019-10-12 00:00:00+05:30	2019-10-15 00:00:00+05:30	https://in.pycon.org/	t	f003ab8e-f94a-4cde-8b08-31c85dc127d3	contact@in.pycon.org
2018-07-03 17:48:27.639352+05:30	2019-03-29 12:05:04.791038+05:30	ebb75dc0-37b8-46fc-965c-6d835892e71f	Devconf.in	DevConf.IN 2019 is the annual Developers' Conference organized by Red Hat in India. It is meant to provide a platform to the local FOSS community participants to come together and engage in knowledge sharing through technical talks, workshops, panel discussions, hackathon and such activities.\r\n\r\nThere is no admission or ticket charge for DevConf.IN events. Free registration is required though. Stay tuned to receive updates about registration.\r\n\r\nWe are committed to fostering an open and welcoming environment at our conference. We are setting expectations for inclusive behavior through our code of conduct and media policies, and are prepared to enforce these.\r\n\r\nWhen: August 2-3, 2019\r\n\r\nVenue: To be announced. It will be in Bengaluru, India\r\n\r\nYou should consider attending this DevConf event if you are:\r\n\r\nA developer\r\nA technology architect\r\nAn IT consultant\r\nAn IT student or a teacher from an IT university/faculty\r\nOr simply an IT enthusiast interested in the latest trends in open source and emerging digital technologies\r\nDevConf events are free, without admission or ticket charge. On-line registration is required though.\r\n\r\nTalks, presentations, workshops (etc) will all be in English.\r\n\r\nThe primary event themes this year are:\r\n\r\nTRENDING TECH: (AI/ ML/ BC/ IoT/ Mobile)\r\nSTORAGE AND NETWORKING: (Cloud Native Storage, Software Defined Storage, Storage Management, Distributed File System, Datastores, Big Data, NFV/ VNF, DPDK, ODL, Software Defined Networking)\r\nOPEN HYBRID CLOUD: ( Multi-Cloud, Automation, OpenStack, Kubernetes, Serverless, Microservices, Containers, OpenShift/ PaaS, Hybrid Cloud Management, Operators, CNI, Virtualization, Kernel, Service Mesh)\r\nDEVELOPER TOOLS: (Container Tooling, CI/CD, DevOps, Code Editors Cloud native IDE, CLI, Local Development for Containers, Language Runtime, Debugging/Tracing, QE)\r\nFOSS COMMUNITY & STANDARDS: (Community Trends, Governance, Licensing, Participation, Leadership, Agile )\r\nWHITE PAPER / ACADEMIC RESEARCH: ( Computer Science Engineering, New Algorithms, Protocols, Experimental/Future Networks, Data Modelling, Security, Natural Language Processing-NLP )\r\nWe are also accepting submissions in focus areas like - Design, Documentation, Security & Data Privacy. These focus areas are the common and integral part of all the themes.\r\n\r\nImportant dates:\r\nCfP Opens: March 15, 2019\r\nCfP Closes: May 01, 2019\r\nAccepted speakers confirmation: June 1, 2019\r\nSchedule Announcement: July 1, 2019\r\nRegistration Opens: July 1, 2019\r\nEvent dates: Friday, August 2 to Saturday, August 3, 2019	2019-08-02 09:00:00+05:30	2019-08-03 18:00:00+05:30	https://devconf.info/in	t	2a68013e-d4a9-4e24-a4be-e2e556455361	satyaakam@gmail.com
2019-05-31 09:11:59.053004+05:30	2019-05-31 09:12:59.975681+05:30	19c3ed52-0fc7-4bda-8c72-bd3a5a039382	Drupal Camp Delhi 2019	One of the largest Drupal events across India, DrupalCamp Delhi (15 - 16 June) is an annual conference where the finest minds in technology come together to discuss Drupal and associated technologies. \r\n\r\nBringing together technocrats, marketers, and business user community to learn, engage, and contribute. It provides you with the stage to explore the ambitious and largest open source community by offering a glimpse into “the art of the possible” when you choose Drupal.\r\n\r\nSpend your weekend with a wonderful community which collaborates, networks, connects, and shares. The community that is Drupal is truly exceptional.\r\n\r\nWhether you are a senior leader, a developer, a designer, or a marketer—there's something for you at DrupalCamp Delhi. \r\n\r\nLearn to make, think about, and do things differently with Drupal. Come, Join Us.	2019-06-15 09:10:55+05:30	2019-06-16 18:00:00+05:30	http://2019.drupalcampdelhi.com/	t	d475db4a-f47e-4c7e-8ac8-93a0e086948a	satyaakam@gmail.com
2019-10-14 20:59:40.323688+05:30	2019-10-14 21:00:13.389585+05:30	a157276c-2f60-429a-aa01-6eec62c1f21d	OpenHack 2019	A 2 day, immersive open hackathon where students, professionals, researchers, makers and anyone with an interest in technology gather together to build a single project, a disaster management, awareness and alertness platform	2019-10-26 09:00:00+05:30	2019-10-27 18:00:00+05:30	https://openhack.tech/	t	2a89c5d9-dd8a-4c52-aa53-72db92f0d1ec	satyaakam@gmail.com
2019-11-11 20:58:24.319624+05:30	2019-11-11 20:58:24.319651+05:30	801f46dc-8630-4362-a553-3051bd33e0c1	PyConf Hyderabad 2019	PyConf Hyderabad is the regional gathering for the community that uses and develops the open-source Python Programming Language.\r\n\r\nhttps://pyconf.hydpy.org/2019/	2019-12-07 09:00:00+05:30	2019-12-08 18:00:00+05:30	https://pyconf.hydpy.org/2019/	t	85325468-c786-49d6-9912-6f212bee4067	satyaakam@gmail.com
2019-09-11 11:11:02.770034+05:30	2021-01-19 10:01:37.65787+05:30	7c9fe590-ea0d-4aff-a930-fc8fb6cfdcda	Drupal Camp Pune 2019	We are excited to announce that we are planing to host DrupalCamp Pune on 14-15th September 2019. Join us for the most awaited open source event in Pune. Register now - http://camp2019.drupalpune.com/\r\n\r\nWe plan to make DCP 2019 a grand success. Stay connected with us on Facebook and Twitter: @drupalcamppune to know more!	2019-09-14 09:00:00+05:30	2019-09-15 18:00:00+05:30	http://camp2019.drupalpune.com/	t	21a441fe-27b9-48f2-afc3-19de94910062	drupalpune12@gmail.com
2019-11-12 22:46:14.545023+05:30	2019-11-12 22:46:49.788135+05:30	65144498-afcb-460e-8534-b81ae2d8c54a	KDE Conference India 2020	Conf.kde.in started in 2011 at RVCE in Bangalore as a 5-day event with 300 participants. This kicked off a series of KDE events in India. We held a KDE Meetup in 2013, and another conf.kde.in 2014 at DA-IICT. In 2015, the third conf.kde.in was held at Amrita University in Kerala, and in 2016 at LNMIIT Jaipur. The Jaipur conference attracted members of the KDE Community from all over the world. Attendees from different backgrounds came to meet each other, give talks, and share in the spirit of KDE. The 2017 conference was held in IIT Guwahati, Assam and sought to cater to new members of KDE, as well as to seasoned developers.\r\n\r\nAll of these events have been successful in attracting a lot of Indian students to mentoring programs such as Google Summer of Code (GSoC), Season of KDE, and Google Code-In.\r\n\r\nconf.kde.in 2020 will generate even more interest and participation by creating a fertile environment for people to get started with KDE, Qt and FOSS through numerous talks, hands-on sessions and demonstrations.\r\n\r\n\r\nconf.kde.in 2020 will be held in Maharaja Agrasen Institute of Technology, located in Rohini, Delhi, India. MAIT was established by the Maharaja Agrasen Technical Education Society and promoted by well-known industrialists, businessmen, professionals and philanthropists. The aim of MAIT is to promote quality education in the field of Technology.\r\n\r\nMAIT endeavors to provide industry-relevant education and training through its well-crafted and practical training programs for the students in different semesters of their courses. The campus is composed of 10 blocks with a learning resource center. MAIT has been ranked as the 10th best private engineering institute in India by the Dataquest T-School Survey. MAIT always supports Free and Open Source communities and tech-related activities.	2020-01-17 09:00:00+05:30	2020-01-19 18:00:00+05:30	http://conf.kde.in/	t	223b7bbe-cc05-4af7-9a82-07bb720b5d6e	satyaakam@gmail.com
2019-11-14 17:02:53.78085+05:30	2019-11-14 17:03:23.06601+05:30	3918ba21-4650-4615-8744-1f47e6d40837	Drupal Camp Chennai 2019	We are happy to announce the first-ever Drupal Camp in Chennai organized by the Drupal Chennai Community. Drupal Camp Chennai 2019 is a conference organized for the Drupal community and people showing interest in Drupal. This two-day event features training workshops and sessions. It will be held on 7th and 8th December 2019 in IIT Madras.\r\n\r\nThe Drupal Camp is not only about the conference, the sessions and the informal gatherings (BOFs) but also about bonding with an array of energetic and passionate people. After all, you come to Drupal for the code and stay for the community.\r\n\r\nThe conference programme has been arranged to suit both completely new and advanced developers.\r\n\r\nDuring the conference, speakers will deliver their lectures in English and native-languages of South India like Tamil, Malayalam, and Telugu.\r\n\r\nSpend your weekend with a wonderful community which collaborates, networks, connects, and shares. The community that is Drupal is truly exceptional.	2019-12-07 09:00:00+05:30	2019-12-08 18:00:00+05:30	http://drupalcampchennai.org/	t	919a572d-cb03-43ba-9501-d38d1a4badbf	satyaakam@gmail.com
2019-12-13 09:25:49.903638+05:30	2019-12-13 09:25:49.90371+05:30	64571ae8-c370-4e05-91dd-8be9b93e4f40	R Conference	First R Conference in India under the International india statistical association	2019-12-26 09:00:00+05:30	2019-12-30 18:00:00+05:30	https://r-iisa2019.rbind.io/	t	b619457d-ed02-420f-8612-fdfb4d403176	satyaakam@gmail.com
2020-01-10 18:40:28.437005+05:30	2020-05-18 06:56:18.685565+05:30	0e981286-abb8-4b33-aec4-e8e4d2843687	Kubernetes Forum	Kubernetes Forums connect international and local cloud native experts, adopters, developers, and end users in global cities to enable face-to-face collaboration and deliver rich educational experiences. Engage with the leaders of Kubernetes and other CNCF-hosted projects as we set the direction for the cloud native ecosystem. Kubernetes Forums have both a beginner and an advanced track; about half of the speakers are international experts and half are from the local area.	2020-02-17 00:00:00+05:30	2020-02-17 00:00:00+05:30	https://events.linuxfoundation.org/kubernetes-forum-bengaluru/	t	503b0bb9-724e-47e5-8038-a2f5d578fdd0	events@cncf.io
2020-03-04 14:19:40.725879+05:30	2020-05-18 06:56:37.553729+05:30	20186c2a-81c5-4d50-b59c-23dd47ac19e9	FOSSMeet'20	FOSSMeet is an annual event at NIT Calicut that brings together the Free and Open Source Community from around the country.\r\nStarted in 2004, the event has seen a great array of speakers and participants passionate in freedom of software from all over India. Notable dignitaries include Bradley M Kuhn (President, Software Freedom Conservancy), Dr. Sasi Kumar (Director, Free Software Foundation India), Marco Fioretti (FOSS Activist) among others.	2020-03-27 17:00:00+05:30	2020-03-29 14:00:00+05:30	http://fossmeet.in	t	52fecc73-2a8a-4875-ba49-fa7315822b70	info@fossmeet.in
2020-03-02 18:03:54.94573+05:30	2020-05-18 06:56:53.719096+05:30	f967cab5-a48e-4a82-ae54-8be2edc6dcfc	COEP FOSSMeet'20	Annual FOSS Meet of College of Engineering Pune (COEP)	2020-03-28 00:00:00+05:30	2020-03-29 00:00:00+05:30	https://foss.coep.org.in/fossmeet/	t	2be623f8-2486-490f-b313-72a16b70043b	fossmeet@coep.ac.in
2021-01-15 14:10:47.207998+05:30	2021-01-17 09:41:46.379137+05:30	7ca30e16-7281-4d6d-b14e-a031e8f15d32	MiniDebConf India	Debian India is a group of enthusiasts who would like to expand the Debian community in the sub-continent and thus to increase the number of active contributors to the project. With the mission of spreading the spirit of the Debian project, we are organizing an event which not only caters the English speaking community but also those who can understand Hindi, Malayalam or Telugu. We can also add more languages according to the availability of slots/speakers/volunteers in that particular language. This multi-lingual MiniDebConf is inspired from the sub-tracks in DebConf 20 as well as the MiniDebConf Brazil 2020. Thanks for joining us and all your support! Keep loving Debian…	2021-01-23 00:00:00+05:30	2021-01-24 00:00:00+05:30	https://in2021.mini.debconf.org/	t	54552e80-6d44-405a-b519-abcc3ee73ee6	mail@raju.dev
\.


                                                                                                                                                                                         3213.dat                                                                                            0000600 0004000 0002000 00000000005 14045752571 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3214.dat                                                                                            0000600 0004000 0002000 00000011176 14045752571 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	default	2016-03-13 01:52:35.257463+05:30	Added.	5
2	default	2016-03-13 01:55:11.695414+05:30	Changed name.	5
3	default	2016-03-13 03:40:23.432204+05:30	Changed description.	5
4	default	2016-03-17 21:39:26.65926+05:30	Changed description.	5
5	default	2016-10-17 20:00:57.21431+05:30	Changed is_published.	4
6	default	2016-10-17 20:01:08.024466+05:30	Changed is_published.	4
7	default	2016-10-17 20:01:29.72121+05:30	Changed is_published.	4
8	default	2016-10-18 09:44:55.052858+05:30	Changed is_published.	4
9	default	2016-10-18 10:03:06.308592+05:30	Changed is_published.	4
10	default	2016-10-19 09:37:59.141527+05:30	Changed is_published.	4
11	default	2016-10-20 19:44:42.393167+05:30	Changed is_published.	4
12	default	2016-10-26 23:30:41.039426+05:30	Changed start_date and end_date.	4
13	default	2016-10-28 11:57:11.863716+05:30	Changed is_published.	4
14	default	2016-10-28 12:22:23.882285+05:30	Changed is_published.	4
15	default	2016-10-29 17:33:20.392833+05:30	Changed is_published.	4
16	default	2016-10-31 18:40:46.826696+05:30	Changed name.	4
17	default	2016-11-07 21:15:46.160795+05:30	Changed is_published.	4
18	default	2016-11-07 21:18:22.899828+05:30	Added.	4
19	default	2016-12-10 18:11:25.734797+05:30	Changed is_published.	4
20	default	2016-12-10 21:38:32.739535+05:30	Changed is_published.	4
21	default	2016-12-11 19:18:20.886337+05:30	Changed is_published.	4
22	default	2016-12-11 19:26:51.887982+05:30	Changed is_published.	4
23	default	2016-12-11 19:27:14.173298+05:30	Changed is_published.	4
24	default	2017-01-18 13:25:46.70825+05:30	Changed is_published.	4
25	default	2017-02-09 13:31:28.634108+05:30	Changed is_published.	4
26	default	2017-02-26 07:54:43.856027+05:30	Changed is_published.	4
27	default	2017-03-14 17:44:03.005238+05:30	Changed description, start_date and end_date.	4
28	default	2017-09-16 08:35:14.762203+05:30	Added.	4
29	default	2017-09-16 08:36:52.283022+05:30	Changed is_published.	4
30	default	2017-09-22 03:46:42.093466+05:30	Added.	4
31	default	2017-11-13 08:30:41.53866+05:30	Changed is_published.	4
32	default	2017-11-13 08:30:59.220686+05:30	Changed is_published.	4
33	default	2017-11-13 08:34:26.363616+05:30	Added.	4
34	default	2018-01-22 07:08:10.457947+05:30	Changed is_published.	4
35	default	2018-01-30 07:01:31.493144+05:30	Changed is_published.	4
36	default	2018-05-12 13:50:00.257704+05:30	Changed is_published.	4
37	default	2018-05-21 20:05:18.7901+05:30	Changed description and is_published.	4
38	default	2018-07-03 17:49:25.74632+05:30	Changed is_published.	4
39	default	2018-08-12 10:50:49.200108+05:30	Added.	4
40	default	2018-08-12 10:51:45.145781+05:30	Changed name.	4
41	default	2018-08-12 10:52:28.337324+05:30	Changed name.	4
42	default	2018-11-17 07:24:21.830054+05:30	Changed start_date and end_date.	4
43	default	2018-12-12 07:10:59.174279+05:30	Added.	4
44	default	2018-12-31 17:50:31.679605+05:30	Changed is_published.	4
45	default	2019-02-03 21:21:49.468167+05:30	Changed name, start_date and end_date.	4
46	default	2019-02-03 21:24:13.833945+05:30	Changed homepage.	4
47	default	2019-02-03 21:25:03.250383+05:30	Changed start_date and end_date.	4
48	default	2019-02-06 19:30:12.914088+05:30	Changed is_published.	4
49	default	2019-02-17 20:51:04.410509+05:30	Changed is_published.	4
50	default	2019-02-25 09:38:30.978802+05:30	Changed is_published.	4
51	default	2019-02-25 10:40:02.37665+05:30	Changed start_date and end_date.	4
52	default	2019-02-25 10:41:22.557281+05:30	No fields changed.	4
53	default	2019-03-29 12:03:33.74781+05:30	Changed start_date and end_date.	4
54	default	2019-03-29 12:04:00.101794+05:30	Changed start_date and end_date.	4
55	default	2019-03-29 12:05:04.798701+05:30	Changed description.	4
56	default	2019-05-31 09:11:59.08213+05:30	Added.	4
57	default	2019-05-31 09:12:59.981697+05:30	Changed name.	4
58	default	2019-06-28 17:19:42.562621+05:30	Changed is_published.	4
59	default	2019-09-11 15:17:57.532325+05:30	Changed is_published.	4
60	default	2019-10-14 20:59:40.350363+05:30	Added.	4
61	default	2019-10-14 21:00:13.396467+05:30	Changed name.	4
62	default	2019-11-11 20:58:24.347085+05:30	Added.	4
63	default	2019-11-12 22:46:14.677505+05:30	Added.	4
64	default	2019-11-12 22:46:49.806567+05:30	Changed name.	4
65	default	2019-11-14 17:02:53.822254+05:30	Added.	4
66	default	2019-11-14 17:03:23.083388+05:30	Changed is_published.	4
67	default	2019-12-13 09:25:49.942568+05:30	Added.	4
68	default	2020-05-18 06:56:18.759169+05:30	Changed is_published.	4
69	default	2020-05-18 06:56:37.56376+05:30	Changed is_published.	4
70	default	2020-05-18 06:56:53.725121+05:30	Changed is_published.	4
71	default	2021-01-17 09:41:46.406806+05:30	Changed is_published.	4
72	default	2021-01-19 10:01:37.699395+05:30	Changed name.	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                  3216.dat                                                                                            0000600 0004000 0002000 00000253312 14045752571 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	a4d12cab-17c3-486a-96c1-7107cdc0549e	\N	json	[{"model": "events.event", "pk": "a4d12cab-17c3-486a-96c1-7107cdc0549e", "fields": {"created": "2016-03-12T20:22:34.857Z", "modified": "2016-03-12T20:22:35.230Z", "name": "Rootconf", "description": "Rootconf is India\\u2019s principal conference where systems and operations engineers share real world knowledge about building resilient and scalable systems.\\r\\n\\r\\nWe are now accepting submissions for our next edition which will take place in Bangalore 14-15 April 2016.\\r\\n\\r\\n## Theme\\r\\n\\r\\nThe theme for this edition will be learning from failure. We are keen to explore how devops think about failure when designing, building and scaling their systems. We invite presentations related to failure in database systems, servers and network infrastructure.\\r\\n\\r\\nWe encourage presentations that relate to failure not only in terms of avoidance but also in terms of mitigation and education. How do we decide which parts of our systems cannot fail? What measures do we take to mitigate failure when it does inevitably happen? And most importantly: what lessons can be learned from failure?\\r\\n\\r\\n### Format\\r\\n\\r\\nThis year\\u2019s edition spans two days of hands-on workshops and conference. We are inviting proposals for:\\r\\n\\r\\nFull-length 40 minute talks.\\r\\nCrisp 15-minute talks.\\r\\nSponsored sessions, 15 minute duration (limited slots available; subject to editorial scrutiny and approval).\\r\\nHands-on Workshop sessions, 3 and 6 hour duration.\\r\\nSelection process\\r\\n\\r\\nProposals will be filtered and shortlisted by an Editorial Panel. We urge you to add links to videos / slide decks when submitting proposals. This will help us understand your past speaking experience. Blurbs or blog posts covering the relevance of a particular problem statement and how it is tackled will help the Editorial Panel better judge your proposals.\\r\\n\\r\\nWe expect you to submit an outline of your proposed talk \\u2013 either in the form of a mind map or a text document or draft slides within two weeks of submitting your proposal.\\r\\n\\r\\nWe will notify you about the status of your proposal within three weeks of submission.\\r\\n\\r\\nSelected speakers must participate in one-two rounds of rehearsals before the conference. This is mandatory and helps you to prepare well for the conference.\\r\\n\\r\\nThere is only one speaker per session. Entry is free for selected speakers. As our budget is limited, we will prefer speakers from locations closer home, but will do our best to cover for anyone exceptional. HasGeek will provide a grant to cover part of your travel and accommodation in Bangalore. Grants are limited and made available to speakers delivering full sessions (40 minutes or longer).\\r\\n\\r\\n### Commitment to open source\\r\\n\\r\\nHasGeek believes in open source as the binding force of our community. If you are describing a codebase for developers to work with, we\\u2019d like it to be available under a permissive open source licence. If your software is commercially licensed or available under a combination of commercial and restrictive open source licences (such as the various forms of the GPL), please consider picking up a sponsorship. We recognise that there are valid reasons for commercial licensing, but ask that you support us in return for giving you an audience. Your session will be marked on the schedule as a sponsored session.\\r\\n\\r\\n### Key dates and deadlines\\r\\n\\r\\nPaper submission deadline: 31 January 2016\\r\\nSchedule announcement: 29 February 2016\\r\\nConference dates: 14-15 April 2016\\r\\n\\r\\n### Venue\\r\\n\\r\\nRootconf will be held at the **MLR Convention Centre, J P Nagar**.\\r\\n\\r\\n### Contact\\r\\n\\r\\nFor more information about speaking proposals, tickets and sponsorships, contact info@hasgeek.com or call +91-7676332020.", "start_date": "2016-04-14T09:00:00+05:30", "end_date": "2016-04-15T18:00:00+05:30", "homepage": "https://rootconf.talkfunnel.com/2016/", "is_published": true, "auth_token": "self-generated", "owner_email": "admin@fossevents.in"}}]	Rootconf	13	1
2	a4d12cab-17c3-486a-96c1-7107cdc0549e	\N	json	[{"model": "events.event", "pk": "a4d12cab-17c3-486a-96c1-7107cdc0549e", "fields": {"created": "2016-03-12T20:22:34.857Z", "modified": "2016-03-12T20:25:11.687Z", "name": "Rootconf 2016", "description": "Rootconf is India\\u2019s principal conference where systems and operations engineers share real world knowledge about building resilient and scalable systems.\\r\\n\\r\\nWe are now accepting submissions for our next edition which will take place in Bangalore 14-15 April 2016.\\r\\n\\r\\n## Theme\\r\\n\\r\\nThe theme for this edition will be learning from failure. We are keen to explore how devops think about failure when designing, building and scaling their systems. We invite presentations related to failure in database systems, servers and network infrastructure.\\r\\n\\r\\nWe encourage presentations that relate to failure not only in terms of avoidance but also in terms of mitigation and education. How do we decide which parts of our systems cannot fail? What measures do we take to mitigate failure when it does inevitably happen? And most importantly: what lessons can be learned from failure?\\r\\n\\r\\n### Format\\r\\n\\r\\nThis year\\u2019s edition spans two days of hands-on workshops and conference. We are inviting proposals for:\\r\\n\\r\\nFull-length 40 minute talks.\\r\\nCrisp 15-minute talks.\\r\\nSponsored sessions, 15 minute duration (limited slots available; subject to editorial scrutiny and approval).\\r\\nHands-on Workshop sessions, 3 and 6 hour duration.\\r\\nSelection process\\r\\n\\r\\nProposals will be filtered and shortlisted by an Editorial Panel. We urge you to add links to videos / slide decks when submitting proposals. This will help us understand your past speaking experience. Blurbs or blog posts covering the relevance of a particular problem statement and how it is tackled will help the Editorial Panel better judge your proposals.\\r\\n\\r\\nWe expect you to submit an outline of your proposed talk \\u2013 either in the form of a mind map or a text document or draft slides within two weeks of submitting your proposal.\\r\\n\\r\\nWe will notify you about the status of your proposal within three weeks of submission.\\r\\n\\r\\nSelected speakers must participate in one-two rounds of rehearsals before the conference. This is mandatory and helps you to prepare well for the conference.\\r\\n\\r\\nThere is only one speaker per session. Entry is free for selected speakers. As our budget is limited, we will prefer speakers from locations closer home, but will do our best to cover for anyone exceptional. HasGeek will provide a grant to cover part of your travel and accommodation in Bangalore. Grants are limited and made available to speakers delivering full sessions (40 minutes or longer).\\r\\n\\r\\n### Commitment to open source\\r\\n\\r\\nHasGeek believes in open source as the binding force of our community. If you are describing a codebase for developers to work with, we\\u2019d like it to be available under a permissive open source licence. If your software is commercially licensed or available under a combination of commercial and restrictive open source licences (such as the various forms of the GPL), please consider picking up a sponsorship. We recognise that there are valid reasons for commercial licensing, but ask that you support us in return for giving you an audience. Your session will be marked on the schedule as a sponsored session.\\r\\n\\r\\n### Key dates and deadlines\\r\\n\\r\\nPaper submission deadline: 31 January 2016\\r\\nSchedule announcement: 29 February 2016\\r\\nConference dates: 14-15 April 2016\\r\\n\\r\\n### Venue\\r\\n\\r\\nRootconf will be held at the **MLR Convention Centre, J P Nagar**.\\r\\n\\r\\n### Contact\\r\\n\\r\\nFor more information about speaking proposals, tickets and sponsorships, contact info@hasgeek.com or call +91-7676332020.", "start_date": "2016-04-14T09:00:00+05:30", "end_date": "2016-04-15T18:00:00+05:30", "homepage": "https://rootconf.talkfunnel.com/2016/", "is_published": true, "auth_token": "self-generated", "owner_email": "admin@fossevents.in"}}]	Rootconf 2016	13	2
3	705fbfe2-e9a9-4576-a9b3-2c57dcb27d5c	\N	json	[{"model": "events.event", "pk": "705fbfe2-e9a9-4576-a9b3-2c57dcb27d5c", "fields": {"created": "2015-05-26T09:48:38.218Z", "modified": "2016-03-12T22:10:23.407Z", "name": "Fudcon Pune", "description": "FUDCon is the Fedora Users and Developers Conference, a major free software event held in various regions around the world, usually annually per region.\\r\\n\\r\\nFUDCon is a mix of sessions. There are talks that range from technology introductions to deep dives, hands-on workshops, BoFs where like-minded people get together to discuss a project or technology and hackfests where contributors work on specific initiatives. Topics include infrastructure, feature development, community building, general management and governance, marketing, testing and QA, packaging, etc.\\r\\n\\r\\nFUDCon is always free to attend for anyone in the world.\\r\\n\\r\\nFUDCon APAC 2015 is organised in association with the Maharashtra Institute of Technology College of Engineering (MIT COE), one of the premier engineering colleges in Pune, at their Campus.\\r\\n\\r\\nhttp://fudcon.in/", "start_date": "2015-06-26T09:00:00+05:30", "end_date": "2015-06-28T17:00:00+05:30", "homepage": "http://fudcon.in/", "is_published": true, "auth_token": "none", "owner_email": "admin@fossevents.in"}}]	Fudcon Pune	13	3
4	a4d12cab-17c3-486a-96c1-7107cdc0549e	\N	json	[{"model": "events.event", "pk": "a4d12cab-17c3-486a-96c1-7107cdc0549e", "fields": {"created": "2016-03-12T20:22:34.857Z", "modified": "2016-03-17T16:09:22.422Z", "name": "Rootconf 2016", "description": "Rootconf is India's principal conference where systems and operations engineers share real world knowledge about building resilient and scalable systems.\\r\\n\\r\\nWe are now accepting submissions for our next edition which will take place in Bangalore 14-15 April 2016.\\r\\n\\r\\n## Theme\\r\\n\\r\\nThe theme for this edition will be learning from failure. We are keen to explore how devops think about failure when designing, building and scaling their systems. We invite presentations related to failure in database systems, servers and network infrastructure.\\r\\n\\r\\nWe encourage presentations that relate to failure not only in terms of avoidance but also in terms of mitigation and education. How do we decide which parts of our systems cannot fail? What measures do we take to mitigate failure when it does inevitably happen? And most importantly: what lessons can be learned from failure?\\r\\n\\r\\n### Format\\r\\n\\r\\nThis year\\u2019s edition spans two days of hands-on workshops and conference. We are inviting proposals for:\\r\\n\\r\\nFull-length 40 minute talks.\\r\\nCrisp 15-minute talks.\\r\\nSponsored sessions, 15 minute duration (limited slots available; subject to editorial scrutiny and approval).\\r\\nHands-on Workshop sessions, 3 and 6 hour duration.\\r\\nSelection process\\r\\n\\r\\nProposals will be filtered and shortlisted by an Editorial Panel. We urge you to add links to videos / slide decks when submitting proposals. This will help us understand your past speaking experience. Blurbs or blog posts covering the relevance of a particular problem statement and how it is tackled will help the Editorial Panel better judge your proposals.\\r\\n\\r\\nWe expect you to submit an outline of your proposed talk \\u2013 either in the form of a mind map or a text document or draft slides within two weeks of submitting your proposal.\\r\\n\\r\\nWe will notify you about the status of your proposal within three weeks of submission.\\r\\n\\r\\nSelected speakers must participate in one-two rounds of rehearsals before the conference. This is mandatory and helps you to prepare well for the conference.\\r\\n\\r\\nThere is only one speaker per session. Entry is free for selected speakers. As our budget is limited, we will prefer speakers from locations closer home, but will do our best to cover for anyone exceptional. HasGeek will provide a grant to cover part of your travel and accommodation in Bangalore. Grants are limited and made available to speakers delivering full sessions (40 minutes or longer).\\r\\n\\r\\n### Commitment to open source\\r\\n\\r\\nHasGeek believes in open source as the binding force of our community. If you are describing a codebase for developers to work with, we\\u2019d like it to be available under a permissive open source licence. If your software is commercially licensed or available under a combination of commercial and restrictive open source licences (such as the various forms of the GPL), please consider picking up a sponsorship. We recognise that there are valid reasons for commercial licensing, but ask that you support us in return for giving you an audience. Your session will be marked on the schedule as a sponsored session.\\r\\n\\r\\n### Key dates and deadlines\\r\\n\\r\\nPaper submission deadline: 31 January 2016\\r\\nSchedule announcement: 29 February 2016\\r\\nConference dates: 14-15 April 2016\\r\\n\\r\\n### Venue\\r\\n\\r\\nRootconf will be held at the **MLR Convention Centre, J P Nagar**.\\r\\n\\r\\n### Contact\\r\\n\\r\\nFor more information about speaking proposals, tickets and sponsorships, contact info@hasgeek.com or call +91-7676332020.", "start_date": "2016-04-14T09:00:00+05:30", "end_date": "2016-04-15T18:00:00+05:30", "homepage": "https://rootconf.talkfunnel.com/2016/", "is_published": true, "auth_token": "self-generated", "owner_email": "admin@fossevents.in"}}]	Rootconf 2016	13	4
5	a4d12cab-17c3-486a-96c1-7107cdc0549e	\N	json	[{"model": "events.event", "pk": "a4d12cab-17c3-486a-96c1-7107cdc0549e", "fields": {"created": "2016-03-12T20:22:34.857Z", "modified": "2016-10-17T14:30:57.179Z", "name": "Rootconf 2016", "description": "Rootconf is India's principal conference where systems and operations engineers share real world knowledge about building resilient and scalable systems.\\r\\n\\r\\nWe are now accepting submissions for our next edition which will take place in Bangalore 14-15 April 2016.\\r\\n\\r\\n## Theme\\r\\n\\r\\nThe theme for this edition will be learning from failure. We are keen to explore how devops think about failure when designing, building and scaling their systems. We invite presentations related to failure in database systems, servers and network infrastructure.\\r\\n\\r\\nWe encourage presentations that relate to failure not only in terms of avoidance but also in terms of mitigation and education. How do we decide which parts of our systems cannot fail? What measures do we take to mitigate failure when it does inevitably happen? And most importantly: what lessons can be learned from failure?\\r\\n\\r\\n### Format\\r\\n\\r\\nThis year\\u2019s edition spans two days of hands-on workshops and conference. We are inviting proposals for:\\r\\n\\r\\nFull-length 40 minute talks.\\r\\nCrisp 15-minute talks.\\r\\nSponsored sessions, 15 minute duration (limited slots available; subject to editorial scrutiny and approval).\\r\\nHands-on Workshop sessions, 3 and 6 hour duration.\\r\\nSelection process\\r\\n\\r\\nProposals will be filtered and shortlisted by an Editorial Panel. We urge you to add links to videos / slide decks when submitting proposals. This will help us understand your past speaking experience. Blurbs or blog posts covering the relevance of a particular problem statement and how it is tackled will help the Editorial Panel better judge your proposals.\\r\\n\\r\\nWe expect you to submit an outline of your proposed talk \\u2013 either in the form of a mind map or a text document or draft slides within two weeks of submitting your proposal.\\r\\n\\r\\nWe will notify you about the status of your proposal within three weeks of submission.\\r\\n\\r\\nSelected speakers must participate in one-two rounds of rehearsals before the conference. This is mandatory and helps you to prepare well for the conference.\\r\\n\\r\\nThere is only one speaker per session. Entry is free for selected speakers. As our budget is limited, we will prefer speakers from locations closer home, but will do our best to cover for anyone exceptional. HasGeek will provide a grant to cover part of your travel and accommodation in Bangalore. Grants are limited and made available to speakers delivering full sessions (40 minutes or longer).\\r\\n\\r\\n### Commitment to open source\\r\\n\\r\\nHasGeek believes in open source as the binding force of our community. If you are describing a codebase for developers to work with, we\\u2019d like it to be available under a permissive open source licence. If your software is commercially licensed or available under a combination of commercial and restrictive open source licences (such as the various forms of the GPL), please consider picking up a sponsorship. We recognise that there are valid reasons for commercial licensing, but ask that you support us in return for giving you an audience. Your session will be marked on the schedule as a sponsored session.\\r\\n\\r\\n### Key dates and deadlines\\r\\n\\r\\nPaper submission deadline: 31 January 2016\\r\\nSchedule announcement: 29 February 2016\\r\\nConference dates: 14-15 April 2016\\r\\n\\r\\n### Venue\\r\\n\\r\\nRootconf will be held at the **MLR Convention Centre, J P Nagar**.\\r\\n\\r\\n### Contact\\r\\n\\r\\nFor more information about speaking proposals, tickets and sponsorships, contact info@hasgeek.com or call +91-7676332020.", "start_date": "2016-04-14T09:00:00+05:30", "end_date": "2016-04-15T18:00:00+05:30", "homepage": "https://rootconf.talkfunnel.com/2016/", "is_published": false, "auth_token": "self-generated", "owner_email": "admin@fossevents.in"}}]	Rootconf 2016	13	5
6	420437d0-82b1-4eb4-9105-80844bb04237	\N	json	[{"model": "events.event", "pk": "420437d0-82b1-4eb4-9105-80844bb04237", "fields": {"created": "2016-10-15T14:58:29.865Z", "modified": "2016-10-17T14:31:08.013Z", "name": "HackBeach 2016", "description": "A hangout for hackers to chill and to share knowledge", "start_date": "2016-11-26T00:00:00+05:30", "end_date": "2016-12-04T00:00:00+05:30", "homepage": "https://hackbeach.in/", "is_published": true, "auth_token": "29cb5f22-c2dd-4fef-aef6-70b47c76795e", "owner_email": "wr@xyz.com"}}]	HackBeach 2016	13	6
7	25631d9b-14d8-4ad2-b069-4aaec0b191fb	\N	json	[{"model": "events.event", "pk": "25631d9b-14d8-4ad2-b069-4aaec0b191fb", "fields": {"created": "2016-09-26T07:28:10.321Z", "modified": "2016-10-17T14:31:29.706Z", "name": "DroidCon India", "description": "Sixth edition of droidconIN. This edition spans two days of talks.\\r\\n\\r\\n## Important dates\\r\\n\\r\\nDeadline for submitting proposals:\\r\\n\\r\\n- Proposal submission deadline(updated): 19 September 2016\\r\\n- Schedule announcement: 10 October 2016\\r\\n- Conference dates: 10 and 11 November 2016", "start_date": "2016-11-10T00:00:00+05:30", "end_date": "2016-11-11T00:00:00+05:30", "homepage": "https://droidconin.talkfunnel.com/2016/", "is_published": true, "auth_token": "59958c24-35ae-43d3-9c80-41ebe9693985", "owner_email": "thes.kumar@gmail.com"}}]	DroidCon India	13	7
8	edbc9ce6-42df-4902-a2a7-c76371a8a60f	\N	json	[{"model": "events.event", "pk": "edbc9ce6-42df-4902-a2a7-c76371a8a60f", "fields": {"created": "2016-10-16T06:01:34.848Z", "modified": "2016-10-18T04:14:54.938Z", "name": "ILUG-D", "description": "Would be updated soon", "start_date": "2016-11-05T11:29:00+05:30", "end_date": "2016-12-05T11:30:00+05:30", "homepage": "", "is_published": true, "auth_token": "608eca4e-096f-478f-a491-4237d8183dfa", "owner_email": "mayhs11saini@gmail.com"}}]	ILUG-D	13	8
9	9de1a73b-2ad4-4119-91c2-ca5f1f268ab7	\N	json	[{"model": "events.event", "pk": "9de1a73b-2ad4-4119-91c2-ca5f1f268ab7", "fields": {"created": "2016-10-18T04:26:57.992Z", "modified": "2016-10-18T04:33:06.290Z", "name": "HackNiT", "description": "Planning to organise is feb", "start_date": "2017-01-30T09:54:00+05:30", "end_date": "2017-02-02T09:54:00+05:30", "homepage": "https://www.hackNit.ac.in", "is_published": true, "auth_token": "65fe4634-504c-4010-b033-688d1f8c0791", "owner_email": "hacknit@gmail.ac.in"}}]	HackNiT	13	9
10	5c93e087-b191-480b-a915-235f7f0cd574	\N	json	[{"model": "events.event", "pk": "5c93e087-b191-480b-a915-235f7f0cd574", "fields": {"created": "2016-10-18T17:43:54.579Z", "modified": "2016-10-19T04:07:59.106Z", "name": "Science Hack Day India - Belgaum 2016", "description": "Science Hack Day is a two-day event where anyone excited about making weird, silly or serious things with science comes together in the same physical space to see what they can prototype within 30 consecutive hours. Designers, developers, scientists and anyone who is excited about making things with science are welcome to attend \\u2013 no experience in science or hacking is necessary, just an insatiable curiosity. The mission of Science Hack Day is to get excited and make things with science! People organically form", "start_date": "2016-10-22T10:00:00+05:30", "end_date": "2016-10-23T18:00:00+05:30", "homepage": "http://sciencehack.in", "is_published": true, "auth_token": "221c8286-6f3e-44e2-9ebe-10e5f76173f2", "owner_email": "shdbelgaum@gmail.com"}}]	Science Hack Day India - Belgaum 2016	13	10
11	2cc1c73d-2bbb-4952-bd86-5c0e9fd4624b	\N	json	[{"model": "events.event", "pk": "2cc1c73d-2bbb-4952-bd86-5c0e9fd4624b", "fields": {"created": "2016-10-20T14:13:51.688Z", "modified": "2016-10-20T14:14:42.302Z", "name": "The Next OpenAQ Workshop is in Delhi! Apply to come!", "description": "We are SO excited to announce that the next OpenAQ workshop, held in partnership with Care for Air, (careforair.org) an independent clean air awareness and advocacy platform, will be in Delhi, India on November 25th and 26th at Social Lounge in Hauz Khaz Village.", "start_date": "2016-11-24T10:00:00+05:30", "end_date": "2016-11-25T16:00:00+05:30", "homepage": "https://medium.com/@openaq/the-next-openaq-workshop-is-in-delhi-apply-to-come-7622aa60e48e#.9zqmdd8h2", "is_published": true, "auth_token": "1c02b6fd-440b-4168-adb9-50b56eb119c4", "owner_email": "satyaakam@gmail.com"}}]	The Next OpenAQ Workshop is in Delhi! Apply to come!	13	11
12	edbc9ce6-42df-4902-a2a7-c76371a8a60f	\N	json	[{"model": "events.event", "pk": "edbc9ce6-42df-4902-a2a7-c76371a8a60f", "fields": {"created": "2016-10-16T06:01:34.848Z", "modified": "2016-10-26T18:00:41.001Z", "name": "ILUG-D", "description": "Would be updated soon", "start_date": "2016-11-05T12:00:00+05:30", "end_date": "2016-11-05T18:00:00+05:30", "homepage": "", "is_published": true, "auth_token": "608eca4e-096f-478f-a491-4237d8183dfa", "owner_email": "mayhs11saini@gmail.com"}}]	ILUG-D	13	12
13	86ea86b7-27c3-4b00-90fc-812af9425f43	\N	json	[{"model": "events.event", "pk": "86ea86b7-27c3-4b00-90fc-812af9425f43", "fields": {"created": "2016-10-28T06:02:05.997Z", "modified": "2016-10-28T06:27:11.815Z", "name": "FOSS4G-ASIA 2017", "description": "OSGeo-India is glad to announce the second edition of FOSS4G-Asia organized on 26th-29th January, 2017 at IIIT-Hyderabad. The FOSS4G conference series are designed to foster the development and promote the widespread use of open source geospatial technologies. FOSS4G-Asia extends this movement in Asia and welcomes all GIS communities and tribes.", "start_date": "2017-01-26T09:00:00+05:30", "end_date": "2017-01-29T17:30:00+05:30", "homepage": "http://www.foss4g-asia.org/2017/", "is_published": true, "auth_token": "3a3f8971-7ded-413a-a553-29aa7d9c9652", "owner_email": "iota.kodali@gmail.com"}}]	FOSS4G-ASIA 2017	13	13
20	7b1f1e83-920a-42ac-8593-0bf484619503	\N	json	[{"model": "events.event", "pk": "7b1f1e83-920a-42ac-8593-0bf484619503", "fields": {"created": "2016-12-10T16:07:49.142Z", "modified": "2016-12-10T16:08:32.669Z", "name": "Talk on GNU Taler", "description": "GNU Taler is an online payment system that uses Chaum's blind signatures to provide robust unbreakable privacy for customers along with accountability for merchants. Taler avoids the the performance issues that plague Byzantine fault-tolerant consensus based solutions, and is developed entirely as free software, enabling groups outside the usual financial system to deploy online payments.\\r\\n\\r\\nThese two features, along with Taler being developerd entirely as free software, allow Taler to provide far cheaper transactions than the existing financial system, or block-chain based alternatives. In particular, Taler can realistically be deployed by groups outside the usual financial system.\\r\\n\\r\\nWe will give a demonstration of Taler and a discussion of integrating the merchant software into existing websites. We shall outline the Taler protocol, explaining how it accomplishes goals such as partial spending, and anonymous refunds. \\r\\n\\r\\nSpeaker Bio: Christian Grothoff is leading the D\\u00e9centralis\\u00e9 research team at Inria, a French institute for applied computer science and mathematics research. He maintains GNUnet, an experimental network designed with the goal to provide privacy and security without the need for trusted third parties. He earned his PhD in computer science from UCLA, an M.S. in computer science from Purdue University, and a Diplom in mathematics from the University of Wuppertal. He is also a freelance journalist reporting on technology and national security.\\r\\n\\r\\nThis session is open to all and is free. RSVP please, so that we can do all necessary arrangements.", "start_date": "2016-12-14T18:00:00+05:30", "end_date": "2016-12-14T19:30:00+05:30", "homepage": "https://www.facebook.com/events/344544115923362/", "is_published": true, "auth_token": "8d342293-adea-4991-9c97-28ae8d4f60f0", "owner_email": "satyaakam@gmail.com"}}]	Talk on GNU Taler	13	20
14	cde2736e-d982-480d-ac76-53ba4943e0f9	\N	json	[{"model": "events.event", "pk": "cde2736e-d982-480d-ac76-53ba4943e0f9", "fields": {"created": "2016-10-28T06:29:47.658Z", "modified": "2016-10-28T06:52:23.865Z", "name": "ICANN 57th meeting", "description": "The Internet Corporation for Assigned Names and Numbers (ICANN) holds periodic public meetings rotated between continents for the purpose of encouraging global participation in its processes. The 57th ICANN meeting is scheduled to happen in Hyderabad, India.", "start_date": "2016-11-03T09:00:00+05:30", "end_date": "2016-11-09T17:30:00+05:30", "homepage": "https://meetings.icann.org/en/", "is_published": true, "auth_token": "d44abae0-0870-4e0d-ab30-b769dbc1f220", "owner_email": "iota.kodali@gmail.com"}}]	ICANN 57th meeting	13	14
15	ceaacb85-3334-4045-806f-0c7c90e9328f	\N	json	[{"model": "events.event", "pk": "ceaacb85-3334-4045-806f-0c7c90e9328f", "fields": {"created": "2016-10-29T07:26:07.410Z", "modified": "2016-10-29T12:03:20.271Z", "name": "Free Software Movement India, 2nd National Conference", "description": "The 2nd National Conference of Free Software Movement of India (FSMI), which will be one of the biggest gatherings of free software activists, developers, hackers, geeks, academicians, researchers and students in India.", "start_date": "2017-01-26T00:00:00+05:30", "end_date": "2017-01-29T00:00:00+05:30", "homepage": "http://fsmi.in/2nd-national-conference-free-software-movement-india", "is_published": true, "auth_token": "d28ec39e-91ea-494c-bb30-3773e89a7885", "owner_email": "rajuvindane@cryptolab.net"}}]	Free Software Movement India, 2nd National Conference	13	15
16	2cc1c73d-2bbb-4952-bd86-5c0e9fd4624b	\N	json	[{"model": "events.event", "pk": "2cc1c73d-2bbb-4952-bd86-5c0e9fd4624b", "fields": {"created": "2016-10-20T14:13:51.688Z", "modified": "2016-10-31T13:10:46.689Z", "name": "The Next OpenAQ Workshop is in Delhi!", "description": "We are SO excited to announce that the next OpenAQ workshop, held in partnership with Care for Air, (careforair.org) an independent clean air awareness and advocacy platform, will be in Delhi, India on November 25th and 26th at Social Lounge in Hauz Khaz Village.", "start_date": "2016-11-24T10:00:00+05:30", "end_date": "2016-11-25T16:00:00+05:30", "homepage": "https://medium.com/@openaq/the-next-openaq-workshop-is-in-delhi-apply-to-come-7622aa60e48e#.9zqmdd8h2", "is_published": true, "auth_token": "1c02b6fd-440b-4168-adb9-50b56eb119c4", "owner_email": "satyaakam@gmail.com"}}]	The Next OpenAQ Workshop is in Delhi!	13	16
17	0b74f62a-44ee-4b1b-833a-1030c088ea1f	\N	json	[{"model": "events.event", "pk": "0b74f62a-44ee-4b1b-833a-1030c088ea1f", "fields": {"created": "2016-11-06T12:01:21.846Z", "modified": "2016-11-07T15:45:46.116Z", "name": "GeoHYD Meetup 1", "description": "Monthly Geospatial Gathering of Hyderabad. Srikanth Lakshmanan will be speaking about generating localized language Indic maps using openstreetmap.", "start_date": "2016-11-07T19:00:00+05:30", "end_date": "2016-11-07T20:30:00+05:30", "homepage": "http://geohyd.in", "is_published": true, "auth_token": "c29d8e5a-c1a5-4125-93f4-d61bcd39540f", "owner_email": "iota.kodali@gmail.com"}}]	GeoHYD Meetup 1	13	17
18	25fed812-04e1-4539-8cf6-5099b1b0241e	\N	json	[{"model": "events.event", "pk": "25fed812-04e1-4539-8cf6-5099b1b0241e", "fields": {"created": "2016-11-07T15:48:22.887Z", "modified": "2016-11-07T15:48:22.887Z", "name": "Drupal Camp Delhi 2016", "description": "\\u201cDrupal Camp Delhi\\u201d aka DCD is the largest watering hole for the Drupal community in North India, and the most frequently held Drupal event across the country. It brings together the Drupal developer and business user community.\\r\\n\\r\\nFor developers, the event presents opportunities for learning, getting involved in community contributions via code/ review/ QA sprints for Drupal 7 and Drupal 8, and even find potential employers.\\r\\n\\r\\nFor the business community there is an opportunity for learning from presentations made on case studies of Drupal websites, meeting representatives of the leading Drupal companies in India, and some of the brightest individuals working on Drupal in the country. Their experience at DCD will help them leverage the technology and resources available to build amazing digital platforms for their customers. Strong Drupal partnerships are also forged during such events. Companies can also look forward to hiring their next batch of freshers/interns who already pre-trained/experienced in Drupal.", "start_date": "2016-11-12T09:00:00+05:30", "end_date": "2016-11-13T18:00:00+05:30", "homepage": "http://2016.drupalcampdelhi.com/", "is_published": true, "auth_token": "15494b00-0d5f-4797-b6ad-6f9e7d6b68de", "owner_email": "satyaakam@gmail.com"}}]	Drupal Camp Delhi 2016	13	18
19	0d31e9f0-d451-47e7-bc21-105ca4cc453f	\N	json	[{"model": "events.event", "pk": "0d31e9f0-d451-47e7-bc21-105ca4cc453f", "fields": {"created": "2016-12-01T10:36:04.893Z", "modified": "2016-12-10T12:41:25.607Z", "name": "PYCON PUNE 2017", "description": "PyCon, the gathering for the community using and developing the open-source Python programming language. This is the first year of the PyCon Pune where the community will meet for two days of talks and working on upstream projects in two days of dev sprint.", "start_date": "2017-02-16T09:00:00+05:30", "end_date": "2017-02-19T17:00:00+05:30", "homepage": "https://pune.pycon.org/", "is_published": true, "auth_token": "8bd7cb8c-5938-426b-9a7a-557bf23e426a", "owner_email": "iota.kodali@gmail.com"}}]	PYCON PUNE 2017	13	19
21	f4782737-d679-4eae-8814-e9cbbc688f6e	\N	json	[{"model": "events.event", "pk": "f4782737-d679-4eae-8814-e9cbbc688f6e", "fields": {"created": "2016-12-11T13:47:56.321Z", "modified": "2016-12-11T13:48:20.802Z", "name": "WikiToLearn CONF INDIA 2017", "description": "WikiToLearnConf India is a global event comprising WikiToLearn, Mediawiki and KDE developers from all over India and world.\\r\\nThis year our event is a 2 day, single track event focused on WikiToLearn, Mediawiki, KDE and Open Source Software. While we welcome all kinds of talks, we would love to have more talks around Mediawiki and KDE.\\r\\n\\r\\nWe are lining up speakers from well known international and Indian WikiToLearn, Wikimedia and KDE community. We are accepting talks till 5th January 2017. Please submit your talks here.\\r\\n\\r\\nNote: The conference is entirely in English.", "start_date": "2017-01-18T09:00:00+05:30", "end_date": "2017-01-19T19:00:00+05:30", "homepage": "https://india2017.wikitolearn.events/", "is_published": true, "auth_token": "1102bc35-5b32-4fce-b4bc-2dfa3ea8d0f6", "owner_email": "satyaakam@gmail.com"}}]	WikiToLearn CONF INDIA 2017	13	21
22	2764e73c-cade-4d63-b885-7a3666c1438e	\N	json	[{"model": "events.event", "pk": "2764e73c-cade-4d63-b885-7a3666c1438e", "fields": {"created": "2016-12-11T13:53:45.069Z", "modified": "2016-12-11T13:56:51.869Z", "name": "RUBYCONF INDIA 2017", "description": "RubyConf India is a global event complementing other RubyConf events across the world.\\r\\nThis year our event is a 2 day, single track event focused on Ruby Language, Framework and Tools. While we welcome all kinds of talks, we would love to have more talks around Ruby and experience reports around big data with Ruby.\\r\\n\\r\\nOur CFP is closed now and we are lining up speakers from well known international and Indian Ruby community.\\r\\n\\r\\nStudent Scholars: Please submit your applications for attending Ruby Conf India. See more details on the student scholarship page.\\r\\n\\r\\nNote: The conference is entirely in English.", "start_date": "2017-01-27T09:00:00+05:30", "end_date": "2017-01-29T19:00:00+05:30", "homepage": "http://rubyconfindia.org/", "is_published": true, "auth_token": "6a3fd59d-a0ce-44b6-bb93-a9ed99343a13", "owner_email": "satyaakam@gmail.com"}}]	RUBYCONF INDIA 2017	13	22
23	9e416ddf-0c1e-4566-9b0e-bb8fccedd073	\N	json	[{"model": "events.event", "pk": "9e416ddf-0c1e-4566-9b0e-bb8fccedd073", "fields": {"created": "2016-12-11T13:56:19.427Z", "modified": "2016-12-11T13:57:14.152Z", "name": "Gophercon India 2017", "description": "Go is an open source project developed by a team at Google and many contributors from the open source community.\\r\\n\\r\\nGo makes it easy to build simple, reliable, and efficient software.\\r\\n\\r\\nThis conference is brought to you by the Go Language Community in India together with the Emerging Technology Trust (ETT). ETT is a non-profit organization, established to organize and conduct technology conferences in India. It's current portfolio includes DeccanRuby Conf, DevOpsDays India, GopherCon India and RubyConf India.\\r\\n\\r\\nWe love going to conferences that don't make you choose between two great presentations. So we created GopherConIndia as a single-track event that you don't want to miss and where everyone gets the opportunity to see the same talks. We think you'll enjoy the speakers we're lining up so much, you won't want to miss anyone of them. Friday and Saturday will offer full days of conference sessions.\\r\\n\\r\\nNote: The conference is entirely in English.", "start_date": "2017-02-24T09:00:00+05:30", "end_date": "2017-02-25T19:00:00+05:30", "homepage": "http://www.gophercon.in/", "is_published": true, "auth_token": "f367792d-d352-4e92-98fc-4ae4b23d6769", "owner_email": "satyaakam@gmail.com"}}]	Gophercon India 2017	13	23
24	02901ba5-92da-4dc1-9dbe-f51becfda4a8	\N	json	[{"model": "events.event", "pk": "02901ba5-92da-4dc1-9dbe-f51becfda4a8", "fields": {"created": "2017-01-18T07:51:59.521Z", "modified": "2017-01-18T07:55:46.669Z", "name": "FOSSMeet 2017", "description": "FOSSMeet is the annual event on Free and Open source software, conducted at National Institute of technology, Calicut to create awareness and encourage the use of free and open source software. \\r\\n\\r\\nThis will be the 11th edition of FOSSMeet starting from 2005. Started with a vision to create a culture of innovation, evolution and open standards, the meet intends to support the FOSS community and the dissemination of FOSS ideology through hands-on sessions, discussions and lectures.", "start_date": "2017-03-10T00:00:00+05:30", "end_date": "2017-03-12T00:00:00+05:30", "homepage": "http://fossmeet.in", "is_published": true, "auth_token": "b21324b9-9efb-449b-900e-4ef570619287", "owner_email": "info@fossmeet.in"}}]	FOSSMeet 2017	13	24
25	6ebcd3ea-efa8-43e3-91a6-40fadcb97405	\N	json	[{"model": "events.event", "pk": "6ebcd3ea-efa8-43e3-91a6-40fadcb97405", "fields": {"created": "2017-02-09T07:59:40.603Z", "modified": "2017-02-09T08:01:28.587Z", "name": "GNUnify 2017", "description": "This is the 15th Year of GNUnify !! The conference is completely free for all !!! Do join us and support the FOSS movement !! Please check out the site for speaker profiles and schedules and for registrations !!! http://gnunify.in", "start_date": "2017-02-10T09:00:00+05:30", "end_date": "2017-02-11T18:00:00+05:30", "homepage": "http://gnuify.in", "is_published": true, "auth_token": "37f20f92-4576-49c4-a1b7-363aad93627c", "owner_email": "satyaakam@gmail.com"}}]	GNUnify 2017	13	25
26	d7a58323-85a7-4695-a47a-438129395732	\N	json	[{"model": "events.event", "pk": "d7a58323-85a7-4695-a47a-438129395732", "fields": {"created": "2017-02-26T02:23:00.989Z", "modified": "2017-02-26T02:24:43.821Z", "name": "PyDelhi Conf 2017", "description": "Conference on Python Programming Language", "start_date": "2017-03-18T00:00:00+05:30", "end_date": "2017-03-19T00:00:00+05:30", "homepage": "http://conference.pydelhi.org/", "is_published": true, "auth_token": "47a16a54-c98f-46c4-9d09-a9f84cb8afa5", "owner_email": "satyaakam@gmail.com"}}]	PyDelhi Conf 2017	13	26
27	d7a58323-85a7-4695-a47a-438129395732	\N	json	[{"model": "events.event", "pk": "d7a58323-85a7-4695-a47a-438129395732", "fields": {"created": "2017-02-26T02:23:00.989Z", "modified": "2017-03-14T12:14:02.976Z", "name": "PyDelhi Conf 2017", "description": "PyDelhi conference is hosted annually by PyDelhi Community with an aim to promote Python programming language. We provide a single platform to users from different spheres such as students, global entrepreneurs and professionals from startups and established firms to connect and share their ideas. Experts from various domains showcase their use of Python besides discussing about the recent and upcoming trends in technology.", "start_date": "2017-03-18T09:00:00+05:30", "end_date": "2017-03-19T18:00:00+05:30", "homepage": "http://conference.pydelhi.org/", "is_published": true, "auth_token": "47a16a54-c98f-46c4-9d09-a9f84cb8afa5", "owner_email": "satyaakam@gmail.com"}}]	PyDelhi Conf 2017	13	27
28	e597df95-e1f9-4668-bbc7-150c854b11e4	\N	json	[{"model": "events.event", "pk": "e597df95-e1f9-4668-bbc7-150c854b11e4", "fields": {"created": "2017-09-16T03:05:14.744Z", "modified": "2017-09-16T03:05:14.744Z", "name": "Software Freedom Day 2017 ( New Delhi)", "description": "Software Freedom Day 2017 Celebration & Community Mashup\\r\\n\\r\\nLet's celebrate Software Freedom Day ! \\r\\n\\r\\nSoftware Freedom Day (SFD) is an annual worldwide celebration of Free Software. SFD is a public education effort with the aim of increasing awareness of Free Software and its virtues, and encouraging its use.\\r\\n\\r\\nOver 1000 volunteer groups in over 120 countries all around the globe celebrate the Software Freedom Day every year in September.\\r\\n\\r\\nSoftware Freedom Day is aimed to educate the public and encourage the use of free and open source software. Join Indian Linux User's Group Delhi(NCR) at CIC, University of Delhi.\\r\\n\\r\\nLets celebrate the 'Software Freedom' with ILUG-D\\r\\n\\r\\nSee you there. \\r\\n\\r\\nbetween the groups.\\r\\n\\r\\n-----------------------------", "start_date": "2017-09-16T12:00:00+05:30", "end_date": "2017-09-16T18:00:00+05:30", "homepage": "https://www.meetup.com/ILUGDelhi/events/243178964/?rv=md1&_af=event&_af_eid=243178964&https=on", "is_published": true, "auth_token": "54b1d99e-52cf-4f33-bfa0-52d673794118", "owner_email": "satyaakam@gmail.com"}}]	Software Freedom Day 2017 ( New Delhi)	13	28
29	17a3a323-973e-4a94-8ea9-fc5dbccd614f	\N	json	[{"model": "events.event", "pk": "17a3a323-973e-4a94-8ea9-fc5dbccd614f", "fields": {"created": "2017-07-13T10:47:25.860Z", "modified": "2017-09-16T03:06:52.274Z", "name": "PyCon India 2017", "description": "PyCon India, the premier conference in India on using and developing the Python programming language is conducted annually by the Python developer community. It attracts the best Python programmers from across the country and abroad.", "start_date": "2017-11-02T00:00:00+05:30", "end_date": "2017-11-05T00:00:00+05:30", "homepage": "https://in.pycon.org/2017/", "is_published": true, "auth_token": "e2e83655-a750-4b32-84c0-9a3c8417eeda", "owner_email": "thes.kumar@gmail.com"}}]	PyCon India 2017	13	29
31	d255e77e-9fe0-44cc-b416-7a2f0ec96842	\N	json	[{"model": "events.event", "pk": "d255e77e-9fe0-44cc-b416-7a2f0ec96842", "fields": {"created": "2017-10-28T19:12:17.807Z", "modified": "2017-11-13T03:00:41.504Z", "name": "PyCon Pune 2018", "description": "PyCon, the gathering for the community using and developing the open-source Python programming language. During PyCon Pune, the community will meet for two days of talks and work on upstream projects in two days of dev sprint.", "start_date": "2018-02-08T00:00:00+05:30", "end_date": "2018-02-11T00:00:00+05:30", "homepage": "https://pune.pycon.org/", "is_published": true, "auth_token": "e220f40d-8f44-4aca-9e97-9fac8d3a2fb0", "owner_email": "pyconpune@python.org"}}]	PyCon Pune 2018	13	31
30	69270a5a-9993-420f-8880-febec5adf52f	\N	json	[{"model": "events.event", "pk": "69270a5a-9993-420f-8880-febec5adf52f", "fields": {"created": "2017-09-21T22:16:42.050Z", "modified": "2017-09-21T22:16:42.050Z", "name": "ERPNext Conference 2017, Mumbai", "description": "Better Together\\r\\n\\r\\nStarted more than 10 years ago, ERPNext has come a long way as a project and a viable community. Over the last year we kick started the ERPNext Foundation and the community is more growing and vibrant than ever.\\r\\n\\r\\nWorking together ultimately makes us better. Life on earth evolved from single-cell organisms to multi-celled organisms when some cells started to specialise and co-operate with each other, increasing their chance of survival and growth. Similary the ERPNext community is now coming togther, where by specialization and co-operation, all of us become better.", "start_date": "2017-10-12T09:00:00+05:30", "end_date": "2017-10-14T18:00:00+05:30", "homepage": "https://erpnext.org/conf/2017/", "is_published": true, "auth_token": "ab638d45-6841-4812-82ac-1c7e8540b069", "owner_email": "satyaakam@gmail.com"}}]	ERPNext Conference 2017, Mumbai	13	30
32	3dd268e0-ec7b-4fc5-9045-f1ce91ddcf36	\N	json	[{"model": "events.event", "pk": "3dd268e0-ec7b-4fc5-9045-f1ce91ddcf36", "fields": {"created": "2017-10-02T20:58:35.600Z", "modified": "2017-11-13T03:00:59.208Z", "name": "PyBITS 2017", "description": "The Python Conference for Students", "start_date": "2017-10-28T00:00:00+05:30", "end_date": "2017-10-29T00:00:00+05:30", "homepage": "https://www.bits-atmos.org/pybits", "is_published": true, "auth_token": "0f0a8e46-d10e-4913-8fce-5ca58dd52346", "owner_email": "crux@hyderabad.bits-pilani.ac.in"}}]	PyBITS 2017	13	32
33	ee5d587c-76fe-40f1-914a-d4755e5c44b8	\N	json	[{"model": "events.event", "pk": "ee5d587c-76fe-40f1-914a-d4755e5c44b8", "fields": {"created": "2017-11-13T03:04:26.352Z", "modified": "2017-11-13T03:04:26.352Z", "name": "FOSSMeet'18", "description": "FOSSMeet is an annual event on Free and Open source software, conducted at National Institute of Technology, Calicut. Started with a vision to create a culture of innovation, evolution and open standards, the meet intends to support the FOSS community and the dissemination of FOSS ideology through hands-on sessions, discussions and lectures. Nothing better to get you introduced to the world of FOSS.\\r\\n\\r\\nOur main aim being contributing to the FOSS community, we focus on the quality and standard of each of the events that is a part of FOSSMeet. Experts, professionals and students come in from all over south India to attend FOSSMeet.", "start_date": "2018-02-17T09:00:00+05:30", "end_date": "2018-02-18T18:00:00+05:30", "homepage": "http://fossmeet.in/", "is_published": true, "auth_token": "9a8bfef1-a9be-4aa8-aad2-992bf0b6ae87", "owner_email": "satyaakam@gmail.com"}}]	FOSSMeet'18	13	33
34	d255e77e-9fe0-44cc-b416-7a2f0ec96842	\N	json	[{"model": "events.event", "pk": "d255e77e-9fe0-44cc-b416-7a2f0ec96842", "fields": {"created": "2017-10-28T19:12:17.807Z", "modified": "2018-01-22T01:38:10.436Z", "name": "PyCon Pune 2018", "description": "PyCon, the gathering for the community using and developing the open-source Python programming language. During PyCon Pune, the community will meet for two days of talks and work on upstream projects in two days of dev sprint.", "start_date": "2018-02-08T00:00:00+05:30", "end_date": "2018-02-11T00:00:00+05:30", "homepage": "https://pune.pycon.org/", "is_published": false, "auth_token": "e220f40d-8f44-4aca-9e97-9fac8d3a2fb0", "owner_email": "pyconpune@python.org"}}]	PyCon Pune 2018	13	34
35	f23e9dfe-2c84-4f61-827e-740a8df8bf2b	\N	json	[{"model": "events.event", "pk": "f23e9dfe-2c84-4f61-827e-740a8df8bf2b", "fields": {"created": "2018-01-30T01:30:46.221Z", "modified": "2018-01-30T01:31:31.459Z", "name": "GNUnify 2018", "description": "A forum to Unite Open Minds", "start_date": "2018-02-16T09:00:00+05:30", "end_date": "2018-02-17T18:00:00+05:30", "homepage": "http://gnunify.in/", "is_published": true, "auth_token": "195ec9a9-449d-4371-9451-48301c65e899", "owner_email": "satyaakam@gmail.com"}}]	GNUnify 2018	13	35
36	27021828-06c5-44b7-b9b5-9a57b1ebb7bf	\N	json	[{"model": "events.event", "pk": "27021828-06c5-44b7-b9b5-9a57b1ebb7bf", "fields": {"created": "2018-05-08T01:11:22.123Z", "modified": "2018-05-12T08:20:00.234Z", "name": "Hillhacks 2018", "description": "Hacking and making in the Himalayas", "start_date": "2018-05-18T00:00:00+05:30", "end_date": "2018-05-31T00:00:00+05:30", "homepage": "https://hillhacks.in/", "is_published": true, "auth_token": "62a776ca-1902-4c9b-a55e-dbacd5141f5d", "owner_email": "sahil@disroot.org"}}]	Hillhacks 2018	13	36
37	3ea8cb3c-5efd-4343-9237-6d0efe796855	\N	json	[{"model": "events.event", "pk": "3ea8cb3c-5efd-4343-9237-6d0efe796855", "fields": {"created": "2018-05-21T14:34:16.976Z", "modified": "2018-05-21T14:35:18.647Z", "name": "Pycon India 2018", "description": "10 years of Pycon India , Happening from 5th Oct  to 9th Oct\\r\\n\\r\\nPyCon India, the premier conference in India on using and developing the Python programming language is conducted annually by the Python developer community. It attracts the best Python programmers from across the country and abroad.", "start_date": "2018-10-05T09:00:00+05:30", "end_date": "2018-10-09T18:00:00+05:30", "homepage": "https://in.pycon.org/2018/", "is_published": true, "auth_token": "ad997edd-b3f0-4bf0-9670-2a034e2b66dc", "owner_email": "satyaakam@gmail.com"}}]	Pycon India 2018	13	37
38	ebb75dc0-37b8-46fc-965c-6d835892e71f	\N	json	[{"model": "events.event", "pk": "ebb75dc0-37b8-46fc-965c-6d835892e71f", "fields": {"created": "2018-07-03T12:18:27.639Z", "modified": "2018-07-03T12:19:25.715Z", "name": "Devconf.in", "description": "DevConf.in 2018 is the second free annual community conference sponsored by Red Hat for Developers, System admins, DevOps engineers, Testers, Documentation writers and other contributors to open source technologies. It is a platform for the local FOSS community participants to come together and engage in the knowledge sharing through technical talks, workshops, panel discussions, hackathons and such activities.", "start_date": "2018-09-04T09:00:00+05:30", "end_date": "2018-09-05T18:00:00+05:30", "homepage": "https://devconf.info/in", "is_published": true, "auth_token": "2a68013e-d4a9-4e24-a4be-e2e556455361", "owner_email": "satyaakam@gmail.com"}}]	Devconf.in	13	38
39	ceb07736-7c58-4a03-aa60-903df4c350be	\N	json	[{"model": "events.event", "pk": "ceb07736-7c58-4a03-aa60-903df4c350be", "fields": {"created": "2018-08-12T05:20:49.154Z", "modified": "2018-08-12T05:20:49.154Z", "name": "satyakam goswami", "description": "Debian is the Universal Operating System of the users, by the users, for the users.\\u201d\\r\\n\\r\\n\\u2014 Anonymous\\r\\n\\r\\nDebConf is the annual Debian conference which is held in a different country every year. DebConf18 was held in Hsinchu, Taiwan, from July 29 to August 5, 2018.\\r\\n\\r\\nMiniDebConfs are local meetings organized by Debian project members to achieve similar objectives to those of the DebConf, but on a regional context.\\r\\n\\r\\nWhen majority of talks are not Debian specific, it is called DebUtsav - celebration of Free Software by Debian community.", "start_date": "2018-09-15T09:00:00+05:30", "end_date": "2018-09-16T18:00:00+05:30", "homepage": "https://debutsav.in/", "is_published": true, "auth_token": "a88afc29-45b8-44fb-adfb-749231d30e54", "owner_email": "satyaakam@gmail.com"}}]	satyakam goswami	13	39
40	ceb07736-7c58-4a03-aa60-903df4c350be	\N	json	[{"model": "events.event", "pk": "ceb07736-7c58-4a03-aa60-903df4c350be", "fields": {"created": "2018-08-12T05:20:49.154Z", "modified": "2018-08-12T05:21:45.127Z", "name": "Debutsav", "description": "Debian is the Universal Operating System of the users, by the users, for the users.\\u201d\\r\\n\\r\\n\\u2014 Anonymous\\r\\n\\r\\nDebConf is the annual Debian conference which is held in a different country every year. DebConf18 was held in Hsinchu, Taiwan, from July 29 to August 5, 2018.\\r\\n\\r\\nMiniDebConfs are local meetings organized by Debian project members to achieve similar objectives to those of the DebConf, but on a regional context.\\r\\n\\r\\nWhen majority of talks are not Debian specific, it is called DebUtsav - celebration of Free Software by Debian community.", "start_date": "2018-09-15T09:00:00+05:30", "end_date": "2018-09-16T18:00:00+05:30", "homepage": "https://debutsav.in/", "is_published": true, "auth_token": "a88afc29-45b8-44fb-adfb-749231d30e54", "owner_email": "satyaakam@gmail.com"}}]	Debutsav	13	40
41	ceb07736-7c58-4a03-aa60-903df4c350be	\N	json	[{"model": "events.event", "pk": "ceb07736-7c58-4a03-aa60-903df4c350be", "fields": {"created": "2018-08-12T05:20:49.154Z", "modified": "2018-08-12T05:22:28.289Z", "name": "Debutsav.in", "description": "Debian is the Universal Operating System of the users, by the users, for the users.\\u201d\\r\\n\\r\\n\\u2014 Anonymous\\r\\n\\r\\nDebConf is the annual Debian conference which is held in a different country every year. DebConf18 was held in Hsinchu, Taiwan, from July 29 to August 5, 2018.\\r\\n\\r\\nMiniDebConfs are local meetings organized by Debian project members to achieve similar objectives to those of the DebConf, but on a regional context.\\r\\n\\r\\nWhen majority of talks are not Debian specific, it is called DebUtsav - celebration of Free Software by Debian community.", "start_date": "2018-09-15T09:00:00+05:30", "end_date": "2018-09-16T18:00:00+05:30", "homepage": "https://debutsav.in/", "is_published": true, "auth_token": "a88afc29-45b8-44fb-adfb-749231d30e54", "owner_email": "satyaakam@gmail.com"}}]	Debutsav.in	13	41
42	ceb07736-7c58-4a03-aa60-903df4c350be	\N	json	[{"model": "events.event", "pk": "ceb07736-7c58-4a03-aa60-903df4c350be", "fields": {"created": "2018-08-12T05:20:49.154Z", "modified": "2018-11-17T01:54:21.793Z", "name": "Debutsav.in", "description": "Debian is the Universal Operating System of the users, by the users, for the users.\\u201d\\r\\n\\r\\n\\u2014 Anonymous\\r\\n\\r\\nDebConf is the annual Debian conference which is held in a different country every year. DebConf18 was held in Hsinchu, Taiwan, from July 29 to August 5, 2018.\\r\\n\\r\\nMiniDebConfs are local meetings organized by Debian project members to achieve similar objectives to those of the DebConf, but on a regional context.\\r\\n\\r\\nWhen majority of talks are not Debian specific, it is called DebUtsav - celebration of Free Software by Debian community.", "start_date": "2018-09-24T09:00:00+05:30", "end_date": "2018-09-25T18:00:00+05:30", "homepage": "https://debutsav.in/", "is_published": true, "auth_token": "a88afc29-45b8-44fb-adfb-749231d30e54", "owner_email": "satyaakam@gmail.com"}}]	Debutsav.in	13	42
43	90e88c4a-8009-4d95-af08-b3964c6a727d	\N	json	[{"model": "events.event", "pk": "90e88c4a-8009-4d95-af08-b3964c6a727d", "fields": {"created": "2018-12-12T01:40:59.083Z", "modified": "2018-12-12T01:40:59.083Z", "name": "SciPy India", "description": "SciPy India is a conference providing opportunities to spread the use of the Python programming language in the Scientific Computing community in India. It provides a unique opportunity to interact with the \\"Who's who\\" of the Python for Scientific Computing fraternity and learn, understand, participate, and contribute to Scientific Computing using Python. One of the goals of the conference is to combine education, engineering, and science with computing through the medium of Python.", "start_date": "2018-12-21T09:00:00+05:30", "end_date": "2018-12-22T18:00:00+05:30", "homepage": "https://scipy.in/2018", "is_published": true, "auth_token": "25a62630-003c-42a0-be68-746925745459", "owner_email": "satyaakam@gmail.com"}}]	SciPy India	13	43
44	da47b7fa-2c50-4b7c-9c40-21a04f33bb57	\N	json	[{"model": "events.event", "pk": "da47b7fa-2c50-4b7c-9c40-21a04f33bb57", "fields": {"created": "2018-12-02T08:17:53.941Z", "modified": "2018-12-31T12:20:31.638Z", "name": "FOSSMeet '19", "description": "FOSSMeet is an annual event at NIT Calicut that brings together the Free and Open Source Community from around the country. Celebrating its fifteenth year, we have thus far, had an array of speakers and experts, open discussions, introduce new technology, and so much more, in line with the ideology of FOSS. It's time to set the stage once again and we urge you to join us in supporting the project that you believe in. We are inviting proposals for talks and workshops at FOSSMeet 2019. You may propose to conduct a lecture, demo, tutorial, workshop, discussion or panel at FOSSMeet by visiting the link above. Join us: Think Better, Code Free", "start_date": "2019-02-15T13:00:00+05:30", "end_date": "2019-02-17T07:00:00+05:30", "homepage": "https://fossmeet-nitc.talkfunnel.com/2k19/", "is_published": true, "auth_token": "22f0af00-df36-4926-91e7-8ea4b00ce6a4", "owner_email": "fosscell@nitc.ac.in"}}]	FOSSMeet '19	13	44
45	f23e9dfe-2c84-4f61-827e-740a8df8bf2b	\N	json	[{"model": "events.event", "pk": "f23e9dfe-2c84-4f61-827e-740a8df8bf2b", "fields": {"created": "2018-01-30T01:30:46.221Z", "modified": "2019-02-03T15:51:49.439Z", "name": "GNUnify 2019", "description": "A forum to Unite Open Minds", "start_date": "2018-02-15T09:00:00+05:30", "end_date": "2018-02-16T18:00:00+05:30", "homepage": "http://gnunify.in/", "is_published": true, "auth_token": "195ec9a9-449d-4371-9451-48301c65e899", "owner_email": "satyaakam@gmail.com"}}]	GNUnify 2019	13	45
46	f23e9dfe-2c84-4f61-827e-740a8df8bf2b	\N	json	[{"model": "events.event", "pk": "f23e9dfe-2c84-4f61-827e-740a8df8bf2b", "fields": {"created": "2018-01-30T01:30:46.221Z", "modified": "2019-02-03T15:54:13.821Z", "name": "GNUnify 2019", "description": "A forum to Unite Open Minds", "start_date": "2018-02-15T09:00:00+05:30", "end_date": "2018-02-16T18:00:00+05:30", "homepage": "http://gnunify.sicsr.ac.in/", "is_published": true, "auth_token": "195ec9a9-449d-4371-9451-48301c65e899", "owner_email": "satyaakam@gmail.com"}}]	GNUnify 2019	13	46
47	f23e9dfe-2c84-4f61-827e-740a8df8bf2b	\N	json	[{"model": "events.event", "pk": "f23e9dfe-2c84-4f61-827e-740a8df8bf2b", "fields": {"created": "2018-01-30T01:30:46.221Z", "modified": "2019-02-03T15:55:03.232Z", "name": "GNUnify 2019", "description": "A forum to Unite Open Minds", "start_date": "2019-02-15T09:00:00+05:30", "end_date": "2019-02-16T18:00:00+05:30", "homepage": "http://gnunify.sicsr.ac.in/", "is_published": true, "auth_token": "195ec9a9-449d-4371-9451-48301c65e899", "owner_email": "satyaakam@gmail.com"}}]	GNUnify 2019	13	47
48	049df525-af39-4cd0-93da-0fd41a1ef183	\N	json	[{"model": "events.event", "pk": "049df525-af39-4cd0-93da-0fd41a1ef183", "fields": {"created": "2019-02-03T10:04:50.460Z", "modified": "2019-02-06T14:00:12.877Z", "name": "COEP FOSSMeet'19", "description": "COEP FOSSMeet brings you its 2nd edition on Free and Open Source Software, conducted at College of Engineering, Pune. This meet has a vision to create a culture of innovation, evolution and open standards. It intends to support the FOSS Community through hands-on sessions, discussions and lectures, introducing you to the world of FOSS by experts in this field. The event is an excellent opportunity for those who want to learn about FOSS and contribute to it. The event is scheduled on 30th and 31st March, 2019.\\r\\n\\r\\nVisit us at : https://foss.coep.org.in/fossmeet/", "start_date": "2019-03-30T09:00:00+05:30", "end_date": "2019-03-31T18:00:00+05:30", "homepage": "https://coepfossmeet.talkfunnel.com/2019/", "is_published": true, "auth_token": "5348ac0e-7aea-4e2a-b948-eb1a7dae693a", "owner_email": "osjadhav1408@gmail.com"}}]	COEP FOSSMeet'19	13	48
49	055c4850-49d8-493b-bb92-bd03f79ba8c2	\N	json	[{"model": "events.event", "pk": "055c4850-49d8-493b-bb92-bd03f79ba8c2", "fields": {"created": "2019-02-14T15:21:26.595Z", "modified": "2019-02-17T15:21:04.383Z", "name": "DebUtsav Delhi", "description": "DebConf is the annual Debian conference which is held in a different country every year. DebConf18 was held in Hsinchu, Taiwan, from July 29 to August 5, 2018. MiniDebConfs are local meetings organized by Debian project members to achieve similar objectives to those of the DebConf, but on a regional context. When majority of talks are not Debian specific, it is called DebUtsav - celebration of Free Software by Debian community. DebUtsav Delhi will be happening on 9th and 10th March. Venue will soon be announced on the website. You are invited to attend the event and participate in all the sessions you like, attendance is FREE of cost.", "start_date": "2019-03-09T11:00:00+05:30", "end_date": "2019-03-10T17:00:00+05:30", "homepage": "https://debutsav.in/", "is_published": true, "auth_token": "e5f2cd10-dcc5-45e9-8ebd-9999c3845198", "owner_email": "guptautkarsh2102@gmail.com"}}]	DebUtsav Delhi	13	49
50	e5878f0d-16c6-4a7b-9af4-09a4749032a8	\N	json	[{"model": "events.event", "pk": "e5878f0d-16c6-4a7b-9af4-09a4749032a8", "fields": {"created": "2019-02-22T09:36:27.050Z", "modified": "2019-02-25T04:08:30.942Z", "name": "ILUG-D's Raspberry Pi Jam - 2019", "description": "Raspberry Pi Jam organised by India Linux User Group - Delhi. Come play and hack with single board computer The Raspberry Pi.", "start_date": "2019-03-02T11:00:00+05:30", "end_date": "2019-03-02T18:00:00+05:30", "homepage": "https://www.meetup.com/ilugdelhi/events/258641253/", "is_published": true, "auth_token": "606f6029-cd34-4b43-ba7e-51ccd64b0a1c", "owner_email": "iayanpahwa@gmail.com"}}]	ILUG-D's Raspberry Pi Jam - 2019	13	50
51	e5878f0d-16c6-4a7b-9af4-09a4749032a8	\N	json	[{"model": "events.event", "pk": "e5878f0d-16c6-4a7b-9af4-09a4749032a8", "fields": {"created": "2019-02-22T09:36:27.050Z", "modified": "2019-02-25T05:10:02.369Z", "name": "ILUG-D's Raspberry Pi Jam - 2019", "description": "Raspberry Pi Jam organised by India Linux User Group - Delhi. Come play and hack with single board computer The Raspberry Pi.", "start_date": "2019-03-02T09:00:00+05:30", "end_date": "2019-03-02T17:00:00+05:30", "homepage": "https://www.meetup.com/ilugdelhi/events/258641253/", "is_published": true, "auth_token": "606f6029-cd34-4b43-ba7e-51ccd64b0a1c", "owner_email": "iayanpahwa@gmail.com"}}]	ILUG-D's Raspberry Pi Jam - 2019	13	51
52	e5878f0d-16c6-4a7b-9af4-09a4749032a8	\N	json	[{"model": "events.event", "pk": "e5878f0d-16c6-4a7b-9af4-09a4749032a8", "fields": {"created": "2019-02-22T09:36:27.050Z", "modified": "2019-02-25T05:11:22.548Z", "name": "ILUG-D's Raspberry Pi Jam - 2019", "description": "Raspberry Pi Jam organised by India Linux User Group - Delhi. Come play and hack with single board computer The Raspberry Pi.", "start_date": "2019-03-02T09:00:00+05:30", "end_date": "2019-03-02T17:00:00+05:30", "homepage": "https://www.meetup.com/ilugdelhi/events/258641253/", "is_published": true, "auth_token": "606f6029-cd34-4b43-ba7e-51ccd64b0a1c", "owner_email": "iayanpahwa@gmail.com"}}]	ILUG-D's Raspberry Pi Jam - 2019	13	52
53	ebb75dc0-37b8-46fc-965c-6d835892e71f	\N	json	[{"model": "events.event", "pk": "ebb75dc0-37b8-46fc-965c-6d835892e71f", "fields": {"created": "2018-07-03T12:18:27.639Z", "modified": "2019-03-29T06:33:33.721Z", "name": "Devconf.in", "description": "DevConf.in 2018 is the second free annual community conference sponsored by Red Hat for Developers, System admins, DevOps engineers, Testers, Documentation writers and other contributors to open source technologies. It is a platform for the local FOSS community participants to come together and engage in the knowledge sharing through technical talks, workshops, panel discussions, hackathons and such activities.", "start_date": "2018-08-02T09:00:00+05:30", "end_date": "2018-08-03T18:00:00+05:30", "homepage": "https://devconf.info/in", "is_published": true, "auth_token": "2a68013e-d4a9-4e24-a4be-e2e556455361", "owner_email": "satyaakam@gmail.com"}}]	Devconf.in	13	53
54	ebb75dc0-37b8-46fc-965c-6d835892e71f	\N	json	[{"model": "events.event", "pk": "ebb75dc0-37b8-46fc-965c-6d835892e71f", "fields": {"created": "2018-07-03T12:18:27.639Z", "modified": "2019-03-29T06:34:00.091Z", "name": "Devconf.in", "description": "DevConf.in 2018 is the second free annual community conference sponsored by Red Hat for Developers, System admins, DevOps engineers, Testers, Documentation writers and other contributors to open source technologies. It is a platform for the local FOSS community participants to come together and engage in the knowledge sharing through technical talks, workshops, panel discussions, hackathons and such activities.", "start_date": "2019-08-02T09:00:00+05:30", "end_date": "2019-08-03T18:00:00+05:30", "homepage": "https://devconf.info/in", "is_published": true, "auth_token": "2a68013e-d4a9-4e24-a4be-e2e556455361", "owner_email": "satyaakam@gmail.com"}}]	Devconf.in	13	54
55	ebb75dc0-37b8-46fc-965c-6d835892e71f	\N	json	[{"model": "events.event", "pk": "ebb75dc0-37b8-46fc-965c-6d835892e71f", "fields": {"created": "2018-07-03T12:18:27.639Z", "modified": "2019-03-29T06:35:04.791Z", "name": "Devconf.in", "description": "DevConf.IN 2019 is the annual Developers' Conference organized by Red Hat in India. It is meant to provide a platform to the local FOSS community participants to come together and engage in knowledge sharing through technical talks, workshops, panel discussions, hackathon and such activities.\\r\\n\\r\\nThere is no admission or ticket charge for DevConf.IN events. Free registration is required though. Stay tuned to receive updates about registration.\\r\\n\\r\\nWe are committed to fostering an open and welcoming environment at our conference. We are setting expectations for inclusive behavior through our code of conduct and media policies, and are prepared to enforce these.\\r\\n\\r\\nWhen: August 2-3, 2019\\r\\n\\r\\nVenue: To be announced. It will be in Bengaluru, India\\r\\n\\r\\nYou should consider attending this DevConf event if you are:\\r\\n\\r\\nA developer\\r\\nA technology architect\\r\\nAn IT consultant\\r\\nAn IT student or a teacher from an IT university/faculty\\r\\nOr simply an IT enthusiast interested in the latest trends in open source and emerging digital technologies\\r\\nDevConf events are free, without admission or ticket charge. On-line registration is required though.\\r\\n\\r\\nTalks, presentations, workshops (etc) will all be in English.\\r\\n\\r\\nThe primary event themes this year are:\\r\\n\\r\\nTRENDING TECH: (AI/ ML/ BC/ IoT/ Mobile)\\r\\nSTORAGE AND NETWORKING: (Cloud Native Storage, Software Defined Storage, Storage Management, Distributed File System, Datastores, Big Data, NFV/ VNF, DPDK, ODL, Software Defined Networking)\\r\\nOPEN HYBRID CLOUD: ( Multi-Cloud, Automation, OpenStack, Kubernetes, Serverless, Microservices, Containers, OpenShift/ PaaS, Hybrid Cloud Management, Operators, CNI, Virtualization, Kernel, Service Mesh)\\r\\nDEVELOPER TOOLS: (Container Tooling, CI/CD, DevOps, Code Editors Cloud native IDE, CLI, Local Development for Containers, Language Runtime, Debugging/Tracing, QE)\\r\\nFOSS COMMUNITY & STANDARDS: (Community Trends, Governance, Licensing, Participation, Leadership, Agile )\\r\\nWHITE PAPER / ACADEMIC RESEARCH: ( Computer Science Engineering, New Algorithms, Protocols, Experimental/Future Networks, Data Modelling, Security, Natural Language Processing-NLP )\\r\\nWe are also accepting submissions in focus areas like - Design, Documentation, Security & Data Privacy. These focus areas are the common and integral part of all the themes.\\r\\n\\r\\nImportant dates:\\r\\nCfP Opens: March 15, 2019\\r\\nCfP Closes: May 01, 2019\\r\\nAccepted speakers confirmation: June 1, 2019\\r\\nSchedule Announcement: July 1, 2019\\r\\nRegistration Opens: July 1, 2019\\r\\nEvent dates: Friday, August 2 to Saturday, August 3, 2019", "start_date": "2019-08-02T09:00:00+05:30", "end_date": "2019-08-03T18:00:00+05:30", "homepage": "https://devconf.info/in", "is_published": true, "auth_token": "2a68013e-d4a9-4e24-a4be-e2e556455361", "owner_email": "satyaakam@gmail.com"}}]	Devconf.in	13	55
56	19c3ed52-0fc7-4bda-8c72-bd3a5a039382	\N	json	[{"model": "events.event", "pk": "19c3ed52-0fc7-4bda-8c72-bd3a5a039382", "fields": {"created": "2019-05-31T03:41:59.053Z", "modified": "2019-05-31T03:41:59.053Z", "name": "satyakam goswami", "description": "One of the largest Drupal events across India, DrupalCamp Delhi (15 - 16 June) is an annual conference where the finest minds in technology come together to discuss Drupal and associated technologies. \\r\\n\\r\\nBringing together technocrats, marketers, and business user community to learn, engage, and contribute. It provides you with the stage to explore the ambitious and largest open source community by offering a glimpse into \\u201cthe art of the possible\\u201d when you choose Drupal.\\r\\n\\r\\nSpend your weekend with a wonderful community which collaborates, networks, connects, and shares. The community that is Drupal is truly exceptional.\\r\\n\\r\\nWhether you are a senior leader, a developer, a designer, or a marketer\\u2014there's something for you at DrupalCamp Delhi. \\r\\n\\r\\nLearn to make, think about, and do things differently with Drupal. Come, Join Us.", "start_date": "2019-06-15T09:10:55+05:30", "end_date": "2019-06-16T18:00:00+05:30", "homepage": "http://2019.drupalcampdelhi.com/", "is_published": true, "auth_token": "d475db4a-f47e-4c7e-8ac8-93a0e086948a", "owner_email": "satyaakam@gmail.com"}}]	satyakam goswami	13	56
57	19c3ed52-0fc7-4bda-8c72-bd3a5a039382	\N	json	[{"model": "events.event", "pk": "19c3ed52-0fc7-4bda-8c72-bd3a5a039382", "fields": {"created": "2019-05-31T03:41:59.053Z", "modified": "2019-05-31T03:42:59.975Z", "name": "Drupal Camp Delhi 2019", "description": "One of the largest Drupal events across India, DrupalCamp Delhi (15 - 16 June) is an annual conference where the finest minds in technology come together to discuss Drupal and associated technologies. \\r\\n\\r\\nBringing together technocrats, marketers, and business user community to learn, engage, and contribute. It provides you with the stage to explore the ambitious and largest open source community by offering a glimpse into \\u201cthe art of the possible\\u201d when you choose Drupal.\\r\\n\\r\\nSpend your weekend with a wonderful community which collaborates, networks, connects, and shares. The community that is Drupal is truly exceptional.\\r\\n\\r\\nWhether you are a senior leader, a developer, a designer, or a marketer\\u2014there's something for you at DrupalCamp Delhi. \\r\\n\\r\\nLearn to make, think about, and do things differently with Drupal. Come, Join Us.", "start_date": "2019-06-15T09:10:55+05:30", "end_date": "2019-06-16T18:00:00+05:30", "homepage": "http://2019.drupalcampdelhi.com/", "is_published": true, "auth_token": "d475db4a-f47e-4c7e-8ac8-93a0e086948a", "owner_email": "satyaakam@gmail.com"}}]	Drupal Camp Delhi 2019	13	57
58	faccdbe6-55fe-4a47-be1e-61cadd490bd2	\N	json	[{"model": "events.event", "pk": "faccdbe6-55fe-4a47-be1e-61cadd490bd2", "fields": {"created": "2019-06-27T05:51:44.986Z", "modified": "2019-06-28T11:49:42.507Z", "name": "PyCon India 2019", "description": "PyCon India is the annual gathering of Pythonistas, run by the Indian Python community, to foster adoption of the Python programming language. PyCon India 2019, will take place in Chennai, between Oct 12 and 15. This is 11th edition of the conference and about 1200 people are expected to participate in this event, from all over the country.\\r\\n\\r\\nPyCon India 2019 is actually 3 events rolled into one mega event.\\r\\n\\r\\n- Conference Days\\r\\n\\r\\n- Workshop Day\\r\\n\\r\\n- Developer Sprints\\r\\n\\r\\nThe Conference Days are on Oct 12 and 13, 2019 at the Chennai Trade Centre. On the conference days, people connect with each other, discuss their experiences and present their ideas.\\r\\n\\r\\n- Talks with slides is where people do a 25 min talk, on a topic. These talks are selected through a CFP process, before the event. There will be 3 talk tracks, where presentations will happen in parallel.\\r\\n\\r\\n- Poster session is a 1-hour session, right after the lunch break, on the first day of the conference. One of the halls is temporarily converted into a poster exhibition hall, where presenters use a graphic poster and a laptop to present their topic.\\r\\n\\r\\n- Open spaces is where people have informal presentations and discussions along side the talk tracks. Open spaces slots can be booked at the venue, on the day of the event.\\r\\n\\r\\n- Lightning talks is a 1-hour session, right after the lunch break, on the second day of the conference. Lightning talks are rapid 5 min presentations, that is presented to the entire conference crowd, a great way to get a message across to the entire audience.\\r\\n\\r\\n- Sponsor stalls are where you can meet companies supporting the conference. These companies use Python and are looking for Python developers. You can visit their stalls to get to know more about them, and the openings in their organization.\\r\\n\\r\\nThe Workshop Day is on Oct 14, 2019 at the IITM Research Park. (Please note that Workshop overlaps with Devsprints) On the workshop day, people can attend hands-on workshops, and learn about a topic from an expert. A separate ticket needs to be purchased for each workshop you would like to attend.\\r\\n\\r\\nThe Developer Sprints is on Oct 14 and 15, 2019 at the IITM Research Park. During the Devsprints people contribute to open source projects, guided by mentors. This is a nice way to get started with contributing to Python and other open source projects. A separate ticket is required to attend the Devsprints.", "start_date": "2019-10-12T00:00:00+05:30", "end_date": "2019-10-15T00:00:00+05:30", "homepage": "https://in.pycon.org/", "is_published": true, "auth_token": "f003ab8e-f94a-4cde-8b08-31c85dc127d3", "owner_email": "contact@in.pycon.org"}}]	PyCon India 2019	13	58
59	7c9fe590-ea0d-4aff-a930-fc8fb6cfdcda	\N	json	[{"model": "events.event", "pk": "7c9fe590-ea0d-4aff-a930-fc8fb6cfdcda", "fields": {"created": "2019-09-11T05:41:02.770Z", "modified": "2019-09-11T09:47:57.058Z", "name": "DrupapCamp Pune 2019", "description": "We are excited to announce that we are planing to host DrupalCamp Pune on 14-15th September 2019. Join us for the most awaited open source event in Pune. Register now - http://camp2019.drupalpune.com/\\r\\n\\r\\nWe plan to make DCP 2019 a grand success. Stay connected with us on Facebook and Twitter: @drupalcamppune to know more!", "start_date": "2019-09-14T09:00:00+05:30", "end_date": "2019-09-15T18:00:00+05:30", "homepage": "http://camp2019.drupalpune.com/", "is_published": true, "auth_token": "21a441fe-27b9-48f2-afc3-19de94910062", "owner_email": "drupalpune12@gmail.com"}}]	DrupapCamp Pune 2019	13	59
60	a157276c-2f60-429a-aa01-6eec62c1f21d	\N	json	[{"model": "events.event", "pk": "a157276c-2f60-429a-aa01-6eec62c1f21d", "fields": {"created": "2019-10-14T15:29:40.323Z", "modified": "2019-10-14T15:29:40.323Z", "name": "satyakam goswami", "description": "A 2 day, immersive open hackathon where students, professionals, researchers, makers and anyone with an interest in technology gather together to build a single project, a disaster management, awareness and alertness platform", "start_date": "2019-10-26T09:00:00+05:30", "end_date": "2019-10-27T18:00:00+05:30", "homepage": "https://openhack.tech/", "is_published": true, "auth_token": "2a89c5d9-dd8a-4c52-aa53-72db92f0d1ec", "owner_email": "satyaakam@gmail.com"}}]	satyakam goswami	13	60
61	a157276c-2f60-429a-aa01-6eec62c1f21d	\N	json	[{"model": "events.event", "pk": "a157276c-2f60-429a-aa01-6eec62c1f21d", "fields": {"created": "2019-10-14T15:29:40.323Z", "modified": "2019-10-14T15:30:13.389Z", "name": "OpenHack 2019", "description": "A 2 day, immersive open hackathon where students, professionals, researchers, makers and anyone with an interest in technology gather together to build a single project, a disaster management, awareness and alertness platform", "start_date": "2019-10-26T09:00:00+05:30", "end_date": "2019-10-27T18:00:00+05:30", "homepage": "https://openhack.tech/", "is_published": true, "auth_token": "2a89c5d9-dd8a-4c52-aa53-72db92f0d1ec", "owner_email": "satyaakam@gmail.com"}}]	OpenHack 2019	13	61
62	801f46dc-8630-4362-a553-3051bd33e0c1	\N	json	[{"model": "events.event", "pk": "801f46dc-8630-4362-a553-3051bd33e0c1", "fields": {"created": "2019-11-11T15:28:24.319Z", "modified": "2019-11-11T15:28:24.319Z", "name": "PyConf Hyderabad 2019", "description": "PyConf Hyderabad is the regional gathering for the community that uses and develops the open-source Python Programming Language.\\r\\n\\r\\nhttps://pyconf.hydpy.org/2019/", "start_date": "2019-12-07T09:00:00+05:30", "end_date": "2019-12-08T18:00:00+05:30", "homepage": "https://pyconf.hydpy.org/2019/", "is_published": true, "auth_token": "85325468-c786-49d6-9912-6f212bee4067", "owner_email": "satyaakam@gmail.com"}}]	PyConf Hyderabad 2019	13	62
68	0e981286-abb8-4b33-aec4-e8e4d2843687	\N	json	[{"model": "events.event", "pk": "0e981286-abb8-4b33-aec4-e8e4d2843687", "fields": {"created": "2020-01-10T13:10:28.437Z", "modified": "2020-05-18T01:26:18.685Z", "name": "Kubernetes Forum", "description": "Kubernetes Forums connect international and local cloud native experts, adopters, developers, and end users in global cities to enable face-to-face collaboration and deliver rich educational experiences. Engage with the leaders of Kubernetes and other CNCF-hosted projects as we set the direction for the cloud native ecosystem. Kubernetes Forums have both a beginner and an advanced track; about half of the speakers are international experts and half are from the local area.", "start_date": "2020-02-17T00:00:00+05:30", "end_date": "2020-02-17T00:00:00+05:30", "homepage": "https://events.linuxfoundation.org/kubernetes-forum-bengaluru/", "is_published": true, "auth_token": "503b0bb9-724e-47e5-8038-a2f5d578fdd0", "owner_email": "events@cncf.io"}}]	Kubernetes Forum	13	68
63	65144498-afcb-460e-8534-b81ae2d8c54a	\N	json	[{"model": "events.event", "pk": "65144498-afcb-460e-8534-b81ae2d8c54a", "fields": {"created": "2019-11-12T17:16:14.545Z", "modified": "2019-11-12T17:16:14.545Z", "name": "satyakam goswami", "description": "Conf.kde.in started in 2011 at RVCE in Bangalore as a 5-day event with 300 participants. This kicked off a series of KDE events in India. We held a KDE Meetup in 2013, and another conf.kde.in 2014 at DA-IICT. In 2015, the third conf.kde.in was held at Amrita University in Kerala, and in 2016 at LNMIIT Jaipur. The Jaipur conference attracted members of the KDE Community from all over the world. Attendees from different backgrounds came to meet each other, give talks, and share in the spirit of KDE. The 2017 conference was held in IIT Guwahati, Assam and sought to cater to new members of KDE, as well as to seasoned developers.\\r\\n\\r\\nAll of these events have been successful in attracting a lot of Indian students to mentoring programs such as Google Summer of Code (GSoC), Season of KDE, and Google Code-In.\\r\\n\\r\\nconf.kde.in 2020 will generate even more interest and participation by creating a fertile environment for people to get started with KDE, Qt and FOSS through numerous talks, hands-on sessions and demonstrations.\\r\\n\\r\\n\\r\\nconf.kde.in 2020 will be held in Maharaja Agrasen Institute of Technology, located in Rohini, Delhi, India. MAIT was established by the Maharaja Agrasen Technical Education Society and promoted by well-known industrialists, businessmen, professionals and philanthropists. The aim of MAIT is to promote quality education in the field of Technology.\\r\\n\\r\\nMAIT endeavors to provide industry-relevant education and training through its well-crafted and practical training programs for the students in different semesters of their courses. The campus is composed of 10 blocks with a learning resource center. MAIT has been ranked as the 10th best private engineering institute in India by the Dataquest T-School Survey. MAIT always supports Free and Open Source communities and tech-related activities.", "start_date": "2020-01-17T09:00:00+05:30", "end_date": "2020-01-19T18:00:00+05:30", "homepage": "http://conf.kde.in/", "is_published": true, "auth_token": "223b7bbe-cc05-4af7-9a82-07bb720b5d6e", "owner_email": "satyaakam@gmail.com"}}]	satyakam goswami	13	63
64	65144498-afcb-460e-8534-b81ae2d8c54a	\N	json	[{"model": "events.event", "pk": "65144498-afcb-460e-8534-b81ae2d8c54a", "fields": {"created": "2019-11-12T17:16:14.545Z", "modified": "2019-11-12T17:16:49.788Z", "name": "KDE Conference India 2020", "description": "Conf.kde.in started in 2011 at RVCE in Bangalore as a 5-day event with 300 participants. This kicked off a series of KDE events in India. We held a KDE Meetup in 2013, and another conf.kde.in 2014 at DA-IICT. In 2015, the third conf.kde.in was held at Amrita University in Kerala, and in 2016 at LNMIIT Jaipur. The Jaipur conference attracted members of the KDE Community from all over the world. Attendees from different backgrounds came to meet each other, give talks, and share in the spirit of KDE. The 2017 conference was held in IIT Guwahati, Assam and sought to cater to new members of KDE, as well as to seasoned developers.\\r\\n\\r\\nAll of these events have been successful in attracting a lot of Indian students to mentoring programs such as Google Summer of Code (GSoC), Season of KDE, and Google Code-In.\\r\\n\\r\\nconf.kde.in 2020 will generate even more interest and participation by creating a fertile environment for people to get started with KDE, Qt and FOSS through numerous talks, hands-on sessions and demonstrations.\\r\\n\\r\\n\\r\\nconf.kde.in 2020 will be held in Maharaja Agrasen Institute of Technology, located in Rohini, Delhi, India. MAIT was established by the Maharaja Agrasen Technical Education Society and promoted by well-known industrialists, businessmen, professionals and philanthropists. The aim of MAIT is to promote quality education in the field of Technology.\\r\\n\\r\\nMAIT endeavors to provide industry-relevant education and training through its well-crafted and practical training programs for the students in different semesters of their courses. The campus is composed of 10 blocks with a learning resource center. MAIT has been ranked as the 10th best private engineering institute in India by the Dataquest T-School Survey. MAIT always supports Free and Open Source communities and tech-related activities.", "start_date": "2020-01-17T09:00:00+05:30", "end_date": "2020-01-19T18:00:00+05:30", "homepage": "http://conf.kde.in/", "is_published": true, "auth_token": "223b7bbe-cc05-4af7-9a82-07bb720b5d6e", "owner_email": "satyaakam@gmail.com"}}]	KDE Conference India 2020	13	64
65	3918ba21-4650-4615-8744-1f47e6d40837	\N	json	[{"model": "events.event", "pk": "3918ba21-4650-4615-8744-1f47e6d40837", "fields": {"created": "2019-11-14T11:32:53.780Z", "modified": "2019-11-14T11:32:53.780Z", "name": "Drupal Camp Chennai 2019", "description": "We are happy to announce the first-ever Drupal Camp in Chennai organized by the Drupal Chennai Community. Drupal Camp Chennai 2019 is a conference organized for the Drupal community and people showing interest in Drupal. This two-day event features training workshops and sessions. It will be held on 7th and 8th December 2019 in IIT Madras.\\r\\n\\r\\nThe Drupal Camp is not only about the conference, the sessions and the informal gatherings (BOFs) but also about bonding with an array of energetic and passionate people. After all, you come to Drupal for the code and stay for the community.\\r\\n\\r\\nThe conference programme has been arranged to suit both completely new and advanced developers.\\r\\n\\r\\nDuring the conference, speakers will deliver their lectures in English and native-languages of South India like Tamil, Malayalam, and Telugu.\\r\\n\\r\\nSpend your weekend with a wonderful community which collaborates, networks, connects, and shares. The community that is Drupal is truly exceptional.", "start_date": "2019-12-07T09:00:00+05:30", "end_date": "2019-12-08T18:00:00+05:30", "homepage": "http://drupalcampchennai.org/", "is_published": false, "auth_token": "919a572d-cb03-43ba-9501-d38d1a4badbf", "owner_email": "satyaakam@gmail.com"}}]	Drupal Camp Chennai 2019	13	65
66	3918ba21-4650-4615-8744-1f47e6d40837	\N	json	[{"model": "events.event", "pk": "3918ba21-4650-4615-8744-1f47e6d40837", "fields": {"created": "2019-11-14T11:32:53.780Z", "modified": "2019-11-14T11:33:23.066Z", "name": "Drupal Camp Chennai 2019", "description": "We are happy to announce the first-ever Drupal Camp in Chennai organized by the Drupal Chennai Community. Drupal Camp Chennai 2019 is a conference organized for the Drupal community and people showing interest in Drupal. This two-day event features training workshops and sessions. It will be held on 7th and 8th December 2019 in IIT Madras.\\r\\n\\r\\nThe Drupal Camp is not only about the conference, the sessions and the informal gatherings (BOFs) but also about bonding with an array of energetic and passionate people. After all, you come to Drupal for the code and stay for the community.\\r\\n\\r\\nThe conference programme has been arranged to suit both completely new and advanced developers.\\r\\n\\r\\nDuring the conference, speakers will deliver their lectures in English and native-languages of South India like Tamil, Malayalam, and Telugu.\\r\\n\\r\\nSpend your weekend with a wonderful community which collaborates, networks, connects, and shares. The community that is Drupal is truly exceptional.", "start_date": "2019-12-07T09:00:00+05:30", "end_date": "2019-12-08T18:00:00+05:30", "homepage": "http://drupalcampchennai.org/", "is_published": true, "auth_token": "919a572d-cb03-43ba-9501-d38d1a4badbf", "owner_email": "satyaakam@gmail.com"}}]	Drupal Camp Chennai 2019	13	66
67	64571ae8-c370-4e05-91dd-8be9b93e4f40	\N	json	[{"model": "events.event", "pk": "64571ae8-c370-4e05-91dd-8be9b93e4f40", "fields": {"created": "2019-12-13T03:55:49.903Z", "modified": "2019-12-13T03:55:49.903Z", "name": "R Conference", "description": "First R Conference in India under the International india statistical association", "start_date": "2019-12-26T09:00:00+05:30", "end_date": "2019-12-30T18:00:00+05:30", "homepage": "https://r-iisa2019.rbind.io/", "is_published": true, "auth_token": "b619457d-ed02-420f-8612-fdfb4d403176", "owner_email": "satyaakam@gmail.com"}}]	R Conference	13	67
69	20186c2a-81c5-4d50-b59c-23dd47ac19e9	\N	json	[{"model": "events.event", "pk": "20186c2a-81c5-4d50-b59c-23dd47ac19e9", "fields": {"created": "2020-03-04T08:49:40.725Z", "modified": "2020-05-18T01:26:37.553Z", "name": "FOSSMeet'20", "description": "FOSSMeet is an annual event at NIT Calicut that brings together the Free and Open Source Community from around the country.\\r\\nStarted in 2004, the event has seen a great array of speakers and participants passionate in freedom of software from all over India. Notable dignitaries include Bradley M Kuhn (President, Software Freedom Conservancy), Dr. Sasi Kumar (Director, Free Software Foundation India), Marco Fioretti (FOSS Activist) among others.", "start_date": "2020-03-27T17:00:00+05:30", "end_date": "2020-03-29T14:00:00+05:30", "homepage": "http://fossmeet.in", "is_published": true, "auth_token": "52fecc73-2a8a-4875-ba49-fa7315822b70", "owner_email": "info@fossmeet.in"}}]	FOSSMeet'20	13	69
70	f967cab5-a48e-4a82-ae54-8be2edc6dcfc	\N	json	[{"model": "events.event", "pk": "f967cab5-a48e-4a82-ae54-8be2edc6dcfc", "fields": {"created": "2020-03-02T12:33:54.945Z", "modified": "2020-05-18T01:26:53.719Z", "name": "COEP FOSSMeet'20", "description": "Annual FOSS Meet of College of Engineering Pune (COEP)", "start_date": "2020-03-28T00:00:00+05:30", "end_date": "2020-03-29T00:00:00+05:30", "homepage": "https://foss.coep.org.in/fossmeet/", "is_published": true, "auth_token": "2be623f8-2486-490f-b313-72a16b70043b", "owner_email": "fossmeet@coep.ac.in"}}]	COEP FOSSMeet'20	13	70
71	7ca30e16-7281-4d6d-b14e-a031e8f15d32	\N	json	[{"model": "events.event", "pk": "7ca30e16-7281-4d6d-b14e-a031e8f15d32", "fields": {"created": "2021-01-15T08:40:47.207Z", "modified": "2021-01-17T04:11:46.379Z", "name": "MiniDebConf India", "description": "Debian India is a group of enthusiasts who would like to expand the Debian community in the sub-continent and thus to increase the number of active contributors to the project. With the mission of spreading the spirit of the Debian project, we are organizing an event which not only caters the English speaking community but also those who can understand Hindi, Malayalam or Telugu. We can also add more languages according to the availability of slots/speakers/volunteers in that particular language. This multi-lingual MiniDebConf is inspired from the sub-tracks in DebConf 20 as well as the MiniDebConf Brazil 2020. Thanks for joining us and all your support! Keep loving Debian\\u2026", "start_date": "2021-01-23T00:00:00+05:30", "end_date": "2021-01-24T00:00:00+05:30", "homepage": "https://in2021.mini.debconf.org/", "is_published": true, "auth_token": "54552e80-6d44-405a-b519-abcc3ee73ee6", "owner_email": "mail@raju.dev"}}]	MiniDebConf India	13	71
72	7c9fe590-ea0d-4aff-a930-fc8fb6cfdcda	\N	json	[{"model": "events.event", "pk": "7c9fe590-ea0d-4aff-a930-fc8fb6cfdcda", "fields": {"created": "2019-09-11T05:41:02.770Z", "modified": "2021-01-19T04:31:37.657Z", "name": "Drupal Camp Pune 2019", "description": "We are excited to announce that we are planing to host DrupalCamp Pune on 14-15th September 2019. Join us for the most awaited open source event in Pune. Register now - http://camp2019.drupalpune.com/\\r\\n\\r\\nWe plan to make DCP 2019 a grand success. Stay connected with us on Facebook and Twitter: @drupalcamppune to know more!", "start_date": "2019-09-14T09:00:00+05:30", "end_date": "2019-09-15T18:00:00+05:30", "homepage": "http://camp2019.drupalpune.com/", "is_published": true, "auth_token": "21a441fe-27b9-48f2-afc3-19de94910062", "owner_email": "drupalpune12@gmail.com"}}]	Drupal Camp Pune 2019	13	72
\.


                                                                                                                                                                                                                                                                                                                      3218.dat                                                                                            0000600 0004000 0002000 00000000005 14045752571 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3220.dat                                                                                            0000600 0004000 0002000 00000000005 14045752571 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3222.dat                                                                                            0000600 0004000 0002000 00000000005 14045752571 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3224.dat                                                                                            0000600 0004000 0002000 00000000005 14045752571 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3226.dat                                                                                            0000600 0004000 0002000 00000002534 14045752571 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	pbkdf2_sha256$20000$VBnSTDYTXpyU$hc0TpMnDli4LEf63scNRXtr2HWFxS+Z6H/e/NlZtKZM=	2015-04-30 15:56:39.599111+05:30	f	aniketmaithani	Aniket 	Maithani	maithani.aniket@gmail.com	f	t	2015-04-30 15:55:08.910316+05:30	f
2	pbkdf2_sha256$20000$7wIxFnTlPOSe$3IeEhCq8+1fqxPumQQA7MQHJVJo9WiNTmx9FtXyqYE4=	2015-04-30 15:56:48.900813+05:30	f	satyaakam	Satyakam	Goswami	satyaakam@gmail.com	f	t	2015-04-30 15:55:18.195542+05:30	f
3	pbkdf2_sha256$20000$MuwsBiXydaLr$OfASqE/kul22ZTWv3m4u23bQRBNIJGXLH7JDC5NRNyo=	2015-05-26 15:16:10.150401+05:30	t	saurabh			me@saurabh-kumar.com	t	t	2015-05-26 15:16:03.72747+05:30	f
6	pbkdf2_sha256$24000$qpH5elbq09nE$4vdJgwJQmgYWwRUdLpAObUdkXWk1G6avAbT5cpgfk5A=	2017-02-22 15:03:49.267728+05:30	t	jainmickey	Mayank	Jain	jainmickey93@gmail.com	t	t	2016-10-18 18:00:31+05:30	f
5	pbkdf2_sha256$24000$H4v611SxkfLV$bu/cSQjfo+iE3J0Bx+G+h2gZibypdMVmrLMqDQSflLk=	2017-02-22 15:05:42.882007+05:30	t	theskumar	Saurabh	Kumar	thes.kumar@gmail.com	t	t	2016-03-13 01:47:10+05:30	f
7	pbkdf2_sha256$24000$599x78s8fdL5$9nhk3a5IcB5Lryehk7B2ln/q2O56IYIj9Ihn/45wnkE=	2021-01-17 11:49:29.949635+05:30	t	saurabhn	Saurabh	Nandedkar	saurabhnandedkar25@gmail.com	t	t	2021-01-17 10:10:05+05:30	f
4	pbkdf2_sha256$24000$Y8ZVEZUxC9xs$tvP/kmva0cQhQ1a+zecRXnxa3+hgb7dGNo6KHXi+aog=	2021-05-09 08:38:36.716461+05:30	t	satya			satyaakam@gmail.com	t	t	2016-03-11 14:53:00.702766+05:30	f
\.


                                                                                                                                                                    3227.dat                                                                                            0000600 0004000 0002000 00000000005 14045752571 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3230.dat                                                                                            0000600 0004000 0002000 00000000005 14045752571 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000152011 14045752571 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7 (Ubuntu 11.7-0ubuntu0.19.10.1)
-- Dumped by pg_dump version 11.7 (Ubuntu 11.7-0ubuntu0.19.10.1)

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

DROP DATABASE check_db;
--
-- Name: check_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE check_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';


ALTER DATABASE check_db OWNER TO postgres;

\connect check_db

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

SET default_with_oids = false;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO espatatis;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO espatatis;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO espatatis;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO espatatis;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO espatatis;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO espatatis;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO espatatis;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO espatatis;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO espatatis;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO espatatis;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO espatatis;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO espatatis;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO espatatis;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO espatatis;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO espatatis;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO espatatis;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO espatatis;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO espatatis;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO espatatis;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: events_event; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.events_event (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    homepage character varying(200) NOT NULL,
    is_published boolean NOT NULL,
    auth_token character varying(50) NOT NULL,
    owner_email character varying(256) NOT NULL
);


ALTER TABLE public.events_event OWNER TO espatatis;

--
-- Name: events_eventreview; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.events_eventreview (
    id uuid NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    comment text,
    is_approved boolean NOT NULL,
    event_id uuid NOT NULL,
    moderator_id integer NOT NULL
);


ALTER TABLE public.events_eventreview OWNER TO espatatis;

--
-- Name: reversion_revision; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.reversion_revision (
    id integer NOT NULL,
    manager_slug character varying(191) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    comment text NOT NULL,
    user_id integer
);


ALTER TABLE public.reversion_revision OWNER TO espatatis;

--
-- Name: reversion_revision_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.reversion_revision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reversion_revision_id_seq OWNER TO espatatis;

--
-- Name: reversion_revision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.reversion_revision_id_seq OWNED BY public.reversion_revision.id;


--
-- Name: reversion_version; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.reversion_version (
    id integer NOT NULL,
    object_id text NOT NULL,
    object_id_int integer,
    format character varying(255) NOT NULL,
    serialized_data text NOT NULL,
    object_repr text NOT NULL,
    content_type_id integer NOT NULL,
    revision_id integer NOT NULL
);


ALTER TABLE public.reversion_version OWNER TO espatatis;

--
-- Name: reversion_version_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.reversion_version_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reversion_version_id_seq OWNER TO espatatis;

--
-- Name: reversion_version_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.reversion_version_id_seq OWNED BY public.reversion_version.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(255) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO espatatis;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO espatatis;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(100) NOT NULL,
    secret character varying(100) NOT NULL,
    key character varying(100) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO espatatis;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO espatatis;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO espatatis;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO espatatis;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO espatatis;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO espatatis;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    is_moderator boolean NOT NULL
);


ALTER TABLE public.users_user OWNER TO espatatis;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO espatatis;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO espatatis;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO espatatis;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: espatatis
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO espatatis;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: espatatis
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO espatatis;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: espatatis
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: reversion_revision id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.reversion_revision ALTER COLUMN id SET DEFAULT nextval('public.reversion_revision_id_seq'::regclass);


--
-- Name: reversion_version id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.reversion_version ALTER COLUMN id SET DEFAULT nextval('public.reversion_version_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.
COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM '$$PATH$$/3193.dat';

--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.
COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM '$$PATH$$/3195.dat';

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3197.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3199.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3201.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3203.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3205.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3207.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3209.dat';

--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.django_site (id, domain, name) FROM stdin;
\.
COPY public.django_site (id, domain, name) FROM '$$PATH$$/3210.dat';

--
-- Data for Name: events_event; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.events_event (created, modified, id, name, description, start_date, end_date, homepage, is_published, auth_token, owner_email) FROM stdin;
\.
COPY public.events_event (created, modified, id, name, description, start_date, end_date, homepage, is_published, auth_token, owner_email) FROM '$$PATH$$/3212.dat';

--
-- Data for Name: events_eventreview; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.events_eventreview (id, created, modified, comment, is_approved, event_id, moderator_id) FROM stdin;
\.
COPY public.events_eventreview (id, created, modified, comment, is_approved, event_id, moderator_id) FROM '$$PATH$$/3213.dat';

--
-- Data for Name: reversion_revision; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.reversion_revision (id, manager_slug, date_created, comment, user_id) FROM stdin;
\.
COPY public.reversion_revision (id, manager_slug, date_created, comment, user_id) FROM '$$PATH$$/3214.dat';

--
-- Data for Name: reversion_version; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.reversion_version (id, object_id, object_id_int, format, serialized_data, object_repr, content_type_id, revision_id) FROM stdin;
\.
COPY public.reversion_version (id, object_id, object_id_int, format, serialized_data, object_repr, content_type_id, revision_id) FROM '$$PATH$$/3216.dat';

--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.
COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM '$$PATH$$/3218.dat';

--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.
COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM '$$PATH$$/3220.dat';

--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.
COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM '$$PATH$$/3222.dat';

--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.
COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM '$$PATH$$/3224.dat';

--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_moderator) FROM stdin;
\.
COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_moderator) FROM '$$PATH$$/3226.dat';

--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.users_user_groups (id, user_id, group_id) FROM '$$PATH$$/3227.dat';

--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: espatatis
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.users_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3230.dat';

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 2, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 2, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 105, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.django_site_id_seq', 2, true);


--
-- Name: reversion_revision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.reversion_revision_id_seq', 72, true);


--
-- Name: reversion_version_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.reversion_version_id_seq', 72, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.users_user_id_seq', 7, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: espatatis
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_4a8cda6e846a4926_uniq; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_4a8cda6e846a4926_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: events_event events_event_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.events_event
    ADD CONSTRAINT events_event_pkey PRIMARY KEY (id);


--
-- Name: events_eventreview events_eventreview_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.events_eventreview
    ADD CONSTRAINT events_eventreview_pkey PRIMARY KEY (id);


--
-- Name: reversion_revision reversion_revision_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.reversion_revision
    ADD CONSTRAINT reversion_revision_pkey PRIMARY KEY (id);


--
-- Name: reversion_version reversion_version_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.reversion_version
    ADD CONSTRAINT reversion_version_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_3dbfab48c8215d28_uniq; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_3dbfab48c8215d28_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_socialapp_id_site_id_key; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_socialapp_id_site_id_key UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_59f7b445c6fe75aa_uniq; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_59f7b445c6fe75aa_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: account_emailaddress_e8701ad4; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX account_emailaddress_e8701ad4 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailaddress_email_67ce424d24fd2336_like; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX account_emailaddress_email_67ce424d24fd2336_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailconfirmation_6f1edeac; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX account_emailconfirmation_6f1edeac ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_117b4449a0cddffd_like; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX account_emailconfirmation_key_117b4449a0cddffd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_69de3b9b9e90297a_like; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX auth_group_name_69de3b9b9e90297a_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX auth_group_permissions_0e939a4f ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX auth_group_permissions_8373b171 ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX auth_permission_417f1b1c ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX django_admin_log_417f1b1c ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX django_admin_log_e8701ad4 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX django_session_de54fa62 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_304e106b8e5653c2_like; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX django_session_session_key_304e106b8e5653c2_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: events_eventreview_4437cfac; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX events_eventreview_4437cfac ON public.events_eventreview USING btree (event_id);


--
-- Name: events_eventreview_89cad286; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX events_eventreview_89cad286 ON public.events_eventreview USING btree (moderator_id);


--
-- Name: reversion_revision_b16b0f06; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX reversion_revision_b16b0f06 ON public.reversion_revision USING btree (manager_slug);


--
-- Name: reversion_revision_c69e55a4; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX reversion_revision_c69e55a4 ON public.reversion_revision USING btree (date_created);


--
-- Name: reversion_revision_e8701ad4; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX reversion_revision_e8701ad4 ON public.reversion_revision USING btree (user_id);


--
-- Name: reversion_revision_manager_slug_54d21219582503b1_like; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX reversion_revision_manager_slug_54d21219582503b1_like ON public.reversion_revision USING btree (manager_slug varchar_pattern_ops);


--
-- Name: reversion_version_0c9ba3a3; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX reversion_version_0c9ba3a3 ON public.reversion_version USING btree (object_id_int);


--
-- Name: reversion_version_417f1b1c; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX reversion_version_417f1b1c ON public.reversion_version USING btree (content_type_id);


--
-- Name: reversion_version_5de09a8d; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX reversion_version_5de09a8d ON public.reversion_version USING btree (revision_id);


--
-- Name: socialaccount_socialaccount_e8701ad4; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX socialaccount_socialaccount_e8701ad4 ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_9365d6e7; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX socialaccount_socialapp_sites_9365d6e7 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_fe95b0a0; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX socialaccount_socialapp_sites_fe95b0a0 ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_8a089c2a; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX socialaccount_socialtoken_8a089c2a ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_f382adfe; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX socialaccount_socialtoken_f382adfe ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: users_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX users_user_groups_0e939a4f ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX users_user_groups_e8701ad4 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX users_user_user_permissions_8373b171 ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX users_user_user_permissions_e8701ad4 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_1c658b9c99010171_like; Type: INDEX; Schema: public; Owner: espatatis
--

CREATE INDEX users_user_username_1c658b9c99010171_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: account_emailconfirmation ac_email_address_id_763e89745d674cbe_fk_account_emailaddress_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT ac_email_address_id_763e89745d674cbe_fk_account_emailaddress_id FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailaddress account_emailaddress_user_id_19c3b50ffaa908b5_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_19c3b50ffaa908b5_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_content_type_id_5d733595301a4c0d_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_content_type_id_5d733595301a4c0d_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group__permission_id_b004cbfa1003c8a_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group__permission_id_b004cbfa1003c8a_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_group_id_2e61430ffa76d0e7_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_2e61430ffa76d0e7_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log djan_content_type_id_3788cef025957f74_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT djan_content_type_id_3788cef025957f74_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_627034519188c2e9_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_627034519188c2e9_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventreview events_eventreview_event_id_4fddf426_fk_events_event_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.events_eventreview
    ADD CONSTRAINT events_eventreview_event_id_4fddf426_fk_events_event_id FOREIGN KEY (event_id) REFERENCES public.events_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventreview events_eventreview_moderator_id_dee3c3f5_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.events_eventreview
    ADD CONSTRAINT events_eventreview_moderator_id_dee3c3f5_fk_users_user_id FOREIGN KEY (moderator_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reversion_version rever_content_type_id_c01a11926d4c4a9_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.reversion_version
    ADD CONSTRAINT rever_content_type_id_c01a11926d4c4a9_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reversion_version reversion__revision_id_48ec3744916a950_fk_reversion_revision_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.reversion_version
    ADD CONSTRAINT reversion__revision_id_48ec3744916a950_fk_reversion_revision_id FOREIGN KEY (revision_id) REFERENCES public.reversion_revision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reversion_revision reversion_revision_user_id_53d027e45b2ec55e_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.reversion_revision
    ADD CONSTRAINT reversion_revision_user_id_53d027e45b2ec55e_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken s_account_id_1eb85597c432c824_fk_socialaccount_socialaccount_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT s_account_id_1eb85597c432c824_fk_socialaccount_socialaccount_id FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites soc_socialapp_id_6d8d94c8003756da_fk_socialaccount_socialapp_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT soc_socialapp_id_6d8d94c8003756da_fk_socialaccount_socialapp_id FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialacco_app_id_5e3fcb3b510133c_fk_socialaccount_socialapp_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialacco_app_id_5e3fcb3b510133c_fk_socialaccount_socialapp_id FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_711de24bb34bb060_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_711de24bb34bb060_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_sociala_user_id_63acb999239a8a59_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_sociala_user_id_63acb999239a8a59_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_50400b02b5efdd14_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_50400b02b5efdd14_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5e6923b36e185d93_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5e6923b36e185d93_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_permission_id_68fe8f82461536c7_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_permission_id_68fe8f82461536c7_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permi_user_id_3613262ec851acbd_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: espatatis
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permi_user_id_3613262ec851acbd_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       