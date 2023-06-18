# Powered Reverse Proxy : Vagrant

![Icon](../icon.png)

## Table Of Contents

- [Powered Reverse Proxy : Vagrant](#powered-reverse-proxy--vagrant)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [How to use it](#how-to-use-it)

## Description

When you have just one machine with two services that use the same port (here 80 and 443), so we need two machine with two different IP (there are also other method, but I'll go with this one), but in case of we have just one machine, we can create a instant virtual machine that contains Traefik as binary with an other IP to separate your Reverse Proxy and your services you want to expose.

We'll use **Vagrant** to instant create, manage and destroy our Traefik virtual machine.

## How to use it

First you need to configure your Vagrant VM, each sources files are in `src/vm`, you can edit the Vagrantfile to change the IP of your Traefik virtual machine and the memory and cpu needed for your installation.

You have to change these parameters :

- `export TRAEFIK_VERSION=v2.10.1` and `export TRAEFIK_ARCH=linux_amd64` : At the top you have the Traefik version and arch parameter that you can change to adapt the virtual machine to your host machine and the version you want
- `config.vm.network "public_network", ip: "192.168.1.42", bridge: "enp5s0"` : Change the **ip** and the **bridge** parameter (select the good network interface with `ip a`)
- `v.memory = 512` and `v.cpus = 2` : Change the number of **ram in MB** and the **cpu in number** of virtual cpu.

Finally you can change what you want in the data folder like Traefik configuration folder : `data`.

Now you can start and stop your virtual machine :

- `vagrant up` : Create your virtual machine
- `vagrant ssh` : Enter into the started virtual machine to manage it if necessary
- `systemctl status traefik` : Display log of Traefik into virtual machine
- `systemctl start traefik` : Start Traefik into virtual machine (auto start is activated, so you don't need this command)
- `systemctl stop traefik` : Stop Traefik into virtual machine
- `systemctl restart traefik` : Stop Traefik into virtual machine
- `vagrant destroy` : Destroy your virtual machine
