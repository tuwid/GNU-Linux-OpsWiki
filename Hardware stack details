Hardware stack details

To get the details of the total stack:
`lspci` will show you most of your hardware in a nice quick way. 
It has varying levels of verbosity so you can get more information out of it with `-v` and `-vv` flags if you want it.
It doesn't show USB hardware other than the USB busses.

Graphics:
```
$ lspci -nnk | grep VGA -A1
```
Audio:
```
$lspci -v | grep -A7 -i "audio"
```
Networking:
```
$ lspci -nnk | grep net -A2
```

Usb devices:
`lsusb` is like `lspci` but for USB devices. Similar functionality with similar verbosity options. Good if you want to know what's plugged in

`sudo lshw` will give also you a very comprehensive list of hardware and settings.
