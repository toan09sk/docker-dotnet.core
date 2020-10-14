#!/bin/bash
set -e

wait_time=25s 
password=@Batoan01326754@

# wait for SQL Server to come up
echo importing data will start in $wait_time...
sleep $wait_time

echo running db-init...

#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $password -Q 'CREATE DATABASE CommanderDB'
exec "$@"