#!/bin/sh
USER_HOME=$(eval echo ~${SUDO_USER})
cd ${USER_HOME}/Downloads/argonone-fan-arch-linux
make mrproper
./configure
argonone-cli --fan0 100
argonone-cli --temp0 30
argonone-cli --hysteresis 3
argonone-cli --commit
cd ${USER_HOME}
echo 'Work hard until your brain falls off'