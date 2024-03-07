# WSL ( Windows Subsystem for Linux) !

Provides features of windows that allows one to run linux environment on Windows machine without virtual machine or dual booting by providing seamless & productive experience.

### Why WSL ??
* One can install  & run various Linux distros
* Ability to store files in an isolated linux file system, specific to the distribution you picked.
* Ability to run command-line tools
* Ability to run common BASH command-line tools, Bash scripts, & Linux command-line Applications
* Installing additional softwares using package managers, depending on the distribution you using.
* Ability to invoke Windows applications using Unix-like command-line shell
* Ability to invoke Linux applications
* One can run Linux graphical applications integrated directed to the Windows desktop
* Lastly, the use of the device's GPU to accelerate ML workloads running on Linux

You see, you have all the reasons to be using Windows subsystem for Linux. Now lets  check on how to install awesome piece of software.

## Installation
#### Prerequisites
1. WINDOWS 10 & ABOVE

Run the following on your Powershell to install the default Linux distribution ( Ubuntu )

    wsl --install 

To check on the available Linux Distros that one can install, use the command

    wsl --list --online or wsl -l -o

Once you have found the specific distro you want to have, use the command below to install particular distro

    wsl --install -d (Distribution Name)

The following above commands only execute in Powershell, if incase you are running on Bash, REMEMBER to always include .exe in the commands as seen below.

    wsl.exe --install -d Debian

The above command installs WSL through the Bash. Take note, the Debian distro is the one being installed here.

Once the installation is done, run the code below to restart your Windows machine and afterwards the terminal will prompt you to set up your username and password.

    shutdown /r /t 0

