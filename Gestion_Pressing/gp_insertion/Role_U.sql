CREATE SEQUENCE id_utilisateur
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 50;

CREATE SEQUENCE id_pressing
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 50;

INSERT INTO ROLE_U
VALUES( id_rol.nextval,
    'Interprete',
    'En charge de la liason vocal entre le pressing et le client',
    8,
    3
);

INSERT INTO ROLE_U
VALUES( 
    id_rol.nextval,
    'Interprete',
    'En charge de la liason vocal entre le pressing et le client',
    1,
    4
);

INSERT INTO ROLE_U
VALUES(
    id_rol.nextval, 
    'Interprete',
    'En charge de la liason vocal entre le pressing et le client',
    2,
    5
);

INSERT INTO ROLE_U
VALUES(
    id_rol.nextval,
    'Maintenancier',
    'En charge de la proprete des machine de travail',
    3,
    8
);

INSERT INTO ROLE_U
VALUES(
    id_rol.nextval,
    'Caissier',
    'En charge de la collecte des fond apres service rendu',
    2,
    7
);

INSERT INTO ROLE_U
VALUES(
    id_rol.nextval,
    'Gardien',
    'En charge de la securisation des machine de travail',
    4,
    9
);

INSERT INTO ROLE_U
VALUES(
    id_rol.nextval,
    'manager',
    'En charge de la coordination etre les different unite du pressing ',
    5,
    2
);

INSERT INTO ROLE_U
VALUES(
    id_rol.nextval,
    'menagere',
    'En charge de la propete du pressing',
    6,
    3
);

INSERT INTO ROLE_U
VALUES(
    id_rol.nextval,
    'Rangeur',
    'En charge du pliage et du repasaga des vetement',
    7,
    4
);
commit;
