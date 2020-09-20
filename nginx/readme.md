# Nginx - LinkedIn learning

### Installation

```bash
apt update
apt install -y nginx
systemctl status nginx
```

### Files and Folders

- /etc/nginx - holds all the nginx config files
- /var/log/nginx - holds access log and error logs
- /var/www/html - holds static page
- nginx --version - displays version of nginx
- nginx -t - test the configuration
- nginx -T - test the configuration and print it on the screen

### Vhost config

- unlink default - unlink the default server /etc/nginx/sites-enabled
- create inba.com.conf under /etc/nginx/conf.d with below cotent

```bash
server {
    listen 80;
    root /var/www/inba.com;
}
```

- sudo nginx -t - test config
- systemctl reload nginx - reload config
- add the domain entry in /etc/hosts in host machine

```
192.168.33.10   inba.com
```

- access inba.com from host machine
- improve inba.com.conf

```
server {
listen 80 default_server;
server_name inba.com www.inba.com;
index index.html index.htm index.php;
root /var/www/inba.com;
}

```

- change permissions

```bash
sudo find /var/www/inba.com/ -type f -exec chmod 644 {} \;
```

### Debugging

- check the status of nginx service
- systemctl status nginx
- nginx -t - validate conf file
- sudo netstat -plan | grep nginx - Check ngix port open or not
- sudo lsof -i -P -n | grep LISTEN

### Install PHP and MariaDB

- sudo apt install php-fpm php-mysql mariadb-server mariadb-client -y - Install php mariadb
- sudo mysql_secure_installation - Set root password and disallow remote root login
- sudo mysql -u root -p - login to mariadb
- create database if not exists appointments;
- create user if not exists 'admin';
- grant all on appointments.\* to 'admin'@'localhost' identified by 'admin';
- sudo mysql -u root -proot appointments < /vagrant/appointment_database.sql

### Secure Nginx - auth_basic

- sudo apt install apache2-utils -y - Install apache2-utils to prompt user to access page
- sudo htpasswd -c /etc/nginx/passwords admin
- sudo htpasswd /etc/nginx/passwords user1
- sudo htpasswd /etc/nginx/passwords user2
- sudo htpasswd -D /etc/nginx/passwords user2 - delete user

### Secure Nginx - SSL certificate

- sudo openssl genrsa -out /etc/nginx/certs/server.key 2048
- sudo openssl req -new -key /etc/nginx/certs/server.key -out /etc/nginx/certs/server.csr
- sudo openssl x509 -req -days 365 -in /etc/nginx/certs/server.csr -signkey /etc/nginx/certs/server.key -out /etc/nginx/certs/server.crt

### Reverse Proxy & Load Balancer

- Run the api and Blog node apps
- Refer the inba.com.conf
