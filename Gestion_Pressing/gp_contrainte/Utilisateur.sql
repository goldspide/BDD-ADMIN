--------- contrainte de la table UTILISATEUR ----------

ALTER TABLE UTILISATEUR
ADD (
     CONSTRAINT     utili_pk
                     PRIMARY KEY (idUtilisateur)
    ) ;
    commit;

