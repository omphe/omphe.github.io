.PHONY: image-resize image-thumbnail

# Utility commands for blogging workflows

# Create resized images 
# args:
#   src=<source image directory>
#   dst=<destination directory>
image-resize:
	mogrify \
		-resize 1200x1200 \
		-path $(dst) \
		-strip \
		-auto-orient \
		'$(src)/*.[jJ][pP][gG]'

# Create thumbnails
# args:
#   src=<source image directory>
#   dst=<destination directory>
image-thumbnail:
	convert \
		'$(src)/*.[jJ][pP][gG]' \
		-set filename:suffix '%t-thumbnail' \
		-auto-orient \
		-resize 200x200 \
		$(dst)/%[filename:suffix].jpg

