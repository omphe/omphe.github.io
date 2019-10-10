--- 
title: Fabric - Installation
created: 1258403938
author: omphe
categories:
- Fabric
- Python
- Tutorial
---
In this article from our [Fabric](/blog/categories/fabric "Fabric articles") series, I'm going to show you how to get set up with Fabric on your development environment.<!--more--> We'll get down to installing the _fab_ commands and preparing you for writing your first _fabfile_. But, as ever, there are <a title="Definition of yak shaving" href="http://en.wiktionary.org/wiki/yak_shaving">Yaks to shave</a>.

##Installing the installers##
Before we can get down to actually installing Fabric, we need to install some Python libraries that will help us get everything that we need. For this article, I'll be installing on OSX 10.5 Leopard, but the steps should be roughly similar for any \*nix like operating system. Best of all, we'll stay well clear of my arch enemy, the infuriating _macports_.

First, let's install <a title="pip homepage" href="http://pip.openplans.org/">pip</a>, a clever packaging tool replacement for _easy_install_. I'm not overly familiar with _easy_install_, but James Bennett's article <a title="Why I like pip" href="http://www.b-list.org/weblog/2008/dec/15/pip/">Why I like pip</a>, has me convinced its the way to go.

To get pip, we'll use easy_install. Open your terminal of choice and type:

~~~ bash
# sudo easy_install pip
~~~

Once pip has installed, let's use it to install Fabric:

~~~ bash
# sudo pip install fabric
~~~

On my machine this grabbed a dependency, pycrypto, and set about downloading and compiling all the needed libraries.

##Wrapup##

Like most Python endeavours, it almost feels too easy to get the tools set up and ready to go. In the next article, we'll set up our first fabfile and shift some code to our target server.
