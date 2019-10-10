--- 
title: Fabric first steps - Directory creation
created: 1258730544
author: omphe
categories: 
- Python
- Fabric
- Continuous Integration
- Tutorial
---
Fabric is a tidy tool for deployment that neatly wraps up fussy, manual tasks into a tidy Python syntax. The simple API wraps up most of your common deployment tasks into contexts which allow you to perform tasks either locally or sequentially on remote servers, using a transparent SSH mechanism.&nbsp; Magic.

Because its all Python syntax, my temptation was to perform local tasks like directory creation using native Python. To initiate a local 'build' directory, I tried:

~~~ python
from fabric.api import * 
import os  

def init():  
    build_directory = "./build"     
    dir = os.path.dirname(build_directory) 

    if not os.path.exists(dir):         
        output = os.mkdir(dir)
~~~

For reasons that are not immediately apparent to me, this process fails rather silently. But reading the <a title="Fabric manual" href="http://docs.fabfile.org/0.9.0/index.html">Fabric manual</a>, it does specify that Fabric is:

- A tool that lets you execute __arbitrary Python functions__ via the __command line__
- A library of subroutines (built on top of a lower-level library) to make executing shell commands over SSH __easy__ and __Pythonic__.

As it turns out, the preferred way of doing this, is to use a local() task to drive the command line tools more directly. So instead, our fabfile looks like:

~~~ python
from fabric.api import *   

def init():     
    local('mkdir ./build') 
~~~

Simple, straightforward and pretty intuitive. 

