#!/bin/bash
# -*- coding: utf-8 -*-

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Tenor gif search
# @raycast.mode silent
# @raycast.packageName Tenor gif search

# Optional parameters:
# @raycast.icon ./images/gif-light.png
# @raycast.iconDark ./images/gif-dark.png
# @raycast.packageName Web searches
# @raycast.argument1 { "type": "text", "placeholder": "search", "percentEncoded": true }

# Documentation:
# @raycast.author Mike Oertli
# @raycast.authorURL https://github.com/mikeoertli
# @raycast.description Search tenor.com for the given search term

search=$(echo "${1}" | sed "s/'//g" | sed 's/ /-/g')
open "https://tenor.com/search/${search}"