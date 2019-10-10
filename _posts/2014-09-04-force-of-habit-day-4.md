---
title: "Force of Habit: Day 4 / RepRap Y-Axis build"
date: 2014-09-05 20:17:00 +0100
comments: true
categories:
- 3D Printer
- Making
- Force of Habit
---

#Building the RepRap print bed / Y-Axis
Another stage of the RepRap build done today.  The bed came together and there's another installment of the timelapse series, with some improvements to the field of view.

{% youtube oesObr6IWQE %}

#The Handyman can!
I'm discovering the perils of being present at home, frequently in posession of a wrench or screwdriver.  To the uninitiated, it may appear that I'm capable of basic mechanical tasks and am merely pissing about with technology trash.  While these experiments are **clearly** in the pursuit of a greater calling, some residents of my household have come under the impression that I could be applying my abilities to the repair of various plumbing and electrical faults.

Is there a maker equivalent of the classic geek tshirt?  "No, I will not fix your plumbing!"

#Timelapse building with ffmpeg
The timelapses I've been posting are taken with a GoPro Hero3+ taking static shots every 2 seconds.  I post-process all of these images by dumping them to a directory and then running this magical [ffmpeg](https://www.ffmpeg.org/) incantation on it:


~~~
ffmpeg -f image2 -start_number 0 -r 12 -i %08d.jpg -s hd1080 -vcodec libx264 -crf 25 OUTPUT.MP4
~~~

This builds a passable timelapse, but finding the right arguments to ffmpeg was a pain.  The biggest drawback of feeding the command images in this way, is that it expects a series of files, which are sequentially numbered.  The GoPro _almost_ creates sequential images, but whenever the number of the image increments from G019998.JPG to G020000.JPG, it skips the 19999 entirely.  ffmpeg can't handle this gracefully and cuts the timelapses short.

Today, whole runs of numbers were missing from the sequence, which destroyed my strategy of just copying a frame or two to get the timelapse to build.

So I took 20 minutes before supper to knock together a Ruby hack for renaming all of the files in preparation for processing. It needs a bit of directory handling and ffmpeg invocation to make it usable (and suitable for putting in a RubyGem) but it was fun to be writing a bit of Ruby again after so long.

~~~ ruby
#!/usr/bin/env ruby

directory = ARGV[0]

ARGV.clear

puts "This will rename all *.JPG files in " + directory
print "Are you sure? [y/n]: "
confirm = gets.chomp

if confirm.eql? "y"
  #let it run!
elsif confirm.eql? "n"
  puts "Phew, that was close!"
  exit
else
  abort "Invalid response"
  exit
end


if Dir.exists? directory
  Dir.chdir(directory)
  Dir.glob("*.JPG").sort.each_with_index do |f, index|
    extension = File.extname(f)
    #f_original = File.basename(f, extension)
    f_renamed = index.to_s.rjust(8,"0")

    File.rename(f, f_renamed + extension.downcase)
    end
else
    abort "No such directory!"
end
~~~

