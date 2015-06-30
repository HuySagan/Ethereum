# Project To Have Ethereum Install Script For Ubuntu


#Prerequisites
- A working internet connection
- Logged in as 'root' 

#How get it

#With git
  - First update Ubuntu repository
  ```sh
  $ sudo apt-get install update
  ```
  
  ```sh 
  $ sudo apt-get install git
  ```
  then using git command to clone the repo from github.
  ```sh
  $ git clone git://github.com/HuySagan/Ethereum/Script
```
#How to use 
```sh
$ cd Script && ./etherscript
```
It then should auto generate files for you using Ubuntu repositories. It will also print out text for the user to read. Have a progress bar as well and timer.

This script contains the GPU mining not CPU, will have both when I have more time. Dual GPU only. Trying to keep it as simple as we can. Lots of things can go wrong.

I just realized that the script only install the needed program, as we still need to change drivers for the GPU
manually. The purpose is to cut down some install time.
My friend Derek and I spend way too much time struggling and reading the damn guide that we had to take a break.




> when creating the script, we use chmod to make it executable, the script can either be bash or zsh type.
More on bash shell and zsh shell later.
```sh
$ chmod +x etherscript.sh
```




> The Design Goal is to keep it simple. We are integrating console command into the script and let it run line by line.











