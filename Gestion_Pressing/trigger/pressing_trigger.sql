CREATE OR REPLACE TRIGGER annonce_tri
BEFORE INSERT ON ANNONCE
FOR EACH ROW
begin
  :new.idPressing = id_pres.nextval;
end;