# install additional packages
apt-get install git debootstrap schroot mc devscripts -y

useradd -d /home/buildbot -m buildbot
echo buildbot:buildbot | chpasswd


# не обязательное, но пока удобное для работы
sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get install notepadqq
