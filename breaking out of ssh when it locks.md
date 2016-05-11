Breaking out of ssh when it locks

Happens from time to time that our ssh connection drops/timeouts and the current terminal locks. 
Normal keys are forwarded over the ssh session, so none of the standard breaking keys will work. 

Instead, use the escape sequences. To kill the current session hit subsequently Enter `↵`, `~`, `..`

More of these escape sequences can be listed with Enter `↵`, `~`, `?`:
```
Supported escape sequences:
  ~.  - terminate session
  ~B  - send a BREAK to the remote system
  ~R  - Request rekey (SSH protocol 2 only)
  ~#  - list forwarded connections
  ~?  - this message
  ~~  - send the escape character by typing it twice
(Note that escapes are only recognized immediately after newline.)
```
You can close the list of Escape sequences by hitting enter.
