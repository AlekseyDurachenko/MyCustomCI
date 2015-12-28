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
# extreact version and revision
export APP_VERSION=\`git describe --tags | cut -c 2-\`
export APP_REVISION=\`git rev-parse HEAD\`

# copy debian build rules
cp -R "${CURRENT_DIR}/dist/debian" "${BUILD_DIR}/sources"

# -----------------------------------------------------------------------
# execute distributive specific code inside the schroot
# -----------------------------------------------------------------------
schroot -c ${BUILD_TARGET} -u buildbot -- bash << EOL_INTERNAL
#!/bin/bash
set -e
# speed up the compilation: COMPILE_THREAD=CPU_COUNT+1
export MAKEFLAGS="-j $((`nproc`+1))"
export APP_VERSION="\${APP_VERSION}"
export APP_REVISION="\${APP_REVISION}"
export BUILD_TARGET=${BUILD_TARGET}
export QMAKE_ARGS="DEFINES += APP_BUILD_NUMBER='${APP_BUILD_NUMBER}' \
                              APP_BUILD_DATE='${APP_BUILD_DATE}'     \
                              APP_SOURCES='${GIT_SOURCES}'           \
                              APP_VERSION='\${APP_VERSION}'          \
                              APP_REVISION='\${APP_REVISION}'"
cd "${BUILD_DIR}/sources"
fakeroot ./debian/rules binary
exit 0;
EOL_INTERNAL
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------

# copy the .deb packages to the packages directory
cp ${BUILD_DIR}/sources/*.deb ${PACKAGE_DIR}/

exit 0;
EOL
