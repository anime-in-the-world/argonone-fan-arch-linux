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
<div style="height:30px"></div>

## 2. Clone this repo into your Downloads folder

- ```git clone https://github.com/anime-in-the-world/argonone-fan-arch-linux.git```

<div style="height:30px"></div>

## 3. Run the bash script

Get into the folder and run the following command
- ```sudo ./argonone.sh```

Congrats your fan is now finally running.
<div style="height:30px"></div>


## 4. After that everytime booting into the system just requires the use of the following command and the fan will turn on.
- ```argonone```

<div style="height:30px"></div>

## <a href="https://www.buymeacoffee.com/kurumi.the.nightmare">BUY ME A COFFEE</a>

<a href="https://www.buymeacoffee.com/kurumi.the.nightmare"><img src="buy_me_a_coffee.png" height='150px'></a>