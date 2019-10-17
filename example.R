# https://linuxize.com/post/how-to-remove-docker-images-containers-volumes-and-networks/#targetText=Stop%20and%20remove%20all%20containers,-You%20can%20get&targetText=To%20stop%20all%20running%20containers,list%20of%20all%20containers%20IDs.&targetText=Once%20all%20containers%20are%20stopped,by%20the%20containers%20ID%20list.
# https://hackernoon.com/dont-install-postgres-docker-pull-postgres-bee20e200198


# docker-compose up -d
# docker-compose down

library(dplyr)
library(dbplyr)
library(RPostgres)
library(DBI)


connection <- dbConnect(
  RPostgres::Postgres(),
  dbname   = 'postgres',
  host     = '127.0.0.1',
  port     = 5432,
  user     = 'postgres',
  password = 'docker'
)

dbCreateTable(
  connection,
  'mtcars_table',
  mtcars
)

db_insert_into(
  connection,
  'mtcars_table',
  mtcars
)

mtcars_table <- tbl(connection, in_schema('public', 'mtcars_table'))

mtcars_table