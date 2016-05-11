Preserving permissions and structure with `rsync`

To copy, preserving permissions AND structure AND recursively, from a remote system to your local system using rsync:

rsync -r -a -v -e ssh server1.address.com:/dir/youwant/to/copy/ /local/location/for/directory/

Where
-r      recurse into directories
-a  	archive mode; equals -rlptgoD (no -H,-A,-X)
-v		increase verbosity
-e 		specify the remote shell to use

Keep in mind that here assumes that we are using key based authentication and not password (who uses passwords anymore?).  
