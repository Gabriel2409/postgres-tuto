https://docs.postgresql.fr/14/index.html

# Installation of postgres

## Ubuntu

### First install

see: https://wiki.postgresql.org/wiki/Apt

- Import repository key from https://www.postgresql.org/media/keys/ACCC4CF8.as:
  - `sudo apt install curl ca-certificates gnupg`
  - `curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null`
- Create `/etc/apt/sources.list.d/pgdg.list` and paste `deb http://apt.postgresql.org/pub/repos/apt focal-pgdg main` (replace focal with the result of `lsb_release -c`). Alternatively, you can use this script: `sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'`

- Update package list: `sudo apt update`
- Install the package: `sudo apt install postgresql-14`

### Postgres user setup:

see: https://gist.github.com/michaeltreat/40a2f444d8ff6c89af958733448da093

- postgresql works with the user postgres by default. Set the postgres password by typing : `sudo passwd postgres` then enter the password

### Connect to postgres:

- start the postgresql server: `sudo service postgresql start`
- connect to it as postgres user: `sudo -u postgres psql`

### stop postgres:

- sudo service postgresql stop

### Uninstall

- `sudo apt-get --purge remove postgresql`
- `sudo apt-get purge postgresql*`
- `sudo apt-get --purge remove postgresql postgresql-doc postgresql-common`

## Docker

- Basic usage: `docker container run -e POSTGRES_PASSWORD=<postgres_password> -e POSTGRES_USER=<postgres_user>--name <container_name> -d -p <port>:5432 postgres:13-alpine`

### connect inside the container

- Go in the container: `docker container exec -it <container_name> bash`
- Type `psql -U <postgres_user>`

### connect outside the container with a psql client

- `psql -h <host> -p <port> -U <postgres_user>` : and then type password.
  Note: for localhost, with the setup above: `sudo -u postgres psql -h 0.0.0.0 -p <port> -U <postgres_user>`
- Alternatively `psql postgresql://<postgres_user>:<postgres_password>@<host>:<port>/<table>` (table part is optional)

# Use postgres

## from the cmd line

TO use from the command line, you must be the correct user or do `sudo -u postgres` before the command

- `createdb tuto`: creates a table called tuto
- `dropdb tuto`: drops the db

## psql

- `psql tuto`: accesses the db tuto. If no db is specified, will access default (named postgres by default)
- you can use any SQL command but be sure to end the commands with semi colons
- `\h`: shows help
- `\?`: shows all commands
- `\l`: lists dbs
- `\dt`: lists tables
- `\q`: exits
- `\c tuto`: connects to base tuto
