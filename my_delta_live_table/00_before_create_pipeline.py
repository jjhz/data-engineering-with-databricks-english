# Databricks notebook source
import os
root_csv_data_path = "dbfs:/mnt/dtl_test"
first_file_src_path = f"file:{os.getcwd()}/data/delta_live_table_e.csv"
first_file_dest_path = f"{root_csv_data_path}/delta_live_table_e.csv"

dbutils.fs.cp(first_file_src_path, first_file_dest_path)

# COMMAND ----------

display(spark.read.format("csv").option("header",True).load(root_csv_data_path))

# COMMAND ----------

display(dbutils.fs.ls(first_file_dest_path))
