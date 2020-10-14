FROM mcr.microsoft.com/mssql/server:2019-latest

COPY entrypoint.sh ./
COPY db-init.sh ./

USER root
RUN chmod +x /db-init.sh
CMD /bin/bash ./entrypoint.sh