# Wait for SQL Server to start (10 seconds)
sleep 15

# Run the SQLCMD utility to execute the script upon container startup
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${MSSQL_SA_PASSWORD} -i /tmp/create-database.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${MSSQL_SA_PASSWORD} -i /tmp/create-user-table.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${MSSQL_SA_PASSWORD} -i /tmp/enable-cdc.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${MSSQL_SA_PASSWORD} -i /tmp/seed-user-data.sql