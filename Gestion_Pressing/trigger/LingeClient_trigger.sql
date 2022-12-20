

CREATE OR REPLACE TRIGGER annonce_tri
BEFORE INSERT ON ANNONCE
FOR EACH ROW
begin
  :new.idType_L  = idTip_L.nextval;
  :new.idBesoinClient = id_becli.nextval;
end;