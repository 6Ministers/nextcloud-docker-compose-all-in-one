# Installing NextCloude All In One with docker-compose.

## Quick Installation

**Before starting the instance, direct the domain (subdomain) to the ip of the server where NextCloud will be installed!**

## 1. NextCloud Server Requirements
From and more
- 4 CPUs
- 6 RAM 
- 30 Gb (there is enough for installation and enough for the first time)


Run for Ubuntu 22.04

``` bash
sudo apt-get purge needrestart
```

Install docker and docker-compose:

``` bash
curl -s https://raw.githubusercontent.com/6Ministers/nextcloud-docker-compose-all-in-one/master/setup.sh | sudo bash -s
```

Download n8n instance:


``` bash
curl -s https://raw.githubusercontent.com/6Ministers/nextcloud-docker-compose-all-in-one/master/download.sh | sudo bash -s nextcloud
```

If `curl` is not found, install it:

``` bash
$ sudo apt-get install curl
# or
$ sudo yum install curl
```

Go to the catalog

``` bash
cd nextcloud
```

**Run nextcloud:**

``` bash
docker-compose up -d
```

Then open `https://nextcloude.domain.com:8080` to access n8n.


## Nextcloude container management

**Run nextcloude**:

``` bash
docker-compose up -d
```

**Restart**:

``` bash
docker-compose restart
```

**Restart**:

``` bash
sudo docker-compose down && sudo docker-compose up -d
```

**Stop**:

``` bash
docker-compose down
```

## Documentation

https://github.com/nextcloud/all-in-one