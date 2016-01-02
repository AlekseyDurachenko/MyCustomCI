#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) # "
FILE="${DIR}/build_number.seq"

if [ -f "${FILE}" ];
then
    BUILD_NUMBER=`cat "${FILE}"`
    echo $((BUILD_NUMBER+1)) > "${FILE}"
    echo ${BUILD_NUMBER}
else
    echo "1" > "${FILE}"
    echo "1"
fi
