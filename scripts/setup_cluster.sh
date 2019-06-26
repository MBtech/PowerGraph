#!/bin/bash

HOSTFILE=$1 

while read HOST ; do
	scp $HOSTFILE $HOST:~/machines	
	cd ~/PowerGraph/release/toolkits
	~/PowerGraph/scripts/mpirsync
	cd ~/PowerGraph/deps/local
	~/PowerGraph/scripts/mpirsync
	cd ~/PowerGraph/scripts
done < $HOSTFILE
