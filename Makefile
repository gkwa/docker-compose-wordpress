all: wordpress/wp-config.php
all: wordpress/Dockerfile
all: wordpress/docker-compose.yml
all: wordpress/router.php

wordpress/router.php:
	cp router.php $@

wordpress/docker-compose.yml:
	cp docker-compose.yml $@

wordpress/wp-config.php: wordpress
	cp wp-config.php $@

wordpress/Dockerfile: wordpress
	cp Dockerfile $@

wordpress:
	curl https://wordpress.org/latest.tar.gz | tar -xvzf -
