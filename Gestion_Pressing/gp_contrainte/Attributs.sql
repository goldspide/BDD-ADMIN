ALTER TABLE ATTRIBUT
ADD (         
       CONSTRAINT     ty_id_fk
                     FOREIGN KEY (TYPE_SERVICEidTYPE_S)
                     REFERENCES TYPE_SERVICE (idType_S)
    ) ;  