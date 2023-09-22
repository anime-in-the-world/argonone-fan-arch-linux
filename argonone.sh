#!/bin/sh
pacman -S i2c-tools gcc dtc make git bash 
i2cdetect -y 1
cd ~/Downloads/argononed
make mrproper
./configure
argonone-cli --fan0 100
argonone-cli --temp0 30
argonone-cli --hysteresis 3
argonone-cli --commit
cd
echo 'Fan is probably running if everything went okay'
echo "alias argonone='sudo bash ~/Downloads/argonone-fan-arch-linux/argonone.sh" >> ~/.bashrc
