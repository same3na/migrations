FROM migrate/migrate

WORKDIR /migrations

COPY migrations/* /migrations/

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
