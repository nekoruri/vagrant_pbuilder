Vagrant.configure('2') do |config|
  config.vm.box = "hashicorp/precise64"
  config.ssh.forward_agent = true
  config.vm.provision 'shell', path: 'debuild_env.sh'
end
