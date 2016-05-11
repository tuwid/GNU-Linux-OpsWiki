Force disk check on the next reboot

To schedule a disk check with fsck on the next reboot all we need to do is to crate this file:
```
touch /forcefsck
```

The system checks for this file at the start on both redhat and deb systems.