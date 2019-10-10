---
title: "Force of Habit: Day 9 / RepRap Z-Axis Build"
date: 2014-09-10 18:46:15 +0100
comments: true
categories:
- Making
- 3D Printer
---

# It's alive! (sort of)
There's a point in most projects where you've been building lots of components and disparate parts and it feels like it's never going to come together.

And then there's some transformative step, some integration that ties the whole of the build together and something altogether new is borne out of all kipple and bits.

Today I completed the Z-Axis of the RepRap 3D Printer and it suddenly looks and behaves like a printer.  There's still the print head and wiring to do (never mind the hours of tuning and tinkering) but its finally taken shape.

Look close at today's build video and you'll spot a [quick cameo from the new workshop mascot](http://youtu.be/jIfq0PU0ZvI?t=1m24s), Granite,  and  my big grin when the whole thing bolts together.

{% include youtubePlayer.html id="jIfq0PU0ZvI" %}

# Alfred Maven search

I'm a big time [Alfred](http://www.alfredapp.com/) user.  Alfred is pretty much my sole interface to everything on OS X (OK, apart from the terminal, but that's another post).

I use Alfred for Contacts.  I use Alfred for Files.  I even wrote an Alfred extension to count down the days to a big financial event.

I'm doing a bit more Java hacking these days, and learning [Gradle](http://www.gradle.org/) in the process, so I'm keen to find and express dependencies quickly.  Alfred to the rescue!

If you're an Alfred user, just paste the following URL into Alfred to add a custom search on Maven Central everytime you type 'mvn'

<pre>alfred://customsearch/Maven%20Central/mvn/utf8/noplus/https://search.maven.org/#search%7Cga%7C1%7C{query}</pre>

![Alfred](/assets/images/alfred_mvn.png)
