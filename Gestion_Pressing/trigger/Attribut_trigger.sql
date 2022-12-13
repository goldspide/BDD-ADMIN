CREATE OR REPLACE TRIGGER annonce_tri
BEFORE INSERT ON ANNONCE
FOR EACH ROW
begin
  :new.idAttribut = idAtt.nextval;
end;