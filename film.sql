PGDMP         *                z            film    14.1    14.1 	    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    18253    film    DATABASE     `   CREATE DATABASE film WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE film;
                postgres    false            ?            1259    18255    film    TABLE     ?   CREATE TABLE public.film (
    id integer NOT NULL,
    anno integer,
    genere character varying(255),
    incasso character varying(255),
    regista character varying(255),
    titolo character varying(255)
);
    DROP TABLE public.film;
       public         heap    postgres    false            ?            1259    18254    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            ?          0    18255    film 
   TABLE DATA           J   COPY public.film (id, anno, genere, incasso, regista, titolo) FROM stdin;
    public          postgres    false    210   z       ?           0    0    hibernate_sequence    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hibernate_sequence', 6, true);
          public          postgres    false    209            ]           2606    18261    film film_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.film DROP CONSTRAINT film_pkey;
       public            postgres    false    210            ?   ?  x?]?K??0 ?qXE?A??E??>j?$@F ?$??????X???I?o?=u? t?W?9??7@????=6	??!?٫5FLN??ͨۮ?d><?G?e??-\ќ?i??P2???Q??1?P????0e????a?Z????/lўW?y:"????`??????&0S_>&?p?V?!Np? )a?P?????i0??&?,qJ???U?^ͮ???V~J????n?I?̴???32???Co?&jW3?M?E? ?@?2J??ǒ???*$??$R???mK?E?o???????ڛ?{?,e#?H==s????o??q?e??%???cri?$?L???A?A?	%?ϗbv?: Tr$%??춲??z???;??G?????	??????Ρ??k+??&???o;????f?H?]??O??<?,?ߪ?(
??     