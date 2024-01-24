IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'CDCDB')
    BEGIN
        USE master
        CREATE DATABASE [CDCDB];
        PRINT 'db Created...'
    END