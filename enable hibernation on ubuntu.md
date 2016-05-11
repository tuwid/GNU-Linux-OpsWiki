Enable hibernation on Ubuntu

In order to enable hibernation you need to test whether it works correctly by running sudo pm-hibernate in a terminal. The system will try to hibernate. If you are able to start the system again then you are more or less safe to add an override.

To do so, start editing:

	sudo nano /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla

Fill it with this:
```
[Re-enable hibernate by default]
Identity=unix-user:*
Action=org.freedesktop.upower.hibernate
ResultActive=yes
```
Save by pressing `Ctrl-O` then enter and then exit nano by pressing `Ctrl-X`.

Restart and hibernation is back!

Or run `killall unity-panel-service` to just reset the menu.

Some users will then need to run `sudo update-grub` to get the hibernate option to be available in the power menu. Some users may also have to at least log out then log in to get it to appear in the (upper right) power menu.