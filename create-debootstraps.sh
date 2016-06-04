# ubuntu 12.04
debootstrap --variant=buildd --arch=i386 precise /home/chroots/ubuntu_precise_i386 http://archive.ubuntu.com/ubuntu/
debootstrap --variant=buildd --arch=amd64 precise /home/chroots/ubuntu_precise_amd64 http://archive.ubuntu.com/ubuntu/
# ubuntu 14.04
debootstrap --variant=buildd --arch=i386 trusty /home/chroots/ubuntu_trusty_i386 http://archive.ubuntu.com/ubuntu/
debootstrap --variant=buildd --arch=amd64 trusty /home/chroots/ubuntu_trusty_amd64 http://archive.ubuntu.com/ubuntu/
# ubuntu 15.10
debootstrap --variant=buildd --arch=i386 wily /home/chroots/ubuntu_wily_i386 http://archive.ubuntu.com/ubuntu/
debootstrap --variant=buildd --arch=amd64 wily /home/chroots/ubuntu_wily_amd64 http://archive.ubuntu.com/ubuntu/
# debian 6
debootstrap --variant=buildd --arch=i386 squeeze /home/chroots/debian_squeeze_i386 http://archive.debian.net/debian/
debootstrap --variant=buildd --arch=amd64 squeeze /home/chroots/debian_squeeze_amd64 http://archive.debian.net/debian/
# debian 7
debootstrap --variant=buildd --arch=i386 wheezy /home/chroots/debian_wheezy_i386 http://http.debian.net/debian/
debootstrap --variant=buildd --arch=amd64 wheezy /home/chroots/debian_wheezy_amd64 http://http.debian.net/debian/
# debian 8
debootstrap --variant=buildd --arch=i386 jessie /home/chroots/debian_jessie_i386 http://http.debian.net/debian/
debootstrap --variant=buildd --arch=amd64 jessie /home/chroots/debian_jessie_amd64 http://http.debian.net/debian/
