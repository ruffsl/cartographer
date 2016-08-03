#!/bin/bash
# set -e

source /opt/ros/indigo/setup.bash

cd ~/catkin_ws/src

catkin init --workspace .

cd ..

catkin config

catkin build
