CREATE SEQUENCE id_Increment
MINVALUE 1
START WITH 1
INCREMENT BY 1;

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Ivan',
    '672456328'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Joiice',
    '695413328'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Atangana',
    '653456788'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Bryan',
    '696487528'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Ivana',
    '667958234'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Gregoiry',
    '674593254'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Stephane',
    '685697428'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Mbili',
    '693685986'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Takam',
    '685694726'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Stella',
    '677695821'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Gildas',
    '698769235'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Stone',
    '694265832'
);

INSERT INTO Utilisateur
VALUES(
    id_Increment.nextval,
    'Germain',
    '675852563'
);
commit;