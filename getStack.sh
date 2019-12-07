#!/bin/sh

version="2.1.1"

wget https://github.com/commercialhaskell/stack/releases/download/v/stack-$version-linux-x86_64.tar.gz -O /tmp/stack.tar.gz
      - run: sudo mkdir /tmp/stack-download
      - run: sudo tar -xzf /tmp/stack.tar.gz -C /tmp/stack-download
      - run: sudo chmod +x /tmp/stack-download/stack-$version-linux-x86_64/stack
      - run: sudo mv /tmp/stack-download/stack-$version-linux-x86_64/stack /usr/bin/stack

