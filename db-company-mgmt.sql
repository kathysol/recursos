PGDMP                     
    z            db-company-mgmt    15.1    15.1 '    #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16398    db-company-mgmt    DATABASE     ?   CREATE DATABASE "db-company-mgmt" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 !   DROP DATABASE "db-company-mgmt";
                admin    false                        2615    16405    sc_management    SCHEMA        CREATE SCHEMA sc_management;
    DROP SCHEMA sc_management;
                admin    false            ?            1259    16399 
   enterprise    TABLE     g  CREATE TABLE public.enterprise (
    id_ent integer NOT NULL,
    name_ent character varying(100) NOT NULL,
    address_ent character varying(200),
    phone_ent character varying(10),
    status boolean,
    created_by character varying(6),
    created_date time with time zone,
    modified_by character varying(6),
    modified_date time with time zone
);
    DROP TABLE public.enterprise;
       public         heap    postgres    false            ?            1259    16414 
   department    TABLE     ?  CREATE TABLE sc_management.department (
    id bigint NOT NULL,
    created_by character varying(6),
    created_date timestamp without time zone,
    description_dep character varying(500),
    modified_by character varying(6),
    modified_date timestamp without time zone,
    name_dep character varying(100) NOT NULL,
    phone_dep character varying(10),
    status boolean,
    id_enterprise bigint
);
 %   DROP TABLE sc_management.department;
       sc_management         heap    admin    false    6            ?            1259    16428    department_employee    TABLE     9  CREATE TABLE sc_management.department_employee (
    id bigint NOT NULL,
    created_by character varying(6),
    created_date timestamp without time zone,
    modified_by character varying(6),
    modified_date timestamp without time zone,
    status boolean,
    id_department bigint,
    id_employee bigint
);
 .   DROP TABLE sc_management.department_employee;
       sc_management         heap    admin    false    6            ?            1259    16427    department_employee_id_seq    SEQUENCE     ?   CREATE SEQUENCE sc_management.department_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE sc_management.department_employee_id_seq;
       sc_management          admin    false    221    6            '           0    0    department_employee_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE sc_management.department_employee_id_seq OWNED BY sc_management.department_employee.id;
          sc_management          admin    false    220            ?            1259    16413    department_id_seq    SEQUENCE     ?   CREATE SEQUENCE sc_management.department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE sc_management.department_id_seq;
       sc_management          admin    false    219    6            (           0    0    department_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE sc_management.department_id_seq OWNED BY sc_management.department.id;
          sc_management          admin    false    218            ?            1259    16435    employee    TABLE     ?  CREATE TABLE sc_management.employee (
    id bigint NOT NULL,
    age_emp integer,
    created_by character varying(6),
    created_date timestamp without time zone,
    email_emp character varying(100),
    modified_by character varying(6),
    modified_date timestamp without time zone,
    name_emp character varying(200) NOT NULL,
    position_emp character varying(100),
    status boolean,
    surname_dep character varying(100)
);
 #   DROP TABLE sc_management.employee;
       sc_management         heap    admin    false    6            ?            1259    16434    employee_id_seq    SEQUENCE        CREATE SEQUENCE sc_management.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE sc_management.employee_id_seq;
       sc_management          admin    false    223    6            )           0    0    employee_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE sc_management.employee_id_seq OWNED BY sc_management.employee.id;
          sc_management          admin    false    222            ?            1259    16407 
   enterprise    TABLE     y  CREATE TABLE sc_management.enterprise (
    id bigint NOT NULL,
    address_ent character varying(200),
    created_by character varying(6),
    created_date timestamp without time zone,
    modified_by character varying(6),
    modified_date timestamp without time zone,
    name_ent character varying(100) NOT NULL,
    phone_ent character varying(10),
    status boolean
);
 %   DROP TABLE sc_management.enterprise;
       sc_management         heap    admin    false    6            ?            1259    16406    enterprise_id_seq    SEQUENCE     ?   CREATE SEQUENCE sc_management.enterprise_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE sc_management.enterprise_id_seq;
       sc_management          admin    false    6    217            *           0    0    enterprise_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE sc_management.enterprise_id_seq OWNED BY sc_management.enterprise.id;
          sc_management          admin    false    216            z           2604    16417    department id    DEFAULT     |   ALTER TABLE ONLY sc_management.department ALTER COLUMN id SET DEFAULT nextval('sc_management.department_id_seq'::regclass);
 C   ALTER TABLE sc_management.department ALTER COLUMN id DROP DEFAULT;
       sc_management          admin    false    219    218    219            {           2604    16431    department_employee id    DEFAULT     ?   ALTER TABLE ONLY sc_management.department_employee ALTER COLUMN id SET DEFAULT nextval('sc_management.department_employee_id_seq'::regclass);
 L   ALTER TABLE sc_management.department_employee ALTER COLUMN id DROP DEFAULT;
       sc_management          admin    false    220    221    221            |           2604    16438    employee id    DEFAULT     x   ALTER TABLE ONLY sc_management.employee ALTER COLUMN id SET DEFAULT nextval('sc_management.employee_id_seq'::regclass);
 A   ALTER TABLE sc_management.employee ALTER COLUMN id DROP DEFAULT;
       sc_management          admin    false    223    222    223            y           2604    16410    enterprise id    DEFAULT     |   ALTER TABLE ONLY sc_management.enterprise ALTER COLUMN id SET DEFAULT nextval('sc_management.enterprise_id_seq'::regclass);
 C   ALTER TABLE sc_management.enterprise ALTER COLUMN id DROP DEFAULT;
       sc_management          admin    false    216    217    217                      0    16399 
   enterprise 
   TABLE DATA           ?   COPY public.enterprise (id_ent, name_ent, address_ent, phone_ent, status, created_by, created_date, modified_by, modified_date) FROM stdin;
    public          postgres    false    215   I3                 0    16414 
   department 
   TABLE DATA           ?   COPY sc_management.department (id, created_by, created_date, description_dep, modified_by, modified_date, name_dep, phone_dep, status, id_enterprise) FROM stdin;
    sc_management          admin    false    219   f3                 0    16428    department_employee 
   TABLE DATA           ?   COPY sc_management.department_employee (id, created_by, created_date, modified_by, modified_date, status, id_department, id_employee) FROM stdin;
    sc_management          admin    false    221   ?3                  0    16435    employee 
   TABLE DATA           ?   COPY sc_management.employee (id, age_emp, created_by, created_date, email_emp, modified_by, modified_date, name_emp, position_emp, status, surname_dep) FROM stdin;
    sc_management          admin    false    223   4                 0    16407 
   enterprise 
   TABLE DATA           ?   COPY sc_management.enterprise (id, address_ent, created_by, created_date, modified_by, modified_date, name_ent, phone_ent, status) FROM stdin;
    sc_management          admin    false    217   #4       +           0    0    department_employee_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('sc_management.department_employee_id_seq', 1, false);
          sc_management          admin    false    220            ,           0    0    department_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('sc_management.department_id_seq', 1, true);
          sc_management          admin    false    218            -           0    0    employee_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('sc_management.employee_id_seq', 1, false);
          sc_management          admin    false    222            .           0    0    enterprise_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('sc_management.enterprise_id_seq', 4, true);
          sc_management          admin    false    216            ~           2606    16403    enterprise enterprises_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.enterprise
    ADD CONSTRAINT enterprises_pkey PRIMARY KEY (id_ent);
 E   ALTER TABLE ONLY public.enterprise DROP CONSTRAINT enterprises_pkey;
       public            postgres    false    215            ?           2606    16433 ,   department_employee department_employee_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY sc_management.department_employee
    ADD CONSTRAINT department_employee_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY sc_management.department_employee DROP CONSTRAINT department_employee_pkey;
       sc_management            admin    false    221            ?           2606    16421    department department_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY sc_management.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY sc_management.department DROP CONSTRAINT department_pkey;
       sc_management            admin    false    219            ?           2606    16442    employee employee_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY sc_management.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY sc_management.employee DROP CONSTRAINT employee_pkey;
       sc_management            admin    false    223            ?           2606    16412    enterprise enterprise_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY sc_management.enterprise
    ADD CONSTRAINT enterprise_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY sc_management.enterprise DROP CONSTRAINT enterprise_pkey;
       sc_management            admin    false    217            ?           2606    16443 /   department_employee fk1g18av4ep9sf9p2ulkegg2y5h    FK CONSTRAINT     ?   ALTER TABLE ONLY sc_management.department_employee
    ADD CONSTRAINT fk1g18av4ep9sf9p2ulkegg2y5h FOREIGN KEY (id_department) REFERENCES sc_management.department(id);
 `   ALTER TABLE ONLY sc_management.department_employee DROP CONSTRAINT fk1g18av4ep9sf9p2ulkegg2y5h;
       sc_management          admin    false    3202    219    221            ?           2606    16448 /   department_employee fk2dnhb7xs1kxv976ahme162woa    FK CONSTRAINT     ?   ALTER TABLE ONLY sc_management.department_employee
    ADD CONSTRAINT fk2dnhb7xs1kxv976ahme162woa FOREIGN KEY (id_employee) REFERENCES sc_management.employee(id);
 `   ALTER TABLE ONLY sc_management.department_employee DROP CONSTRAINT fk2dnhb7xs1kxv976ahme162woa;
       sc_management          admin    false    221    223    3206            ?           2606    16422 &   department fkopmgb6emcee90k5hxpkjtpqrg    FK CONSTRAINT     ?   ALTER TABLE ONLY sc_management.department
    ADD CONSTRAINT fkopmgb6emcee90k5hxpkjtpqrg FOREIGN KEY (id_enterprise) REFERENCES sc_management.enterprise(id);
 W   ALTER TABLE ONLY sc_management.department DROP CONSTRAINT fkopmgb6emcee90k5hxpkjtpqrg;
       sc_management          admin    false    217    219    3200                  x?????? ? ?         s   x??1?0 ??y???(v	D?#/?b?Bj?Ҥ??H7??$????	y???1y?qHp?M?.E?W??MQ?%?"?u?M?zWA??m?a~?=??W?+ǘb?@r?w?? ?!?            x?????? ? ?             x?????? ? ?         Y  x?m?Kn?0E??*? ?????Z??Zڎ?<S????$RŨK`c5-???Ȓ?|?y7$vx???????,K	
?yݬ???V0U??
2???T???)?3
T?"N?ħ4ED^??d???Kõ*?\&"BĤ?8Y?|??|?=xltmz???͔N??0C??????E??})??????	?'4??{?0??X];?d\?8?d?Qr???Ի?:??<[???z:" d؝??????{c?֭??d??{??????Bot????????;????j䇮?(?R?ԡ.	Ob)??Y2???Z#?A?}K_0A?o??@??"??硌#??c??a{ן?w???y?^
??     