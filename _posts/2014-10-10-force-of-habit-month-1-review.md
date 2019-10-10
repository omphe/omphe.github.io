---
title: "Force of Habit: Month 1 Review"
date: 2014-10-10 08:50:38 +0100
comments: true
categories:
- 3D Printing
- Force of Habit
- Arduino
- RaspberryPi
- Maker
- RepRap
---

![Foyles Booksellers](/assets/images/foyles.jpg)

Last Tuesday, I was in London for various meetings and lunches and had an hour to kill mid-morning.  I found myself on Charing Cross road, and as usual, I was unable to escape the event horizon that is the front door of [Foyles booksellers](http://www.foyles.co.uk/).  I went in to check out the new building, with the conviction of an addict who can't usually leave Foyles without a stack of books and &pound;100 lighter.


Normally in Foyles I gravitate to the Computing section, drift briefly through Business books, glance at the Travel section before either checking out Cookery or Design.  By this time, I normally come to my senses and quickly pay and make my escape.

On this occasion, I was fascinated by where my mind settled and my interests drew me.  In Computing, I only gave the coding books a cursory glance, but had to fight the urge to buy up most of the titles on making and electronics from [MakerMedia](http://makermedia.com/). The Java, the Python and even the Go books just made me feel fatigued and in a rut.

Trying to make it to the door, I was briefly waylaid by the Design section. Specifically I found myself anchored to a bench with an annual on materials and design trends that must have weighed as much as me.


# A drift / Adrift / Ad rift
The hour I spent in Foyles was a fractal piece of what seems to be happening with the wider trend in my interests and career. I'm less and less interested in the shininess of new APIs and languages and more interested in physical interfaces, product design and bridging the physical world to the digital one.  I'm excited about building out the web substrate for physical computing but the browser and mobile interfaces, not so much.

Untethering myself from a 12 year career that focused on web and mobile, is a vertiginous feeling as I drift away from experience, earning potential and the familiar.  Searching for the unknown is what this whole 100 day experiment is about, and it's only taken about a month to get here. When asked where this whole career break is heading I still don't have a good answer. After 4 weeks, I'd be naive to settle into something already.



## A night at the museum

![Electrical Desktop](/assets/images/lx-desktop.jpg)

The blog has gone quiet over the last couple of weeks, as (shock! horror!) my time was consumed by a short job in London.  I managed to find myself working as a commissioning engineer on a project for a London cultural institution.  I spent two weeks working with RaspberryPi, Arduino Mega and the ever tasty [AdaFruit NeoPixels](https://learn.adafruit.com/adafruit-neopixel-uberguide/overview).

Fundamentally, I was working out the installation options for an existing design and prototyping the circuits and cable runs.  Its one thing to read a lot of blog posts and to breadboard some simple projects with the Arduino.  But running 10s of meters of cables and dozens of microcontrollers pushed me out of my comfort zone and gave me the experience that will lead to more ambitious projects of my own.


It was a far cry from middle management in a publishing company or wrangling config management code. Being on a building site in a safety yellow vest and steel cap boots brought me down to earth and gave me a huge respect for the trades men and women who work bloody hard creating the built environment.  It was
 refreshing to turn up to work every morning where a crew of professionals consulted an architect's drawing and then got on with making it a reality.  No daily standups, no retrospectives and none of the Agile thumb-sucking that the software world is so preoccupied with.


# The agony of 3Defeat
After the early success of getting the [RepRap](/blog/2014/09/12/force-of-habit-day-11/) printer built, I entered a spell of worrying doldrums.  I was able to print objects and integrate with the printer fairly easily, but I couldn't get consistent quality out of any of my prints.  Nothing would stick to the print bed and I was endlessly aborting print runs and recalibrating the printer.

I tried all the known tricks to get my prints to stick to the print bed:

- *Hairspray:* Made my man cave smell like an old lady and made the print bed _more_ slippery
- *Frog Tape:* This is _not_ the same thing as the fabled blue 3M painter's tape and also didn't stick
- *Masking Tape:* This only worked if I turned it upside down and then the prints wobbled and warped on the unsecure surface
- *Glue Stick:* This was hit and miss and led to some prints being so bumpy that after 2-3 layers the prints needed abandoning

![Maker Faire Robot](/assets/images/makerfaire_robot.jpg)

And then last week I finally got around to building my heated print bed.  Using a [MK2a](http://reprap.org/wiki/PCB_Heatbed) print bed, rigged to a modified XBox power supply, I managed to wire the heater and get it connected to the printer's [RAMPS 1.4](http://reprap.org/wiki/RAMPS_1.4) board. No joy.  The bed wouldn't turn on.  The wiring was right, the thermistor was connected, but the bed wouldn't turn on for love or money.

I worked out that the [Marlin](https://github.com/ErikZalm/Marlin) firmware wasn't powering the heated bed, because I hadn't enabled the thermistor.  A quick edit of the configuration and then a flash of the Arduino  and then...

Nothing.  Horrible timeouts between the Arduino IDE and the board.  Nothing would connect.  I tried old versions of the Arduino IDE.  I tried different code.  Zilch.  Finally I pulled the RAMPS shield off the Arduino and tried again.  Nothing. Big salty man-tears.

As a last resort, I tried a suggestion I found online about resetting the board while trying to flash it. Nope.  I tried again.

In frustration, I started hitting the reset button every 2 seconds. *BINGO*! The board flashed and then after reinstalling, the bed started heating.

I was warned a month ago that 3D printing was a slow and frustrating pursuit, particularly if you build your own printer. "Expect lots of frustration and tinkering".  This turned out to be true, but once again the troubleshooting has served as an apprenticeship into the workings of the 3D printer and more importantly into the attributes and potential of the materials it consumes and creates.


I'm now getting awesome prints with consistent results and am reinspired with the printing.  The magic combination appears to be:

- Heated print bed at 60&deg;C
- 2 coats of WHSmith glue stick
- PLA filament at 190&deg;C

# CMS

I'm just spinning up a hyperlocal web project and have been looking at options for the platform I'll use to publish the content.  I have years of Drupal experience, but have spent the last few years gaining a huge respect for the tooling and rigour that the JVM community provide.

In starting this project, I wanted to see if I could find an alternative to the existing PHP CMS options which tend to offer so much to editors and so little to developers.  This last week, I've auditioned a number of Java options including [dotCMS](http://dotcms.com/), [Hippo CMS](http://www.onehippo.com/en) and [Magnolia](http://www.magnolia-cms.com/).

All of the options have some great features, but tended to require expensive licensing to unlock some of the more fundamental features I'd need, like search integrations and server clustering.

In the end, I've pretty much settled into building the site with [Drupal 7](https://www.drupal.org/drupal-7.0).  Drupal 8 is now in [beta](https://www.drupal.org/drupal-8.0    ), but will need a few months of evolving security patches and then a big catchup of 3rd party modules.  I want to focus on building community and content and not the underlying platform, so settling on a tool that I'm disinclined to tinker with will help keep me stay loyal to the end-user and not my technical curiosity.

The best part of the exploration has been using [Docker](https://docker.com/) containers to quickly pull together hosting environments that I could try the various options on. I'm still coming up to speed with the russian doll abstractions that Docker provides, but it is an exciting technology and likely to sit alongside [Ansible](http://www.ansible.com/home) in my new quiver of hosting tools.


# The month ahead - A call for collaborators

As this second month of funemployment begins, I'm becoming comfortable with the uncertainty of where the experiment is heading.  I am loving the extra time I have with my family and want to start looking for sustainable options to keep me doing challenging work without becoming a slave to the London commute.

Month 2 is going to be about seeking out some viable business opportunities, continuing my R&D into physical computing and 3D printing and starting to look for some collaborators and compatriots who share an interest in these new directions. I'm looking for artists, coders and makers who want to collaborate on something with a touch of the uncertain. You know where to find me. Get in touch.

![Kipple Robot](/assets/images/kipple_robot.jpg)
