# argonone-fan-arch-linux
A bash script that runs the argon one pi4 fan in your arch/manjiro linux raspberry pi machine

## 1. Turn on i2c because it won't be enabled by default.
Go to "/boot/config.txt" and open it in nano or vim and add the following at the end of the file

- ```sudo nano /boot/config.txt```
- ```dtparam=i2c_arm=on```

Then go to "/etc/modules-load.d/raspberrypi.conf" and open it and add the following at the end of the file

- ```sudo nano /etc/modules-load.d/raspberrypi.conf```
- ```i2c-dev```

Now restart your raspberry pi to get the configuration and modules loaded.


## 2 Clone this repo into your Downloads folder

- ```git clone https://github.com/anime-in-the-world/argonone-fan-arch-linux.git```

## 3 Run the bash script

Get into the folder and run the following command
- ```sudo ./argonone.sh```

Congrats your fan is now finally running.

## 4 Next from everytime booting into the system just use the following command into the terminal and the fan will turn on.
- ```sudo argonone```

## <a href="https://www.buymeacoffee.com/kurumi.the.nightmare">BUY ME A COFFEE</a>

<a href="https://www.buymeacoffee.com/kurumi.the.nightmare"><img src="buy_me_a_coffee.png" height='150px'></a>