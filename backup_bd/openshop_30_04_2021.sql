PGDMP     3    ;                y         	   open_shop    12.3    12.3 =    a           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            b           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            c           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            d           1262    17245 	   open_shop    DATABASE     �   CREATE DATABASE open_shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE open_shop;
                postgres    false            �            1259    17525 
   categories    TABLE     �   CREATE TABLE public.categories (
    id bigint NOT NULL,
    libelle character varying(255) NOT NULL,
    desciption text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    17523    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    212            e           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    211            �            1259    17484    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    17482    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    208            f           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    207            �            1259    17456 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    17454    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    203            g           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    202            �            1259    17475    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    17547    produit_user    TABLE     �   CREATE TABLE public.produit_user (
    id bigint NOT NULL,
    produit_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.produit_user;
       public         heap    postgres    false            �            1259    17545    produit_user_id_seq    SEQUENCE     |   CREATE SEQUENCE public.produit_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.produit_user_id_seq;
       public          postgres    false    214            h           0    0    produit_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.produit_user_id_seq OWNED BY public.produit_user.id;
          public          postgres    false    213            �            1259    17498    produits    TABLE     S  CREATE TABLE public.produits (
    id bigint NOT NULL,
    designation character varying(255) NOT NULL,
    prix integer NOT NULL,
    description text,
    quantite integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    category_id integer,
    image character varying(255)
);
    DROP TABLE public.produits;
       public         heap    postgres    false            �            1259    17496    produits_id_seq    SEQUENCE     x   CREATE SEQUENCE public.produits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produits_id_seq;
       public          postgres    false    210            i           0    0    produits_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produits_id_seq OWNED BY public.produits.id;
          public          postgres    false    209            �            1259    17559    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    profil character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    17557    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    217            j           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    216            �            1259    17464    users    TABLE        CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    role_id integer,
    phone_number character varying(255) DEFAULT '22676849832'::character varying,
    statut boolean DEFAULT true
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17553    user    VIEW     �   CREATE VIEW public."user" AS
 SELECT users.id,
    users.name,
    users.email,
    users.email_verified_at,
    users.password,
    users.remember_token,
    users.created_at,
    users.updated_at
   FROM public.users;
    DROP VIEW public."user";
       public          postgres    false    205    205    205    205    205    205    205    205            �            1259    17462    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    205            k           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    204            �
           2604    17528    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �
           2604    17487    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            �
           2604    17459    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    17550    produit_user id    DEFAULT     r   ALTER TABLE ONLY public.produit_user ALTER COLUMN id SET DEFAULT nextval('public.produit_user_id_seq'::regclass);
 >   ALTER TABLE public.produit_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �
           2604    17501    produits id    DEFAULT     j   ALTER TABLE ONLY public.produits ALTER COLUMN id SET DEFAULT nextval('public.produits_id_seq'::regclass);
 :   ALTER TABLE public.produits ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �
           2604    17562    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    17467    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            Z          0    17525 
   categories 
   TABLE DATA           U   COPY public.categories (id, libelle, desciption, created_at, updated_at) FROM stdin;
    public          postgres    false    212   �E       V          0    17484    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    208   F       Q          0    17456 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    203   <F       T          0    17475    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    206   KG       \          0    17547    produit_user 
   TABLE DATA           W   COPY public.produit_user (id, produit_id, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    214   �G       X          0    17498    produits 
   TABLE DATA           |   COPY public.produits (id, designation, prix, description, quantite, created_at, updated_at, category_id, image) FROM stdin;
    public          postgres    false    210   H       ^          0    17559    roles 
   TABLE DATA           C   COPY public.roles (id, profil, created_at, updated_at) FROM stdin;
    public          postgres    false    217   ��       S          0    17464    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role_id, phone_number, statut) FROM stdin;
    public          postgres    false    205   D�       l           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 3, true);
          public          postgres    false    211            m           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    207            n           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 16, true);
          public          postgres    false    202            o           0    0    produit_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.produit_user_id_seq', 8, true);
          public          postgres    false    213            p           0    0    produits_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.produits_id_seq', 546, true);
          public          postgres    false    209            q           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 3, true);
          public          postgres    false    216            r           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 14, true);
          public          postgres    false    204            �
           2606    17535 $   categories categories_libelle_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_libelle_unique UNIQUE (libelle);
 N   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_libelle_unique;
       public            postgres    false    212            �
           2606    17533    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    212            �
           2606    17493    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    208            �
           2606    17495 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    208            �
           2606    17461    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    203            �
           2606    17552    produit_user produit_user_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.produit_user
    ADD CONSTRAINT produit_user_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.produit_user DROP CONSTRAINT produit_user_pkey;
       public            postgres    false    214            �
           2606    17508 $   produits produits_designation_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.produits
    ADD CONSTRAINT produits_designation_unique UNIQUE (designation);
 N   ALTER TABLE ONLY public.produits DROP CONSTRAINT produits_designation_unique;
       public            postgres    false    210            �
           2606    17506    produits produits_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produits
    ADD CONSTRAINT produits_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produits DROP CONSTRAINT produits_pkey;
       public            postgres    false    210            �
           2606    17564    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    217            �
           2606    17474    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    205            �
           2606    17472    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    205            �
           1259    17481    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    206            Z   �   x���;�0Dk�{� gm$�6������+��r(�F. ��n�4�fT� ԘR�}�(��j��@] 8S��/µ�2� ��g����ƭ�;��Ө��3	_o��߭�V�P�"}M����8��-1}�h��sQW`      V      x������ � �      Q   �   x�u��n�0Eי��f�����'��FU����P�b����5]�bB&��~|�&�st!r���.b�|��|�8��RQ�4�5/��l?��?}[p�qA���$�(JB����6���h2�6���݇�m���H�|6ۮ��o���qb?��$_26�H�6[�z

H�,�iY���h��u��Ŭr�
u�E?��� �iP�v���!+ ]�&�,*�V1&���«����(��Ǉ�O���
��x�{�      T   t   x��N-JMKL*�LNuH�M���K���T1�T14P	1�
u���77�˨t�7I7-�4q�/v4�)��,2.M�5�w/v�7.��4202�50�5�T0��2��24����� ���      \   4   x�3�44�4��".#d�12��c��1�4��s�p�������� �"      X      x�Ľ�r�X�-����_�A*x'%?8\eUY�}�m�ګ�� � �	p�Y�?�߱���s )���u��]2E��Ĝy9rd���-;nWir4�M&׍��͠�z�Vql�M���(�{�,[�2���m�K��.���`�fA�k�U,���Y��C�y'A.�'��:x��gQ��;��<8ĻU��w�x��g����
�\>,X��m��/�0��X�u���M���<�B���j�+	�q�r;�ޠ�k�:�n�3h�zA�w+��\|��� ���zY�}���ɝ��ʯ�I��e�"�"��
�Ѯ������,ܮ����4��I ����C��<����.J�M��w��6]F��+��_¤����D����緯���2Ք��祕�2�_��l�
ކ�\ϣ��m����B��Y���	Os�n�(��������uף�x+��Ɋઃc�����������
���m<���r��4�ey���7��\�4Z��VY�<a��,��ֲt�s��vzY�oF�M�].�b���tɇ'���Czhasȵ�a�����$
3~�l�,����{���d~�k���]��n{8<��nd�|\���1�㫷�!�
>�.���g\99,����U��!�/��_�Lvʜ!�E�Q�E�䱻����\�_^�u�&i"���Jѽ,�~=ǚM#�Pn^�-�ea��C��s6�2�ÐG�oj?���Y.k2��:�_޾����Sp��Wߧ���q��ֶ�����8��l���\g${�
yt�$�N|��sɁJ"�err���*Tsu��8`,q��A��`+��r�SS���s��j�i�&�_;\]�؀�������B�U��;��o�y��Hx>�P��,K�h�nC�;������*ڈ�գ�J6�"���Nbᑷ�����q"o�u�-�*��W�����H�5�B3���G���[�ޡ|Ibg(�a���\�q��|��k١X�ޤQڿr�8��.�q�m�����g��W$� :F�������j?{ZGs�w��d@�3D�6^�"8�H�XO��J>:/��m�4�����&ok�>Iw͓,�l��?���P��@��Lo�$�Ӹ�	x�)<��x���d���B�����K�w���i*�:��N���?���u�>��b3�->&L���}.BW��K��r�p�snC��\�13�]Ga�e�}�)�},��:���t|n�����x4��,7�_�t���-�1��6���#]-9���_����ua��l%�����#1�,S�}2ũ�BF;s��z�\��^��/�j�A�g����.;�kp�1n��9���#O�<�1PI��t������H������i���tӃ��h�xD�&�A.9�cK|��TL��q���,Ʀ�U���%���K.�� �[萨��%p�UcB�k�չ]�������GτyUo]��<�J��E����?�����F�~D���oo_��F�;g�
o)�H��Hy����vw�DS�s��Cջ��Y"��V=C_�`x�],���K�ixdyk�5�{�IL�������o��-i���厏� ��M�3�G�:���OIz��#�u����5͠��*�|��]ۂ#z�Nh���aG��'z�/e�K�S�۲�ڲ}��DС��j���Tn8���x$��q���m�@=��a�8W�z���J��jD%�Q��˂��S3����ݡX�� �����S~�F�P��0��h��A� oy6���G@�ԸN�>v��6ޅk|�'�x~j�Y�&��C�"ʿon�Y���8��:MG�[��a]W��6��y�%ù�閝֕��X��V��5�&�OG#K؞�GY@>W:\Gy��&�G�τ�j97.�	ޤ�F�MD���ޜ�J�kЮ��%���&��f�C$��<���p��>��x�>2���2l��GN$\��~wܸ��0a�������q� S�yf2��RCQ�^��g�x��=�m�O�"lq���OJ�m��G�,f�#�i��[e�ss��p�\"&یi���Hp���w��5�|�e͜�o�����'��4�8Yҳ;M�e��4ay����������c�ȷ���|��g���������� O6��u�曔�.eaa�𹰜�z��Q������ѓ�v�`���4��{�(�Q^g��t'���J河87����9$�@w�	W(VO\�����)�w��T9_�6��_X�"�,�E�[�)9%R��K�39]k|R�i:��Ov�P�R�9��e�hm_���>5������[���e�t�����8ܲ�w��a�ϼ�H�gym�!= �K
 �CN�A�Za�!Y�L�[��*��e����i=�XB��2���^����i����-�k���]I?��Q��v���LS�τ�rES�{A����=8Q��|�zbi��a��5V�h�}���eqJ�Y�H�T<�|���QҪ�q-~��h�01�,�菻u�A�qｺ�[X���@�����p�
n��$ �k+�!\��TᆟCqf�k�60
�����}��KR���q��P�mw��Nט6.�R������'Ú"+��/��!�ư��k�%��gY������u3����}�藖�t����m�
����mg|;�4�܆	s�4���7~�fq�dq}�=���������E�ި�5����v�;���mo�_��6��m�\�1�|���]e=��������vG���}찱Ex������	>��son{�*ݑ\n���}�=[�^���.w��\�/Z1��ϼ�����lg�,���{��x�[R�ד�Gĝ{�܉� 2f�h6�Q��u,{S� ��T�{K�s$7[�M$[�B8h��]��(�7s�����O�X�޸X��k��(�	��LnF��;`���x��.3h��éK$��&�����7i�TF��OA�]�@>1mQQ�<�|mn�"{�Oc�'+8����D\C�b��p�׍��72�$���0�r&2��>��o�y�ۻCz�~�.�����������|^����o�{<~��!�}�x뗏|zq�P���<��4ٷZ�sO��ٲ�]�~���F��vĩ������ȁ�9�`R�ĉ�D����W�az�xw|YBR%Dȏ�$J(�o���*�E~��k���:�5S/�譑y�%A��#Mֱ~? LM54Ѹi���e��Z 1�ߨ(L�"bǻ]�A�q��G��<�Oܵ�/ ����"{$F	���x�rsKm�x��{���=�A9���,o��s�b㴱t�?r��d�ȁ�6�d\��p4<�Gf������k"�n��u��A��wݭ��u�	�wY!F�\_W� �\lE8LL�Y���*r��u�F�%��HX�%�OB7�ڱT����l�Lu��H�;�%����ڒ�/؆�w��k��5;jY�R\l�k(� �yz�� m,��I�Pcن��'] �(ć]l�G8��,���w�T�^]�g0P G�+9��N����v��	vO���Gx�3��9���Bȫ�[�K��j;��!q��(���'�e�q.+�����)
�ҵ�`~�C!�,�s��(z(k�m�qҖ���cb��� �a�MI@ҕ]R��W�8Jcl%w�x��9��,n��l�J�仨���ƋP$�
ȱ�h�9�X����.�����N��:��i����cI:u������._ �l�����h�R���Y��~�gb��Ulغ�ǉ;8�ǅ�r�5W$pu&���0gy|\,�}��C���եN�5���X�5A��S4=�le��S��a�5��ujl�k�Kq�|>^!Wt��Z@y���ˈ��R? �r!)������*��Md��iM x8 �y�"�U�V�\Ҟ\7��4ּe��]:j���>�Ry7{C-�ފ�Zw4�m`-|-�0ԃ�~�����r�b�r���JK���P<V��	�%�Z���t�N������bq)��v��kZ���>"W�{�ʦ�+�:A���9F�e��nj�כ�7     )<8�!�4��V�XDi9	�D�y���1��ME�_"0ų̾�Al�$2M�Ɏ!�aο��q,�-�}XްW��4��,2�c�$":�3Y���|0"�`<��$���dqߤ�]�(�%!/?��l P��eK���L
@�-`՚����ʳd���C(��bЍZ	�eZ�Q�D�V6+1w�\��X(z�N�)y��~]p(q+��iI�fr�x��M����������f����V�g.��Þ;�Y�#�ES�٣8^*3j��\2cR1�,2��4�C�r��2�Z~�#e�蟒|�/�����A�v��읯G��hd�_���&�G�%˵X�Ӫ�Kޥۺ�-��D3��g����|?��*>&6�]�r>yE�F�V�2Bb�t@e�=�ยy�Q�rV{��0�}���Y�7)��bG��JP�w�h~��|L�z!�>����Ŭ��L���ԡ���P�Pc1��1Q�����+i�/�笕c�Ԏ�f7�!зn���qZ7OMh�i�^�'%�@+�"�2��Ep���&J��X�����ѕ#\|��^�z������9P��F�9|o�m2lܿ
^�|5���`2��DY�2A7{� ݇|��TI����B��SJ�i�>��h��w3�Y�LI�@�K��x\�l��{q��֜�,�b4F �Xo֍���RQ�n1X�i��++���q��Z����H�ۊ��)���U�h@fi����Bji�!	3�Z�����t�#_A�lW���p��d{���!o�ȡ��'�fL����5Oa���F2�K��*/�_�G��ӊ:�5�7w��eq���a���v�ë���'�!V�)f��j	�Hc�N��p�x��Q����X�A�m%e1�|Fڦb4������MH�5�����FmױR�`:�,�� ��o�SF���2"����ݟ�r>�=����ݛ��O�o������>97JsPDN.i�	��f�(���9�o�<��� ������2�q�NK�����,AE%����Ej�(Ϋ��#����e;�~�W�6g (�h��z-Y�q@��?���&:��z���.
��ɔ�u����8�3�N�q�5ҟ�7�h�y��B�3�Y������)q�2�l�R���*9���}�yOPr1ӱ0 I{3��[@�t6��B$K=�.���1�<߽Dq���:���_�uox.��M�N�E�{�V�������d�9,�;��@�̴�EE7\%��,#8\�F�#���"(g[�R7�!�yi%�8W�=�����ݵU�Q(=(���T��F��}ϐ����"�(D"A�4�=�'��"^+:�.�FR��F����CD+Wۂk�Y�*�N׍Ѱ�&闘�oɬC�3�<���x�N�j��W4��#÷|e��U��-�4=Hx'�1O>y�U�#�L+��I������#���#\oRD�D]��j�]��VVz�r�7=��Ըn��� �9a.d�G:V��159��H��ٶ!Yz�b&���m�
ʳ�W,y"sDҗj�U��o0;�QID�������z$Ru����'�#�Ѱ0'4Z�պC1�Δ��e����ʕ�%�-'���m��O��/Sli�+ێ[���o̪
���T�N<�L_��ka�d�DG"nbY9é���I��|69��.KA��ގ�U���.�}bq ��1���������V�m]����|��v��;:���H�X�3ŵ���i�j�l�r���#��`E�{=���vp��#��bb3���j��Ɂ�����gΜ;�ΓU9�y�J|_��wE	����e���L�����;U�o^4��L���TyRSJ�V|�O@�B�O��3n����x-�H�[M�!	L�������:C/e�3���$�u�Jo��H�{c5x�I��n|�FJ�K�G$��D໐�c�o��?z�4�7��s���%���$��%`ԁ}������ �	�H0��.nJ\oU�s@\�l�u�dl��s+�I>h4z�:�f!�.�FRjb�n����}��ٌ⃊ҫőe�jՆ�-m.��!�04Zd�F�՘�ȩ,�g���~�>��!�~�"x��I�K{�����Q���xxĞ'��Q�	��i�YJ�(A�2�y�)Ο�\�s�m�c�gq��T-�/k�t`0�<${�]	��3Z}6�h|+j�v��A]zyN��T�\W�,C� n�r����K&�1U���h�Įʒ��1y�:d��)���� E�ٌM5��J�*����1��U�S�H��XK���
�:Cm��ߠ���3s�xs��Y�+7��(Σ0W�SM�I��ܒ~G^FC���q^��vc��O���8{ܡ���,8c$�l�3ʉ�j���k��l|�i�|w�z�]��]殑��DM�.V/�R<�j�
�΁T:���F������H�1r7�'6�ٹ�}� ���7��v��9�U�FV��Cނ��t�᱙Q�����*9�}1�� �w�|��W���u�*�N��rܒ	({JO���[�9K
"w���ڢ�#O�@��S�)ڊȘt��c������i��1\�x�'g�P����׍�M�2j�y�Xm���{U5�:�ϫ5A�P�J�Yĸ��"f���8 �:[�-�Y$�!����E�k��5Sr���C�c�Ϗ4��E�<OuU���;��#~�8b�qmSRh �ѝ#6	�k��P&��
���,�W�L�G�g��r���3NM6A�2髀�q[Է};��sƫD-C�m��!��A4��\0&�R4OW�<iY�2�F�2�>9�O����Ab��7Ӽ���c=c�t����FK��
�b���O[�U�V:��g;�ap4޲�s�S=K⩴�*�2�%��o����~P	����}`���S�q�H��H�?/I�{c���m3KV!�T��l���2XSn��=�ѺD���[���YS�L���5h^�-rS7v�t��y��@	tl�W�MK�R4����8ˋ����Z�$v ���,vz2N�A���h�=Z���ֺ3~jgEmX���^�0�5��mE&�ƩQk�k��PuV��.��ٓ�B,��w�Jض;��Mj��̌c��ܶjCH<���K���&&iu�������+z(��W�B��@���y�ry�o�d��7�g*������f́a)�!�#�����E98A���ݷp�P�����)-�lC��r I�M��N]�*Qn)��^*�2��?�#P�x���e
���X����h�.�wk��"��,R}&kg'l�H6Z��>��X�p�{�٤�~�=��ow���h5���ڛd�`�̵u��6?)�7=�T���z��N�'m,���#�Dy(�J,̲PQ6�vɬÕ0���U��M���?3�зγmϯH��R9��-Zħ۶v�
����~�$�։,��e�k4�6*��m&�~�S��"`S�y�1�]䛌<&O�	���t��3e��u< �LL;�2�"ܠ,�7�"kDpJTU6+Jl�tm������bP�L>A�..��RaN��}�G��j�K�u�;*^�uI��N�%G>�`��]�So]"f��듴��x+����4Z(�̊�PQ����ĳ]}"�����I�����w�-��%Լ��v�0R�6��V\Z�_)��h'y���-R���	���o~��ز������bIMv�T�:�k��&Ky
�-R�^�6=q���)==��]�I���XAC��3T���q,�6Y9Q~�Q����na��b��%���wEy�"�]e�<\#X��ʇJA�eƅ��BN�="�. <�ڳ����vΔ�J�%�Xvsa�q������F&�)j2�0j��x���'�������L�[0�Hf�[��g��t��%���z����%Nבz�JPn�%!�w~[�Q����<L��W�R�n�y�f�y�4r�������o�Զ�O��nz�P�68d_m�*�0��#HE*FJV�-4rI��"    ���;�b6W*\��N	aZ��i�|��.;e$�(�$�����E�O�y���q˧�\�B�^�vĨI��Rq�������3R(�<��7�Ek^�;�[�q�b�6ô����}� ��5&�u�zY{QrEz�uC���I�oB���J�
��H:)����dvC�^'s�^v�(�U'�K���]$�o �e�5�G��Yd1���/�6��Z֋>��=h��~�0��Y���}���`-������+D������Y	��.X4��n�fݕ�h	GI[�Xt ga��$v.s?�k|��D�Fgψ�$���1]"��C_�4q�H�c(�q!��o5���ʸ�.��8;�0R�ΣI�a�A��v_Jdf�EG�谪~c������f �[Ȓ��^�+�͛dhI�SI�X�76����?mS�8W�-���4J��$	��F	�C[���gZ%)ܦS�)aWַ�%�օ�hfGNz(yU�Iٙ�K��ə@�[f�Q���������k���yf
	��n�Nכ���d����p�3P]"[:��hE�� �d�� �����������q
m�S2�Z�lİ����H��#m���cĴ���5a�z�;��8Tw�t;`i2�`i�CN�A���i����G�^jC���p��Pᵂ_rU��3��󔰼3� VHp�ueEDR���oX:�B�ֱ,������qm8���n��k����үN��J�,����L��j|�@��Gʓ�:AA.�������t���|�n����Ю����xi;��?��
!I|����h����G�M������~�]EN�2�m�y7#�⺱L�ڿL�sq�Z��S��羽�8T;�n���tr;�|-����^�~�Y��)�l`���<IԳ����X.|�>���K_�s݋�Zuj]��/l��'��G��u������AQP�QC>mUF��ʠa]*J�n����u�w�.��Q�ɠ���k����/J��<�2z+���.^{b���0;? �My�ԘTEM�`[Czxj�v�}C�atS!�B���Dʇus�ng����뗶[z������۹��#u�����r=�a�o`�[��h�L��(��0�Q�K̮����k� ���q��o���<��	;á����H�Wi����)mI]�N�ۈQ���1&cAZ2h����eQ$���y��B{]	,e�ڭ�k���$����o��@h��t;�NY�	��y��l�p�vਓ���;����X[{����W�z�FT�.DKi��j�Y^���/�)**���~K(i
���hO����	>�4�N[�,t��γ��
�GD��W�q�}�� �^���0n����b���Q���s���߯-.��8�U�MdH�s/>��~��Ϗ�^��!�b�6�r@�}��k�sJ�T�%%H�R���o�����Du���o�R7A�v;���(0ڒA�L�
����O�L�)��_96�W_>��J�F�8���Ju�h�"w���/Kj��ʊ9��g��b�o�h�lk3#%�����vў��Bf���z�N���R�@����%J\e2���KM��i��4=*K�#V�F#|l�$���/!���hd����,q��3=j�A�ݒ	�C�@�����,��[���G�^�X���)$�_GA�)а˚���{�q��S �>�L-Q�yӣC�׺A�|ϼ��f�R�;��V����x��Ո�I�����Vm��+q�=7�N�8���G��h�� ��p�b_����GD�Em�p�܏�,\?�=.M�B�"7�r(��v�	�.OH!իO���_�9B�6C����f2�u���O�K�L��7���r]�"C�	��D�b���P](�Pd�{��8y�w���N�Қ*l}���+�`��R�A���Q䠲� {�8�}�nm<4xA��3����S��0[���[v'&�"Ֆg�r(|:��-�ڂ���� ��tߍ �w�vڹ����LB�V��o>��{���	���.�Ĵ:�D�\*�I,���8����%�M�:�SF��aYY�ٰ,Y���/x���gf�4v!���h��؟aw\�P:����$6���N��.
�/B�U�����Ե����,֔_-n�ڽ�]߂�������L��'';a�h-��?iaMU(h-(�Ⱦa�;&9	}�U���цL��̡(ufzZ��2t��n�� ��J�@cZS�.�~���>Z��uc��|eY$�����h=z=U�ow6!F�B:�0xW_\�NDP�Y� mO�e�B0��a��ߣ��[��*s`%��n��wG��Z�mVz�_��SMJ��5�(c���7^f����VA�j]\�,�Uk����:�R&��Q�vV��v$=0�K&���k� �*-Rڵv��st�By�������6yFw���c����nD�GOx�0��N]`~[b�r�8_�ޚ���}Ѫ7�����w���7�P̱�K��h�?>n�bI�����~}����^�W��6���������u[�0�f+G�z�#���׷�����TQ0ּ���/W1�>�+|u��*��a�4�f�޺�]�Ώ�
*󄼢k/�/�N�vr�A�׮�v{Cj1���b���HJ�-aK���@@�M��8R�l?inV{C��R�;�+>����J�F������r.�T핪1;�Nl���2j�O��9������;5���0Si�`�}z5q�F!
U%�K۸��U�(�LU+���IZB����U�Š��=�t�]�oNƍ�V�r;�~�eE5���Y��6\{ɯP��.�\K���"��*K�M5y��HU!d�����o��P�}�VM�Y�Kv���:��������p��\��x�)zE<���K�@W<�B�n�@u����v�V��G��_nF�;�-f����)�����j6���4γ�u�ߐ_X=������q�\ɡ�ui@����+O�AVL�܄[�`��_�B�sЫ�-aSK��P�J��QC�};"�ӌΤ�Jg��5��ux��.���y��%���.�m�-r%�9�٥xdX���H	&ًj�a.au�������N1a���GW�>�O���>'��h�ŵ6EzD�۠\%.Md������OT�8�<S�'tUVX����y-`q�� �G��I���=J��8E�Đ��${�N%$Dy���Y$�Cw��:��e��v��r��gL��3Ψ@�00��%��H���=ƛ�������|*�J\�^Ґ);~4������$���^H�}����%U��.�Ӯ$`k�,���MC�����i�tv�f�N�ӊ �PT>i��I�6�n�!Ƿ��4�n~�U�[�0�����He�E�$��'��(�ba���y#7l�ً	ָlz���̼^�D3O�޶1W	��;GZ�͢�6�g�c]���Bm�*X���3a�܈iB�v#�$ �6���m̍Ww�a���d	�)��o��NH��7:��IwЩ��@�E�N���S�EaQ?\�����!a�h��O�
�GG�����8���f4=������"��Q<���(	���1���d�+�Ҩy`�Y�Y��I��&e���V)XI���vrs6~�5oU�����$������hk����$9;������בa�w�#�Ę� �����o�;<�̵iࠬ�<�hx�gX,�e!�d�5��:j�&�"P^Qjp��&{�S���}J]������.�M�A�]9=�&C⛱����K����K�TJ�
�L�=�L�PE6h�+zMd�^���w�nY@M|C�2
����@;`������D�.*׵�}�����A��O����f�����l��+���J]Y���`��)�@���Z9U
�:�Y4[Ce�U.���K�J�֐��q�׍Ѩv�k��Yr��/l�M3h݌#/$}!�9F���$�6^�,`y����CN�薅��7�fz���4d��J ̟���Evݸ�=��;�hq�p�;���,��a    �	Bľ��q���[[��)�d4~���yM3�����1'=o�I�!ԫɽ��W���ʚ�Y��^���g�w�_<WH��}�`�
���l^l����.��8Y�����փV��B1�tɀv�?�J]�IEy\6�d�C`E$%�h�e&)N؆0J�{S;�q��j�0L89R�,CpZ����U����� C����{���C��ry�����3m^��:�a9+��^8�Z��	���M}{2l�fuXܑk���s���h� ��40����DPtS;i\����k�s��P! �s�� �L��g�z���+�_�QU���>���s!F-�n��m�����<��-h��|G������4*G�4ߓ���.�|��6�"��ep�aJ�,�Y����aT��
E����q㴺��m4������B���(�cA&\���C���v�4ϰ	X �������hn�8'�F�0�	���rC.���;���w�V�:V���s��I�<�����"�ZT��t�yP�Uu��)d�>�ZG�ܱ;�*�d���\�4�b��n�v[�Q�@���)m%�C����)���,>l4���|V��������{����JaF<@�J���;��Bs�����z�t8�y�-N�����>Ny$IBF��Q�n#mw�i<���&E2Q�B�z~�y���G�5��p���O���$>�q�v�x�#+�I��M�~J�G�����ҩܿώ�P6zz՗�v���T5������=�j���wM�Sa�Ƀ�&D��?JP���?ބ�8��\��	���@랒�_��ĂT����I��ř�GG'p����������L��2r��N�)T�h�<���8Ck�,>"t��u��V)eR?9���)���m�:���T�y��%HՉ�y5�+�"F����� 7����Ͱ4�� ��S�3�i����6-�yON�,�n�N��"T�+F\�����k#(�AEL�
+X����U.�KOd�F�)�FK���
���d] T�r���l���ｬV���ڪ]L᪴�gO�x�?ZS��qҚ�?����'���=m���v��M5���4���~�;�KY���r�+� �o^-j��3��m,٠vYc8j�y���Æc?�uM�I��*�E7~6�C;W��JP��M�f)%����r�%f7 ���c�ܾW;\�O-w٢s�?9�T◭�x���y���x }Ƹ��=>���;ㄛo�e��Y��Cχu�ηI��<y���Ƹ�(_w8��qV`֔*�k0z���3-iW�е&����T���a��Zi�%�ұo�mMٵ �̈́�_T�"�D�@�-2kl'��p
XZY���vܩ-Օl�bN�n��p'��Y�ș�|bW�Q_�ө'���������%5�+&�S.A��\pK�Z��Z�Fw�)6��	��[শEu.h��r|.-}6'LDZ��R߿@�n��@���Y<_���sK5�J֤6�4�X4��GB���^W���!��Z^�!��1?�cc�D��Ř>?YD�
XJ�����7si"��Nǌ�T�E�f[��̚*��'��Q?!B3F]�^�~�Q�h`��	�o�o�����	:K�/�b(���+�9f'z@ޛ�j��E�*�^y$���?����E�L1Ϧ��S)���^_B�xH�ǧ2�L���X瀙�b �ٳQO�*��*�9
��93Fk c	n+͂�T�(JnK�|�l�9�^+�ҽ&q9^�9q
?�I� �/��KdR������7�k3/�EAʐ�#���]�w���Փ{	+־�/]|�uWf�ѱ"�tj�лS?v���n��_F���`G�ņ���ʰ�� {��#���� �;M��Oq&���;#������j�q���A�g�$�g~��j���Q��8�	�`�̞��1w�L�n�ԫ�#a��V\�妹r�U��~v���c��j�Ү6���u����6&<�Ǐ���k�j�����z�����J1���Ƒ�����*cqYr�`uxymT�y٣?8v+���ݦVZ��Ӎm/���m��U	Jz��h�(�d����d9N5�FRE�i�o���դ�}���*Jf1}�	x-���E��ᴕE�2#�*�G��uOO��`<��&7�J׫CFg�����ⴷ�ɺ�Q�DQR\��XJ^�n���7�.�hQ[pKd �ד�k������*�����62���Pʽ�I4+�*0�g�w���u����SURj>8�c&�G8c��Z�гb٘�Z��\���g��0+�:F�4
i��v{�<��ҏM#����LK�k�m����0�ن���iU��U�� ٔ鰛s�4ak���q8��l���m����������T�$����� ��U�
4��P�w���Z�Mi�9ژ5��h��x>;0��7q��0zf����"V�M���Tѐ~ii����Ԟ���w�T0&���X�<,�)
l��|��xwܪ���
^@xl�j~u�Х�֓��f�M��G���;Vk'teؚ�b��pc���y�]����u�'�AE�`���>�~grm iS�n��/���3�Q@9]�{�� 9�d�˿�+���đf�j����{���!hگ��C���]A�I�����Ϙ���g6t*Wk�&M`OD7�p?����3�4��h|3&0#7�B��?�������^��q����ԙurU�6P0U�}�QJ��<'���()kAW�H�N�U��J}֎u���~>�-��H� �+1����/��?4Pq�n����ȯ�r���ywQ����p��U�.ݕ !����>�l��H�e7�҄J@���2�-���mR�.����8$����]���IZ.\_ǋ襇-n�S�QJN�Gr��N�Ǔ���ϕ���:]G��鴡kk_!!����C���8�^N@S��-m)5!�V�v1�N5��p:��{k��d�*i����/��9Q ۤ�m��H��2�{���v��ii�JdB�����E��>t+��Y��,'��Av�l��{ߖ;�͐�����S���-p��� ��
�)k��x5qG����Wj���c�?�WA�]o�Ű�V�6(x�F��ќ�-\F%F�����fqNжI��L}Bߤ[�Ib٨c]Y�Y�5��x��.@�L�)F���w�U&��8K}��U��S��l�0&?&yY'����J�\"�(S~�����c�T�*��縊���I��fT�k�a�qi�B���#)TGL���n;d�뒨���zU���:(�Ӊ�i�\ݣu\���1�.;:��M�coZ�բ���/����;Y{\��B���,0��bf�w�,̦H�����ڏWq���~'�W��^���M�@;�쾪�
]����0ae��o,Ƕ�\jP��T��J�g�7�mX���97�~��d�x`� �n:h��C�ػD=A׃D#Y�s}A-�\��e�ix%5ފHH�,��}TgT�iJ�Tj=(�V¢әް�F���xz��E����>���'�;��Jy`1��R1�/�a>g
���B��d<�DS�U��5b��[��ڲVg� ��K%t�A��'�о�~�~���8��c0�4�s}c�6��/�9%N��M�P��#P�2��k��O/�&�>��\��f_����YSF��y�Ö��pȃ�l�ɸq�I>w�+���&*�����w��ͣY<����2r���o4��y[��b�]�4�Ob#.j��r2�>:c����ėu!`��LN�+aEl�& TT�h'�gL�ɿ��H�n��I�;�RgzP�g�<���uY��f^�(�����GڀA��*���h�R�>q��dC��@�v��\h�k���)[�ڠ#j�*�^e)_0��H�_$����,�E�N���$g.�2�wG^z�I#x�$�s��8e�v8{�iT�]_�$���c�y(d�s^��!'����|��k*mK~�b9J��'k�9T>m�S��"v%����V�V�,.����ʛdJ`��N�)�u�1���F�K�P������:�+	}��z�3    ��CK�vJm�y��3=����M��)�F�q9�|��	8��J^���+k/yvTx�� n�;����z�뜌���KP�¼����w�@��#:�s�&9��	,�S��)ǂ��lo� �Jc��f��-��;���.d��N7����7>@T���K�0t���Gbͭ��u7���RG�*n�+���������TQ��E��íҝ���<LibAb�}��^O�W\�q��r��E�Ʒ�rJ!��Z� ��a�i0��)�� ���]���ʿ��@&%�Q����]��@�|�e�'����;e��*�N�ހ�g$�d��t`%��`����e��u^hZX�SN�ҕ{|�Z�Ƣ�!-l!IĴ��P��K4��^+X����z�i�z�d+��vo�Z)@��x��N�b�pcS�fC�X����B�����9:�	��Z�Ւ#۪I񲩍�ʘ�N�EN��I�t��T��y^L��ԫ�(�F����`<�5�%����ˍ�5��@�x}�뺞*�g�ޚ�@`���h��h�b�����~e����l6Z�:��PB��ڕ��I���O?<hˍ<����r�d��b�в	]���>D�&�V�
��'g�A���M�4�G��s䕙Ԓ)$�L���e�'�y��H-0������$�����sw�����%ccX>��G�@r�e��)v�����~�[D������J]L8�O�G�Z������~��!c�vD�3M�����3�{bP��*�2EM�|
�΅�<;���_ .������(�zF��V�����,We����]�e,ˈ�XX,�
	5�x\_E��QY-TZYu���f4�����A��VN	+&Zds��S�$?��Zi�d����6Z7z̷ڐQ-���~��p�-��0����I?����\���j�t��<T��aV�|$�����l=b�����R=3M7��J�בew矅�/�l�dYs�$q�zk@�k��6����~.?hk"���Xٿ���R�F�J
~t�`�nv��̄�4���n)8�S+��Qި��:h�(8�b����ΰ��AY̶C@q�g�/a����vX����*����Z�W+j��0%^r��wܡ����貲i*'vg�#ѺPdO�Ww�5�X3PiO�0�>��S�(l)��S^�L,�WGaD�57�^�\�Q6
�R�j*6�U�� �~q$�e;���
c�b�C�2�VU3��Q����A	
%<T��t�Ni�ma���度�!񞩀��5W�び��~S����yT�֣�M+?���	U��V���dMj�a�:�3m�=np����`+.@I�S��nS�O��l~h�x�k�*V�4=�T7���fY�@�������z~k��a%' �E#{�I�p*��)>�fK������Oy%H?��O�O�Z�N�yך����p�����Qk[���;>L$��0�lv��7�"���-;�;���[A���$)2@��g�2��VM܊�"ظ곶֚C��vVl�����q�չǨ��2s���7���R4�X� Zc'?iO���pX{�p��<�`��!����Q"2k+�il��@����I��R�������np��<�� x0�oM0�B�3�Qa+'���ԵlU�`JQ2s�6ԙ]7FϬ��V��8�C���-����pn��6pe�Ef΄��$=��䷴>G��U-�JC������]�[��<�`�#O`P|�u{ϋ�*J�m����]͙w�c�8���G\�x%ʵW����R�0Y�����v�!;�۳gU4���f�b���������'Aڡ�7Q�B�:ۘϣ;=��p�B�R�!�A:���\ ֵ���S��N����!��IFz	���|���&�XZ�m ��c�5�$GMtX['�h+�쇷wd%A`�����:qG(O�&��B� ud7��*&�=1�y��Ꮎ��[��s��:�J;�ޥ~g�����B��9[崙�h�Ak:�u����u��D�IE��0뒐�4cYE��f��󤖧����\�S&��@��P���2�XWŶ��3��u�s�>J�'�_�#wA�Kҽ�������}rX��G�?=�֤������osͯ��p�%^_+�BVq��n0�Ph�08|t䇺�+�a�)�� Z3o�e4D/JcꍁY�;�e@��'�r ��A�(����pu��Q�r��4Z���7E+$T
��O�O>@k��кW��ic�d�{�I�c���H�(�}��Zk��$s^MOeW��li����.]rm�."4��X(m��θ7�w;co�;�@\�韕A�)����=�fO^���86�!�-yj��~������P�'q'>��R��9�~�)�TvesP�gg�̆
X��>���t!��s9��M�Ǹn�0����+/ACSHe�B�N5���K�����C�]����d5�^8@��kA�hyڪ�9]��I���}�J+'U�'���v��t(g�<���X�E[��V�r�vQ�-�}_D�*0�Yh�u<af�c*���+=��fY�<L�mZc�d\���sB[ڝc���{v�r1\ޮ��U�v���Se����v�����UǼ
�0d=�}�;�qt:����ܥg�&rz�-�&��]��z�r�D-�L&2��]|{w�ICPÊ�=��^�6�P�˴4�I6�w1K�<c������&�c�~�e��Y �O漈Q�T�J�l /�{�&\, ��6U�1��𦘻褺S��x�Hϡ �m8��ک`�d@�*b�$��ځ��>||����.��<�+�u�w�I�-�T��C��T�|����`�[^;F������4b$��8p-���L��,*�2>���]t���o�m֨�4G@�[ P:���<�^o䥧rc��\�B����̨΅)�(��Q�Jì���j�}�e��F�]}w��c��Eڰ��V@�-��gq�ɛ���&��z���Yx4lX�dpn<�B$
|���;����r���ZNF.)촗�=��w��c�;���S���t�x�v'I��C�u4k��__}�L�wqة�a���@Iu�22(��<K����y�B��S��S�ԙӇ�gj�:T��1-�������bԙɝ�`��#�{ls�O�*(͖mTPw7�_R�~���8H���\CO�7���+Յ(>���ڊhz�@u�uՊ��/���m1������4��+�?6��T1�B����Ђ�CH��e�̰F������<�)ͣD�Cd�!�g��#����N����g0��.	���S$�Q������L�٠.B�Ih��K0�"�A�aY���İ�B	�4�_���h	Eu�yK:�т5�<�Ȩ�=ٰQ�T��j�=��*O���|�`�����1����EeV6B)�vV�$�ծ����Z�7_�7��#\��@��1Ԏ����a�r6dp����֐�J�C�^���3r� 5p6�
j)d��j�����=2T�6��y�1g�p��r'pf��*e?	S�����{#�ƺ��u���JD⾏��:����ǻ7��� 	!n���b���e�ڠ���5K�G��UP7�Z���`�������r��K�0��9�=�$7����@']��&� �oT��-[�7���'�.���ؓ�agk~>A.���f�M�w7nbI�)��d���!w��n���f�U��=ǧ$��
��>�Q��o'�b����NTFM�
�|��bِ��S]嗮0J������X�i�P�U��UD��8��1�@�߯��Ǎ_�U'�BV�h��R퇫�x��e�I*-ԇ.�/.�s���yո(��5z��؀�\���3(��R��NР,�IDC�zh��Uާ5�m\k���ߞ�K:6�$�f�ʤ��ٖێE_�N�Tf���9�2趀�������T�D49ޫ$��O�v�@¯�+Օ$���y:�ⳟN	�jު�<r�'賠��2�t��+�F�'V�UNHVôU$�ѓ�bW�PO6�~�o����+�U��=�Vn.иX�t� �:E����q�r�U~z�@CZ�U�9�EKۼs��*V�    5���p�Z$��bK����~-5A
krVf�@vн�A�;h|S�`J�q�ioV)�����2~0e=���2�M�A,!�����X)�q~J�W�ߨV�Dܭ�l?s��a��FE�I�Ь��e�����o��{E��vI�q�O�L�r��v��;���)�������l?�x;u�JK2��4U�"j�I}˱[B��ޤ_4�h
&���G�����xOԸ+�� ��s�0�N����p�R�ڠغӣ�i6g��Ͻ�yW5bj����-�,njg<�<�n��d�����vJ�8`�"�L�M��xp���9�ڏ��N1$�UK�:�`*�%$r�Һ�% �=�/�@x:����87�����$F��ޟ�G�Pl}����*|(=R�(v�qؙ�VFe㧘��8�S�]����*[�{GS:���5���k�ht�#�zFU�B�Sc��I['*�xW̩>�y)�'ҽ*z����u��8�e�a�}\&o��\P�&CCQޚ^��������Q�@@m��G=���P.̵���Z��P³v[����K��L�Ǭb�)�t����|>�
0S|6�2�W��;s��s֦l�ދ���4u��a���x���%h��������+��*�絁=�3�K՛�^�L���z(L�$�G�6ʀ'��4�E��� �5{#')r��n���rc��Tct\D}/��}N��y}��z����M�<�*���i���Wd��+�h�O�,q�ek�l���a�\�����val�1>�<���h��:��,�m���fcχ�\�bωGR�)�Y�JC��d��s�mv�l�Ӊv%�9��đ���YB�&�Z��DK{��X��J�gd���/˕CzĖJX/�u�8)�H0Ή�o�T�N���J�|؃�\�(l<˫����0R�J$�������^(g�ԗ 1N�5%��Q҉��W!Sx�j��M���F��c�򺳶��ػK��9�4�����6f�%Nr�7H�o�(���9����v�6���@,+�1���9�X��|�i�6�b5�0=O�ч��ԯ�ۇ袘�쑭�AW��oq��Ս�6����,����ls�a�p8�2��&K�{�[p�Z��&�݄�C����D	�D%(՜��S�.��O��7����4`���������b���u�V���9�I���S	P,���ŗTђ���%�5�����X!�D#��YR������>�bӴ��s����gy��R��F�ǵ��Q�¥Le�t����q.��[�M�,5�(Mom����n�����~-.[��b�8���iw���#.�� t8�ҍ��,��
�Ǻ�2n\�:�1���e��W�4��)U^�7��|����J=�����^X����E�MA���e��H��_2N��Z���C��aƓ��Yv�+1,Q��"���{_؜f� �z��L�;��E�\v�O�8�9�	�YM��j �y5�Ry�ʞ!�U��ƁX��o�e/zU��B��?0��$Ԅ=�nJ��{��5����=�~rS�+�_k$4.��w`�+$&�D��s]���n�l�F ���{E��N�bAs<T�h0����9����h}��'^�:$}�b�jЪ�l/:��*'�l��Q�EҰʹ��҂WP2�Ӓ�9:�a����^���*qoԵ�*��LN+ }�����~l졏�l�ys��sg���+��3�'�hX�V�U���|�]E��^�/l�<�T����p46¨6�QAf^��ٜ��k�")���-�x����?
�bL�v+�� �(��(�E3N�)w�S��6������o�c_��p���J29�U굪^��
GhTz�(�<���^b�[B&�F��<��Nۄ�ܥ�^�_�hX�ּ�����KJZnhՃ�b!@&��a�OAB��81Z���v�рA�9'��`��I�Ɵ�Y��-��ڵ�~ç��rW���;�'q |��ã�585��Ĺ�hA�b޸��rm�D|��t�Tjse1����/���󢕠W;�]�DgT��؄�?���(���l��\#4�����`��<�B�/�	�H (	,G@z����t��{x��ý:���-���I����m��m��q��U����5N�h�Il�n$��=�O�7�	�Cn�Da�<�G)<b��� �uE[KB�E�:��Xɓ6;0��#�G�ƾ;?g��Q�B�RYV��ЗA���a���Ŵ_��/�ll��C�d5'/��8J�4zrٳ��p]�ػ�A|^Q&Ձ���:�V��k�j]�tu�ȁ !���w7W��&oR��fٗ���0/���µHsb�(��,�;�%�N�2��)�A�m��`��|2�率tt�v�q�o���H�?z�^�G�u��N-,|ֱ�`}�w���.�y�`X3�}2�?ף`[�iPՑ�ulD]��QP�������K�%���Nh���e�%�wyPN̓;An/��D~g;�㢫x�b�^b�M�	���bZͪ�����g�')��|!���m�m�fĞ�����+��a���V�I紬!�x�͑��(��3��6�[�P�4HC��叶��t�a���j`10��M{L�l���P?V���҂�8�_�����R �
����ّvHM��"b���,�XȎǉӔ2�b�k�qK�2�Jjv�1gJb�����2��L�f�Z6�n1�!ޏ��1Fk� Au��?KpEq��q(v�a�̖)8�'SO�D�C�yUA���뻞�DQ2�B�	�&[�c��	[��w�@K'[��IWL3D��iO���z��9K�>�*Q1�2^u��� �*g�A���mL�t3@�Ɠڥ�������
^(���E��4�����|c��G�ڃ��q���Q����%�"r��n�,�F�Qx���5�F|�an��sJ$�S9}�3��(�22����~��J1��\�r:�.�X˨��Xkc�ˤ�֠���tֲ���!��[����e�J�o#�0Bؕ�w�R9�����*���.*('N�E�x�ԵkIA$�
ԲZ�2�8�Uum�(���M�l|� �ӼpD/��n��ٙ4��âb�����#F0�!n���[1�!�<-�4�n�4�����J�ݯ��}x{�}�& ���GH�;�С���	�r�5��W�/�9��"����h�:�H<2j�6�T�W�0�y5<�x����h�2��[�taY�jo����h�c�����z9x�NT�D�����UUK��v}c�)SS,EV9�,�k��� ��X�\ЊJj(6�T��L�(�=��� Ҥ@(K��_Wｔx��32�:p��ōI��+�z�#���m?��e�a�����E��h{��=�Y�N֎A:V�[�Z���EbL�~q����Uz�-+!�k��� �k����а��ܬZE���Dj��
��=H�[�P���&�6��IPZ�eJ拮�݆x��EP���{D�&e�=1WO\�Z:���`�*qzi�gS�BZl��7S���2
r�d�;���K�AE���w^���N��[�-��c���7UR�G	qKd����AE���!@J��Nپ��c,k����iyx�C���~[e,��r9�(=j;Ȕ�.�L8�"%w��^�jG��!wzQ��Q���<C�\[����C:W���#��v�u��y�|���j��.;6�S�\�U�Io�x�,�y}��͐�j���[.I9�_i/���e���" �(����b&Ɩ�Q7�Xז�Kh|�9z���$-^�i�_� ?G��2�ߝ�u��U��Pe�9�,����D�X��B�6Fl]ئ���]��Ƈ.��pn�P���Ś���%y��2K]*ZK���P �� �<�>\��~Op[������@rdԎ�'U�u`��{�jA]L�zU�D��� �O��.�Ż���]�,��K�q�!�^�C�o�nN�4J\��R��X*5OZ��E�R�Մ3����� a��Q�K�*=K�J\B~խ�@R��m1�+S_�֛M�W�ƅ���LI��ͨq�4�ޢ�2Ԟ�    ���]j1���m�	��o"����0]����>CL�����}z~)���u�t��r�P&�e�����,]$�P����6��:�S��M��I//��\����(��im�[۷˒�Y�1ߔ�ڪ�r�ލ�	r�y��d��l&nTk���Pڒ �Eh%Ԕ��+s~NdK�m�B�/I�2t��g-;��
��[����+����8BE���&z?�:�I��t��d�'��L^�BL�;517�Z%���VvҬ��\Q7}���D�j�r���Q�v���[����8IbcݭY��tNG<�����ȅ:��BU�u2?�E����e�J�������l� �gV�k�2lP
��yBz��{��U\ \�!����ʉ���7���ש�`1�ʨ��ڈ���7X)Ԡ30˝?�z�<�҄?��ȗ��RO��|�*@u�5;y�9����8*����
;SP�D�?����ix�/��KUt�p�̵W�Z۟�b�5^�j����[���%�����j���T~x�(��O����$-�AMMG
�s���+W��*�LW��cP<��նQc�01�!:��s�qYT8�?yW`(���c�iD�J|��� ���q2��ֆ�n&�*q�g�$v��#�!�:�R嶋��HI��p�H������}E]5�Α�蓧�6LInĥT6�Uq-��(�T�EEv,���ky�^�v��5��Q�w*�4��C��qN��Z�-7�#�6e�oE����lYn��p���-�%J�/X, ��<@���Nr\Ͻ�~�����Y75�c�"�߭E3aN��7���S0�- -�����3��|��Tae*��y$���D7e����OhϞl��I�NQO�H	���(���%����}/ǆ����ï6�QT��x�bI����BF��\��S��1n����Ptz���4LW$�`����^�|W#BO��'��<W�Q.^�ne�Z��%����p�fVĹ �K�e�qj-�$em��f��~&��~�?|���?]�	@'bFW���;6=�4`��k<��;�0��h���q���ua��d��R�ڃc����>�Z����`Կ�i6��1j�>��Q6�u��p����8l9���X���	
�;�0�?=^�K��%(2���n���EQ�Pk���+\@�(���콲"��xq������P�k̷(U�MK,i�9{�P�j����?<â���??��	�I������l�E��>3��n�>�LG��Kce�hC�(�E���Vi}�u�dkx~E���[5��Y��r�].X2�t��5MQ�N��꠳��!�&��ٷ���GE�\:y�8�$��)����!��~�pMkDD���a�����E�<-�J�4[�,}�
U�o�]�Bx��NtR��H,�Sg��0b����s�;D*'���2�8�׾*��Kd�v�^	8s/~�d�0�bM�<�(JKF��.^�:d��$��xf���dJ��"�h7��,����s�a锢R��	�㴂����ʆ)�j�#��m�����H�up3:��j,etx%�y=M2�u�ؾv��hs�����D���������,��bs�ŒJ���tN:�B�qM�Fb���woZ���1�����w��߷^\j�2]�!8�nT��t;
���zó�Sj'{�D�T�e�(p�;�es�L]Ӛ#�XÐ�=ݟ,|L}~�in�?�^i�y�:�E�ڏ�x�T���R��n���ݻ�����>ܽ	~���=��~����ǳ����(��W�1(�hC6�j��� �� i�Y��Փ�*0c�E�_�8��(��N_�tN夣��Б~�W�*n.��D����W��Ȣ�B1�q���@Nn
�b2;(/�߯��$Y��L"ס"��oS��4Ju��Mg֎B�z'?@��w���Iı��6u;^I��3b�����(�\cA��=-63�B+'"C�eml�B|!��I�\�ұr�����<f[��)7]ߠ@� �u�0c҉�����UY�4�s�����~�$l�j �NeW x2Ў�容���+����"��i�@�$��R��k�y}��u,J�څ9�J�2uv+l-�%�*e{n�h���E*�]�Q"p&<���M�
(&:Ir�V�� ��a�g�q^��k��Q�<P�*b(�������, ң�0��yd�d�ˎvD2���h*˳�zF�'e���.Y��|�:s�`�]������7�Ư�<�U`�ZP�FJ��Yf ������H�k�z�9��%��&%�v�j}m������z�U۪�_s�[��J��6�����eCiz�a}[B������`���f��.�lT9�'�bsd0�1*�0�7$Ъ�%���S�iC� Οa5F! ��Э[��.Bǥ�d�5�)���\�e��	b	O�U�[�K���$Չp,6{;]��Zڸ0�X%��bp��r���4uN�8ϭ�o�6��;��L�km���6ZY����ϋ�a�Ym�R_��!{в��~�W-v�+L�k�Z�\�����ݩyVize�`�o�����-U։B⇨I^�2t2SG@ �ǁ$�<��M��������2j/˰Q}��pCR=CS���a�j���R ꄘ�L�v�ֵ�Zr0�� �x�s���]�h��B��dlv	?���b���a"���v�����l
_�N�J-�7���F@m�ٓc�o�Cn��)���ڜ�c�~��bg%V-V�P�v"���_~��.��o� Yf{�Q0e�UL�I����Ý����6���V6����:+^��'8�rxe?�w�)<�Mɳ�7��S�?��~����*�qY��`�0�ʃI���-r��>�?7��r�1(E�~���t���;�X�QيO*K�G𠑠U��*�F�cT�_�2Urz׍��Jn��Й��dI��{�y�ڌ֠5J�N6������gMnK
}���p-P����NB4�B~�h�;�(*�y�pt,շz�Y��<�_MFe,͍��z}����oøT;���S2���R�{L�1���晎�:<�vc P��J{eE����\7���ws���D�{�ڽ��޸|�H�.h����l�����o���/(�C0�;�c��ZUN�Ӊ�	l#�6u��M<)�c��^����h��s���6�� 8%��A���P��M���t�ޯL\��j�O�pc������=y�h���/�Ԣ��Ҩ��Q�,m�q�n��`]�?��un�Vft�%��#�}c��R:#�����CY�$t�P�B����Vި�Չɂ|7ú�e�RME�H��ڐ}�cu.�\����1ҥ��笠7�puZ�Ҏ�y������*��z-k�fH���o���� �?45+T)��͗�k+���1I#�6�|���w%�˪rVW�5�6�ݮ�A#{S��V�B�/1�ӻ��d�<�Ե\�/ml�_"�ڀ"2/�+]k\WӠ<馋����d:3{����A�+'�2׆�=C�Zƾ���lJ�0p"B?21�$7��_`��C�R�7���W�&�ɜ;��]�S��':�B(�l��)|ګ���%�ӆ����a�a������C[�����è ���{�m�IܟX������,伯��&�ȁi����)�@0�2�ŧ�U�ṽ����@n-��Y��S��x��-ۡ�w�K�A����:q�"�Y�1����cᯋ��&������O�U��ݨ'jp���B��{ޫ�t${Fn`f[�8�m�c7@��Fͳ���q��u� �u��0�l]G)ֱ�'\S��;���b��9�SP�z w��-��I|X���p��\$�I�Z�~oZ�ǳ6�:I���d��Seָ[((�XR�2����`䃒�]e��z׭�Ҍ��&�$��hs��K ��α����2�\--��Ք�oF7���}?7�ɪE:���$x��b��S��;H���X�;_Y�� �I�\Z ��+c�W�4�9�
�/�����Z��3��3����ƽ��3lK�M6��n|S��7�=HD�x�,�u:g����6    @�u�T�
� uqWsF��-��[GQޙ
��5s�`ұ#��b�y�8/��f�֔��j��Vm����,�cL�v�r�m��|���ɜ'�l�Va���/�J#"��Z��b$��>� h?�J��v��dȃ!db�P�l��z��*T�Aǳ�˒<�Τ�m�t=4������-yڇ��w���^��o*?c���{��:�s6�*�HZ�2���2���1���J��8����𳗬%S����υ���6͢��@g��Oii<v͇Օ܅�ܹ�t�� ��<oKI�ߞ�g�{gYz���do�ȬA?h�U���8e:�BNq��$��Ra�q��\#�y��ǚ��V�O�;���.��ey֟X;�q���j�;��f Q�e�7��No�5���B�J�O|��[��z0������ikT��s�Ol?��E�O�t�����Ʀ���.�C.N�"6���7�j�'�pꋖ���ھ���#����+h���^�7�Apb%�9���R�g�-�)uD�	6���Zk�]]ݤl�3g0��%��fu��k�K���g�%�m_���V�W���/;B�e��um	E�.O숥��'�	DC*�8��Ϧ��d�V/�e�X'���m�-vĳ5���d��!'�U���ͦ�լ뙞�kG)�}���4�����285��\(�����r��@���
�����A�@�2]=p\K9�<�7���ko��f,��'��k2�Se�k�^p�t�᷑���|�*�rgv>�̢N��RʭW/m�7�ğ��4��`��{�Ƃs�o�YJ��U%������b14np��+7a̍��g܂<໮�}:��Ǩ�AGrq�N����S4��y�?�,����<�'rUi`�!C��V�b��`��%)��lO-k�#œ��a	3{m������ ,��`�n�r1Hx�*-y��<���x-�Ч����~����4~i�NA'8�Kf���W��L*�黧��k�^���]F�� �4��<�{����*��ټ����ɮ���|F�GG=k�L�qY�i��e��e^Q�L����?& B��'˓����T?����� �g�D���3+%a�|B�;�ݞL��Kb��VDb������`��?�)�Ѐ�f&�.D腱K$xq��E~v�qw�gZ]��E&i[m��;�\�����F��$��q}ׅ�:�}tլW�|p��e��*���v������2Ů[(��ᔸP�*��sM~��Dh�#���P��2P]ϳ|�q�۷95��]�7�#G�Z�Jc��x&��7��l�3��a۬rݘ����v_�K������r��噖�'^��4�2�.�l$��k��������u��j�EƤZp�hM;��=w�51��\��{�Y�g�Vƞ�!ʚN���U�����]x1�?^����vC�ᦪ��ˋ�n�o��2��;���͌i���%��J�o3,o�#l�y/���m1����t焑t4#��P��,00��N�?�z��¢8%���s�r/����t��Jhe2��xG"�	@\���G��,�Rm��;R���cDݑ���c(=ށ�#���vV&嚻SFhZq�
��������z�y�����d',�ath�p4i����`8������x��*��ҵ*�k�N���Q�9����Ȁ��_��BlD
����I�a?��M*YIi���û��W�/?�tr���ۦޚ�F���^.���_� ڲP (�z0E�Hf��a/���v���O�h��̞��]$��(��u�|C�6k�k ��7&�#+l��d���ljoH���^)�R��SKؐ�����=,��	�0%$�\Ȥ���מ@9���Fi`�v��!����M�F��VC��y�/lH�����w�v�Xլ����ee�|�|�a�Ŗi� ��
E�P��R�of�gz�1!��E�U ��[���$��C����j�Et����(b��h���̇���e@��q���健��⥉CG��� �U�5�+U�ܿ���?T���]����,�Õ�O����x���LB�h�M��/z�Wm?�pC�������؂mS��1�N��La��z�`�-�����ʋ5�R��C����S��p(������B=��競y5w5��)x�bJ���m7��U�#���q$��h3Yр�h~A �������C����	��i����?e��6�ܻ>�g�h>��LGNG���W �����k	;�C�L�+ك�$(,�3�E���Ja�uU��z�ϯ�� �{��&Vn����󦊪�I$c�}�|�H�+C:͂��-�We�Y��*��d6����Ϯ���7��L��3�f�r��*r��}���}�T
���
��JFz;��hh��C͑	̬�x�q�ː,Jw�-�����+|�z����>x�]0�M��/��ө�>�ڿcͲ,� ��Tx���B4�Nn�?��= ��~8���P�R�ծ���Zω�;v���ʓ=f	�p�=,;�U�64��������S���Ln�N���,���c�%
Iڸo�cp!�ߞ�QX����}\X�
��h�9��sZf�2N�ߥ�jٶ�ncf�9�'��SQ��ak�K&:ة�STL.��82�9j/
�)�殤7O���-y�-��ם��+�r]������~�_�~�����~zW3,�h�zI�2A�Y��D���	c���Rl�����F�e�<p��+R\3�� 0����%em�GjN[Ѧ���k��_�0r��_�k�_���	]핁��En��.���6�����Q_AoP�,V�ؚ�#$�_қl)��Z��0M2*Վ���1��p��[�ɠ�k�9�}ښ��Ai��M,g�W��z�Z�o�Vդ*��&R�4��yЩ�ی�lC���fQ�Y�n�*���T�낫?��tf�)�v|(�+��Pi-D�S��>y������J�뫫{Γ-�|wh2��6R�IJ�[��n�&��4���Kޘ'c|+<IG�TWq��Coc����x�)��,���w{kW~͒yx��+C���b��+���`�
�ܙx5�� ߍ���:���=K��x���#?̢�5`�6���Y�_�<p��]5$�<A�!n�x���IK��Ki2�/ʸ%�������;軾�3n���;�pw�� ����w�i=Ä�}V�\�[l�mN�1����oIU��Y)�h4wV�#�t,�.^��(��?��Q�u]G-�B�ź�Z�\Uy���<�}\bZ���Q�Q�4�tۂ�*�wD�ܗ��5�]�T+z�q)�����BL.���Dek!1��rM��)��̚�lo���X���m�t=^�)�=�گ5gX� ���fc�Y��V�F�P�o��@^f4�oӸ��d�9R�e-i�Q��^�Y�sh���ke��y�	Q�Q�^MB�=Z�sg�Q��V��F���k��ݲy����V������5:i���3[�;�e�V�x���d�h^�l�щU�ǀ7�ݴ�]�-�pVQg�r��إ���z7x�g�}X�給��=��A�
���~ᾯ�X&�Y��Oڊ�s�xo�i�J^>5*���������k	�WG���,����r�:ѹ>pU���, �/K����
{�hXz�l�F"���>��Д��޴����ON�ͨ�Zה$�)�Y��Ő�
���ky6_
Mk�nWٶ�ѻK2��g(%��6p_��ü&8�4��	��?�{}N�B���v��9)�]��m��4��rUDC<�eE�1�ָ�a�x�1QBx�Vī6�7x�_�u,��K�nшR@A�� �dz8�k'��4_�oE�[z�M�i��P�dU����޸���U��tv�+Ċ�t�K�k�Å�s����(�Nt�`��h���^��Cz#�>����~�=�$K
<�.�;r3�����^���(��C�=>���J�m�+nĲ��#ګ��27�},���E�������Niv ��ƴ6���@���<_,P���>q�i�����N��;.���;W��T��8�.D    ��A��k��>(vc�UT�(g����AL%㽃�_/�MO�%�(	��t�s<Tw!��!�,�C}wDq��T��pU����8s �L��.��-ߦ[D/�&���y����h]��.������UÜ؄C�+~�m�+)�loC���>���7����т��yɐH@����s�!!��[�D`�)1�J����QwXP���j�����F�M��B��q�P�<���-6�����oj8�>����S�b�ɬ�z��1�l�V����8�o��:�+a�@�]1ȕB�5-��_ӝ8Wv4`47� ����˿j_�=� �����4���������
�!��YO�~�w'6?]}*Hڢx����t �v��<H�MwL�æJZ/pi��J�9�6ʹ�ة�]�|�F�O��\���M��o�O�Jx��F#H8���}��a�uP�bk�Cڭ�6�@6�9üK	a�����.��Q ߴ����k=�ܾ�8nwz���TR�ԑ��<Q�6�ǳ,f�CPSV�ܫ~�-�?��Qe��?Bͣ�mG��g�?�G�ֽD�^�ʁ���$���zz�P��k�T	#w����`iM�۞Y�/�;:��b���ko�tZc�fD��L
ϵW�x�V0�I�?�mچ����^|����}�Wo�T��ȃjU�`�'�	ވcώ)��
�Y=�x��8���~þ���k2������,|ʖ�-�Ym3_�S�T~�M� �@���m�'F_�/x/�0<�n8M���V%�f��%����-���T,��p��������{6�����xR��QZ�����=�.��u���f��ppN��;�R\��Vn��]#Kʞ�[	.�*u���ke��u���q�k��Vc�s� �Z��^�P�I2�| U��yw�=)c�L>��s�b6֜������g���*��Ov��艮�fӊU_>.r�ȑ��D7��K{9ᗝ��9Tɇ�X�F^$Q��q~Wk�NCca%�����
����e�̼V�r �F���/��
�S��&N�p�@%�e�r8�<��ώ�������{fp]D�)sw��4�9��!��7���b�r�3��ڐ�6t&� �x���TY���c6�d�լr[>�G��l���ꭣd�'M�Ui}��H�z^ݤ��]�QY���~O?�>�.v���1?!�Z l(3f&��jSe~FC�6} *���Ȗ�E�:�zp�|�wV�<�>i��Rx�G�&���	q�*R�7;� FxGw�Io�J^������F�f��6f�q� e^���U!GUK����޷�$���~�S�����ɶ��ɿ�	stx�Y_���A��I�GR1�8� A<�q$yD����w��sZ�JyY���zS���0P���զ��]I$":O��D�{B��zlPg���R��n�lg)x�I,8���'\OԦ���Y�QA��E���(�(�r��e��9TM�V�9��GL.x&'�h1~��m,T���n����53C2�����y�튍oA��ت����*a8��M�
����>�L��yv�c�q�wM��X4���ƭC)-$�W0L��:wK�a���L��S��Rr������]�Ix�1CX�Qv��Գ��,ߐ�oCĊ�T�KE�!s#Cm�z[��'�ݣȗ�=|�N2�ǄdaZ�G��ȓmܛ��̼@m�-�����3Q-E��Y�:��9r*�j���1'p�8�I!'��r�^�B���y�xfJ����+e��2���jM4'A�v�B�n�ǵ���pf<�zo �;N��H�Œ9�`d���Ui��X�y4�Q��6��Z?���mu<�A�Vө!�Pd}i�{8��7�ptu���FY.�RR,|c��`i�>��4�7�y3(�F��Ё`Y��6�b�KI�w(�b�T3'�C�*�q(�%��6W;5A�p/�=W��q�y+����T����5�����:�{#��)�F���FC/���怒S��}�;5{��Y�&�F�tQ�-w��v�ܫ���:[�?��	��.���J��P�f1l�P�	/�==��f�,"�
,��&�$���L��a�+V] ����ha(cq�E
�;���,3]�)��Z|ٓ�Ҧ��f��5��ˋ:�,\���KGi]+�낿�1k��,�[�u�4�>��n��Z��|$9ּV�)e�SEvm��ծ8��*��'�]H���52-��L���x��H��f�C�SW�|o�aW�/:Wx���;�d��@7�W]�ש�p�;U�U!�<b��u��;W	��	��!1�21˽��Y&"v,�O�ޗ�IjiiZ�p��f�Xar�wG�6n�/�7�Y.���$���ϲګ���nYn��;�e�(�v�{�`��U{�87�Q�`2�����x2U%��2�S��[�/��P�x7��Z�q7�]��<�BJ�tkP�?˷��A]=jt��^��&�u�`8BՔs���Z��z��=e�㽫$2[j�~f# �[��|�D�F���_���8b�0�ԚEL�븛�����P������%ދ)�4�Z:�F��$�iK�5�}�݈�-����Ō�-�{N�=U��g��A�z��n�s��W�(ƀV͸�9��ӏ�%���$�<����ZJ8�9�� �@$�N���|�H.]��aZ5B^_�q]� ��w}�K��E%a���	�+9'V�ʠ�H%�"-5$��³Iz�b��G��̪+��r�i�������JxϑL��?�dU���<�����/n2�G;���ON`�!��f�� �3�TƮɽ|��t����<^�� ʊ��� V�1��M�� h7�XŜ��l��(�MG�jZ-�����V��|���)T[Ѻ�d0h��Q(�����	iB��=�m�M{���+Ď��1����+*nD@�;t��*�c�������o+b��������z[��Q�+��ܝ=I4*��'�0�f�3Nd$�W��i�#ޕ�����#,�F--IT������}��p˴W�2Z@�	/C�
?;�A
6w4z��dB��,1וi4�i����+����\U4�:M�6�a�*�z����wE7���oF����}���ۢ��y)K�ϩw+H�e^�	�g��ƉkQ}�"�\�o���F鍷/�M�S_sB�{�x��;PEɨu����U��\�8��[�I)eg��+��������-##)�I�F�~2n�Y�'h)�@m
�,�"|��i�+D��5����mʹ� ǯ�����s���.Jn�棯Ȥf��%7�?q=�9��g���ei&���P���GIj�mE�$3O1 ��FD�O�¼��16Z�a��1L�&�/�V�5��r�k�n6~�L[nGb�)b��uҡ�lT��o^�x�jC:�gԊ�k�;_����
�SV�V�V�P���z!\?U����}�q���N�˝��u�G�/n����so 1���L���_���"!V�_��p+�k�ޖ<0d^�t��sܥs��F�9oN�y�w�L�P�M��P�]n��zg��A_U�����6]�'�(�-�2�|�/ӏ��$�(�601he��4B@wPZ��XhX�[Po�M�(l��I�ޞ���e������6��KȆ�F{����G�6J��dȴMYs�j;M�B]����uۛG>�ya�C<��=�b}��ge�j+ce�+)�O��ɠu���6��Vo]-��m��A���9}\-�]�8yh�T���y�	�ՇԸ2�1�sA[3P�UNI�5N��q���[]�A�ۘ$-�=#ڝo��ő�J�����7�?��-��R�n@�̌�V�J}����9�JmA�^��q�AL�.P�)�R��F�+���NRw��1׉;r?��L�Lŧ1g:��DLw�`)���cǊ��i��H��@��E�2�����;����t��`�|eS  �o�5�.��'�A�ĉE7��Cm�e*L��y��U<��3�\�u{�Q��>��ɣ�߮�qy��ş�,^@-�r�����z�ѣ��rL�_Ku�����[�~Y    ~G��2�+��	���_\]��Xw]���6@�5�׺=�����O]���3�<7[�m!��P���a�6*�g0��T1�����H:ɾ3]6�;�o��;��-O���۲�|����_� t�����j�.���p�ԡɓ��=��b��R���i���h�7lb�^I3U�@(��2k��"���Гf�|`Nu��b�P(P���<�zD���a]��}���5�;���4�Re��M���½c�E�e��6}Z�[�r��\,�eL�xt��û�ݕ�ڽ�6���d���>o�<u_�a�B����f����&�j��.��p/�z(���"��ɡcJ��8N����B�<��h5p}J� �N
l�$�\(@�ꖠmJ(󭑱�
��\�V����<�]��a����U?z�IǥB��aךH�{�+�'9$-E�Q���b���'ɠդ�`��`2��18a��v��%[EuP���Hu���ŰTMc��	+�*��x��Գ$ �2t
�p7�\YA�����29n�Ǒz��R21��@l�����C��	�W�T��r�'D�4�j\V�K���݂�,��j�~4��y�r¡�h%,���}��\g���0$�ܙ��^� R�YԬ�n��,�D�!����b)3
.%�d��IX�3>^9��"i���r-�����-?�JC���Z�q-���"�A�쀡kI*�� !;
9��D�p�Z��r�U�;s��2]x����j��uz�D�
����^i� �2>��9[r��3���Y�\������ւ�O�D��*���;	�DgJ��:����r_��%��8.s��I�ֿ:�|�I�����ɒdR%�\�Э�� ��"�º7�߁�׀s�5W��֯�'d��NN~���N%L�6�Z`���'͢6��cd(:~��\��y�!hE�69ʀ��u��z~�_j���ˁ�����N��6wu�k�Mi����nѪ���SɈ<�u��ڛA2����˓m��8Vt��i�8�Ɣ�Q���?EG�[��8yL*V�]��y���&5��n�܃�L�� �ΔH�sqQ�[���)��.����_.?\4���a'���*u3��m�&�bl
�`�����b�i{+l�˙�fނ����!i�"g����	��>���25U��u��X�C!*�ث�WYm��W��C��A-a�+H2l? g���3s-�A`W�e`����1�|��F� ER �[��Kw��9)%gO� Q)�P�]����Խ lA�{�t��S�9�:�tWӈ�xOϘ[k����+k��W������㟫�����BZ�;j�7��1W�q9/�2�G�f$#Բ��i���?�I>?�1�_uB��ڼ�=��V�Y���K��ل���^�@�"F��Ow�bsB_U���"�����^�N;JZu�܎P�w�rݬ���ͷ�S�j�����u�ݷ�m�ДzI�
�Z�x�f$1�;] y[�FQѲ��>��hjt�?����x�R�j:�N�0�[���+��T�C����V3ׁ�k��q�)�R��J�K�}B�a68bq8����ƭ_�m�=��q��`�!�h^ܴ�n��
���?|��D�0T
�^�d�&�
�ȋ;F�d��q�3F���\�o�UMD�cE� 2��̬!�d\n\�%�����ZU���+�f\/_����P�<n��R� -�|��.�Zg[V9�-� ��p}o�
fFEq��<�8���F $ۛyM��Oqs��gZC�h~��T�q���}��u��j$N%��e0��LHO��~�Y�E<9y��ŏ?]@�~�������v��t��W��$���N*Lr�����޹�P���e��sJ�~fe�Y���k�*��% OHDKɄ�3�Y�������7P3�bA(������@�������n�#���dx���d8sx��u��;s���������W���:�kFj`&�#-�G*�`=΢3"P&��v\:�wd��K�g����e!���ᰏƸ��@��=�T�������>YWj�;g+P��*N�hM�/�Ǻ��M�|�3q�#x�� o��a"I-�J]8kK�%�]e��6���>A��ʷf�=|[O^C����@i��l	�����^�ViD+���.��j�و�I���kp`��x<D�H��C�y؈���N���S?j,H8�v��G0/}Y�%]UFrt�t�K�D'��8J>�{�{@�X1�]w��r�0V�k�Nі�F�iͺ̔>������5p����햘��E�ƣ֏no�v}�t��߯��(�ד���ϩ�?w�yOw&^��w���~Y?�.<^�zq���4�jF@%�m�G�t���)u��T��<#��$���Q[�9���񀡋l)�G2[W����nU(,��f+qb�Р���U���RVn��	�u�N�]*޷2�D�ä��И٬k8��o��V�ׂ� �ן��R۽������5���0w�;z�3��ǡ1�?JG���tP��u�5�6�u������R��nP����(���G5��M�&����{T�65����������¸XWA��*���)�
�*�D�1&����<猗5�}���I*mO��2�Jh���ޔ�נQe0��w��QtI�U��l����P���&�H�{�9J4��jկ���������ܽ��&G��ȹݳ̷�ayQ&��Oo���N>~� �w�l'�!�l�<��5;X�]�{g�qm���X��>J�������#y�X�}*6�� ����r؝��)�q�?])��E�碯5���^���C�"r����鮋;�bZ�U��R�z���*6��~��S��
hP��\�rOcԎ�r� �Eoiއ� k�|��ط��1�a�dphw��z0�9>Jfɣ�V�����s�2#�,5! ��}�+Z�HtoR�CW!�m0�S]=�'��M��.A�����=r��)����յw�~�����oW���f�F���PŬ�TZ���,n����S4���׎;w�Ì`�@@��2��ɉ`�S7F����������q�o݀L��#�/S��	�g�+�/0�ٝ>q�a��@�.�rL�ߋ�Tk�Qc���4Q�<V�U�
z�J�\8�Û`»#w���=~)�da�ߧ��L�����0F�֓�U���=�l�'k~oѠ6kdU ��+�D�Oܵ	��xS`�ELЫ���-}�D/'H�R����������4�����p�h>h�q��K�"4�yЮ\
�]E�h.M3����\���
��Y]�n>�W���0GW��I��Q����뵾0��D���`��|s�qw�%}�'��w��n�ZA>)m��m�8=d{1��W�NQ���;�L���`|�	&���vn��竜��<���8o�m�C[����Yǝ���Z����J����>>~ "��D�iVo��e.�g���` /�T��ҧ3�%��(W��j��]^�p<�-�������3}�ʖ{�	��e��X���5U6�����2���$+a	ѬQy���8�Qk���s�@����ݐ��r|4Vlthb2���z����Ujn	�iq�D,Ï�`�D�uF���u>#��19���]^_�ؾ�2:IO)B�<��3
���ت�d]]�L���Y�p.U=k��Q׺7C`�.�f,�m*>V����ͼ"�
a!}��m r��d����EA�kt;�>|4�"iC�3�R��P�_r$`�I�@Q՜~:㷏gAi��Uz¬�T�Ň7��;���V2]�D��f��[[���a�)�9(;~�����*��g}/�<�k,��u�X�5���6��Cť�nxrR(���eڴL�AS��.�ڔ�P4��/9�JO��:����ʀ�jp�SPk��n��VlX�w�Ɋ{�d ����ض�b��N�^���R����2��䋣����ȥ1��UIZ�F���o�)[��P$�i5�§��A���1=�\�6Dگ��VY�#�7��k	r����yn1���f�� �  �lR�o���p?����DҫL�ʬ0�օ��;�A�4�O���DW�i�͊E���?X��b�~��i��^_���>P�2�W�Nt_l��o:��3���0�� ��P�0UZwJ��1kY`�9��&����JG�v'0���8����H$|$.���7��N[�x��tZ#���� �Y<�I�eT�];�����L��ؙ�{9�R�I�[+�͖����3b�Wjk��M��U� Q}+]����X#�Z!W��;�k�6:!$���Mձ��9�Nyn��x�Il�c����29��8J��T#�
��I\6r�`�O������0�Zu�Yj�V��P���V]�^��rgZe�G�$&����%%GOMp�$��*@��Lm�6��C��2��T荒x��̧�tl�Lw�Dǣ _N�b��A�ʍƂ6��!���.a?�����A k�s����Q�~����!�Yy?@�*F Ok]�������H��l�.����RK�M����1��
��x�����4 񨠛t��o!�Œ��)�^�x<�IC��a��:|��q3wP�(R��k]�]��k�l���!�&B�S!-ؖ|�j�R��H�xŦ�����ܙ�r��:���G,\\�bKd�M���㮔G%8�G��,AZȾ�v��~��xܢ��<H�T���{�Ю�Өֿ��Os�̒%�	�״��B��ò&��('U�6]��xS�wU�W!����{*w�+)w�5�P~'!�>��@�_I���������=�=&l�s:�V���*�
#����ųua@��q��XS��U�)" ���8�W���t��^��sT겫˵��e��Zb.���	݉��V$���������+�ML;B;�D�F�L ��&��ﮄ��g[x���<�&��� ���"��T[p�Q]q�=�˼��M��u�TQI�5��;4�1�I���7���?n9'Cn��Z��	�s���1`h������=�"MK�m�gl��m2O��h��p��;��㐶$���M7�;��J��Q�L��B�3O(d�f>A�����h��C,��HIA��� gmf`��������Q��(�b{l��8�5O����ȭ�cFT���ٵ��$T/Q�A�\���[��wV.���Y��31�*b�Ev~΄$�
K:7�(&�It����W��k��[�ǭ�����9��O�������S{-�Y��ٟnSݵ�0���g��*�������_�ڃ��
At>W�;֟t�������mq[虏1V�5w7�6߰��#�~?�5��?=5L�����*�;�o�b��B=\��3��z������{�g���Ϧ�����s�?l>���zt6�~69K�3���[�m1w���f�gȳ~鹆g�Y�����m���v�������䣾_w�|���S{�� ��Y�;r��+w�w��vov6r�|�g͏0��P{�-/Z?k�����R�^���]\������ˏ��.�|H�_{�~_mx�?k�J��*��w�Xr�g�W�R���g���Ϛ�6<�j�a���o��g��K��^�z}\����Ϛq���ayYL&Q��V����?�%������}ñO6깻���?��l8��lt���;x�1����^qS��O��:�w<���F������3�7ԟ�������?�"�v      ^   >   x�3�,.-H-�ML����4202�50�52W04�21�22�&�e�I�zc����"����qqq YE       S   y  x���I��F��=�������-�H�U.4�&���ؕ؊3�ܨWE�����4�	���&�4����0�>�geJ`N�h�|�������ǽ0����a� ���D�/��*#�݇1颕*�����"A�Qf-_v��w"X G��P=<����	����,�F�ԡ��#3b�y k?*:�6��n��.���hv��V�������G1�lW-�=��}	�(U����-I)�2'�A���<k���������@m۸y-rjFv����
^���t��m�Jeo7�bv�<��[C嚕���|�ű�ڞ=F��+�A.w���M��w����S�6�m2DmU70 �����E�+�)k6M��:v�k��V��M��z����>���U#Ps�S��98~29�ԏ����!e�.�)�"Y���K����Y�)��Ѕ�;��� ��3�Í�����Ƨ}��	��	.N� ��C��:uƿ���HP����qU]HZ���Vl��X�PzAZ#���7���m��e=h�;���|@�(>�9�.����3Ɣ�������~16E������V�GG0��Њ�$lB��]�on.�zK+;u��a(�>R'��	k��+��_k��:�t�B "8'l��ͳ[{��=�u+?���_��,��_U�O�[��F�u6����3��	HlS��իH��}
l�SF�_3���;�j�����#��ܻ��ي�x߇����؆���^w��a Uc:/t�.q������7S��O���$8���&HR�<�֎�i��{g�0��M��߬f�Z��"5�N�e�aڛK������W��`_�DQ_�n����
�7N,cې��?]2�_"_���gN�J��jk6���8��r����ڋ���u�����
[��o�+�A���o4��/�����	ع��MI��f��-I��q->�#_'��F�R�?wf���:!a�G�������^��2�'�_G�G>�sZ��1?�q@1��� �qɛǩ�ݡ��'�睓HS���;��z�?N��F_8;����d�GU8���P�?R��k\��T��1���{��N��t����ҩ�+'�;���dk��d2㥛HB��-&��������'[��     