PGDMP  8                     |            DB    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16412    DB    DATABASE        CREATE DATABASE "DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "DB";
                postgres    false            �            1259    16420    Login    TABLE     d   CREATE TABLE public."Login" (
    "lUserName" "char" NOT NULL,
    "lPassword" "char"[] NOT NULL
);
    DROP TABLE public."Login";
       public         heap    postgres    false            �            1259    16413    Register    TABLE     �   CREATE TABLE public."Register" (
    username "char" NOT NULL,
    name "char" NOT NULL,
    surname "char" NOT NULL,
    password "char"[] NOT NULL,
    "confirmPassword" "char"[] NOT NULL,
    email "char"
);
    DROP TABLE public."Register";
       public         heap    postgres    false            �          0    16420    Login 
   TABLE DATA           ;   COPY public."Login" ("lUserName", "lPassword") FROM stdin;
    public          postgres    false    216   -       �          0    16413    Register 
   TABLE DATA           a   COPY public."Register" (username, name, surname, password, "confirmPassword", email) FROM stdin;
    public          postgres    false    215   J       V           2606    16426    Login Login_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY ("lUserName");
 >   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_pkey";
       public            postgres    false    216            T           2606    16419    Register Register_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Register"
    ADD CONSTRAINT "Register_pkey" PRIMARY KEY (username);
 D   ALTER TABLE ONLY public."Register" DROP CONSTRAINT "Register_pkey";
       public            postgres    false    215            W           2606    16427    Login userName    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "userName" FOREIGN KEY ("lUserName") REFERENCES public."Register"(username);
 <   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "userName";
       public          postgres    false    215    4692    216            �      x������ � �      �      x������ � �     