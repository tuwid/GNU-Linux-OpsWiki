Solving BADSIG GPG errors

Often while installing a package you might get the GPG error about the bad signature.

This is easily resolvable as in the example below.

The important part of your error message is the following in bold:

W: GPG error: http://download.virtualbox.org lucid Release: 

The following signatures were invalid: BADSIG `54422A4B98AB5139` Oracle Corporation (VirtualBox archive signing key)


Copy the stuff in bold and then open a terminal and type:
```
$ sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 54422A4B98AB5139
```
After that we can redo the installation operation and it should go ok.
