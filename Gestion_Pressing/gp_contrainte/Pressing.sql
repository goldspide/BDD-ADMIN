------------ contrainte de la table PRESSING --------------
ALTER TABLE PRESSING
ADD (
     CONSTRAINT     press_fk
                     FOREIGN KEY (UTILISATEUR_idUtilisateur)
                     REFERENCES UTILISATEUR (idUtilisateur)
    );
     commit;

