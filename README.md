# MyCustomCI
My custom continuous integration system
* VirtualBox
* xUbuntu 14.04

## Configuring
```bash
host-upgrade.sh
host-install-dependency.sh
create-debootstrap.sh
create-schroot-archives.sh
create-schroot-conf.sh
shcroot-configure.sh
```

# Execute build script
```bash
# for build the custom version(tag/branch)
GIT_BRANCH=0.1.1 ./build.sh
# or build from master branch
./build.sh
```

## Projects
### tomatotasktracker-desktop
#### Information
* Homepage: http://alekseydurachenko.github.io/tomatotasktracker-desktop/
* Sources: https://github.com/AlekseyDurachenko/tomatotasktracker-desktop

#### Dependencies
* Packages (deb): libqt4-dev libphonon-dev fakeroot debhelper

#### Success
* debian_wheezy_amd64
* debian_jessie_i386
* debian_jessie_amd64
* ubuntu_trusty_i386
* ubuntu_trusty_amd64
* ubuntu_wily_i386
* ubuntu_wily_amd64

#### Failed
* ubuntu_precise_i386 - cc1plus: error: unrecognized command line option '-std=c++11'
* ubuntu_precise_amd64 - cc1plus: error: unrecognized command line option '-std=c++11'
* debian_squeeze_i386 - cc1plus: error: unrecognized command line option "-std=c++11"
* debian_squeeze_amd64 - cc1plus: error: unrecognized command line option "-std=c++11"
* debian_wheezy_i386 - cc1plus: error: unrecognized command line option "-std=c++11"
