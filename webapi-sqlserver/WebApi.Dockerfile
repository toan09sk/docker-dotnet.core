# # Get base SDK Image Microsoft
# FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
# WORKDIR /app

# # Copy the CSPROJ file and restore any dependencies (via NUGET)
# COPY *.csproj ./
# RUN dotnet restore

# # Copy the project files and build our release
# COPY . ./
# RUN dotnet publish -c Release -o out

# # Generate runtime image
# FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
# WORKDIR /app
# EXPOSE 80
# EXPOSE 443
# COPY --from=build-env /app/out .
# ENTRYPOINT ["dotnet","webapi-sqlserver.dll"]

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src
COPY ["*.csproj", "build/"]
RUN dotnet restore "build/webapi-sqlserver.csproj"
COPY . ./build/
WORKDIR "/src/build"
RUN dotnet build "webapi-sqlserver.csproj" -c Release -o /app/build
FROM build AS publish
RUN dotnet publish "webapi-sqlserver.csproj" -c Release -o /app/publish
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "webapi-sqlserver.dll"]