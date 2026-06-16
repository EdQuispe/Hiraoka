CREATE SCHEMA IF NOT EXISTS workspace.hiraoka;


CREATE TABLE IF NOT EXISTS workspace.hiraoka.bronze_Celulares
(
Url STRING,
Codigo STRING,
Marca STRING,
Descripcion STRING,
PrecioRegular STRING,
PrecioOnline STRING,
FechaImportacion TIMESTAMP
)
USING DELTA
LOCATION 'abfss://hiraoka@adlshiraoka.dfs.core.windows.net/bronze-layer/celulares';


CREATE TABLE IF NOT EXISTS workspace.hiraoka.silver_Celulares
(
Url STRING,
Codigo STRING,
Marca STRING,
Descripcion STRING,
PrecioRegular NUMERIC(10, 2),
PrecioOnline NUMERIC(10, 2),
FechaImportacion TIMESTAMP
)
USING DELTA
LOCATION 'abfss://hiraoka@adlshiraoka.dfs.core.windows.net/silver-layer/celulares';


CREATE TABLE IF NOT EXISTS workspace.hiraoka.gold_Celulares
(
Url STRING,
Codigo STRING,
Marca STRING,
Descripcion STRING,
PrecioRegular NUMERIC(10, 2),
PrecioOnline NUMERIC(10, 2),
FechaImportacion TIMESTAMP,
FechaActualizacion TIMESTAMP
)
USING DELTA
LOCATION 'abfss://hiraoka@adlshiraoka.dfs.core.windows.net/gold-layer/celulares';