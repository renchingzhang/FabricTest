-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "sqldatawarehouse"
-- META   },
-- META   "dependencies": {
-- META     "warehouse": {
-- META       "default_warehouse": "7b1e00e7-7fec-40d7-8b04-88c069f5e7d9",
-- META       "known_warehouses": [
-- META         {
-- META           "id": "7b1e00e7-7fec-40d7-8b04-88c069f5e7d9",
-- META           "type": "Lakewarehouse"
-- META         }
-- META       ]
-- META     }
-- META   }
-- META }

-- CELL ********************

-- Welcome to your new notebook
-- Type here in the cell editor to add code!

df = spark.read.table('SaleLT_SalesOrderHeader')

-- METADATA ********************

-- META {
-- META   "language": "sql",
-- META   "language_group": "sqldatawarehouse"
-- META }
