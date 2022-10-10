#!/bin/bash

title="Creation of the Ansible project tree"
echo "${title}"

echo "This script will create the project HERE, do you agree ? [y/n]"
read Create
if [ "${Create}" == "yes" ] || [ "${Create}" == "y" ]; then
    echo "Fill the name of the project : "
    read name
    mkdir -p "${name}"
    cd "${name}"
    mkdir -p env-inventory
    mkdir -p group_vars
    mkdir -p host_vars
    mkdir -p files
    mkdir -p roles
    cd roles
    ansible-galaxy init odoo_role
    ansible-galaxy init pgadmin_role
    ansible-galaxy init ic_webapp
else
    echo "Move the script where you want create the project"
    exit 0
fi
