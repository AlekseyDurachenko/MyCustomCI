cat >/etc/schroot/chroot.d/ubuntu_precise_i386.conf <<EOL
[ubuntu_precise_i386]
description=Ubuntu 12.04 Precise for i386
directory=/home/chroots/ubuntu_precise_i386
personality=linux32
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/ubuntu_precise_amd64.conf <<EOL
[ubuntu_precise_amd64]
description=Ubuntu 12.04 Precise for amd64
directory=/home/chroots/ubuntu_precise_amd64
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/ubuntu_trusty_i386.conf <<EOL
[ubuntu_trusty_i386]
description=Ubuntu 14.04 Trusty for i386
directory=/home/chroots/ubuntu_trusty_i386
personality=linux32
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/ubuntu_trusty_amd64.conf <<EOL
[ubuntu_trusty_amd64]
description=Ubuntu 14.04 Trusty for amd64
directory=/home/chroots/ubuntu_trusty_amd64
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/ubuntu_wily_i386.conf <<EOL
[ubuntu_wily_i386]
description=Ubuntu 15.10 Wily for i386
directory=/home/chroots/ubuntu_wily_i386
personality=linux32
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/ubuntu_wily_amd64.conf <<EOL
[ubuntu_wily_amd64]
description=Ubuntu 15.10 Wily for amd64
directory=/home/chroots/ubuntu_wily_amd64
root-users=buildbot
type=directory
users=buildbot
EOL


cat >/etc/schroot/chroot.d/ubuntu_xenial_i386.conf <<EOL
[ubuntu_xenial_i386]
description=Ubuntu 16.04 Xenial for i386
directory=/home/chroots/ubuntu_xenial_i386
personality=linux32
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/ubuntu_xenial_amd64.conf <<EOL
[ubuntu_xenial_amd64]
description=Ubuntu 16.04 Xenial for amd64
directory=/home/chroots/ubuntu_xenial_amd64
root-users=buildbot
type=directory
users=buildbot
EOL


cat >/etc/schroot/chroot.d/debian_squeeze_i386.conf <<EOL
[debian_squeeze_i386]
description=Debian 6 Squeeze for i386
directory=/home/chroots/debian_squeeze_i386
personality=linux32
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/debian_squeeze_amd64.conf <<EOL
[debian_squeeze_amd64]
description=Debian 6 Squeeze for amd64
directory=/home/chroots/debian_squeeze_amd64
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/debian_wheezy_i386.conf <<EOL
[debian_wheezy_i386]
description=Debian 7 Wheezy for i386
directory=/home/chroots/debian_squeeze_i386
personality=linux32
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/debian_wheezy_amd64.conf <<EOL
[debian_wheezy_amd64]
description=Debian 7 Wheezy for amd64
directory=/home/chroots/debian_wheezy_amd64
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/debian_jessie_i386.conf <<EOL
[debian_jessie_i386]
description=Debian 8 Jessie for i386
directory=/home/chroots/debian_jessie_i386
personality=linux32
root-users=buildbot
type=directory
users=buildbot
EOL

cat >/etc/schroot/chroot.d/debian_jessie_amd64.conf <<EOL
[debian_jessie_amd64]
description=Debian 8 Jessie for amd64
directory=/home/chroots/debian_jessie_amd64
root-users=buildbot
type=directory
users=buildbot
EOL
