#!/bin/sh

# create local .xbot folder
mkdir -p ~/.xbot
touch ~/.xbot/active_config.yaml

# export env variables
export XBOT_CONFIG=~/.xbot/active_config.yaml
export XBOT_ROOT=/opt/xbot/build/install/share/xbot
export XBOT_HOME=/opt/xbot/build/install

export PATH=$PATH:$XBOT_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$XBOT_HOME/lib
export CPATH=$CPATH:$XBOT_HOME/include
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:$XBOT_HOME

# ROS packages
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$XBOT_HOME/share

# Gazebo plugins
export GAZEBO_PLUGIN_PATH=$GAZEBO_PLUGIN_PATH:$XBOT_HOME/lib

# Robot Models
if [ -d $XBOT_ROOT/robots/iit-coman-ros-pkg ]; then
    export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$XBOT_ROOT/robots/iit-coman-ros-pkg
    export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:$XBOT_ROOT/robots/iit-coman-ros-pkg/coman_gazebo/database
fi
