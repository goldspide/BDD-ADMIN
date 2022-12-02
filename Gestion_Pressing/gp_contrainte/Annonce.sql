-------- contrainte de la table ANNONCE ---------
 ALTER TABLE ANNONCE
 ADD (
     CONSTRAINT      ann_util_fk
                     FOREIGN KEY (UTILISATEUR_idUtilisateur)
                     REFERENCES UTILISATEUR(idUtilisateur)
 );
 ALTER TABLE ANNONCE
 ADD (
     CONSTRAINT     ann_pre_fk
                     FOREIGN KEY (PRESSING_idPressing)
                     REFERENCES PRESSING(idpressing)
 );
 commit;

    
    
    
  
 

