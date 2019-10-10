---
title: "OSX gestures for emacs scrolling"
date: 2012-02-23 10:46
comments: true
categories: 
- Emacs
- OSX
---
I'm now working in a Ruby on Rails team, which means I'm collaborating with a lot of TextMate users on a daily basis.  I've been an Emacs user for years, and have never really seen the benefit of TextMate.  

I do occasionally envy the silky interactions of GUI editors, in all their pointy clicky glory.  Despite loving the speed of navigating with keystrokes, there are times when zipping around the editor is easier done with a mouse, and I love using my Apple Magic Trackpad and Lion gestures for doing this. 

Recently, I've been feeling the *Ctrl-V / Meta-V* keystrokes for paging up and down have been a bit clumsy and imprecise.  What I've wanted is the lovely two-finger scroll that I've become accustomed to on all my other Lion apps. Well I've found a lovely .emacs customisation that provides two finger scrolling for console Emacs interaction.  

To enable this,  add the following to your ~/.emacs file:

~~~ cl
;; Enable mouse support
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] '(lambda ()
                              (interactive)
                              (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
                              (interactive)
                              (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
)
~~~
<cite>http://stackoverflow.com/a/8859057</cite> 

If your Emacs is ringing the terminal bell, or worse yet spraying Growl notifications, every time you scroll to the top or bottom of the buffer, you can disable this by adding the following to your ~/.emacs:

~~~ cl
;; disable bell function
(setq ring-bell-function 'ignore)
~~~
<cite>http://riddell.us/EmacsOnUbuntu.html</cite> 
