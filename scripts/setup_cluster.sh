#!/bin/bash

HOSTFILE=$1 

while read HOST ; do
	scp $HOSTFILE $HOST:~/machines	
	cd ~/repos/PowerGraph/release/toolkits
	~/repos/PowerGraph/scripts/mpirsync
	cd ~/repos/PowerGraph/deps/local
	~/repos/PowerGraph/scripts/mpirsync
	cd ~/repos/PowerGraph/scripts
done < $HOSTFILE
