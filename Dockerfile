FROM  fabiang/sqlcmd
# заменить на образ с sqlcmd или MSSQL-Scripter

WORKDIR /app

# Copy application dependency manifests to the container image.
# Copying this separately prevents re-running npm install on every code change.
COPY ./sh ./sh 
COPY ./sql ./sql

# Run the web service on container startup.
#CMD [ " ./sh/run_CommandExecute.sh && ./sh/run_IndexOptimize.sh && ./sh/run_Index_Stats.sh" ]
