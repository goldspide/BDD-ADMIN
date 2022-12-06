DECLARE
counte number := 0;
BEGIN
select count(*) into counte from Utilisateur;
DBMS_OUTPUT.PUT_LINE('Le nombre de valeur presente est'|| ':'|| counte);
END;  


