# Cut parts of the variable 
[me@myhost ~]$ myvar=1234567890
[me@myhost ~]$ echo ${myvar: 2} # cut from left
34567890
[me@myhost ~]$ echo ${myvar: -2} # cut from right
90