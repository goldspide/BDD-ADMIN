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
VALUES(
    'Interprete',
    'En charge de la liason vocal entre le pressing et le client',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ROLE_U
VALUES(
    'Interprete',
    'En charge de la liason vocal entre le pressing et le client',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ROLE_U
VALUES(
    'Interprete',
    'En charge de la liason vocal entre le pressing et le client',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ROLE_U
VALUES(
    'Maintenancier',
    'En charge de la proprete des machine de travail',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ROLE_U
VALUES(
    'Caissier',
    'En charge de la collecte des fond apres service rendu',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ROLE_U
VALUES(
    'Gardien',
    'En charge de la securisation des machine de travail',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ROLE_U
VALUES(
    'manager',
    'En charge de la coordination etre les different unite du pressing ',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ROLE_U
VALUES(
    'menagere',
    'En charge de la propete du pressing',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ROLE_U
VALUES(
    'Rangeur',
    'En charge du pliage et du repasaga des vetement',
    id_utilisateur.nextval,
    id_pressing.nextval
);
commit;
