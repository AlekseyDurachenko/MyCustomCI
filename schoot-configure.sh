schroot -c ubuntu_precise_i386 -u root -- apt-get update
schroot -c ubuntu_precise_i386 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y
schroot -c ubuntu_precise_amd64 -u root -- apt-get update
schroot -c ubuntu_precise_amd64 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y

schroot -c ubuntu_trusty_i386 -u root -- apt-get update
schroot -c ubuntu_trusty_i386 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y
schroot -c ubuntu_trusty_amd64 -u root -- apt-get update
schroot -c ubuntu_trusty_amd64 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y

schroot -c ubuntu_xenial_i386 -u root -- apt-get update
schroot -c ubuntu_xenial_i386 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y
schroot -c ubuntu_xenial_amd64 -u root -- apt-get update
schroot -c ubuntu_xenial_amd64 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y

schroot -c debian_squeeze_i386 -u root -- apt-get update
schroot -c debian_squeeze_i386 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y
schroot -c debian_squeeze_amd64 -u root -- apt-get update
schroot -c debian_squeeze_amd64 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y

schroot -c debian_wheezy_i386 -u root -- apt-get update
schroot -c debian_wheezy_i386 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y
schroot -c debian_wheezy_amd64 -u root -- apt-get update
schroot -c debian_wheezy_amd64 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y

schroot -c debian_jessie_i386 -u root -- apt-get update
schroot -c debian_jessie_i386 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y
schroot -c debian_jessie_amd64 -u root -- apt-get update
schroot -c debian_jessie_amd64 -u root -- apt-get install libqt4-dev libphonon-dev fakeroot debhelper libsndfile1-dev -y
