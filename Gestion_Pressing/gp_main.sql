rem
rem Header: gp_main.sql 2015/03/19 10:23:26 smtaylor Exp $
rem
rem Copyright (c) 2001, 2015, Oracle and/or its affiliates.  All rights reserved. 
rem 
rem Permission is hereby granted, free of charge, to any person obtaining
rem a copy of this software and associated documentation files (the
rem "Software"), to deal in the Software without restriction, including
rem without limitation the rights to use, copy, modify, merge, publish,
rem distribute, sublicense, and/or sell copies of the Software, and to
rem permit persons to whom the Software is furnished to do so, subject to
rem the following conditions:
rem 
rem The above copyright notice and this permission notice shall be
rem included in all copies or substantial portions of the Software.
rem 
rem THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
rem EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
rem MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
rem NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
rem LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
rem OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
rem WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
rem
rem Owner  : ahunold
rem
rem NAME
rem   gp_main.sql - Main script for gp schema
rem
rem DESCRIPTON
rem   gp (Human Resources) is the smallest and most simple one 
rem   of the Sample Schemas
rem   
rem NOTES
rem   Run as SYS or SYSTEM
rem
rem MODIFIED   (MM/DD/YY)
rem   smtaylor  03/19/15 - added parameter 6, connect_string
rem   smtaylor  03/19/15 - added @&connect_string to CONNECT
rem   jmadduku  02/18/11 - Grant Unlimited Tablespace priv with RESOURCE
rem   celsbern  06/17/10 - fixing bug 9733839
rem   pthornto  07/16/04 - obsolete 'connect' role 
rem   hyeh      08/29/02 - hyeh_mv_comschema_to_rdbms
rem   ahunold   08/28/01 - roles
rem   ahunold   07/13/01 - NLS Territory
rem   ahunold   04/13/01 - parameter 5, notes, spool
rem   ahunold   03/29/01 - spool
rem   ahunold   03/12/01 - prompts
rem   ahunold   03/07/01 - gp_analz.sql
rem   ahunold   03/03/01 - gp simplification, REGIONS table
rem   ngreenbe  06/01/00 - created

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

ALTER USER gp TEMPORARY TABLESPACE &tbs;

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

CONNECT gp/&pass@&connect_string
ALTER SESSION SET NLS_LANGUAGE=American;
ALTER SESSION SET NLS_TERRITORY=America;

-------------------- create de la table Adresse --------------------------
@gp_table/Adresse
-------------------- create de la table Annonce --------------------------
@gp_table/Annonce
-------------------- create de la table Attributs --------------------------
@gp_table/Attributs
-------------------- create de la table Besoinclient --------------------------
@gp_table/Besoinclient
-------------------- create de la table Client --------------------------
@gp_table/Client
-------------------- create de la tableLingeClient --------------------------
@gp_table/LingeClient
-------------------- create de la table Negociation_Pressing_Client --------------------------
@gp_table/Negociation_Pressing_Client
-------------------- create de la table Offre --------------------------
@gp_table/Offre
-------------------- create de la table Personne_Physique --------------------------
@gp_table/Personne_Physique
-------------------- create de la table Personne --------------------------
@gp_table/Personne
-------------------- create de la table Pressing --------------------------
@gp_table/Pressing
-------------------- create de la table Privilege --------------------------
@gp_table/Privilege
-------------------- create de la table Prix --------------------------
@gp_table/Prix
-------------------- create de la table Promo --------------------------
@gp_table/Promo
-------------------- create de la table Role_U --------------------------
@gp_table/Role_U
-------------------- create de la table Service --------------------------
@gp_table/Service
-------------------- create de la table Type_linge --------------------------
@gp_table/Type_linge
-------------------- create de la table Utilisateur --------------------------
@gp_table/Utilisateur
-------------------- create de la table Valeur_Attributs --------------------------
@gp_table/Valeur_Attributs


------------------------------ create des constraint de la table Annonce --------------------------------
@gp_Contrainte/Annonce
------------------------------ create des constraint de la table Pressing --------------------------------
@gp_Contrainte/Pressing
------------------------------ create des constraint de la table Privilege --------------------------------
@gp_Contrainte/Privilege
------------------------------ create des constraint de la table Role_U --------------------------------
@gp_Contrainte/Role_U
------------------------------ create des constraint de la table Utilisateur --------------------------------
@gp_Contrainte/Utilisateur
------------------------------ create des constraint de la table Negociation_Pressing_client --------------------------------
@gp_Contrainte/Negociation_pressing_client

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