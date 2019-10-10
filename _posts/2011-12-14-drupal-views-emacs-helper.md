---
title: "An emacs helper function for theming Drupal views"
date: 2011-12-14 15:12
comments: true
categories: 
- Emacs
- Drupal
- Lisp
- PHP
---

Theming Drupal Views can be a long and tedious process.  Every friendly configuration click that the CMS user is given, comes at the cost of grey hairs and expletives for the hapless Drupal themer or developer. 

Getting the themes to behave as your designers intend them, requires searching through the views interface, creating the appropriate theme files, flushing the cache and then coercing the markup so that it (just about) matches the designs. To be on the safe side, it might help to cast a virgin into a volcano or sacrifice small barnyard animals if you want quick results.

But Drupal's gods favour the tenacious and persistent, so these skills will become second nature to any experienced and determined themer. Regardless of the journey you took to get to your desired theme file, you're bound to do a lot of typing once you've arrived, as the Views fields are buried in a Russian doll of objects, arrays, hashes, lists and more.  

To ease the RSI for any of you emacs users out there, I've pulled together a quick helper function for Emacs that will output your field.  Here's the code:


~~~ cl
(defun drupal-view-field (field_name conditional)
  "Build the markup for outputting a Drupal views field"
  (interactive 
   (list (read-string "Field Name: ")
	 (y-or-n-p "Wrap in a conditional?")))
  (if conditional 
      (progn (insert "<?php if($fields['" field_name "']->content): ?>\n")
	     (insert-tab)))
  (insert "<?php print $fields['" field_name "']->content; ?>")
  (if conditional 
      (insert "\n<?php endif; ?>\n")))
~~~

The function will prompt you for the field name you want to insert and ask you whether you want it wrapped in a conditional. 

To use this helper add it to your .emacs file and call it from within a buffer by entering *M-x drupal-view-field* 



