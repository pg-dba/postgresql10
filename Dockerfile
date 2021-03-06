FROM postgres:10

ENV PGBKP /var/lib/postgresql/backups
# this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
RUN mkdir -p "$PGBKP" && chown -R postgres:postgres "$PGBKP" && chmod 777 "$PGBKP"
VOLUME /var/lib/postgresql/backups
