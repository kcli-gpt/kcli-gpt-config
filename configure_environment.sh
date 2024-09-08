#!/bin/bash

if [ ! -f default.env ];
then
    echo "default.env file not found"
    exit 1
else 
    source default.env
fi 

# Check Target Server
if [ -z $TARGET_SERVER ];
then 
    echo "TARGET_SERVER variable is not set"
    exit 1
fi

# Load the helper functions
if [ -f scripts/helper_functions.sh ]; then
    source scripts/helper_functions.sh
fi

if [ $TARGET_SERVER == "rhel8-equinix" ] || [ $TARGET_SERVER == "rhel9-equinix" ];
then 
    sudo sed -i 's/NET_NAME=qubinet/NET_NAME=default/g' default.env
fi

if [ $VM_PROFILE == "kcli-openshift4-baremetal" ];
then 
    sudo sed -i 's/NET_NAME=.*/NET_NAME=lab-baremetal/g' default.env
fi

cat default.env

# Perform environment configuration tasks
check_ssh_key
configure_ansible

exit 0


