-- contrainte de la table ROLE

ALTER TABLE ROLE_U
ADD (
     CONSTRAINT     utile_fk
                     FOREIGN KEY (UTILISATEURidUtilisateur)
                     REFERENCES UTILISATEUR(idUtilisateur)
    , CONSTRAINT     press_fk
                     FOREIGN KEY (PRESSINGidPressing)
                     REFERENCES PRESSING (idPressing)
    ) ;
    
-- contrainte de la table PRESSING

ALTER TABLE PRESSING
ADD (
     CONSTRAINT     press_pk
                     PRIMARY KEY (idPressing)
    , CONSTRAINT     press_fk
                     FOREIGN KEY (UTILISATEURidUtilisateur)
                     REFERENCES UTILISATEUR (idUtilisateur)
    ) ;
   

-- contrainte de la table UTILISATEUR

ALTER TABLE UTILISATEUR
ADD (
     CONSTRAINT     utili_pk
                     PRIMARY KEY (idUtilisateur)
    ) ;


-- contrainte de la table PRIVILEGE

ALTER TABLE PRIVILEGE
ADD (
     CONSTRAINT      privi_pk
                     PRIMARY KEY (idprivilege),            

     CONSTRAINT      idutili_fk
                     FOREIGN KEY (ROLEUTILISATEURidUtilisateur)
                     REFERENCES ROLE_U (UTILISATEURidUtilisateur), 
                     
     CONSTRAINT     idpress_fk
                     FOREIGN KEY (ROLEPRESSINGidPressing)
                     REFERENCES ROLE_U (PRESSINGidPressing)
    ) ;

-- contrainte de la table PERSONNE_PHYSIQUE

ALTER TABLE PERSONNE_PHYSIQUE
ADD (
     CONSTRAINT      person_pk
                     PRIMARY KEY (idPersonne_Phy)
    ,            

     CONSTRAINT      idutili_Per_fk
                     FOREIGN KEY (UTILISATEURidUtilisateur)
                     REFERENCES UTILISATEUR (UTILISATEURidUtilisateur)
    , CONSTRAINT     idper_Per_fk
                     FOREIGN KEY (PERSONNEidPersonne)
                     REFERENCES PERSONNE (idPersonne)
    ) ;
    
 -- contrainte de la table PERSONNE

 ALTER TABLE PERSONNE
ADD (
     CONSTRAINT      pers_pk
                     PRIMARY KEY (idPersonne)
    ,            

     CONSTRAINT      address_fk
                     FOREIGN KEY (ADRESSEidAdresse)
                     REFERENCES ADRESSE (idADRESSE)
                     
    ) ;
       
 -- contrainte de la table CLIENT

 ALTER TABLE CLIENT
ADD (
     CONSTRAINT      client_pk
                     PRIMARY KEY (idClient)
    ,            

     CONSTRAINT      idutili_fk
                     FOREIGN KEY (PERSONNEidPersonne)
                     REFERENCES PERSONNE (idPersonne)

    ) ;
       
-- contrainte de la table ADRESSE 

ALTER TABLE ADRESSE
ADD (
     CONSTRAINT      adresse_pk
                     PRIMARY KEY (idADRESSE)
    ) ;
    

 -- contrainte de la table NEGOCIATION_PRESSING_CLIENT

 ALTER TABLE NEGOCIATION_PRESSING_CLIENT
ADD (
    
     CONSTRAINT      nego_Pre_fk
                     FOREIGN KEY (PRESSINGidPressing)
                     REFERENCES PRESSING (idPressing)
    , CONSTRAINT     nego_beso_fk
                     FOREIGN KEY (BESOINCLIENTidBesoinClient)
                     REFERENCES BESOINCLIENT (idBesoinClient)
    ) ;
       

  -- contrainte de la table TYPE_SERVICE

  ALTER TABLE TYPE_SERVICE
ADD (
     CONSTRAINT      tY_ser_pk
                     PRIMARY KEY (idType_S)
    
    ) ;
    

-- contrainte de la table SERVICE

ALTER TABLE SERVICE
ADD (
     CONSTRAINT      service_pk
                     PRIMARY KEY (idService)
    ,            

     CONSTRAINT      pre_id_fk
                     FOREIGN KEY (PRESSINGidPressing)
                     REFERENCES PRESSING (idPressing)
    , CONSTRAINT     ty_id_fk
                     FOREIGN KEY (TYPE_SERVICEidTYPE_S)
                     REFERENCES TYPE_SERVICE (idType_S)
    ) ;
    

 -- contrainte de la table ANNONCE

 ALTER TABLE ANNONCE
ADD (
     CONSTRAINT      annonce_pk
                     PRIMARY KEY (idAnnonce)
    ,            

     CONSTRAINT      ann_util_fk
                     FOREIGN KEY (UTILISATEURidUtilisateur)
                     REFERENCES UTILISATEUR (UTILISATEURidUtilisateur)
    , CONSTRAINT     ann_pre_fk
                     FOREIGN KEY (PRESSINGidPressing)
                     REFERENCES PRESSING (idPressing)
    ) ;
    

-- contrainte de la table PROMO
  ALTER TABLE PROMO 
  ADD (

    CONSTRAINT      OFFRESERVICEidServie_fk
                     FOREIGN KEY (SERVICEidService)
                     REFERENCES SERVICE (idService)

    , CONSTRAINT    OFRRETYPE_LINGEidType_L_fk
                     FOREIGN KEY (TYPE_LINGEidType_L)
                     REFERENCES TYPE_LINGE (idType_L)  


     , CONSTRAINT    ANNONCEidAnnonce_fk
                     FOREIGN KEY (ANNONCEidAnnonce)
                     REFERENCES ANNONCE (idAnnonce) 

                     ) ;
    



-- contrainte de la table PRIX
   ALTER TABLE PRIX
  ADD (

     CONSTRAINT      prix_pk
                     PRIMARY KEY (Tarif_U)
    , 

     CONSTRAINT      PROMOOFFRETYPE_LINGEidType_L 
                     FOREIGN KEY (PROMOOFFRETYPE_LINGEidType_L )
                     REFERENCES TYPE_LINGE (idType_L )

    , CONSTRAINT    PROMOOFFRESERVICEidService 
                     FOREIGN KEY (PROMOOFFRESERVICEidService )
                     REFERENCES SERVICE (idService )  

     CONSTRAINT      PROMOANNONCEidAnnonce
                     FOREIGN KEY (PROMOANNONCEidAnnonce)
                     REFERENCES ANNONCE (idAnnonce)

    , CONSTRAINT    LINGECLIENTTYPE_LINGEidType_L 
                     FOREIGN KEY (LINGECLIENTTYPE_LINGEidType_L )
                     REFERENCES TYPE_LINGE (idType_L )  


     , CONSTRAINT    LINGECLIENTTYPE_LINGEidType_L 
                     FOREIGN KEY (LINGECLIENTBESOINCLIENTidBesoinClient )
                     REFERENCES BESOINCLIENT (idBesoinClient )  

 
                  ) ;

   -- contrainte de la table ATTRIBUT
 


    

    
commit;

  
    
    
     
    
    
    
  
 

