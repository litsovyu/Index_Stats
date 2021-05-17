FROM  fabiang/sqlcmd

WORKDIR /app

COPY ./sh ./sh 
COPY ./sql ./sql

ENV DB_HOST="host_name_31"
ENV DB_USER="user_name_31"
ENV DB_PASS="pass_name_31"
ENV DB_NAME="name_name_31"

CMD [ " ./sh/run_all.sh " ]