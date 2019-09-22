# SSH Linkedin Learning
* SSH - Secure Shell Protocol
* Command line connection to other systems

### Create user with sudo, folder, ssh
* 

### Vagrant
* sudo passwd ubuntu - set password for ubuntu user
* ssh -i .vagrant/machines/default/virtualbox/private_key vagrant@192.168.33.10 - Vagrant stores private key under .vagrant folder
* sudo cp ~/.ssh/authorized_keys /home/ubuntu/.ssh/
* ssh -i .vagrant/machines/default/virtualbox/private_key ubuntu@192.168.33.10
* ssh-keygen -R 192.168.33.10 - It says in which line it has known host entry for the particular ip
* copy id_rsa.pub to /home/ubuntu/.ssh/Authorized_keys
* ssh ubuntu@192.168.33.10
* ssh ubuntu-vm - if you add the following script in ~/.ssh/config 
```
Host ubuntu-vm
  User ubuntu
  HostName 192.168.33.10
  IdentityFile ~/.ssh/id_rsa
```
* scp akilan.txt ubuntu@192.168.33.10:~/ - Upload file o server
* scp  ubuntu@192.168.33.10:~/akilan.txt from-server.txt - Download file from server
* ssh -L 9000:localhost:3306 ubuntu@192.168.33.10- SSH port forwarding. Mysal running on 192.168.33.10 can be accessed by laptop-hostname:9000 in my laptop
* ssh server configuration - sudo cat /etc/ssh/sshd_config
* Change port, passwordlogin enable, disable, root login enable, disable
* 