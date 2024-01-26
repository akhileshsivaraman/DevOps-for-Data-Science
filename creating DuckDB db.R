#---- Put data in DuckDB ----
library(DBI)
library(duckdb)
library(palmerpenguins)

con <- DBI::dbConnect(duckdb(), dbdir = "my-db.duckdb")
DBI::dbWriteTable(con, "penguins", penguins)
DBI::dbDisconnect(con)
