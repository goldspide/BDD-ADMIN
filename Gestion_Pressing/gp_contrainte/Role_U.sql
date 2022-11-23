---------- contrainte de la table ROLE -----------
ALTER TABLE ROLE_U
ADD (
     CONSTRAINT     utile_fk
                     FOREIGN KEY (UTILISATEURidUtilisateur)
                     REFERENCES UTILISATEUR(idUtilisateur)
    ) ;
ALTER TABLE ROLE_U
ADD (
     CONSTRAINT press_fk
                    FOREIGN KEY (PRESSINGidPressing)
                    REFERENCES PRESSING (idPressing)
    ); 
    commit;

