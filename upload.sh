#!/bin/sh

aws s3 sync . s3://funnyzoombackgrounds.com --acl public-read --exclude "*" --include "*.html" --include "sitemap.xml" --include "assets/*"