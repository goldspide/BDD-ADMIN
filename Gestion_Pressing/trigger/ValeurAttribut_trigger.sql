CREATE OR REPLACE TRIGGER annonce_tri
BEFORE INSERT ON ANNONCE
FOR EACH ROW
begin
  :new.id_ValeurAttribut = id_ValAtt.nextval;
end;