# Databricks notebook source
# Test only: read files from workspace

import os
data_path = f"file:{os.getcwd()}/data/*"

e_df = spark.read.format("csv").option("header",True).load(data_path)
display(e_df)

# COMMAND ----------

# MAGIC %sql
# MAGIC
# MAGIC CREATE OR REFRESH STREAMING TABLE emp
# MAGIC AS SELECT * FROM cloud_files("${data_path}", "csv")

# COMMAND ----------

# MAGIC %sql
# MAGIC
# MAGIC
