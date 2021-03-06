## ssh daemon if minimal os installed
sudo apt-get install -y openssh-server
## install google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install -y google-chrome-stable
## install opera
sudo snap install opera
## install atom
sudo add-apt-repository -y ppa:webupd8team/atom -y
sudo apt update
sudo apt install -y atom
## install vs code
sudo apt install -y curl
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code
## install git
sudo apt-get install -y git
## install simple screen recorder
sudo apt-get install -y simplescreenrecorder
## install video editor: kdevlive
sudo apt-get install -y kdenlive
# enable ssh service
sudo apt-get install -y openssh-server
################################################################################
# popcorntime
sudo apt update && sudo apt install libcanberra-gtk-module libgconf-2-4
# get pkg: download popcorn pkg from website tar or zip file 
sudo mkdir /opt/popcorntime
cd ~/Downloads
# sudo tar Jxf Popcorn-Time-* -C /opt/popcorntime # if tar 
# sudo unzip Popcorn-Time-0.4.4-linux64.zip -d /opt/popcorntime/ # if zip 
sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/popcorntime
################################################################################
# libvirt/kvm/virtualization
sudo apt-get install libvirt-bin libvirt-doc # libvirt 
sudo apt-get install virt-manager # virtual manager 
sudo apt-get install qemu-kvm
sudo systemctl enable libvirtd; sudo systemctl status libvirtd
sudo virsh net-list
sudo virt-manager
