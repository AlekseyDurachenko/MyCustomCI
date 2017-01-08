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
# speed up the compilation: COMPILE_THREAD=CPU_COUNT+1
export MAKEFLAGS="-j $((`nproc`+1))"


cd "${BUILD_DIR}/sources"
export PATH=/home/mxe/usr/bin:$PATH
/home/mxe/usr/i686-w64-mingw32.static/qt/bin/lrelease "${BUILD_DIR}/sources/seismicsound-dl.pro"
/home/mxe/usr/i686-w64-mingw32.static/qt/bin/qmake "DEFINES += APP_PORTABLE
                                                               APP_BUILD_NUMBER='${APP_BUILD_NUMBER}' \
                                                               APP_BUILD_DATE='${APP_BUILD_DATE}'     \
                                                               APP_SOURCES='${GIT_SOURCES}'           \
                                                               APP_VERSION='\${APP_VERSION}'          \
                                                               APP_REVISION='\${APP_REVISION}'"

make -f Makefile.Release
make install INSTALL_ROOT="${BUILD_DIR}/sources/package"
# -----------------------------------------------------------------------

cd ${BUILD_DIR}/sources/package
zip -r "../seismicsound-dl_\${APP_VERSION}_win32.zip" *

# copy the .deb packages to the packages directory
cp "${BUILD_DIR}/sources/seismicsound-dl_\${APP_VERSION}_win32.zip" ${PACKAGE_DIR}/

exit 0;
EOL
