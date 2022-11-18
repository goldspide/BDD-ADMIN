<<<<<<< HEAD
 Create table PRESSING(
    Nom_Pressing  VARCHAR2(50) NOT NULL,
    Tel_Pressing  VARCHAR2(30) NOT NULL,
    Localisation_Pressing  VARCHAR2(50) NOT NULL,
    Heure_Ouverture  TIME(7) NOT NULL,
    Heure_Fermeture  TIME(7) NOT NULL,
 );

 Create table PERSONNE(
    ADRESSEidAdresse  VARCHAR2(50) NOT NULL,
    Nom_personne  VARCHAR2(30) NOT NULL,
    prenom_personne  VARCHAR2(50) NOT NULL,
    email  VARCHAR2(100) NOT NULL,
    tel_personne  VARCHAR2(30) NOT NULL,

 );

 Create table PRIVILEGE(
    ROLEUTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    ROLEPRESSINGidPressing  VARCHAR2(30) NOT NULL,
    idprivilege  VARCHAR2(30) NOT NULL,
    nom_Privilege VARCHAR2(30) NOT NULL
 );

  
  Create table PERSONNE_PHYSIQUE(
    idPersonne_Phy VARCHAR2(30) NOT NULL,
    UTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    PERSONNEidPersonne VARCHAR2(30) NOT NULL,
     
 );


  Create table UTILISAREUR(
    idUtilisateur VARCHAR2(30) NOT NULL,
    Nom_Utilisateur VARCHAR2(30) NOT NULL,
    Tel_Utilisateur VARCHAR2(30) NOT NULL,

 );

  Create table CLIENT(
    idClient VARCHAR2(30) NOT NULL,
    PERSONNEidPersonne VARCHAR2(30) NOT NULL,
 
 );
  Create table ANNONCE(
    idAnnonce VARCHAR2(50) NOT NULL,
    description_A VARCHAR2(255) NOT NULL,
    UTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    PRESSINGidPressing VARCHAR2(30) NOT NULL
 );

  Create table BESOINCLIENT(
    idBesoinClient VARCHAR2(30) NOT NULL,
    budget_client VARCHAR2(30) NOT NULL,
    UTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    CLIENTidClient VARCHAR2(30) NOT NULL,
    PRESSINGidPressing VARCHAR2(30) NOT NULL,
    ADRESSEidAdresseLivraison VARCHAR2(30) NOT NULL,
    ADRESSEidAdresserRamassage VARCHAR2(30) NOT NULL,
    ADRESSEidAdresseFacturation VARCHAR2(30) NOT NULL

 );

  Create table PROMO(
    OFFRESERVICEidServie VARCHAR2(30) NOT NULL,
    OFRRETYPE_LINGEidType_L VARCHAR2(30) NOT NULL,
    ANNONCEidAnnoce VARCHAR2(30) NOT NULL,
    Promr_Date_Debut DATE,
    Promo_Date_Fin DATE
 );

  Create table LINGECLIENT(
    TYPE_LINGEidType_L VARCHAR2(50) NOT NULL,
    BESOINCLIENTidBesoinClient VARCHAR2(30) NOT NULL,
    couleur_ligne VARCHAR2(30) NOT NULL,
    Qte_ligne VARCHAR2(30) NOT NULL,
 );

  Create table ADRESSE(
    idADRESSE VARCHAR2(30) NOT NULL
 );

   Create table TYPE_LINGE(
    idType_L VARCHAR2(30) NOT NULL,
    nom_Type_L VARCHAR2(30) NOT NULL,
    matiere_Type_L VARCHAR2(30) NOT NULL 
 );

   Create table OFFRE(
    SERVICEidService VARCHAR2(30) NOT NULL,
    TYPE_LINGEidType_L VARCHAR2(30) NOT NULL,
    Type_Linge_Offre VARCHAR2(30) NOT NULL
 );

    Create table TYPE_SERVICE(
    idType_S VARCHAR2(30) NOT NULL,
    nom_Type_Service VARCHAR2(30) NOT NULL
 );

     Create table NEGOCIATION_PRESSING_CLIENT(
    PRESSINGidPressing VARCHAR2(30) NOT NULL,
    BESOINCLIENTidBesoinClient VARCHAR2(30) NOT NULL
 );
   Create table ROLE_U(
    UTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    PRESSINGidPressing VARCHAR2(30) NOT NULL
 );

   Create table SERVICE(
    idService VARCHAR2(30) NOT NULL,
    nom_Service VARCHAR2(30) NOT NULL,
    PRESSINGidPressing VARCHAR2(30) NOT NULL,
    TYPE_SERVICEidTYPE_S VARCHAR2(30) NOT NULL
 ); 
 
   Create table PRIX(
    PROMOOFFRESERVICEidService VARCHAR2(30) NOT NULL,
    PROMOOFFRETYPE_LINGEidType_L VARCHAR2(30) NOT NULL,
    PROMOANNONCEidAnnonce VARCHAR2(30) NOT NULL,
    LINGECLIENTTYPE_LINGEidType_L VARCHAR2(30) NOT NULL,
    LINGECLIENTBESOINCLIENTidBesoinClient VARCHAR2(30) NOT NULL,
    Tarif_U INTEGER NOT NULL
    
 );











 
  


  


