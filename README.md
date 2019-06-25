docker-mahara-blank-lap [![No Maintenance guaranteed](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
=============

Docker image as base for Mahara installation with [s6-overlay](https://github.com/just-containers/s6-overlay) and [socklog-overlay](https://github.com/just-containers/socklog-overlay). The idea is to have one image that serves as a base for all mahara installations so the installation of the php-extensions and additional programs doesn't have to be repeated each time a new mahara-image is created

## Environment variables

- **TLS** : For secure connection *(default: "no")*
- **TZ** : Set timezone *(default: "Etc/UTC")*

## Special

