#!/bin/sh

set -e

cd ~/netecho

echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii

if [ "$1" = "-k" ]; then
    echo kkkkkkkkkkkkkkkkkkkkkk
    while pgrep -f t8000.sh || pgrep -f netcat
    do
       killall t8000.sh
       killall netcat
       sleep 3
    done
else   
    if ! pgrep -f t8000.sh; then
        while sudo lsof -nP -iTCP:8000  -sTCP:LISTEN >/dev/null
        do
            echo "some one is listing on 8000, so I am killing them"
            kill `sudo lsof -nP -iTCP:8000  -sTCP:LISTEN | tail  -n  -1 | awk '{ print $2 }'`
        done
        ./t8000.sh &
    else
        echo t8000.sh or netcat  is runing
    fi
fi
