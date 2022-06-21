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
-  sudo service postgresql stop

### Uninstall
- `sudo apt-get --purge remove postgresql`
- `sudo apt-get purge postgresql*`
- `sudo apt-get --purge remove postgresql postgresql-doc postgresql-common`

## Docker

- Basic usage: `docker container run  -e POSTGRES_PASSWORD=<postgres_password> -e POSTGRES_USER=<postgres_user>--name <container_name> -d -p <port>:5432  postgres:13-alpine`

### connect inside the container

- Go in the container: `docker container exec -it <container_name> bash`
- Type `psql -U <postgres_user>`

### connect outside the container with a psql client
- `psql -h <host> -p <port> -U <postgres_user>` : and then type password. 
Note: for localhost, with the setup above: `sudo -u postgres psql -h 0.0.0.0 -p <port> -U <postgres_user>`
