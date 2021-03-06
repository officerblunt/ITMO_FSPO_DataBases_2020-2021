PGDMP     '    )        
        y            shop    13.1    13.1 +    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16409    shop    DATABASE     a   CREATE DATABASE shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE shop;
                postgres    false                        2615    16410    shp    SCHEMA        CREATE SCHEMA shp;
    DROP SCHEMA shp;
                postgres    false            �            1259    16446    client    TABLE        CREATE TABLE shp.client (
    client_fio text NOT NULL,
    client_contacts text NOT NULL,
    client_payment text NOT NULL
);
    DROP TABLE shp.client;
       shp         heap    postgres    false    6            �            1259    16430    courier    TABLE     `   CREATE TABLE shp.courier (
    courier_fio text NOT NULL,
    courier_contacts text NOT NULL
);
    DROP TABLE shp.courier;
       shp         heap    postgres    false    6            �            1259    24670    delivery_house    TABLE       CREATE TABLE shp.delivery_house (
    delivery_id integer NOT NULL,
    order_id integer NOT NULL,
    courier_fio text NOT NULL,
    client_fio text NOT NULL,
    house_adress text NOT NULL,
    delivery_date date NOT NULL,
    delivery_status text NOT NULL
);
    DROP TABLE shp.delivery_house;
       shp         heap    postgres    false    6            �            1259    24698    delivery_pick_up    TABLE     
  CREATE TABLE shp.delivery_pick_up (
    delivery_id integer NOT NULL,
    order_id integer NOT NULL,
    courier_fio text NOT NULL,
    client_fio text NOT NULL,
    pick_up_adress text NOT NULL,
    delivery_date date NOT NULL,
    delivery_status text NOT NULL
);
 !   DROP TABLE shp.delivery_pick_up;
       shp         heap    postgres    false    6            �            1259    16438    house    TABLE     e   CREATE TABLE shp.house (
    house_adress text NOT NULL,
    delivery_time time without time zone
);
    DROP TABLE shp.house;
       shp         heap    postgres    false    6            �            1259    24624    list    TABLE     }   CREATE TABLE shp.list (
    list_id integer NOT NULL,
    list_quantity integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE shp.list;
       shp         heap    postgres    false    6            �            1259    24634    order    TABLE     �   CREATE TABLE shp."order" (
    order_id integer NOT NULL,
    client_fio text NOT NULL,
    list_id integer NOT NULL,
    order_status text NOT NULL,
    order_price integer NOT NULL
);
    DROP TABLE shp."order";
       shp         heap    postgres    false    6            �            1259    16422    pick_up    TABLE     _   CREATE TABLE shp.pick_up (
    pick_up_adress text NOT NULL,
    pick_up_time text NOT NULL
);
    DROP TABLE shp.pick_up;
       shp         heap    postgres    false    6            �            1259    24616    product    TABLE     �   CREATE TABLE shp.product (
    product_id integer NOT NULL,
    product_quantity integer NOT NULL,
    product_price integer NOT NULL,
    product_name text NOT NULL
);
    DROP TABLE shp.product;
       shp         heap    postgres    false    6            �          0    16446    client 
   TABLE DATA           J   COPY shp.client (client_fio, client_contacts, client_payment) FROM stdin;
    shp          postgres    false    204   {3       �          0    16430    courier 
   TABLE DATA           =   COPY shp.courier (courier_fio, courier_contacts) FROM stdin;
    shp          postgres    false    202   �3       �          0    24670    delivery_house 
   TABLE DATA           �   COPY shp.delivery_house (delivery_id, order_id, courier_fio, client_fio, house_adress, delivery_date, delivery_status) FROM stdin;
    shp          postgres    false    208   4       �          0    24698    delivery_pick_up 
   TABLE DATA           �   COPY shp.delivery_pick_up (delivery_id, order_id, courier_fio, client_fio, pick_up_adress, delivery_date, delivery_status) FROM stdin;
    shp          postgres    false    209   �4       �          0    16438    house 
   TABLE DATA           9   COPY shp.house (house_adress, delivery_time) FROM stdin;
    shp          postgres    false    203   �4       �          0    24624    list 
   TABLE DATA           ?   COPY shp.list (list_id, list_quantity, product_id) FROM stdin;
    shp          postgres    false    206   &5       �          0    24634    order 
   TABLE DATA           X   COPY shp."order" (order_id, client_fio, list_id, order_status, order_price) FROM stdin;
    shp          postgres    false    207   I5       �          0    16422    pick_up 
   TABLE DATA           <   COPY shp.pick_up (pick_up_adress, pick_up_time) FROM stdin;
    shp          postgres    false    201   �5       �          0    24616    product 
   TABLE DATA           Y   COPY shp.product (product_id, product_quantity, product_price, product_name) FROM stdin;
    shp          postgres    false    205   �5       P           2606    16453    client client_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY shp.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (client_fio);
 9   ALTER TABLE ONLY shp.client DROP CONSTRAINT client_pkey;
       shp            postgres    false    204            L           2606    16437    courier courier_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY shp.courier
    ADD CONSTRAINT courier_pkey PRIMARY KEY (courier_fio);
 ;   ALTER TABLE ONLY shp.courier DROP CONSTRAINT courier_pkey;
       shp            postgres    false    202            X           2606    24677 "   delivery_house delivery_house_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY shp.delivery_house
    ADD CONSTRAINT delivery_house_pkey PRIMARY KEY (delivery_id);
 I   ALTER TABLE ONLY shp.delivery_house DROP CONSTRAINT delivery_house_pkey;
       shp            postgres    false    208            Z           2606    24705 &   delivery_pick_up delivery_pick-up_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY shp.delivery_pick_up
    ADD CONSTRAINT "delivery_pick-up_pkey" PRIMARY KEY (delivery_id);
 O   ALTER TABLE ONLY shp.delivery_pick_up DROP CONSTRAINT "delivery_pick-up_pkey";
       shp            postgres    false    209            N           2606    16445    house house_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY shp.house
    ADD CONSTRAINT house_pkey PRIMARY KEY (house_adress);
 7   ALTER TABLE ONLY shp.house DROP CONSTRAINT house_pkey;
       shp            postgres    false    203            T           2606    24628    list list_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY shp.list
    ADD CONSTRAINT list_pkey PRIMARY KEY (list_id);
 5   ALTER TABLE ONLY shp.list DROP CONSTRAINT list_pkey;
       shp            postgres    false    206            V           2606    24641    order order_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY shp."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (order_id);
 9   ALTER TABLE ONLY shp."order" DROP CONSTRAINT order_pkey;
       shp            postgres    false    207            J           2606    16429    pick_up pick-up_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY shp.pick_up
    ADD CONSTRAINT "pick-up_pkey" PRIMARY KEY (pick_up_adress);
 =   ALTER TABLE ONLY shp.pick_up DROP CONSTRAINT "pick-up_pkey";
       shp            postgres    false    201            R           2606    24623    product product_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY shp.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 ;   ALTER TABLE ONLY shp.product DROP CONSTRAINT product_pkey;
       shp            postgres    false    205            `           2606    24688 -   delivery_house delivery_house_client_fio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY shp.delivery_house
    ADD CONSTRAINT delivery_house_client_fio_fkey FOREIGN KEY (client_fio) REFERENCES shp.client(client_fio);
 T   ALTER TABLE ONLY shp.delivery_house DROP CONSTRAINT delivery_house_client_fio_fkey;
       shp          postgres    false    208    204    2896            _           2606    24683 .   delivery_house delivery_house_courier_fio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY shp.delivery_house
    ADD CONSTRAINT delivery_house_courier_fio_fkey FOREIGN KEY (courier_fio) REFERENCES shp.courier(courier_fio);
 U   ALTER TABLE ONLY shp.delivery_house DROP CONSTRAINT delivery_house_courier_fio_fkey;
       shp          postgres    false    2892    202    208            a           2606    24693 /   delivery_house delivery_house_house_adress_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY shp.delivery_house
    ADD CONSTRAINT delivery_house_house_adress_fkey FOREIGN KEY (house_adress) REFERENCES shp.house(house_adress);
 V   ALTER TABLE ONLY shp.delivery_house DROP CONSTRAINT delivery_house_house_adress_fkey;
       shp          postgres    false    203    208    2894            ^           2606    24678 +   delivery_house delivery_house_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY shp.delivery_house
    ADD CONSTRAINT delivery_house_order_id_fkey FOREIGN KEY (order_id) REFERENCES shp."order"(order_id);
 R   ALTER TABLE ONLY shp.delivery_house DROP CONSTRAINT delivery_house_order_id_fkey;
       shp          postgres    false    207    2902    208            d           2606    24716 1   delivery_pick_up delivery_pick-up_client_fio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY shp.delivery_pick_up
    ADD CONSTRAINT "delivery_pick-up_client_fio_fkey" FOREIGN KEY (client_fio) REFERENCES shp.client(client_fio);
 Z   ALTER TABLE ONLY shp.delivery_pick_up DROP CONSTRAINT "delivery_pick-up_client_fio_fkey";
       shp          postgres    false    209    2896    204            c           2606    24711 2   delivery_pick_up delivery_pick-up_courier_fio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY shp.delivery_pick_up
    ADD CONSTRAINT "delivery_pick-up_courier_fio_fkey" FOREIGN KEY (courier_fio) REFERENCES shp.courier(courier_fio);
 [   ALTER TABLE ONLY shp.delivery_pick_up DROP CONSTRAINT "delivery_pick-up_courier_fio_fkey";
       shp          postgres    false    2892    202    209            b           2606    24706 /   delivery_pick_up delivery_pick-up_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY shp.delivery_pick_up
    ADD CONSTRAINT "delivery_pick-up_order_id_fkey" FOREIGN KEY (order_id) REFERENCES shp."order"(order_id);
 X   ALTER TABLE ONLY shp.delivery_pick_up DROP CONSTRAINT "delivery_pick-up_order_id_fkey";
       shp          postgres    false    2902    209    207            e           2606    24721 5   delivery_pick_up delivery_pick-up_pick-up_adress_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY shp.delivery_pick_up
    ADD CONSTRAINT "delivery_pick-up_pick-up_adress_fkey" FOREIGN KEY (pick_up_adress) REFERENCES shp.pick_up(pick_up_adress);
 ^   ALTER TABLE ONLY shp.delivery_pick_up DROP CONSTRAINT "delivery_pick-up_pick-up_adress_fkey";
       shp          postgres    false    201    209    2890            [           2606    24629    list list_product_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY shp.list
    ADD CONSTRAINT list_product_id_fkey FOREIGN KEY (product_id) REFERENCES shp.product(product_id);
 @   ALTER TABLE ONLY shp.list DROP CONSTRAINT list_product_id_fkey;
       shp          postgres    false    205    2898    206            \           2606    24642    order order_client_fio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY shp."order"
    ADD CONSTRAINT order_client_fio_fkey FOREIGN KEY (client_fio) REFERENCES shp.client(client_fio);
 D   ALTER TABLE ONLY shp."order" DROP CONSTRAINT order_client_fio_fkey;
       shp          postgres    false    207    204    2896            ]           2606    24647    order order_list_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY shp."order"
    ADD CONSTRAINT order_list_id_fkey FOREIGN KEY (list_id) REFERENCES shp.list(list_id);
 A   ALTER TABLE ONLY shp."order" DROP CONSTRAINT order_list_id_fkey;
       shp          postgres    false    2900    206    207            �   P   x��IL���,R�2��2�3 �2������-L-9��3�<����@��� Te``jbjlbl��X������ ��3      �   ,   x�H,��/SH,K��@Nfr�����������9W� |h      �   [   x�%��� @�e�. �=���B�DB����pz��K��1�+��ė�p��_6��箥U�x��$�Lڲ&���jHj7J�s�^      �   T   x�3�4�H,��/S R�9
Nfr�gYbPD)@� ��=�����̼D�=sN##C]#]CN�<����l�=... q��      �   0   x�+��S�I-���+�/KTHѳP�.�S04�40�20�20����� �S
Q      �      x�3�4�4����� �Z      �   /   x�3��,K��/S Q
vfr�!g@Q~rjqqf^:���W� b��      �   $   x�+��S(-����KTH�S0��52������ {q�      �      x�3�440�4�ļ�b�=... ,�)     