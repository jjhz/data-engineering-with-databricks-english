-- Databricks notebook source
-- MAGIC %md
-- MAGIC
-- MAGIC # Create a Delta Live Table

-- COMMAND ----------

CREATE OR REFRESH STREAMING TABLE my_dtl_test
AS SELECT * FROM cloud_files("${source}", "csv")

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC # But, how to query the Delta Live Table??
-- MAGIC * You need to config the pipeline put the database name and table name in there

-- COMMAND ----------


