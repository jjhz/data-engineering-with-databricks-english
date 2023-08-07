-- Databricks notebook source
-- MAGIC %md
-- MAGIC
-- MAGIC # Create a Delta Live Table

-- COMMAND ----------

CREATE OR REFRESH STREAMING live TABLE my_dtl_test
AS SELECT * FROM cloud_files("${source}", "csv")

-- COMMAND ----------

-- CREATE OR REFRESH live table my_dtl_test_no_STREAMING
-- AS SELECT * FROM cloud_files("${source}", "csv")

-- org.apache.spark.sql.AnalysisException: 'my_dtl_test_no_STREAMING' was read as a stream (i.e. using `readStream` or `STREAM(...)`), but 'my_dtl_test_no_STREAMING' is not a streaming table. Either add the STREAMING keyword to the CREATE clause or read the input as a table rather than a stream.

-- COMMAND ----------

CREATE OR REFRESH STREAMING live table my_dtl_test_no_STREAMING
AS SELECT * FROM cloud_files("${source}", "csv")

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC # But, how to query the Delta Live Table??
-- MAGIC * You need to config the pipeline put the database name as Target.
-- MAGIC * The string you put in the target option will be the database name
-- MAGIC * All the tables you create in the notebook will be stored in side the database you created abvove

-- COMMAND ----------


