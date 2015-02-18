# Vagrantfile for CentOS 7 + remi + laravel5 + その他

Vagarntでlaravelが即使える環境を作ってみるテスト。

CentOS 7にremiリポジトリを追加し、 nginx / php 5.6 + fpm / redis / MariaDB / fruentd(td-agent) を導入します。

required : vbguest プラグイン
	vagrant plugin install vagrant-vbguest

## Installation

	git clone https://github.com/medi-y-sato/laravel.git
	cd laravel
	vagrant up
	vagrant ssh

以降Vagarant VMにログインした状態で、下記を実行し、セットアップを完了して下さい。

	sudo mysql_secure_installation
MariaDBの初期設定です。

	cd /vagrant/data/
	composer create-project laravel/laravel --prefer-dist
Laravel5のプロジェクトを作成します。

	composer create-project "laravel/laravel=~4" --prefer-dist
Laravel4で作りたい場合は、こう。

以上完了後、 http://localhost:9000/
にアクセスすれば、作成直後のプロジェクト画面が表示されます。

※ Windowsの場合は vagrant ssh の時点で
「sshコマンドが無いので、この情報を使って自分でsshクライアントから接続して下さい」
という旨のメッセージが出るので、それに従って接続して下さい。

### 参考
[qiita] CentOS 6.5 + nginx 1.6.1 + Laravel 4.2のインストールメモ
http://qiita.com/yuppi/items/d5da1c15ae70f4b0abbb
opcacheは入れてません

[qiita] CentOS7 nginx + php-fpmのインストール
http://qiita.com/daskepon/items/8a9f09d06310c01ef010

Laravel 5.0.0 のドキュメントはこちらから
http://readouble.com/laravel/5/0/0/ja/installation.html


## Usage

./data/ 以下がVMの /vagrant/data/ 以下にマウントされているので、適宜弄ってみてください。


