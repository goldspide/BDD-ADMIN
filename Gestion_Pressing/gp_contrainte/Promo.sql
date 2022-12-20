---------- contrainte de la table PROMO ---------


ALTER TABLE PROMO
ADD (
    CONSTRAINT      OFFRESERVICEidServie_fk
                        FOREIGN KEY (SERVICEidService)
                        REFERENCES SERVICE (idService)
    ) ;
ALTER TABLE PROMO
ADD (
    CONSTRAINT    OFRRETYPE_LINGEidType_L_fk
                     FOREIGN KEY (TYPE_LINGEidType_L)
                     REFERENCES TYPE_LINGE (idType_L)  
    );
ALTER TABLE PROMO
ADD (
    CONSTRAINT    ANNONCEidAnnonce_fk
                     FOREIGN KEY (ANNONCEidAnnonce)
                     REFERENCES ANNONCE (idAnnonce) 
    );
 
    commit;