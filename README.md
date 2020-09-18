# linux

''' bash
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

'''
