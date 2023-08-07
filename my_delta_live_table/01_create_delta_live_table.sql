-- Databricks notebook source
-- MAGIC %md
-- MAGIC
-- MAGIC # Create a Delta Live Table

-- COMMAND ----------

CREATE OR REFRESH STREAMING TABLE my_dtl_test
AS SELECT * FROM cloud_files("${source}", "csv")

-- COMMAND ----------

-- CREATE OR REFRESH live table my_dtl_test_no_STREAMING
-- AS SELECT * FROM cloud_files("${source}", "csv")

-- org.apache.spark.sql.AnalysisException: 'my_dtl_test_no_STREAMING' was read as a stream (i.e. using `readStream` or `STREAM(...)`), but 'my_dtl_test_no_STREAMING' is not a streaming table. Either add the STREAMING keyword to the CREATE clause or read the input as a table rather than a stream.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC # But, how to query the Delta Live Table??
-- MAGIC * You need to config the pipeline put the database name and table name in there

-- COMMAND ----------


