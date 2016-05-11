Using `Alias` in Linux

The `alias` tool is a way to make the complicated things simple (and simple things simpler). You can use ‘alias’ instead of long (or even short) commands. 

```
alias short_word=”Command”
```
```
alias ll=”ls –l”
```

Now you just have to type ‘ll’ (without quotes) to get ‘long listing format’.

Quick exit with alias:
```
alias x="exit"
```
Other examples:
```
alias rm="rm -iv"
```

Some other examples of attaching APT with ‘alias’ are:
```
alias ins=”sudo apt-get install”
alias remove=”sudo apt-get remove”
alias up=”sudo apt-get update”
alias upg=”sudo apt-get upgrade”
alias Search=”apt-cache search”
alias autorem=”sudo apt-get autoremove”
alias autocls=”sudo apt-get autoclean”
alias pur=”sudo apt-get remove –purge”
```
and so on…

Now you cant just 
ins <package>

To find the top 10 largest files in your system, you can set the following ‘alias’:
```
alias top10=”find . -type f -exec ls -sh {} \; | sort -n -r | head -10”
```