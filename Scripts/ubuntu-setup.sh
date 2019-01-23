#!/bin/bash
## Ing. Alberto Rodriguez S <bt0dotninja@fedoraproject.org>

sudo apt update

sudo apt upgrade -y

sudo apt -y install davmail remmina pst-utils openfortivpn network-manager-fortisslvpn network-manager-fortisslvpn-gnome cutecom thunderbird-locale-es asciinema 

wget https://repo.skype.com/latest/skypeforlinux-64.deb
wget https://az764295.vo.msecnd.net/stable/61122f88f0bf01e2ac16bdb9e1bc4571755f5bd8/code_1.30.2-1546901646_amd64.deb
sudo dpkg -i *deb
sudo apt install -fy

sudo usermod -a -G dialout $USER

for item in `ls *.pst`
do
	newdir="${item%.*}"
	readpst -o $newdir -M -u -w -e -b $item
done 
