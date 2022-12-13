ALTER TABLE VALEURS_ATTRIBUT
ADD (   
      CONSTRAINT      of_id_fk
                     FOREIGN KEY (idAttribut)
                     REFERENCES  Attributs(idAttribut)



     CONSTRAINT      of_id_fk
                     FOREIGN KEY (OffresServiceid_service)
                     REFERENCES OFFRE (idOffre)

    , CONSTRAINT     offre_id_fk
                     FOREIGN KEY (Offresid_offre)
                     REFERENCES OFFRE (idOffre)
    
      CONSTRAINT      of_ty_lin_id_fk
                     FOREIGN KEY (OffresType_lingesid_linge)
                     REFERENCES OFFRE (Type_lingeid_linge)
                     
     );   