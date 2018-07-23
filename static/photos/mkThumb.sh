#!/bin/bash
rm -f *_thumb.jpg
for photo in *.jpg; do
    echo $photo
    convert -strip -interlace Plane -quality 80 -resize 600x10000 $photo ${photo/.jpg/_thumb.jpg}
done
