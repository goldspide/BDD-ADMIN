DECLARE
counte number := 0;
BEGIN
select count(*) from Utilisateur into counte;
DBMS_OUTPUT.PUT_LINE('Le nombre de valeur presente est'|| ':'|| counte);
END;