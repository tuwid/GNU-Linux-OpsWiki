keep processes running after ending ssh session

To get the same functionality as explained in the answer recommending screen, you would need to do the following:

    ssh into the remote machine
    start tmux by typing tmux into the shell
    start the process you want inside the started tmux session
    leave/detach the tmux session by typing Ctrl+B and then D

You can now safely logoff from the remote machine, your process will keep running inside tmux. When you come back again and want to check the status of your process you can use tmux attach to attach to your tmux session.

If you want to have multiple session running side-by-side you should name each session using Ctrl-B and $. You can get a list of the currently running sessions using tmux list-sessions.

tmux can do much more advanced things then handle a single window in a single session. For more information have a look in man tmux or http://tmux.github.io/ . A FAQ about the main differences between screen and tmux is available here.