#!/bin/sh
USER_HOME=$(eval echo ~${SUDO_USER})
pacman -S i2c-tools gcc dtc make git bash 
i2cdetect -y 1
cd ${USER_HOME}/Downloads/argonone-fan-arch-linux
make mrproper
./configure
argonone-cli --fan0 100
argonone-cli --temp0 30
argonone-cli --hysteresis 3
argonone-cli --commit
cd ${USER_HOME}
echo 'Fan is probably running if everything went okay'
echo alias argonone=\'sudo bash ${USER_HOME}/Downloads/argonone-fan-arch-linux/argonone.sh\' >> ${USER_HOME}/.bashrc