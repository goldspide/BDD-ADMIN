CREATE OR REPLACE TRIGGER annonce_tri
BEFORE INSERT ON ANNONCE
FOR EACH ROW
begin
  :new.IdRole_U = id_rol.nextval;
end;
