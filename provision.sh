
	sudo rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-5.rpm
	sudo yum -y install php php-pdo php-mcrypt --enablerepo=remi
	sudo yum -y install redis php-redis --enablerepo=remi
	sudo yum -y install mysql-server php-mysql --enablerepo=remi
#	sudo yum -y update --enablerepo=remi

	sudo curl -sS https://getcomposer.org/installer | php
	sudo mv composer.phar /usr/local/bin/composer
