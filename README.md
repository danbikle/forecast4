# README.md

# Deployment [ Laptop ]

I deployed this repo to my laptop with the steps listed below:

* I installed Virtualbox software which I downloaded from this URL:
* https://www.virtualbox.org/wiki/Downloads
* I downloaded and imported an Ubuntu 16 appliance [ub16_2018_0206.ova]: 
* https://drive.google.com/file/d/10p1W7kqzxE69jODhUzcb-qi-osN4htO-
* After import I logged into the ann account on the appliance with passwd: "a"
* I used a shell command to create an account named forecast4:
```
sudo useradd -m -s /bin/bash -G sudo forecast4
sudo passwd forecast4
```
* I logged out of the ann account.
* I logged into the forecast4 account.
* I made an ssh-key-pair:
```
ssh-keygen -t rsa
```
* I created an account on github.com called roomf4.
* In the github settings I copy-pasted my public key from this file:
```
/home/forecast4/.ssh/id_rsa.pub
```
* Into the text-area for github-public-keys.
* I used the github-web-UI to fork this repo:
* https://github.com/danbikle/forecast4
* The fork I created is this URL:
* https://github.com/roomf4/forecast4
* I cloned the fork to my local forecast4 account on my laptop:
```
cd ~forecast4
git clone git@github.com:roomf4/forecast4
```






