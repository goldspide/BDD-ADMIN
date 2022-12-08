CREATE SEQUENCE id_increment 
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 50;

INSERT INTO PRESSING 
VALUES(
    id_increment.nextval,
    'Magloire',
    '675982645',
    'akwa',
    '',
    ''
);