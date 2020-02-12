#!/bin/bash

# the libtinfo bug for the vim plugin YouCompleteMe
# needs to be executed as root

ln -s /usr/lib/libtinfo.so.6 /usr/lib/libtinfo.so.5
