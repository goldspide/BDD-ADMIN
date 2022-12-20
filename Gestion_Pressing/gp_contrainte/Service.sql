------- contrainte de la table TYPE_SERVICE  -------

  ALTER TABLE TYPE_SERVICE
ADD (
    CONSTRAINT      Type_Serviceid_typeS_fk
                     FOREIGN KEY ( TYPE_SERVICEidTYPE_S)
                     REFERENCES SERVICE (id_type)
    
    ) ;
ADD (
    CONSTRAINT      _pressingid_press_fk
                     FOREIGN KEY (PRESSING_idPressing)
                     REFERENCES SERVICE (idPressing)
    
    ) ;
    commit;