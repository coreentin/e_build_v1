#!/bin/bash
echo ""
echo "/e/ OS Unified Buildbot - v1-t version"
echo "Executing in 5 seconds - CTRL-C to exit"
echo ""
sleep 5


echo "Setting up build environment"
source build/envsetup.sh &> /dev/null
echo ""


lunch anne
mka kernel


echo ""

