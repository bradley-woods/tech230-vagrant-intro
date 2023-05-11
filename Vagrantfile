# $script = <<-SCRIPT
# sudo apt-get update
# sudo apt-get upgrade -y
# sudo apt-get install -y nginx
# sudo systemctl start nginx
# sudo systemctl status nginx
# SCRIPT


Vagrant.configure("2") do |config|
 
  # configure the VM settings
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip:"192.168.10.100"

  # provision the VM to have nginx web server
  config.vm.provision "shell", path: "provision.sh"
  # config.vm.provision "shell", inline: $script

end
