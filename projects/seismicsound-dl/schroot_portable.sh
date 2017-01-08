#!/bin/bash
# -----------------------------------------------------------------------
# the common build script
# -----------------------------------------------------------------------
cat >"${BUILD_SCRIPT}" <<EOL
#!/bin/bash
set -e

# checkout the source code && switch to the target branch or tag
git clone ${GIT_SOURCES} "${BUILD_DIR}/sources"  
cd "${BUILD_DIR}/sources"
git checkout ${GIT_BRANCH}
git submodule update --init --recursive
# extreact version and revision
export APP_VERSION=\`git describe --tags | cut -c 2-\`
export APP_REVISION=\`git rev-parse HEAD\`

# -----------------------------------------------------------------------
# execute distributive specific code inside the schroot
# -----------------------------------------------------------------------
schroot -c `echo ${BUILD_TARGET} | cut -d \- -f 1` -u buildbot -- bash << EOL_INTERNAL
#!/bin/bash
set -e
# speed up the compilation: COMPILE_THREAD=CPU_COUNT+1
export MAKEFLAGS="-j $((`nproc`+1))"
export QMAKE_ARGS="DEFINES += APP_PORTABLE                           \
                              APP_BUILD_NUMBER='${APP_BUILD_NUMBER}' \
                              APP_BUILD_DATE='${APP_BUILD_DATE}'     \
                              APP_SOURCES='${GIT_SOURCES}'           \
                              APP_VERSION='\${APP_VERSION}'          \
                              APP_REVISION='\${APP_REVISION}'"
cd "${BUILD_DIR}/sources"
lrelease seismicsound-dl.pro
qmake "\\\${QMAKE_ARGS}"
make -f Makefile.Release
make INSTALL_ROOT="${BUILD_DIR}/sources/portable-build" install
exit 0;
EOL_INTERNAL
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------

# create && copy the .tar.gz packages to the packages directory
cd "${BUILD_DIR}/sources/portable-build"
tar -cvzf "../seismicsound-dl_\${APP_VERSION}_${BUILD_TARGET}.tar.gz" .
cp "${BUILD_DIR}/sources/seismicsound-dl_\${APP_VERSION}_${BUILD_TARGET}.tar.gz" ${PACKAGE_DIR}/

exit 0;
EOL
