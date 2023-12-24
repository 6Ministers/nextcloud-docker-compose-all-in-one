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

Download nextcloud instance:


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

To change the domain in the `Caddyfile` to your own

``` bash
https://subdomain.your-domain:443 {
    header Strict-Transport-Security max-age=31536000;
    reverse_proxy localhost:11000
	encode zstd gzip

...	
}
```

**Run nextcloud:**

``` bash
docker-compose up -d
```

Then open `https://nextcloude.domain.com:8080` to access **Nextcloud AIO Interface**.

On this page, you will need to specify the settings for your installation.
There will be something like this.

![image](https://github.com/6Ministers/nextcloud-docker-compose-all-in-one/assets/11208423/2b41c1e2-2ae8-4b81-bdfa-816c131085d7)

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
