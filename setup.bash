#!/bin/sh

# create local .xbot folder
mkdir -p ~/.xbot
touch ~/.xbot/active_config.yaml

# export env variables
export XBOT_CONFIG=~/.xbot/active_config.yaml
export XBOT_ROOT=/usr/share/xbot

# Gazebo plugins
export GAZEBO_PLUGIN_PATH=$GAZEBO_PLUGIN_PATH:/usr/lib