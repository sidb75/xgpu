#!/bin/bash

echo "-------------------------"
echo "       XENBLOCKS         "
echo "    STARTING SIDSTALL     "
echo "-------------------------"

sudo apt update && apt upgrade -y > /dev/null 2>&1
echo "STEP 1 of 10: Completed Packages Update"

sudo apt -y install ocl-icd-opencl-dev > /dev/null 2>&1
echo "STEP 2 of 10: Installed OpenCL"

sudo apt -y install nano  > /dev/null 2>&1
echo "STEP 3 of 10: Installed Nano"

sudo apt -y install cmake  > /dev/null 2>&1
echo "STEP 4 of 10: Installed cMake"

sudo apt -y install python3-pip > /dev/null 2>&1
echo "STEP 5 of 10: Installed Python"

git clone git clone https://github.com/sidb75/XENGPUMiner75.git > /dev/null 2>&1
echo "STEP 6 of 10: Cloned git clone https://github.com/sidb75/XENGPUMiner75.git"

cd XENGPUMiner75
chmod +x build.sh > /dev/null 2>&1
./build.sh > /dev/null 2>&1
echo "STEP 7 of 10: Permissions set!"

apt install screen > /dev/null 2>&1
echo "STEP 8 of 10: Screen Install"

sudo pip install -U -r requirements.txt > /dev/null 2>&1
echo "STEP 9 of 10: Installed Python Requirements"

echo "STEP 10 of 10: Swipe porque no"
screen -wipe

echo "-------------------------"
echo "    MINING  XENBLOCKS    "
echo "     https://BOBO 2.0     "
echo "-------------------------"
echo " "
./miner.sh -g1
