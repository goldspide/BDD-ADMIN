------------ contrainte de la table PRIVILEGE  -------------
ALTER TABLE PRIVILEGE
ADD (
     CONSTRAINT      idutili_fk
                     FOREIGN KEY (ROLE_UTILISATEUR_idUtilisateur)
                     REFERENCES ROLE_U(UTILISATEUR_idUtilisateur)
     );                     
ALTER TABLE PRIVILEGE
ADD (
     CONSTRAINT     idpress_fk
                     FOREIGN KEY (ROLE_PRESSING_idPressing)
                     REFERENCES ROLE_U(PRESSING_idPressing)
    );
    commit;                 