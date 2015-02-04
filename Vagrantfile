
Vagrant.configure(2) do |config|

	config.vm.network :forwarded_port, guest: 8000, host: 8000

	config.vm.box = "centos65-laravel"
	config.vm.box_url = "https://atlas.hashicorp.com/nrel/boxes/CentOS-6.5-x86_64"

	config.vm.provider "virtualbox" do |vb|
		vb.customize ["modifyvm", :id, "--memory", "1028", "--cpus", "1"]
	end

	if Vagrant.has_plugin?("vagrant-cachier")
		config.cache.scope = :box 
	end

	# kernel-develが見つからなくてアップデート失敗->/vagrantディレクトリマウント失敗するので false
	config.vbguest.auto_update = false

	config.vm.provision :shell, :path => "provision.sh" 

end
