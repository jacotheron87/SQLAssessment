# Start from the official MySQL image
FROM mysql:latest

# Set environment variables for MySQL (can also be set in docker-compose.yml)
ENV MYSQL_ROOT_PASSWORD=root_pw
ENV MYSQL_DATABASE=mysql_db
ENV MYSQL_USER=docker_user
ENV MYSQL_PASSWORD=user_pw

# Copy the SQL initialization script into the appropriate MySQL init directory
COPY ./init.sql /docker-entrypoint-initdb.d/
COPY ./seed.sql /docker-entrypoint-initdb.d/

# This will use the default entrypoint provided by the MySQL image to start MySQL
CMD ["mysqld"]
