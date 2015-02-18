
Vagrant.configure(2) do |config|

	config.vm.network :forwarded_port, guest: 9000, host: 9000

	config.vm.box = "centos7-laravel"
	config.vm.box_url = "https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box"

	config.vm.provider "virtualbox" do |vb|
		vb.customize ["modifyvm", :id, "--memory", "1028", "--cpus", "1"]
	end

	if Vagrant.has_plugin?("vagrant-cachier")
		config.cache.scope = :box 
	end

	config.vm.provision :shell, :path => "provision.sh" 

	config.vm.synced_folder "." , "/vagrant" , mount_options: ["dmode=777", "fmode=666"]

end
