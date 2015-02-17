
	sudo yum -y install yum-fastestmirror

	sudo yum -y install epel-release
	sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
	sudo yum -y install --enablerepo=remi-php56 php php-pdo php-mcrypt php-mbstring redis php-redis mariadb-server php-mysql nginx php-fpm

	sudo curl -L http://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh

	sudo curl -sS https://getcomposer.org/installer | php
	sudo mv composer.phar /usr/local/bin/composer

	sudo cp /vagrant/conf/php-fpm.conf /etc/
	sudo cp /vagrant/conf/www.conf /etc/php-fpm.d/
	sudo cp /vagrant/conf/nginx.conf /etc/nginx/
	sudo cp /vagrant/conf/laravel.conf /etc/nginx/conf.d/

	sudo systemctl disable firewalld.service
	sudo systemctl stop firewalld

	sudo setenforce 0

	sudo systemctl enable nginx.service
	sudo systemctl enable php-fpm.service
	sudo systemctl enable redis.service
	sudo systemctl enable mariadb.service

	sudo systemctl start redis
	sudo systemctl start mariadb
	sudo systemctl start php-fpm
	sudo systemctl start nginx
