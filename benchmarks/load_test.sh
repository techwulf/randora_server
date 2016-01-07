#! /bin/bash

#httperf --server=localhost --port 8080 --uri / --num-conns 5000 --hog > d.benchmark.txt

#httperf --server=localhost --port 8000 --uri / --num-conns 5000 --hog > django.benchmark.txt

SERVER=localhost
PORT=8080

#--num-conns $NUM_CONNS
NUM_CONNS=1000
#FIBONACCI=100000
FIBONACCI=100

TOTAL_NUM_OF_SESSIONS=10
CALLS_PER_SESSION=5
USER_THINK_TIME=0

#--wsess=$TOTAL_NUM_OF_SESSIONS,$CALLS_PER_SESSION,$USER_THINK_TIME
WSESS="--wsess=1000,0,0"

BURST_LEN=5

echo "D - Blank Page"
httperf --server=$SERVER --port $PORT --uri /benchmark/blank $WSESS --burst-len $BURST_LEN --hog > results/d.blank.benchmark.txt

echo "D - Fibonacci 1000000"
httperf --server=$SERVER --port $PORT --uri /benchmark/fibonacci/$FIBONACCI $WSESS --burst-len $BURST_LEN --hog > results/d.fibonacci.benchmark.txt