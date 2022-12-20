-------- Contrainte Table OFFRE -----------
  ALTER TABLE OFFRE 
  ADD (

    CONSTRAINT      SERVICEidService_fk
                     FOREIGN KEY (SERVICEidService)
                     REFERENCES SERVICE (idService));
  ALTER TABLE OFFRE 
  ADD (
    CONSTRAINT    TYPE_LINGEidType_L_fk
                     FOREIGN KEY (TYPE_LINGEidType_L)
                     REFERENCES TYPE_LINGE (idType_L)  
 

                     ) ;