=======
 Create table PRESSING(
    Nom_Pressing  VARCHAR2(50) NOT NULL,
    Tel_Pressing  VARCHAR2(30) NOT NULL,
    Localisation_Pressing  VARCHAR2(50) NOT NULL,
    Heure_Ouverture  timestamp NOT NULL,
    Heure_Fermeture  timestamp NULL
 );

 Create table PERSONNE(
    ADRESSEidAdresse  VARCHAR2(50) NOT NULL,
    Nom_personne  VARCHAR2(30) NOT NULL,
    prenom_personne  VARCHAR2(50) NOT NULL,
    email  VARCHAR2(100) NOT NULL,
    tel_personne  VARCHAR2(30) NOT NULL

 );

 Create table PRIVILEGE(
    ROLEUTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    ROLEPRESSINGidPressing  VARCHAR2(30) NOT NULL,
    idprivilege  VARCHAR2(30) NOT NULL,
    nom_Privilege VARCHAR2(30) NOT NULL
 );

  
  Create table PERSONNE_PHYSIQUE(
    idPersonne_Phy VARCHAR2(30) NOT NULL,
    UTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    PERSONNEidPersonne VARCHAR2(30) NOT NULL
     
 );


  Create table UTILISATEUR(
    idUtilisateur VARCHAR2(30) NOT NULL,
    Nom_Utilisateur VARCHAR2(30) NOT NULL,
    Tel_Utilisateur VARCHAR2(30) NOT NULL

 );

  Create table CLIENT(
    idClient VARCHAR2(30) NOT NULL,
    PERSONNEidPersonne VARCHAR2(30) NOT NULL
 
 );
  Create table ANNONCE(
    idAnnonce VARCHAR2(50) NOT NULL,
    description_A VARCHAR2(255) NOT NULL,
    UTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    PRESSINGidPressing VARCHAR2(30) NOT NULL
 );

  Create table BESOINCLIENT(
    idBesoinClient VARCHAR2(30) NOT NULL,
    budget_client VARCHAR2(30) NOT NULL,
    UTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    CLIENTidClient VARCHAR2(30) NOT NULL,
    PRESSINGidPressing VARCHAR2(30) NOT NULL,
    ADRESSEidAdresseLivraison VARCHAR2(30) NOT NULL,
    ADRESSEidAdresserRamassage VARCHAR2(30) NOT NULL,
    ADRESSEidAdresseFacturation VARCHAR2(30) NOT NULL

 );

  Create table PROMO(
    OFFRESERVICEidServie VARCHAR2(30) NOT NULL,
    OFRRETYPE_LINGEidType_L VARCHAR2(30) NOT NULL,
    ANNONCEidAnnoce VARCHAR2(30) NOT NULL,
    Promr_Date_Debut DATE,
    Promo_Date_Fin DATE
 );

  Create table LINGECLIENT(
    TYPE_LINGEidType_L VARCHAR2(50) NOT NULL,
    BESOINCLIENTidBesoinClient VARCHAR2(30) NOT NULL,
    couleur_ligne VARCHAR2(30) NOT NULL,
    Qte_ligne VARCHAR2(30) NOT NULL
 );

  Create table ADRESSE(
    idADRESSE VARCHAR2(30) NOT NULL
 );

   Create table TYPE_LINGE(
    idType_L VARCHAR2(30) NOT NULL,
    nom_Type_L VARCHAR2(30) NOT NULL,
    matiere_Type_L VARCHAR2(30) NOT NULL 
 );

   Create table OFFRE(
    SERVICEidService VARCHAR2(30) NOT NULL,
    TYPE_LINGEidType_L VARCHAR2(30) NOT NULL,
    Type_Linge_Offre VARCHAR2(30) NOT NULL
 );

    Create table TYPE_SERVICE(
    idType_S VARCHAR2(30) NOT NULL,
    nom_Type_Service VARCHAR2(30) NOT NULL
 );

     Create table NEGOCIATION_PRESSING_CLIENT(
    PRESSINGidPressing VARCHAR2(30) NOT NULL,
    BESOINCLIENTidBesoinClient VARCHAR2(30) NOT NULL
 );
   Create table ROLE_U(
    UTILISATEURidUtilisateur VARCHAR2(30) NOT NULL,
    PRESSINGidPressing VARCHAR2(30) NOT NULL
 );

   Create table SERVICE(
    idService VARCHAR2(30) NOT NULL,
    nom_Service VARCHAR2(30) NOT NULL,
    PRESSINGidPressing VARCHAR2(30) NOT NULL,
    TYPE_SERVICEidTYPE_S VARCHAR2(30) NOT NULL
 ); 
 
   Create table PRIX(
    PROMOOFFRESERVICEidService VARCHAR2(30) NOT NULL,
    PROMOOFFRETYPE_LINGEidType_L VARCHAR2(30) NOT NULL,
    PROMOANNONCEidAnnonce VARCHAR2(30) NOT NULL,
    LINGECLIENTTYPE_LINGEidType_L VARCHAR2(30) NOT NULL,
    LINGECLIENTBESOINCLIENTidBesoinClient VARCHAR2(30) NOT NULL,
    Tarif_U NUMBER NOT NULL
 );











 
  


  


>>>>>>> e5fc0da77a795f11a7d02be183df380fbd0f2447
 