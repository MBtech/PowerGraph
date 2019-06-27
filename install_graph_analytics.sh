sudo apt-get update
sudo apt-get install gcc g++ build-essential libopenmpi-dev openmpi-bin default-jdk cmake zlib1g-dev git libomp-dev libboost-all-dev gdb
./configure
cd release/toolkits/graph_analytics
# Set the flag here to override the flag in zookeeper makefile
export AM_CFLAGS="-Wall -Wdeclaration-after-statement"
make -e -j4
