### Useful command

``` bash
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
sudo EDITOR=vi visudo # use vi editor

# file permissions
# u g o a -> user, group, others, all
chmod a+w hello.txt # allow write access for all
chmod +x hello.txt # execute permission for all

```

