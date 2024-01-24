# Change Data Capture
This repository contains scripts to create and configure a local Microsoft SQL server instance, within a Docker container, which is CDC enabled. Once enabled, a test user will be seeded to the table so that a CDC event can be seen by querying the users change table from your SQL IDE of choice.

## To Run

To build and run a CDC enabled instance, first build the Dockerfile using the below:

`docker build -t cdc:dev .`

Then run using:

`docker run -p 1433:1433 cdc:dev`

If successful, you should see within the terminal the PRINT statements from the [SQL Scripts](./MSSQL/) within the terminal.

## Reference
If you landed here from the [Medium article](https://medium.com/@andrew.macconnell/using-change-data-capture-9548ff7b41e3), thank you for taking the time to read and follow up!