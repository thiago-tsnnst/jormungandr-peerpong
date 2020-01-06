# JORMUNGANDR PEERPONG
A bash shell script to ping the trusted peers to see who's alive and who's not.



**STEP 1: INSTALL HPING3**

We're going to use HPING3 instad of the standared ping tool. To install it do the following: 

```
# install HPING3
sudo apt install hping3
```

**STEP 2: CONFIGURATION**

```
# path to the file with the peers ip_addresses
# file format: location <space> ip_addresss
# location name must be 5 characters.
PEERS=/path/to/peers.txt  

# number of times to ping each peer               
PINGS=10              
```

**STEP 3: USE**

```
# from the commandline
bash ./peerpong.sh
```

As always, please fork, fix and improve. 
