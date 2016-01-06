#! /bin/bash

httperf --server=localhost --port 8080 --uri / --num-conns 5000 --hog > d.txt

httperf --server=localhost --port 8000 --uri / --num-conns 5000 --hog > django.txt