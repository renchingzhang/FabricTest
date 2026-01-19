# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "01058f3f-2666-4c02-9c15-501d9fb0117d",
# META       "default_lakehouse_name": "",
# META       "default_lakehouse_workspace_id": "",
# META       "known_lakehouses": [
# META         {
# META           "id": "01058f3f-2666-4c02-9c15-501d9fb0117d"
# META         },
# META         {
# META           "id": "a79d6ac0-4711-4802-bc92-b9a2939c3783"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!
import sempy.fabric as fabric

# Specify the workspace
workspace_name = "adventureworks"

df_datasets = fabric.list_datasets(workspace=workspace_name)
df_datasets


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

DatasetName = "AdventureWorksSM"

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!
import sempy.fabric as fabric
df_tables = fabric.list_tables(DatasetName, workspace=workspace_name)
df_tables


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df_tables

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df_table = fabric.read_table(DatasetName, "ErrorLog", fully_qualified_columns("A", "B"), num_rows=5)
df_table

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Example: Writing a PySpark DataFrame to a Lakehouse table
df.write.format("delta").mode("overwrite").saveAsTable("tblConsolidated")


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
