#!/usr/bin/env bash
#*******************************************************************************
# Copyright (c) 2016, 2020 Eurotech and/or its affiliates
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#     Eurotech - initial API and implementation
#
#******************************************************************************

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

print_usage_start(){
    echo "Usage: $(basename $0) help|base-box|develop [--ssh]" >&2
}

start_develop(){
    echo 'Starting Vagrant machine...'
    vagrant up || { echo 'Starting Vagrant machine... ERROR!'; exit 1; }
    echo 'Starting Vagrant machine... DONE!'
}

start_ssh() {
    if [[ "$2" == '--ssh' ]]; then
        sh ${SCRIPT_DIR}/ssh.sh $1
    else
        echo "Unrecognised parameter: ${1}"
        print_usage_start
    fi
}

if [[ "$1" == 'develop' ]]; then
    bash ${SCRIPT_DIR}/destroy.sh $1 || exit 1;

    start_develop

    if [[ -z "$2" ]]; then
        echo "Please type './ssh.sh develop' to connect to the machine."
    else
        start_ssh $1 $2
    fi

elif [[ "$1" == 'base-box' ]]; then
    bash ${SCRIPT_DIR}/baseBox/create.sh
else
    print_usage_start
    exit 1
fi
