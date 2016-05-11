Deleting non-empty directories

If you ever get that "failed to remove `folder': Directory not empty"

use:
```
rm -rf folder
```
It deletes all files and folders contained in the lampp directory.

Add `sudo` at the beginning of the command :
In case user doesn't have the permission to delete the folder:
```
sudo rm -rf folderName
```
Otherwise, without sudo you will be returned permission denied. And it's a good practice to try not to use -f while deleting a directory:

```
sudo rm -r folderName
```
Note: this is assuming you are already on the same level of the folder you want to delete in terminal, if not:
```
sudo rm -r /path/to/folderName
```
You can use letters -f, -r, -v:

`-f` = to ignore non-existent files, never prompt
`-r` = to remove directories and their contents recursively
`-v` = to explain what is being done
