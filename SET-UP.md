# Ubuntu VM Set-up
This set-up is broken-down in three parts:
- First install VirtualBox,
- Second create the ubuntu machine,
- Last set-up the environment.

But first, download the Desktop image from here: http://releases.ubuntu.com/18.04/  
The download will take a long time, so you can start installing VirtualBox will waiting.

## Install Virtual-box
Find and follow a tutorial online on how to install VirtualBox online!   
Here is one: https://www.shaileshjha.com/how-to-install-oracle-vm-virtualbox-5-in-windows-10/   
But I can't guarantee it's a good one...

## Create an Ubuntu VM
Open VirtualBox and click on the **New** button at the top left corner. Choose a name for your VM and select the fields like shown in the screenshot. Click `Next`.

![](img/step1.png)

Then select a memory size. You should use 4096MB. All the software installation need at least 2GB, and you need the rest while executing the code. Click `Next`.

Then select **Create a virtual hard disk now**. Click `Create`. VDI is good, click `Next`.

**Dynamically allocated** is better because you can select a big size for your hard disk but it will only use whatever is necessary. It does make your VM a little slower, but I think it is totally worth it! Click `Next`.   

For the hard disk size, I would put 40GB. The set-up will take nearly 10GB anyways, so better safe than sorry. Again, since it is dynamically allocated, no problem in putting more!

You're done for now, your VM has been created! You can see it in VirtualBox on the left side bar. Click on your VM and click on **Setting** in the top menu.    

First go to **Network**. Change VAT to *Bridged Adapter*.    
- Advantage: it keep your current IP! Ideal to access the database from Thinkific.   
- Cons: for some reason, it only works when using the Wi-Fi, so no ethernet cable. And you can still access your home Wi-Fi and use the internet, but then the access to the database from home is refused.

Then, go to **Storage**. Click on the disk under *Controller: IDE*. Click on the disk on the right side and load the image you downloaded previously. See screenshot.

![](img/step2.png)

Still in settings, you can change the display size in **Display**. You can also change it whenever you want from the VM later.

Click `OK`.

#### You're done with the config!
You can double click on your VM to open it, or click on the RUN button.

The Ubuntu installer is going to open. On the first screen, click on **Install Ubuntu**. Select your keyboard and click `Continue`.

Select **Minimal installation** instead of the Normal one. We only need a browser, text editor and terminal. Keep default for *Other options* and click `Continue`.

The VM was created for ubuntu and ubuntu only, so you can go ahead and **Erase disk and install Ubuntu**. Click `Install Now`. Click `Continue`.

Select **Vancouver**, click `Continue`. Enter your information, you don't need to put your real name. The password is only to open the VM and sometime for admin authorizations so no need to make it hard. Click `Continue`.

The installation should now start. It took me around 10 mins. Then, the VM will restart. Don't forget to press `Enter` to restart.

#### And now, you can start the set-up of the environment!


## Set-up the Environment
At this point, I would advise opening your google drive from the VM and download those instructions. Copy-paste from your local environment to the VM won't work, and you don't want to type all the following command.

To change the display size at this point, open **Machine** > **Settings** on the very top menu and go to **Display**.

To change the sleep time (default is only 5mins), you can access the Ubuntu settings on the top right corner of your screen. Click on the arrow, then on the setting-like icon. Go to **Power** and change the Blank Screen time.
![](img/settings.png)

### R environment
Open the terminal.

1. Install the packages necessary to add a new repository over HTTPS:  
`$ sudo apt install apt-transport-https software-properties-common`  
The terminal will ask for your admin password, then for your confirmation. Just type `Y` and Enter.

Enable the CRAN repository and add the CRAN GPG key to your system using the following commands:  
`$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9`  
You should see stuffs like:  
![](img/cmd1.png)

Then run:
`$ sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'`  
You'll see a bunch of `Get:1` lines, it should end with something like this:   
![](img/cmd2.png)

3. Now that the repository is added, update the packages list and install the R package by typing:   
`$ sudo apt update`  
`$ sudo apt install r-base`  
They'll ask for confirmation, type `Y`, enter. It's a long one...  
To check if it worked, just run `$ which R` and you'll see the path to were R is installed.

4. Install the build-essential package which contains the tools required for compiling R Packages:  
`$ sudo apt-get install build-essential`  

5. Now, we can install our packages. Open an R console from the terminal by running:  
`$ sudo -i R`

In the R console, we can now install the packages we need (that's gonna be quite long):
```r
install.packages(c('stringr', 'dplyr', 'randomForestSRC'))
```
![](img/Rconsole.png)

Then try to load the libraries to make sure they are installed:
```r
library(dplyr)
library(randomForestSRC)
```


### Python environment
Python3 is installed by default on this Ubuntu image. We need to install `pip` for python3:  
`~$ sudo apt install python3-pip`  
The console will ask you to confirm.  
![](img/py1.png)


Now we can install the python modules we need:
`~$ pip3 install numpy pandas rpy2 tzlocal psycopg2`

### Jupyter
We can now install Jupyter:  
`~$ pip3 install jupyter`  
`~$ sudo apt install jupyter-notebook`
The console will ask confirmation. This one takes longer.

Now you should be able to open jupyter by running:  
`~$ jupyter notebook`  
It should open directly in your web browser.

#### And now you can run the documentation!!
