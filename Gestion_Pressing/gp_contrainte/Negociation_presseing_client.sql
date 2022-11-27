 -- contrainte de la table NEGOCIATION_PRESSING_CLIENT
 ALTER TABLE NEGOCIATION_PRESSING_CLIENT
ADD (
     CONSTRAINT      nego_Pre_fk
                     FOREIGN KEY (PRESSINGidPressing)
                     REFERENCES PRESSING (idPressing)
    );
 ALTER TABLE NEGOCIATION_PRESSING_CLIENT
ADD (
     CONSTRAINT     nego_beso_fk
                     FOREIGN KEY (BESOINCLIENTidBesoinClient)
                     REFERENCES BESOINCLIENT (idBesoinClient)
);
commit;
       
