const fs = require('fs')
const postgresDatabase = require('cds-pg')

const cdspg = new postgresDatabase()

const cdssql = fs.readFileSync('pg-cds.sql').toString('utf-8')
let pgsql = cdspg.cdssql2pgsql(cdssql)
pgsql += "\nCOPY pgdb_Projects(ID,name,repository,language) "
    + "FROM '/tmp/data/pgdb_Projects.csv' "
    + "DELIMITER ',' CSV HEADER;"
pgsql += "\nCOPY pgdb_Votes(ID,username,createdAt,project_ID) "
    + "FROM '/tmp/data/pgdb_Votes.csv' "
    + "DELIMITER ',' CSV HEADER;"
console.log(pgsql)