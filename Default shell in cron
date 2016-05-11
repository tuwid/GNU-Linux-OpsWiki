Fixing the shell in cron

In most environments cron executes commands using `sh`, while many people assume it will use `bash`.

To test or fix this for a failing command:

1. Try running the command in sh to see if it works
2. Wrap the command in a bash subshell to make sure it gets run in bash:
    bash -c "mybashcommand"
3. Tell cron to run all commands in bash by setting the shell at the top of your crontab:
    SHELL=/bin/bash
4. If the command is a script, make sure the script contains a shebang:
    #!/bin/bash

