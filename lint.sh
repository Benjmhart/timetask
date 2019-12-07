#!/bin/sh

git ls-files | grep '\.l\?hs$' | xargs stack exec -- hlint -X QuasiQuotes -X NoPatternSynonyms "$@"

