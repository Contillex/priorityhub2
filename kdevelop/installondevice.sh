#!/bin/bash

## This script is to be used with kdevelop's launch configuration as the makefile does not provide it
## This will push and install the deb to the device

echo "Please make sure theos is configured!"

make install

echo "Done!"
