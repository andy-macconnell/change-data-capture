USE [CDCDB]
GO

BEGIN
    PRINT 'Enabling DB CDC...'
    EXEC sys.sp_cdc_enable_db
    PRINT 'DB CDC Enabled...'
END

BEGIN
    PRINT 'Enabling User Table CDC....'
    EXEC sys.sp_cdc_enable_table
        @source_schema = N'dbo',
        @source_name = N'User',
        @role_name = NULL;
END