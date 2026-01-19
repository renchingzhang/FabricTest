# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "a79d6ac0-4711-4802-bc92-b9a2939c3783",
# META       "default_lakehouse_name": "Adventurelake",
# META       "default_lakehouse_workspace_id": "d6919e16-fae8-437e-8dd7-32c3f4ab7737",
# META       "known_lakehouses": [
# META         {
# META           "id": "a79d6ac0-4711-4802-bc92-b9a2939c3783"
# META         },
# META         {
# META           "id": "7b472af6-4b40-4287-954b-11580a86b3b0"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC SELECT * FROM Adventurelake.SalesLT_Product LIMIT 1000

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC CREATE TABLE delta.'Tables/productcolor' AS
# MAGIC select Color, count(*) as colorcount, "Y" AS Res
# MAGIC from Adventurelake.SalesLT_Product 
# MAGIC group by Color
# MAGIC having count(*) > 1
# MAGIC 
# MAGIC 


# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }
