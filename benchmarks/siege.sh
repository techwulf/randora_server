#! /bin/bash

function MESSAGE(){
	port=$1
	users=$2
	reps=$3
	echo "$port, Users $users, Reps: $reps";
}

function SIEGE(){
	port=$1;
	users=$2;
	reps=$3;
	log=$4;
	
	siege $port --concurrent=$users --reps=$reps --log=$log --mark="$(MESSAGE $port $users $reps)" --rc=.siegerc;
}

function GET_URL(){
	server=$1
	port=$2;
	benchmark_test=$3;
	VALUE="";
	
	if [ -z $4 ]
	then
		VALUE="";
	else
		VALUE="/"$4;
	fi;
	
	echo $server":"$port"/benchmark/"$benchmark_test""$VALUE;
}

function GET_LOG(){
	port=$1;
	echo "./results/siege/siege."$port".log";
}

function RUN_TESTS(){
	for PORT in ${PORTS[@]}
	do
		rm $(GET_LOG $PORT)
	done;

	for SERVER in ${SERVERS[@]}
	do
		for PORT in ${PORTS[@]}
		do
			for CONCURRENT_USER in ${CONCURRENT_USERS[@]}
			do
				for REP in ${REPS[@]}
				do
					for TEST in "blank" "template"
					do
						SIEGE $(GET_URL $SERVER $PORT $TEST) $CONCURRENT_USER $REP $(GET_LOG $PORT);
					done;

					for TEST in "fibonacci"
					do
						for VALUE in 1 100 1000
						do
							SIEGE $(GET_URL $SERVER $PORT $TEST $VALUE) $CONCURRENT_USER $REP $(GET_LOG $PORT);
						done;
					done;
				done;
			done;
		done;
	done;
}

SERVERS=("http://localhost")
#PORTS=("8080 8081 8082 8083");
PORTS=("3000");
CONCURRENT_USERS=(1 5 50 100 500);
#CONCURRENT_USERS=(1);
REPS=(10);

#../workflow &
#./engines/django_benchmark/manage.py runserver 8081 &
#./engines/rails_benchmark/script/rails server -p 8082 &
#./engines/cakephp_benchmark/bin/cake server -p 8083 &
sleep 30;

$(RUN_TESTS);