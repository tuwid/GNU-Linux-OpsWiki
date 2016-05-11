Giving sudo rights to a user

To give a specific user sudo rights you need to add the user to the sudo group.

If you have already created the user, you can add the user to the sudo group by running the following command in a Terminal.
```
sudo usermod -a -G sudo helpdesk1
```

