#!/bin/bash
#
# pngcrush all the images found in the current directory.
#
# Requires:
#
# * pngcrush
# * parallel
#

set -u
set -e

find . -name "*.png" -exec echo "pngcrush -brute -reduce {} {}.crushed.png && mv {}.crushed.png {}" ';' | parallel
