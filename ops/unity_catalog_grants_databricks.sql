
-- PRODUCTION service principal
-- Read raw data
GRANT USE CATALOG ON CATALOG bronze_production TO `<PROD_SP_ID>`;
GRANT USE SCHEMA, SELECT ON SCHEMA bronze_production.marketing_raw TO `<PROD_SP_ID>`;

-- Build production silver and gold
GRANT USE CATALOG, USE SCHEMA, CREATE SCHEMA, CREATE TABLE ON CATALOG silver_production TO `<PROD_SP_ID>`;
GRANT USE CATALOG, USE SCHEMA, CREATE SCHEMA, CREATE TABLE ON CATALOG gold_production   TO `<PROD_SP_ID>`;

-- CI service principal (also runs staging deploys)
-- Read raw data
GRANT USE CATALOG ON CATALOG bronze_production TO `<CI_SP_ID>`;
GRANT USE SCHEMA, SELECT ON SCHEMA bronze_production.marketing_raw TO `<CI_SP_ID>`;

-- Write only to non-production catalogs
GRANT USE CATALOG, USE SCHEMA, CREATE SCHEMA, CREATE TABLE ON CATALOG ci_development TO `<CI_SP_ID>`;
GRANT USE CATALOG, USE SCHEMA, CREATE SCHEMA, CREATE TABLE ON CATALOG silver_staging TO `<CI_SP_ID>`;
GRANT USE CATALOG, USE SCHEMA, CREATE SCHEMA, CREATE TABLE ON CATALOG gold_staging   TO `<CI_SP_ID>`;

-- Read-only on production, so `dbt build --defer` can reference unchanged prod models
GRANT USE CATALOG, USE SCHEMA, SELECT ON CATALOG silver_production TO `<CI_SP_ID>`;
GRANT USE CATALOG, USE SCHEMA, SELECT ON CATALOG gold_production   TO `<CI_SP_ID>`;

-- read for me
GRANT USE CATALOG, USE SCHEMA, SELECT ON CATALOG ci_development    TO `<you@email.com>`;
GRANT USE CATALOG, USE SCHEMA, SELECT ON CATALOG silver_staging    TO `<you@email.com>`;
GRANT USE CATALOG, USE SCHEMA, SELECT ON CATALOG gold_staging      TO `<you@email.com>`;
GRANT USE CATALOG, USE SCHEMA, SELECT ON CATALOG silver_production TO `<you@email.com>`;
GRANT USE CATALOG, USE SCHEMA, SELECT ON CATALOG gold_production   TO `<you@email.com>`;
