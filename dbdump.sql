CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;

CREATE TABLE cabanes (
    id integer NOT NULL primary key,
    nom character varying NOT NULL,
    nplaces integer,
    tel character varying,
    web character varying,
    pt geometry,
    region character varying
);

INSERT INTO cabanes (id, nom, nplaces, tel, web, pt, region) VALUES (1, 'Aiguilles Rouges', 80, '027 283 16 49', 'www.caag.ch', '01010000201555000000000000E85A224100000000C08BF840', 'vs');
INSERT INTO cabanes (id, nom, nplaces, tel, web, pt, region) VALUES (2, 'Bertol', 80, '027 283 19 29', 'www.bertol.ch', '010100002015550000000000006885224100000000602EF740', 'vs');
INSERT INTO cabanes (id, nom, nplaces, tel, web, pt, region) VALUES (4, 'Britannia', 134, '027 957 22 88', 'www.britannia.ch',  '01010000201555000000000000A87B234100000000E0ACF840', 'vs');
INSERT INTO cabanes (id, nom, nplaces, tel, web, pt, region) VALUES (3, 'Boval', 90, '081 842 64 03', 'www.sac-bernina.ch', '01010000201555000000000000C824284100000000D0820141', 'gr');
