# exrtools-docker
Dockerfile for automated DockerHub build of exrtools on Ubuntu.

# Intro
The Dockerfile here installs [exrtools](http://scanline.ca/exrtools/) on Ubuntu.  This gives us a handy Docker image for distributing exrtools.

It might be nice to build on [Alpine](https://hub.docker.com/_/alpine/) rather than Ubuntu, to get a smaller image.  it would take more config to get the build tools and OpenEXR installed under Alpine.

An alternative to exrtools is [ImageMagick](http://www.imagemagick.org/script/index.php) but this does not have high dynamic range enabled by default.  So again, it would take more work.

# Usage
Invoke this image just like you would invoke exrtools.  For example:
```
docker run ninjaben/exrtools exrnormalize input.exr output.exr [ maxval ]
docker run ninjaben/exrtools exrtopng input.exr output.png
docker run ninjaben/exrtools jpegtoexr input.jpg output.exr
```

And so on.
