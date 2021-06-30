### Useful commands

<!-- Apt-get clean or apt-get autoclean removes the retrieved packages from the local cache only while the apt-get autoremove removes the unneeded packages that were once installed as a dependency.  -->

```bash
# pass sudo password as stdin
echo password | sudo -S apt update

# package src list
cat /etc/apt/sources.list

# enforce to login without password
sudo cat /etc/ssh/sshd_config

# Firewall
# Default deny all incoming
sudo ufw default deny incoming
# Default allow all outgoing
sudo ufw default allow outgoing
# allow ssh incoming
sudo ufw allow ssh
# Specific port and protocol
sudo ufw allow 2222/tcp
sudo ufw allow wwww
sudo ufw enable
sudo ufw status

# cat command to write a file with multiline text
cat <<EOF >> akilan.txt
Hello Akilan
Welcome to cat
EOF

# Delete files with ext .txt
find . -name "*.txt" -type f -delete

# Add user, Group, Delete user, group
sudo adduser inba # create a user
cat /etc/passwd # list all the user
cat /etc/group # list all the group
sudo addgroup family # create a group
sudo usermod -a -G family inba # add user to the group
sudo passwd inba # change password
groups # list all the groups
groups akilan # list groups for user akilan
sudo gpasswd -d inba family # remove user inba from family
sudo delgroup family # delete group
sudo deluser inba # Delete user
sudo usermod -aG sudo inba # add user to sudo group
sudo visudo # use this command to edit /etc/sudoers file
cat /etc/sudoers # add sudo users
sudo EDITOR=vi visudo # use vi editor

# file permissions
# u g o a -> user, group, others, all
chmod a+w hello.txt # allow write access for all
chmod +x hello.txt # execute permission for all

## Process
kill -l # list all the signals
jobs # list job tables
# Run background jobs
sleep 500 &
sleep 600 &
sleep 700 &

fg $JOB_ID # it brings the job in stdin
kill -9 13046 # It will kill the process forcibly
kill -20 13046 # SIGTSTP stop the process
kill -18 13046 # SIGCONT start the ps again

```
