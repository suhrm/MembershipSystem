# Database
This folder contains scripts and guides to setup the database required for the membership system. We are utilizing the Microsoft SQL Server and running it in a Docker container. 
## Docker
Docker is needed. Download and install it for your platform. Then get the SQL server image bu'y running the following command in any terminal:
```
docker pull mcr.microsoft.com/mssql/server
``` 
The SQL server instance is started by the following command:
```
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Admin123" -p 1433:1433 -d mcr.microsoft.com/mssql/server
```
Be aware that the password set here should not be used in a production environment. It is purely for local development

## SQL scripts
Im using the [SQL extension](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql "SQL extension for MS Code") for Microsoft Visual Code to interact with the database and create the first database, schema and tables. 
I used [this guide](https://docs.microsoft.com/en-us/sql/tools/visual-studio-code/sql-server-develop-use-vscode?view=sql-server-ver15) to understand how to connect to the database and execute SQL queries.

Execute the JydenDB.sql script to create a database, some tables and populate it with some data.


