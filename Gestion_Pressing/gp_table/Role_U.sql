   Create table ROLE_U(
    IdRole_U NUMBER(7)  NOT NULL,  
    NOM_ROLE VARCHAR2(50) NOT NULL,
    DESCRIPTION VARCHAR2(200) NOT NULL,
    UTILISATEUR_idUtilisateur VARCHAR2(30)  NOT NULL,
    PRESSING_idPressing VARCHAR2(30)  NOT NULL,
    PRIMARY KEY(IdRole_U,UTILISATEUR_idUtilisateur,PRESSING_idPressing)
 );












 
  


  


 