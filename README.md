# linux

```bash
# Read stdin from cmd line
"Akilan" | hello.sh -s

# Arrays
family=("Akilan" "Pooma" "Inba")
echo ${family[*]}
family+=("Iniya")
echo ${family[*]}

# Single line for
for i in "${family[@]}"; do echo $i; done
echo ${#family[@]} # length

# xargs [ It converts input from standard input into arguments to a command ]
docker ps -a | xargs docker stop

# stdin 0, stdout 1, stderr 2 [redirect error msg]
cat akilan.txt 2> /dev/null

# Split strings using tr
languages="PHP;Python;NodeJS;Go"
echo $languages | tr ";" "\n"

foss="Fedora is a free operating system"
echo ${foss:0:6} # Fedora
echo ${foss:12} # free operating system
echo ${foss/Fedora/Ubuntu} # sUbuntu is a free operating system
echo ${foss/free} # Fedora is a operating system

legend="john nash"
actor="JULIA ROBERTS"
echo ${legend^^} #JOHN NASH
echo ${actor,,} #julia roberts

# one line if condition
if [ $(whoami) = 'root' ]; then echo "root"; else echo "not root"; fi

free -m | awk '/Mem/ {print $2}' # Total memory

# One line for loop
for i in {1..10};do echo $i; done

# For loop
for ((i=0;i<=10;i++)); do
	if [ $(($i % 2)) -ne 1 ]; then
		continue
	fi
	echo $i
done

# while lopp
num=1
while [ $num -le 10 ]; do
	echo $(($num * 3))
	num=$(($num+1))
done

# Disk usage
usage=$(df -h $i | tail -n 1 | awk '{print $5}' | cut -d %

# scp
scp /tmp/backup.tar.gz $dest_server:$dest_dir

#cpu info
lscpu
cat /proc/cpuinfo

# distro and kernel info
uname -a
cat /proc/version
lsb_release -a
cat /etc/*-release
```
