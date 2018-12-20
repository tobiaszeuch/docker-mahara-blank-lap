docker-mahara [![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
=============

Docker image of Mahara with [s6-overlay](https://github.com/just-containers/s6-overlay) and [socklog-overlay](https://github.com/just-containers/socklog-overlay) for use with an external Database.

## Environment variables

- **PHPMAXUPLOAD** : Increase PHP file upload limit *(default: "100M")*
- **TLS** : For secure connection *(default: "no")*
- **APPADMIN** : Mahara application username *(default: "admin")*
- **APPADMINPASS** : Mahara application password *(default: "generate random password")*
- **APPADMINEMAIL** : Mahara application email. *(default: "admin@lochalhost.local")*
- **APPDIR** : Mahara application directory *(default: "/var/www/html")*
- **SUBDIR** : Mahara application in a subdirectory *(No defaults)*
- **TZ** : Set timezone *(default: "Etc/UTC")*
###### Silent Install ######
- **SILENTINSTALL** : yes/no *(default: "no")*
- **APPDB** : Database name that Mahara will use to connect with the database *(default: "mahara")*
- **APPDBUSER** : Database user that Mahara will use to connect with the database *(default: "mahara")*
- **APPDBPASS** : Database password that Mahara will use to connect with the database *(default: "generate random password")*
- **CREATEDB** : yes/no *(default: "yes")*
- **DBTYPE** : Mahara application database type to connect with the database *(default: "mysql")*
- **SERVERNAME** : Set servername *(default: "127.0.0.1")*
- **MYSQL_ROOT** : Database admin user *(default: "root")*
- **MYSQL_ROOT_PASSWORD** : Database password for MYSQL_ROOT *(default: "cat /run/secrets/mysql_root_password")*
- **MYSQL_HOST** : Hostname for MariaDB server *(default: "mariadb")*
- **MYSQL_PORT** : Port used by MariaDB server *(default: "3306")*
###### Swarm ######
- **HOSTTOINSTALL** : For use in clusters with shared Mahara folder. For example is `hostname: "mahara-{{.Task.Slot}}"` then set `HOSTTOINSTALL=mahara-1` to let install only the first slot *(No defaults)*

## Special

Use a volume with the target '/extra-scripts' to install additional themes or addons via your own scripts at the first start.
