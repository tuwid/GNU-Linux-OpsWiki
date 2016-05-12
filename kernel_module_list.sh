awk '{print $1}' "/proc/modules" | xargs modinfo | awk '/^(filename|desc|depends)/'
