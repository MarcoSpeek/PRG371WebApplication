PGDMP                      |            RegistrationLogin    16.4    16.4 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16403    RegistrationLogin    DATABASE     �   CREATE DATABASE "RegistrationLogin" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 #   DROP DATABASE "RegistrationLogin";
                postgres    false            �            1259    16409    login    TABLE     |   CREATE TABLE public.login (
    lusername character varying(200) NOT NULL,
    lpassword character varying(200) NOT NULL
);
    DROP TABLE public.login;
       public         heap    postgres    false            �            1259    16404    register    TABLE     @  CREATE TABLE public.register (
    username character varying(200) NOT NULL,
    resname character varying(200) NOT NULL,
    ressurname character varying(200) NOT NULL,
    respassword character varying(200) NOT NULL,
    resconfirmpassword character varying(200) NOT NULL,
    email character varying(200) NOT NULL
);
    DROP TABLE public.register;
       public         heap    postgres    false            �          0    16409    login 
   TABLE DATA           5   COPY public.login (lusername, lpassword) FROM stdin;
    public          postgres    false    216   u
       �          0    16404    register 
   TABLE DATA           i   COPY public.register (username, resname, ressurname, respassword, resconfirmpassword, email) FROM stdin;
    public          postgres    false    215   �
       V           2606    16433    login login_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (lusername);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    216            T           2606    16435    register register_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.register
    ADD CONSTRAINT register_pkey PRIMARY KEY (username);
 @   ALTER TABLE ONLY public.register DROP CONSTRAINT register_pkey;
       public            postgres    false    215            �      x������ � �      �      x������ � �     