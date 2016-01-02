#!/bin/bash


export CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) # "

export GIT_BRANCH=${GIT_BRANCH=master}
export GIT_SOURCES=`cat "${CURRENT_DIR}/_sources.txt"`

export APP_BUILD_NUMBER=`bash "${CURRENT_DIR}/build_number.sh"`
export APP_BUILD_DATE=`date -u +%Y-%m-%dT%H:%M:%S%z`


while read -r line
do
    export BUILD_TARGET=$line
    export BUILD_DIR=${CURRENT_DIR}/workspace/${GIT_BRANCH}-${APP_BUILD_NUMBER}/${BUILD_TARGET}
    export BUILD_SCRIPT=${BUILD_DIR}/build.sh
    export BUILD_LOG=${BUILD_DIR}/build.log
    export PACKAGE_DIR=${CURRENT_DIR}/packages/${GIT_BRANCH}-${APP_BUILD_NUMBER}

    # create build directories
    mkdir -p "${BUILD_DIR}"
    mkdir -p "${PACKAGE_DIR}"

    # execute script for create platform specific build script
    bash "${CURRENT_DIR}/schroot_${BUILD_TARGET}.sh" 2> /dev/null

    # execute created build script
    bash "${BUILD_SCRIPT}" > "${BUILD_LOG}" 2>&1
    if [ $? -eq 0 ];
    then
        echo "Building target '${BUILD_TARGET}'... Success"
    else
        echo "Building target '${BUILD_TARGET}'... Failed"
    fi
done < "${CURRENT_DIR}/_targets.txt"
