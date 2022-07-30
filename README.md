## Image workflow

To create images appropriate for the blog:

1. Flag all images in Shotwell
2. Export flagged images to a temporary directory without metadata
3. Name each of the exported images as needed
4. Run `make src=<exported images directory> dst=<jekyll assets/images directory> image-resize`
5. Run `make src=<exported images directory> dst=<jekyll assets/images directory> image-thumbnail`

## Renaming all file extensions to lowercase

`rename 's/\.JPG$/.jpg/' *.JPG`

## Upgrading

To update everything, from the top of the project directory:

```bash
bundle update
```

Or just to upgrade github-pages:

```bash
bundle update github-pages
```
