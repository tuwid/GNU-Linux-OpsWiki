Upgrade vs Dist-Upgrade

apt-get upgrade is restricted to the case where packages are to be replaced by newer versions, but no package needs to be added or removed. A new version of Firefox, for instance, should be installable with apt-get upgrade.

However apt-get upgrade will refuse to work when there are additions or removals required by the updated versions. For example, when you have kernel linux-image-3.2.0-10-generic installed and linux-image-3.2.0-11-generic appears, the linux-image-generic package gets updated to depend on the newer version. In order to install the new kernel, you need to run apt-get dist-upgrade.

Notice how an apt-get upgrade will say that the kernel packages have been held back. That's the cue for using apt-get dist-upgrade.
