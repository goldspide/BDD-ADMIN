 Create table PRESSING(
    Nom_Pressing  VARCHAR(50) NOT NULL,
    Tel_Pressing  VARCHAR(30) NOT NULL,
    Localisation_Pressing  VARCHAR(50) NOT NULL,
    Heure_Ouverture  TIME(7) NOT NULL,
    Heure_Fermeture  TIME(7) NOT NULL,
 );

 Create table PERSONNE(
    ADRESSEidAdresse  VARCHAR(50) NOT NULL,
    Nom_personne  VARCHAR(30) NOT NULL,
    prenom_personne  VARCHAR(50) NOT NULL,
    email  VARCHAR(100) NOT NULL,
    tel_personne  VARCHAR(30) NOT NULL,

 );

 Create table PRIVILEGE(
    ROLEUTILISATEURidUtilisateur VARCHAR(30) NOT NULL,
    ROLEPRESSINGidPressing  VARCHAR(30) NOT NULL,
    idprivilege  VARCHAR(30) NOT NULL,
    nom_Privilege VARCHAR(30) NOT NULL
 );

  Create table PERSONNE_PHYSIQUE(
    idPersonne_Phy VARCHAR(30) NOT NULL,
    UTILISATEURidUtilisateur VARCHAR(30) NOT NULL,
    PERSONNEidPersonne VARCHAR(30) NOT NULL,
     
 );

  Create table UTILISAREUR(
    idUtilisateur VARCHAR(30) NOT NULL,
    Nom_Utilisateur VARCHAR(30) NOT NULL,
    Tel_Utilisateur VARCHAR(30) NOT NULL,

 );

  Create table CLIENT(
    idClient VARCHAR(30) NOT NULL,
    PERSONNEidPersonne VARCHAR(30) NOT NULL,
 
 );
  Create table ANNONCE(
    idAnnonce VARCHAR(50) NOT NULL,
    description_A VARCHAR(255) NOT NULL,
    UTILISATEURidUtilisateur VARCHAR(30) NOT NULL,
    PRESSINGidPressing VARCHAR(30) NOT NULL
 );

  Create table BESOINCLIENT(
    idBesoinClient VARCHAR(30) NOT NULL,
    budget_client VARCHAR(30) NOT NULL,
    UTILISATEURidUtilisateur VARCHAR(30) NOT NULL,
    CLIENTidClient VARCHAR(30) NOT NULL,
    PRESSINGidPressing VARCHAR(30) NOT NULL,
    ADRESSEidAdresseLivraison VARCHAR(30) NOT NULL,
    ADRESSEidAdresserRamassage VARCHAR(30) NOT NULL,
    ADRESSEidAdresseFacturation VARCHAR(30) NOT NULL

 );

  Create table PROMO(
    OFFRESERVICEidServie VARCHAR(30) NOT NULL,
    OFRRETYPE_LINGEidType_L VARCHAR(30) NOT NULL,
    ANNONCEidAnnoce VARCHAR(30) NOT NULL,
    Promr_Date_Debut DATE,
    Promo_Date_Fin DATE
 );

  Create table LINGECLIENT(
    TYPE_LINGEidType_L VARCHAR(50) NOT NULL,
    BESOINCLIENTidBesoinClient VARCHAR(30) NOT NULL,
    couleur_ligne VARCHAR(30) NOT NULL,
    Qte_ligne VARCHAR(30) NOT NULL,
 );

  Create table ADRESSE(
    idADRESSE VARCHAR(30) NOT NULL
 );

   Create table TYPE_LINGE(
    idType_L VARCHAR(30) NOT NULL,
    nom_Type_L VARCHAR(30) NOT NULL,
    matiere_Type_L VARCHAR(30) NOT NULL 
 );

   Create table OFFRE(
    SERVICEidService VARCHAR(30) NOT NULL,
    TYPE_LINGEidType_L VARCHAR(30) NOT NULL,
    Type_Linge_Offre VARCHAR(30) NOT NULL
 );

   Create table SERVICE(
    idService VARCHAR(30) NOT NULL,
    nom_Service VARCHAR(30) NOT NULL,
    PRESSINGidPressing VARCHAR(30) NOT NULL,
    TYPE_SERVICEidTYPE_S VARCHAR(30) NOT NULL
 );

    Create table TYPE_SERVICE(
    idType_S VARCHAR(30) NOT NULL,
    nom_Type_Service VARCHAR(30) NOT NULL
 );

     Create table NEGOCIATION_PRESSING_CLIENT(
    PRESSINGidPressing VARCHAR(30) NOT NULL,
    BESOINCLIENTidBesoinClient VARCHAR(30) NOT NULL
 );
   Create table ROLE_(
    UTILISATEURidUtilisateur VARCHAR(30) NOT NULL,
    PRESSINGidPressing VARCHAR(30) NOT NULL
 );

   Create table PRIX(
    PROMOOFFRESERVICEidService VARCHAR(30) NOT NULL,
    PROMOOFFRETYPE_LINGEidType_L VARCHAR(30) NOT NULL,
    PROMOANNONCEidAnnonce VARCHAR(30) NOT NULL,
    LINGECLIENTTYPE_LINGEidType_L VARCHAR(30) NOT NULL,
    LINGECLIENTBESOINCLIENTidBesoinClient VARCHAR(30) NOT NULL,
    Tarif_U INTEGER NOT NULL
 );











 
  


  


 