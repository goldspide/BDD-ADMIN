CREATE SEQUENCE id_utilisateur
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 50;

connect gp/gp@//localhost:1521/xepdb1

CREATE SEQUENCE id_pressing
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 50;

CREATE SEQUENCE id_incremen

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction 10% sur le larvage des tapis de plus de 10 metre de long',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction 80%  sur le chemise blance',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction de 50% sur le veste noire ',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction 15% sur les pantalon monsieur mexicain',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction 20% sur les rideaux fait en soua',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction 30% sur les pantalons en coton',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction 60% sur les veste en cachmire',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction 70% sur le veste marron',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction 40% sur les nappe de table en sois',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incremen.nextval,
    'reduction 50% sur les short awayen',
    id_utilisateur.nextval,
    id_pressing.nextval
);

INSERT INTO ANNONCE
VALUES(
    id.id_incre men.nextval,
    'reduction 5% sur les chapeaux en cachmire',
    id_utilisateur.nextval,
    id_pressing.nextval
);
commit;