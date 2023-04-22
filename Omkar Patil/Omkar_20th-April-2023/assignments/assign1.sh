#! bin/bash

start () {
    echo "Starting the application"
    /usr/bin/code usr/share/code
}
stop () {
    echo "Stopping the application"
    pkill -f usr/share/code
}


case $1 in 
start) start ;;
stop) stop ;;
* ) echo "Enter either start or stop"
esac
