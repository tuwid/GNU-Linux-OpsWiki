Check iptables firewall status

Linux comes with a host based firewall called Netfilter
This Linux based firewall is controlled by the program (binary) called iptables to handles filtering for IPv4, and ip6tables handles filtering for IPv6.

We can check the status of our iptables firewall by doing (oly main chains , not nats) :
```
sudo iptables -L -n -v
```
where:
`-L` : List rules.
`-v` : Display detailed information. 
`-n` : Display IP address and port in numeric format. Do not use DNS to resolve names. This will speed up listing a lot.


If we see something like this:
```
Chain INPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     
 prot opt in     out     source 	destination
Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     
 prot opt in     out     source		destination
Chain OUTPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     
 prot opt in     out     source		destination
```
This means that our firewall its probably not active as there are no chains and statistics. 


