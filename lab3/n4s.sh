#!/bin/bash
nice -n 19 /home/user/lab3/n4.sh &

/home/user/lab3/n4.sh &

/home/user/lab3/n4.sh &

sleep 10 && kill $! &
