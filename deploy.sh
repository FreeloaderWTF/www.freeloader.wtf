#!/bin/bash
jekyll build
s3cmd sync --delete-removed --exclude '*~' --recursive _site/ s3://www.freeloader.wtf
