# LXC & LXD

* LXC is similar to a virtual machine, but it's much more light-weight; you don't have the overhead of running an additional kernel or simulating the hardware.
* LXD is a Deamon to run and manage LXC container

### Find Distro version
* cat /proc/version - Prints version of distro, kernal
* uname -r - kernal version
* uname -a - prints all the system config kernal, processor, os etc
* lsb_release -a - prints distro version
* cat /etc/*-release - prints distro version
* nproc - prints number of cores available in the system

### Installation
* sudo apt install lxc
* sudo apt install lxd
* sudo usermod -aG lxd $USER
* sudo systemctl status lxd
* lxd init - all default options

### Basic Commands
* lxc list - list all the container
* lxc image list - list all the images
* lxc image list ubuntu: | less - List all the stable ubuntu images
* lxc image list image:centos | less - List all the images start with "centos"
* lxc launch ubuntu:18.04 webserver - create a new ubuntu container
* lxc info webserver - shows container status, memory & CPU usage
* lxc config show webserver -Shows OS version and architecture
* lxc exec webserver -- bash - login into the linux container
* apt update && apt upgrade -y && apt install apache2
* curl localhost - Shows apache home page
* curl 10.116.237.52 - from host machine
* curl webserver - from another container
* lxc exec webserver -- su - ubuntu - switch user


### Configuration & Profile
* lxc info webserver - List all the information about the container
* lxc config show webserver
* lxc profile list
* lxc profile show default
* lxc profile copy default my-custom
* lxc profile edit my-custom - add limits.memory: 256MB
* lxc launch ubuntu:18.04 new-webserver --profile my-custom


### Limit resources & Back
* free -m - Host machine memory usage
* lxc exec webserver -- free -m - Same as host machine
* lxc exec webserver -- nproc 
* lxc config set webserver limits.memory 128MB
* lxc config set webserver limits.cpu 1
* lxc exec webserver -- free -m - Now it shows 128MB as memory
* lxc exec webserver -- nproc - Now it shows 1 as cpu
* lxc config set webserver security.privileged true
* lxc config set webserver security.nesting true - To run container inside container

### Backup and Restore
* lxc snapshot webserver apache-bk
* lxc exec webserver -- rm -rf /etc
* lxc restore webserver apache-bk

### Images
* lxc publish webserver/apache-bk --alias apache-server
* lxc image list - shows newly created image
* lxc stop webserver
* lxc delete webserver
* lxc launch apache-server new-webserver
* lxc exec new-webserver -- curl localhost
* https://images.linuxcontainers.org/
* lxc image list images: | less - List all the available images
* lxc remote list - list of all configured remotes 
* lxc remote add tryit 2001:470:b368:1070:216:3eff:fefe:6d19 --password=fun
* lxc launch new-webserver tryit:new-webserver
* lxc launch akilan-os tryit:akilan-os

### Accessing File
* lxc file pull new-webserver/var/www/html/index.html .
* lxc file push akilan.html new-webserver/var/www/html/
* lxc delete --force new-webserver
* lxc delete -f new-webserver
