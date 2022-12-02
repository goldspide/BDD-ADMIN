---------- contrainte de la table ROLE -----------
ALTER TABLE ROLE_U
ADD (
     CONSTRAINT     utile_fk
                     FOREIGN KEY (UTILISATEUR_idUtilisateur)
                     REFERENCES UTILISATEUR(idUtilisateur)
    ) ;
ALTER TABLE ROLE_U
ADD (
     CONSTRAINT presse_fk
                    FOREIGN KEY (PRESSING_idPressing)
                    REFERENCES PRESSING (idPressing)
    ); 
    commit;

