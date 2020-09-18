#! /bin/bash

function sayHello() {
    echo $1
    for i in $(eval echo "{1..$1}"); do
        echo "Hello $2"
    done
}

sayHello 10 Akilan