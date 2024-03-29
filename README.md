# Personal bash scripts and terminal commands

Stored bash scripts and terminal commands used on my linux machine. Feel free to use any of the scripts in this repository!

important note: Use the install command associated with your package manager.

# init

A script that installs packages. I've been distro hopping and this helps to download the main 
packages I use. I have lots of packages so it helps to just call this script once to do everything
for me.

### How to run
To run, go to the directory where the script is located then use the following command:
```bash
sudo bash init.sh
```
that's it.

### References:
how to call other scripts within a script - https://youtu.be/7D7SSIsZ7ZA
                                            https://stackoverflow.com/questions/8352851/how-to-call-one-shell-script-from-another-shell-script/8352939

# unblock (directory)

A script that automatically adds IP addresses onto the hosts file. Living in Indonesia, reddit is blocked by the government. Usually people use VPN's but I opt to override addresses by the DNS. To learn more about this topic you can read the medium article in the references below.

You can check this script out in the *unblock* directory which contains two files called *unblock.sh* and *list*. To add more IP addresses feel free to add them on the *list* file and to make things easier it is best to put these files in the same directory (preferably in the home directory to be able to immediately call it).

### How to run
To run, go to the directory where the script and file is located then use the following command:
```bash
sudo bash unblock.sh list /etc/hosts
```
then input your password. 

To check if the *hosts* file changed use the following command:
```bash
cat /etc/hosts
```

### References:
https://medium.com/jasonganub/how-to-access-reddit-in-indonesia-d185bb532380

# setup.sh

Simple script that automatically opens links on firefox when called.

### How to run
To run, go to the directory where the script is located then use the following command:
```bash
bash setup.sh
```
I recommend putting this script in your home directory. I do this so that I can immediately call the
script after my laptop finishes booting.

### References:
functions - https://linuxize.com/post/bash-functions/

passing an array as an argument - https://askubuntu.com/questions/674333/how-to-pass-an-array-as-function-argument

# commandlineprompt.sh

Script that changes the prompt (from showing your current working directory and its entire path) to just your 
username (can be customized).

~~Note: can't use whoami or even echo $USER and $LOGNAME because the script will run as root, not the current user.~~
(already found workaround and has been updated)

Before:

![Before!](images/ex1.JPG)

After:

![After!](images/ex2.JPG)

### How to run
-*Do not* use sudo/run as root. 
To run, go to the directory where the script is located then use the following command:
```bash
bash commandlineprompt.sh
```
### References:
https://superuser.com/questions/60555/show-only-current-directory-name-not-full-path-on-bash-prompt

# disable.sh

[Personal] Script to automatically detect and disable my laptop's left and right buttons (the right one is broken)

### How to run
```bash
bash disable.sh
```

(vscode currently WIP)

