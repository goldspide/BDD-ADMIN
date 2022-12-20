--------- contrainte de la table PRIX ---------
   ALTER TABLE PRIX
  ADD (
 
     CONSTRAINT      PROMOOFFRETYPE_LINGEidType_L 
                     FOREIGN KEY (PROMOOFFRETYPE_LINGEidType_L )
                     REFERENCES TYPE_LINGE (idType_L )
  );
   ALTER TABLE PRIX
  ADD (
    CONSTRAINT    PROMOOFFRESERVICEidService 
                     FOREIGN KEY (PROMOOFFRESERVICEidService )
                     REFERENCES SERVICE (idService ));  
 ALTER TABLE PRIX
  ADD (
     CONSTRAINT      PROMOANNONCEidAnnonce
                     FOREIGN KEY (PROMOANNONCEidAnnonce)
                     REFERENCES ANNONCE (idAnnonce));
 ALTER TABLE PRIX
  ADD (
    CONSTRAINT    LINGECLIENTTYPE_LINGEidType_L 
                     FOREIGN KEY (LINGECLIENTTYPE_LINGEidType_L )
                     REFERENCES TYPE_LINGE (idType_L ));  

 ALTER TABLE PRIX
  ADD (
     CONSTRAINT    LINGECLIENTTYPE_LINGEidType_L 
                     FOREIGN KEY (LINGECLIENTBESOINCLIENTidBesoinClient )
                     REFERENCES BESOINCLIENT (idBesoinClient )  
 
                  ) ;
    commit;