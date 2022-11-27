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

CREATE SEQUENCE id_incre
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 50;


INSERT INTO PRIVILEGE
VALUES(
    id_utilisateur.nextval,
    id_pressing.nextval,
    id_incre.nextval,
    'Responsable'  
);

INSERT INTO PRIVILEGE
VALUES(
    id_utilisateur.nextval,
    id_pressing.nextval,
    id_incre.nextval,
    'Manager'  
);

INSERT INTO PRIVILEGE
VALUES(
    id_utilisateur.nextval,
    id_pressing.nextval,
    id_incre.nextval,
    'administrateur'  
);

INSERT INTO PRIVILEGE
VALUES(
    id_utilisateur.nextval,
    id_pressing.nextval,
    id_incre.nextval,
    'Controleur'  
);

INSERT INTO PRIVILEGE
VALUES(
    id_utilisateur.nextval,
    id_pressing.nextval,
    id_incre.nextval,
    'Formateur'  
);

INSERT INTO PRIVILEGE
VALUES(
    id_utilisateur.nextval,
    id_pressing.nextval,
    id_incre.nextval,
    'Maintenacier'  
);

INSERT INTO PRIVILEGE
VALUES(
    id_utilisateur.nextval,
    id_pressing.nextval,
    id_incre.nextval,
    'Securite'  
);

INSERT INTO PRIVILEGE
VALUES(
    id_utilisateur.nextval,
    id_pressing.nextval,
    id_incre.nextval,
    'Courcier'  
);

INSERT INTO PRIVILEGE
VALUES(
    id_utilisateur.nextval,
    id_pressing.nextval,
    id_incre.nextval,
    'Receptioniste'  
);
commit;