#!/usr/bin/python3
import cgi
import subprocess
print("content-type:text/html")
print()

mydata=cgi.FieldStorage()

cmd="sudo docker ps -a"
print("Hello from backend")
o=subprocess.getoutput(cmd)
print(o)
