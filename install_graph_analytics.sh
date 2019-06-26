sudo apt-get update
sudo apt-get install gcc g++ build-essential libopenmpi-dev openmpi-bin default-jdk cmake zlib1g-dev git libomp-dev libboost-all-dev gdb
./configure
cd release/toolkits/graph_analytics
make -j4
