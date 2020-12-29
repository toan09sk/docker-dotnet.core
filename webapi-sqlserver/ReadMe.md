nuget.org --- Microsoft.EntityFrameworkCore
dotnet add package Microsoft.EntityFrameworkCore
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Microsoft.EntityFrameworkCore.SqlServer

dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection

dotnet ef
dotnet tool install --global dotnet-ef
dotnet ef migrations add InitialMigration
dotnet ef migrations remove
dotnet ef database update

docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=1q2w3e4r' -e 'MSSQL_PID=Express' -p 4444:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu

dotnet build
dotnet run


nuget.org --- NewtonsoftJson

dotnet add package Microsoft.AspNetCore.Mvc.NewtonsoftJson

docker-compose up

docker run -p 8080:80 -p 8081:443 webapi_sqlserver

Example
```
TestP@ssw0rd

docker run --name=codewithvijay -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=TestP@ssw0rd" -e "MSSQL_PID=Express" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu
docker build -t dockersql .
docker run --name dockernetcoresqlserver --link codewithvijay -e "ServerName=codewithvijay" -e "Database=Employee" -e "UserName=SA" -e "Password=TestP@ssw0rd" -p 8080:80 dockersql

dotnet ef migrations add InitialMigration

dotnet ef migrations add init --context CommanderContext
```