test: files
	cd wordpress && docker-compose up

files: wordpress/wp-config.php
files: wordpress/Dockerfile
files: wordpress/docker-compose.yml
files: wordpress/router.php

wordpress/router.php:
	cp router.php $@

wordpress/docker-compose.yml:
	cp docker-compose.yml $@

wordpress/wp-config.php: wordpress
	cp wp-config.php $@

wordpress/Dockerfile: wordpress
	cp Dockerfile $@

wordpress:
	curl https://wordpress.org/latest.tar.gz | tar -xzf -
