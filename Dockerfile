FROM migrate/migrate

WORKDIR /migrations

COPY migrations/* /migrations/

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

# CMD ["-path=/migrations/", "-database", "postgres://${DB_USER}:${DB_PASS}@${DB_HOST}/${DB_NAME}?sslmode=disable", "up"]

