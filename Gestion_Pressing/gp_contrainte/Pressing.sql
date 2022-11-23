------------ contrainte de la table PRESSING --------------

ALTER TABLE PRESSING
ADD (
     CONSTRAINT     press_pk
                     PRIMARY KEY (idPressing)
    ) ;
ALTER TABLE PRESSING
ADD (
     CONSTRAINT     press_fk
                     FOREIGN KEY (UTILISATEURidUtilisateur)
                     REFERENCES UTILISATEUR (idUtilisateur)
    );
     commit;

