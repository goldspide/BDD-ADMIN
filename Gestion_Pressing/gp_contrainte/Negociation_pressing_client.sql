 -- contrainte de la table NEGOCIATION_PRESSING_CLIENT
 ALTER TABLE NEGOCIATION_PRESSING_CLIENT
ADD (
     CONSTRAINT      nego_Pre_fk
                     FOREIGN KEY (PRESSING_idPressing)
                     REFERENCES PRESSING (idPressing)
    );
 ALTER TABLE NEGOCIATION_PRESSING_CLIENT
ADD (
     CONSTRAINT     nego_beso_fk
                     FOREIGN KEY (BESOIN_CLIENT_idBesoinClient)
                     REFERENCES BESOINCLIENT (idBesoinClient)
);
commit;
       
