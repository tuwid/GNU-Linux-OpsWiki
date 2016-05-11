Installing Opera on Ubuntu Linux

Testing web applications on different browsers often requires also having those installed locally for local tests.
Opera is not present in the default Ubuntu repositories, however it is available by ppa. 

To install Opera we issue the following commands on the terminal:
```
wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
```
```
sudo sh -c 'echo "deb http://deb.opera.com/opera/ stable non-free" >> /etc/apt/sources.list.d/opera.list'
```
sudo apt-get update
```
```
sudo apt-get install opera
```