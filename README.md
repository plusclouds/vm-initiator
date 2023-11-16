# VM Initiator

This is a simple initiator for virtual machines, to initiate basic requirements like password, ip etc.

This library is being used where we cannot use vm-service application which requires python3.8. This initiator basicly runs on bash to complete basic setup.

We generally use this script to initiate older VMs

## How to deploy

First you need to make sure that environment variables are set. To do that we need to add permanent environment variable to the server. Or you can change the variable during runtime if you want.

To deploy initiation scripts we suggest you to create a folder under /etc/plusclouds and put all the files there;

```
mkdir /etc/plusclouds

# Here you need to upload the scripts or directly clone it from repository to this folder
```

### Ubuntu 16.04, 18.04, 20.04, 22.04
To add permanent env variable edit /etc/environment file and add the like below to the file;

```
nano /etc/environment
```

```
# Put this like in the file (anywhere)
LEO_API=https://api.plusclouds.com
```

