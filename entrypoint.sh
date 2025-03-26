#!/bin/sh
set -e

# Print variables for debugging (optional)
echo "Using database: postgres://${DB_USER}:${DB_PASS}@${DB_HOST}/${DB_NAME}?sslmode=disable"

# Execute the migration command with the correct environment variables
exec migrate -path=/migrations/ -database "postgres://${DB_USER}:${DB_PASS}@${DB_HOST}/${DB_NAME}?sslmode=disable" up