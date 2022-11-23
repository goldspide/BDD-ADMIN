------------ contrainte de la table PRIVILEGE  -------------

ALTER TABLE PRIVILEGE
ADD (
     CONSTRAINT      privi_pk
                     PRIMARY KEY (idprivilege)
    ) ;
ALTER TABLE PRIVILEGE
ADD (
     CONSTRAINT      idutili_fk
                     FOREIGN KEY (ROLEUTILISATEURidUtilisateur)
                     REFERENCES ROLE_U (UTILISATEURidUtilisateur)
     );                     
ALTER TABLE PRIVILEGE
ADD (
     CONSTRAINT     idpress_fk
                     FOREIGN KEY (ROLEPRESSINGidPressing)
                     REFERENCES ROLE_U (PRESSINGidPressing)
    );
    commit;                 