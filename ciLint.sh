#!/bin/sh

wget https://raw.github.com/ndmitchell/hlint/master/misc/travis.sh -O - --quiet | sh -s "./src/*.hs"

