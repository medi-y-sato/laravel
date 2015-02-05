# Vagrantfile for CentOS 7 + remi + laravel5 + その他

Vagarntでlaravelが即使える環境を作ってみるテスト。

CentOS 7にremiリポジトリを追加し、 nginx / php 5.6 / redis / mysql / fruentd(td-agent) を導入します。

そのうえで testproj という名前の Laravel5 プロジェクトを作成し、 nginx / php-fpm の向き先を設定し、起動します。

## Installation

	git clone https://github.com/medi-y-sato/laravel.git
	cd laravel
	vagrant up
	vagrant ssh

以上で内蔵サーバが立ち上がるので、 http://localhost:9000 にアクセスすれば、作成直後のプロジェクト画面が表示されます。

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

laravelの中身が ./data/testproj/ に展開されていますので、それを適宜弄って下さい。



	
