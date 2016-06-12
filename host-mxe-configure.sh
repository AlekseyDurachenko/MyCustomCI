# Configure mxe
``bash
apt-get install \
    autoconf automake autopoint bash bison bzip2 flex gettext\
    git g++ gperf intltool libffi-dev libgdk-pixbuf2.0-dev \
    libtool libltdl-dev libssl-dev libxml-parser-perl make \
    openssl p7zip-full patch perl pkg-config python ruby scons \
    sed unzip wget xz-utils -y
apt-get install g++-multilib libc6-dev-i386 -y    

mkdir /home/mxe
git clone https://github.com/mxe/mxe.git /home/mxe

cd /home/mxe
make
```
