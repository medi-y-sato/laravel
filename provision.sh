

	sudo yum -y install yum-fastestmirror

	# epel
	sudo yum -y install epel-release

	#remi php56
	sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
	sudo yum -y install --enablerepo=remi-php56 php php-pdo php-mcrypt php-mbstring redis php-redis mysql-server php-mysql nginx php-fpm

	# fruentd / td-agent
	sudo curl -L http://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh

	# update
#	sudo yum -y update --enablerepo=remi-php56

	# composer
	sudo curl -sS https://getcomposer.org/installer | php
	sudo mv composer.phar /usr/local/bin/composer

	sudo cp /vagrant/conf/php-fpm.conf /etc/
	sudo cp /vagrant/conf/www.conf /etc/php-fpm.d/
	sudo cp /vagrant/conf/nginx.conf /etc/nginx/
	sudo cp /vagrant/conf/laravel.conf /etc/nginx/conf.d/

	cd /vagrant/data/
	/usr/local/bin/composer create-project laravel/laravel testproj --prefer-dist

	sudo chmod -R 777 /vagrant/data/testproj/storage/
#	cd testproj
#	php artisan serve --host=0.0.0.0

	sudo systemctl disable firewalld.service
	sudo systemctl stop firewalld
	sudo setenforce 0

	sudo systemctl enable nginx.service
	sudo systemctl start nginx

	sudo systemctl enable php-fpm.service
	sudo systemctl start php-fpm


