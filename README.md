## DNS - Bind9
### Author: Paulo Eduardo Azevedo da Costa
### Motivation
The motivation for this work is to make it simple to configure a DNS server using Bind9.
### How to setup the DNS Server

1. To clone the repositary on your local environment. 
     
     	git clone https://github.com/CostaPauloEdu/dns-bind9.git

2. Access the project folder:

     	cd dns-bind9/


3. On the machine that will be the primary DNS, it is necessary to run the following command:

     	bash setu_primary.sh 192.168.1.6 192.168.1.7

Where, 192.168.1.6 is an example of IP address (DNS1) and 192.168.1.7 is an example of IP address (DNS2).

If the IP address (DNS2) is not entered, then IP 127.0.0.1 will be assigned.

5. On the machine that will be the secondary DNS, it is necessary to run the following command:

     	bash setup_secondary.sh 192.168.1.6

Where, 192.168.1.6 is an example of IP address (DNS1)

### How to validate the DNS Server

Using the dig command, is possbile to verify the registers presents on the DNS Servers:

     	dig asa.br

### How to start/stop/restart the DNS Server

For to start, stop or restart the DNS service, it is necessary to run the followings commands:

     	bash service.sh primary start
     	
		bash service.sh primary stop
     	
		bash service.sh primary restart

     	bash service.sh secondary start
     	
		bash service.sh secondary stop
     	
		bash service.sh secondary restart

### How to delete container

For to delete container, it is necessary to run the following command:

     	bash delete_container.sh primary

     	bash delete_container.sh secondary
	