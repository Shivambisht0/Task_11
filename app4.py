#!/usr/bin/python3
import cgi
import subprocess
print("content-type:text/html")
print()

mydata=cgi.FieldStorage()
name=mydata.getvalue("x")
cmd="sudo docker rm {}".format(name)
print("Hello from backend")
o=subprocess.getoutput(cmd)
print(o)
