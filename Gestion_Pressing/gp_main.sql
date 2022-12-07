SET ECHO OFF
SET VERIFY OFF

PROMPT 
PROMPT specify password for gp as parameter 1:
DEFINE pass     = gp
PROMPT 
PROMPT specify default tablespeace for gp as parameter 2:
DEFINE tbs      = users
PROMPT 
PROMPT specify temporary tablespace for gp as parameter 3:
DEFINE ttbs     = temp
PROMPT 
PROMPT specify password for SYS as parameter 4:
DEFINE pass_sys = gp
PROMPT 
PROMPT specify log path as parameter 5:
DEFINE log_path = C:\Gestion_Pressing\gp_main
PROMPT
PROMPT specify connect string as parameter 6:
DEFINE connect_string     = //localhost:1521/XEPDB1
PROMPT

-- The first dot in the spool command below is 
-- the SQL*Plus concatenation character

DEFINE spool_file = &log_path.gp_main.log
SPOOL &spool_file

REM =======================================================
REM cleanup section
REM =======================================================

DROP USER gp CASCADE;

REM =======================================================
REM create user
REM tgpee separate commands, so the create user command 
REM will succeed regardless of the existence of the 
REM DEMO and TEMP tablespaces 
REM =======================================================

CREATE USER gp IDENTIFIED BY &pass;

ALTER USER gp DEFAULT TABLESPACE &tbs
              QUOTA UNLIMITED ON &tbs;

ALTER USER gp TEMPORARY TABLESPACE &ttbs;

GRANT ALL PRIVILEGES TO gp;

-- GRANT CREATE SESSION, CREATE VIEW, ALTER SESSION, CREATE SEQUENCE TO gp;
-- GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE , UNLIMITED TABLESPACE TO gp;

REM =======================================================
REM grants from sys schema
REM =======================================================

--CONNECT sys/&pass_sys@&connect_string AS SYSDBA;
GRANT execute ON sys.dbms_stats TO gp;

REM =======================================================
REM create gp schema objects
REM =======================================================

CONNECT gp/gp
ALTER SESSION SET NLS_LANGUAGE=American;
ALTER SESSION SET NLS_TERRITORY=America;

prompt****************************Creattion de la table Adresse********************************
-------------------- create de la table Adresse --------------------------
@gp_table/Adresse

prompt****************************Creattion de la table Annonce********************************
-------------------- create de la table Annonce --------------------------
@gp_table/Annonce

prompt****************************Creattion de la table Attributs********************************
-------------------- create de la table Attributs --------------------------
@gp_table/Attributs

prompt****************************Creattion de la table Besoinclient********************************
-------------------- create de la table Besoinclient --------------------------
@gp_table/Besoinclient

prompt****************************Creattion de la table Client********************************
-------------------- create de la table Client --------------------------
@gp_table/Client

prompt****************************Creattion de la table LingeClient********************************
-------------------- create de la tableLingeClient --------------------------
@gp_table/LingeClient

prompt****************************Creattion de la table Negociation_Pressing_Client********************************
-------------------- create de la table Negociation_Pressing_Client --------------------------
@gp_table/Negociation_Pressing_Client

prompt****************************Creattion de la table Offre********************************
-------------------- create de la table Offre --------------------------
@gp_table/Offre

prompt****************************Creattion de la table Personne_Physique********************************
-------------------- create de la table Personne_Physique --------------------------
@gp_table/Personne_Physique

prompt****************************Creattion de la table Personne*******************************
-------------------- create de la table Personne --------------------------
@gp_table/Personne

prompt****************************Creattion de la table Pressing*******************************
-------------------- create de la table Pressing --------------------------
@gp_table/Pressing

prompt****************************Creattion de la table Privilege********************************
-------------------- create de la table Privilege --------------------------
@gp_table/Privilege

prompt****************************Creattion de la table Prix********************************
-------------------- create de la table Prix --------------------------
@gp_table/Prix

prompt****************************Creattion de la table Promo********************************
-------------------- create de la table Promo --------------------------
@gp_table/Promo

prompt****************************Creattion de la table Role_U********************************
-------------------- create de la table Role_U --------------------------
@gp_table/Role_U

prompt****************************Creattion de la table Service********************************
-------------------- create de la table Service --------------------------
@gp_table/Service

prompt****************************Creattion de la table Type_linge********************************
-------------------- create de la table Type_linge --------------------------
@gp_table/Type_linge

prompt****************************Creattion de la table Utilisateur********************************
-------------------- create de la table Utilisateur --------------------------
@gp_table/Utilisateur

prompt****************************Creattion de la table Attributs********************************
-------------------- create de la table Valeur_Attributs --------------------------
@gp_table/Valeur_Attributs


prompt****************************Creattion de la Contraint Annonce *******************************
------------------------------ create des constraint de la table Annonce --------------------------------
@gp_Contrainte/Annonce
prompt****************************Creattion de la Contraint Attributs********************************
------------------------------ create des constraint de la Attributs
prompt****************************Creattion de la Contraint Privilege ********************************
------------------------------ create des constraint de la table Privilege --------------------------------
@gp_Contrainte/Privilege
prompt****************************Creattion de la Contrant Role_U ********************************
------------------------------ create des constraint de la table Role_U --------------------------------
@gp_Contrainte/Role_U
prompt****************************Creattion de la Contraint Utilisateur********************************
------------------------------ create des constraint de la table Utilisateur --------------------------------
@gp_Contrainte/Utilisateur
prompt****************************Creattion de la Contraint Negociation_Pressing_client*******************************
------------------------------ create des constraint de la table Negociation_Pressing_client --------------------------------
@gp_Contrainte/Negociation_pressing_client
prompt****************************Creattion de la Containt Utilisateur********************************
--------------------------------insertion dans la table Utilisateur------------------------------------------
@gp_insertion/Utilisateur

select * from utilisateur;








-- @gp_Constraint

-- create indexes

-- @C:\Users\HP\Downloads\db-sample-schemas-21.1\db-sample-schemas-21.1\Gestion_pressing\gp_idx

-- --
-- -- create procedural objects
-- --

-- @C:\Users\HP\Downloads\db-sample-schemas-21.1\db-sample-schemas-21.1\Gestion_pressing\gp_code

-- --
-- -- add comments to tables and columns
-- --

-- @C:\Users\HP\Downloads\db-sample-schemas-21.1\db-sample-schemas-21.1\Gestion_pressing\gp_comnt

-- --
-- -- gather schema statistics
-- --

-- @C:\Users\HP\Downloads\db-sample-schemas-21.1\db-sample-schemas-21.1\Gestion_pressing\gp_analz

-- spool off
-- */