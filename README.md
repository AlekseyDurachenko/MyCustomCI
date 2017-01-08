# MyCustomCI
My custom continuous integration system
* VirtualBox
* xUbuntu 14.04

## Configuring
```bash
host-upgrade.sh
host-install-dependency.sh
host-mxe-configure.sh
create-debootstrap.sh
create-schroot-archives.sh
create-schroot-conf.sh
shcroot-configure.sh
```

## Upgrade
```bash
host-upgrade.sh
schroot-upgrade.sh
```

# Execute build script
```bash
# for build the custom version(tag/branch)
GIT_BRANCH=v0.1.1 ./build.sh
# or build from master branch
./build.sh
```

## Projects
### seismicsound-dl
#### Information
* Homepage: http://alekseydurachenko.github.io/seismicsound-dl/
* Sources: https://github.com/AlekseyDurachenko/seismicsound-dl

#### Dependencies
* Packages (deb): libqt4-dev libphonon-dev libsndfile-1 fakeroot debhelper

#### Success
* debian_wheezy_amd64 (+ portable)
* debian_jessie_i386 (+ portable)
* debian_jessie_amd64 (+ portable)
* ubuntu_trusty_i386 (+ portable)
* ubuntu_trusty_amd64 (+ portable)
* ubuntu_wily_i386 (+ portable)
* ubuntu_wily_amd64 (+ portable)

#### Failed
* local_mxe_win32 - (problem with libsndfile, need to be fixed)
* ubuntu_precise_i386 - cc1plus: error: unrecognized command line option '-std=c++11'
* ubuntu_precise_amd64 - cc1plus: error: unrecognized command line option '-std=c++11'
* debian_squeeze_i386 - cc1plus: error: unrecognized command line option "-std=c++11"
* debian_squeeze_amd64 - cc1plus: error: unrecognized command line option "-std=c++11"
* debian_wheezy_i386 - cc1plus: error: unrecognized command line option "-std=c++11"


### tomatotasktracker-desktop
#### Information
* Homepage: http://alekseydurachenko.github.io/tomatotasktracker-desktop/
* Sources: https://github.com/AlekseyDurachenko/tomatotasktracker-desktop

#### Dependencies
* Packages (deb): libqt4-dev libphonon-dev fakeroot debhelper

#### Success
* local_mxe_win32
* debian_wheezy_amd64 (+ portable)
* debian_jessie_i386 (+ portable)
* debian_jessie_amd64 (+ portable)
* ubuntu_trusty_i386 (+ portable)
* ubuntu_trusty_amd64 (+ portable)
* ubuntu_wily_i386 (+ portable)
* ubuntu_wily_amd64 (+ portable)

#### Failed
* ubuntu_precise_i386 - cc1plus: error: unrecognized command line option '-std=c++11'
* ubuntu_precise_amd64 - cc1plus: error: unrecognized command line option '-std=c++11'
* debian_squeeze_i386 - cc1plus: error: unrecognized command line option "-std=c++11"
* debian_squeeze_amd64 - cc1plus: error: unrecognized command line option "-std=c++11"
* debian_wheezy_i386 - cc1plus: error: unrecognized command line option "-std=c++11"

### vkoauth
#### Information
* Homepage: http://alekseydurachenko.github.io/vkoauth/
* Sources: https://github.com/AlekseyDurachenko/vkoauth

#### Dependencies
* Packages (deb): libqt4-dev fakeroot debhelper

#### Success
* debian_squeeze_i386-portable
* debian_squeeze_amd64-portable
* debian_wheezy_i386-portable
* debian_wheezy_amd64 (+ portable)
* debian_jessie_i386 (+ portable)
* debian_jessie_amd64 (+ portable)
* ubuntu_precise_i386 (+ portable)
* ubuntu_precise_amd64 (+ portable)
* ubuntu_trusty_i386 (+ portable)
* ubuntu_trusty_amd64 (+ portable)
* ubuntu_wily_i386 (+ portable)
* ubuntu_wily_amd64 (+ portable)

#### Failed
* debian_squeeze_i386 - Sorry, but 8 is the highest compatibility level supported by this debhelper
* debian_squeeze_amd64 - Sorry, but 8 is the highest compatibility level supported by this debhelper
* debian_wheezy_i386 - Sorry, but 8 is the highest compatibility level supported by this debhelper
