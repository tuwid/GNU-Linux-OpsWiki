Basic service management with `systemd`

`Upstart` will be deprecated in favor of `Systemd`. With `Systemd` to manage the services we can do the following:

`systemctl start SERVICE.service` - Use it to start a service. Does not persist after reboot

`systemctl stop SERVICE.service` - Use it to stop a service. Does not persist after reboot

`systemctl restart SERVICE.service` - Use it to restart a service

`systemctl reload SERVICE.service` - If the service supports it, it will reload the config files related to it without interrupting any process that is using the service.

`systemctl status SERVICE.service` - Shows the status of a serviceTells whether a service is currently running.
