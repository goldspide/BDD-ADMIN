-------- contrainte de la table ANNONCE ---------
 ALTER TABLE ANNONCE
ADD (
     CONSTRAINT      annonce_pk
                     PRIMARY KEY (idAnnonce)
    ) ;
 ALTER TABLE ANNONCE
 ADD (
     CONSTRAINT      ann_util_fk
                     FOREIGN KEY (UTILISATEURidUtilisateur)
                     REFERENCES UTILISATEUR (UTILISATEURidUtilisateur)
 );
 ALTER TABLE ANNONCE
 ADD (
     CONSTRAINT     ann_pre_fk
                     FOREIGN KEY (PRESSINGidPressing)
                     REFERENCES PRESSING (idPressing)
 );
 commit;

    
    
    
  
 

