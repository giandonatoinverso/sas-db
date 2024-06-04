# Stage 1: Preprocessing the SQL file
FROM alpine as preprocessor
WORKDIR /app
COPY sample_data.sql sample_data.sql

# Stage 2: Create the final MySQL image
FROM mysql:8
COPY --from=preprocessor /app/sample_data.sql /docker-entrypoint-initdb.d/init.sql