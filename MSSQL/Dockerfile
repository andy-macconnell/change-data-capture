FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=YourStrong@Password
ENV MSSQL_PID=Developer

COPY ./scripts /tmp/
RUN chmod -R +x /tmp/

RUN /opt/mssql/bin/mssql-conf set sqlagent.enabled true

ENTRYPOINT /tmp/entrypoint.sh
