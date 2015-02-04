# Vagrantfile for CentOS 6.5 + remi + laravel

Vagarntでlaravelが即使える環境を作ってみるテスト。

CentOS 6.5にremiリポジトリを追加し、 php 5.4 / redis / mysql を導入します。

## Installation

/vagrant に testproj という名前でプロジェクトを作る場合。

	git clone https://github.com/medi-y-sato/laravel.git
	cd laravel
	vagrant up
	vagrant ssh
	cd /vagrant
	/usr/local/bin/composer create-project laravel/laravel testproj --prefer-dist
	cd testproj
	php artisan serve --host=0.0.0.0

以上で内蔵サーバが立ち上がるので、 http://localhost:8000 にアクセスすれば、作成直後のプロジェクト画面が表示されます。
※ Windowsの場合は vagrant ssh の時点で
「sshコマンドが無いので、この情報を使って自分でsshクライアントから接続して下さい」
という旨のメッセージが出るので、それに従って接続して下さい。

## Usage

vagfant up したディレクトリをVM側が /vagrant としてマウントしているのでそこにプロジェクトを作成すれば、
その中身をVM外から編集しても即反映されます。
そういう感じでお試しください。


	
