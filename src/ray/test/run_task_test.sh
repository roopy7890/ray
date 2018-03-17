#!/usr/bin/env bash

# This needs to be run in the build tree, which is normally ray/python/ray/core

# Cause the script to exit if a single command fails.
set -e

# Set up a single Raylet.
bash ../../../src/ray/test/start_raylets.sh

# Connect a driver to the raylet and make sure it completes.
python ../../../src/ray/python/test_driver.py /tmp/raylet1 /tmp/store1

# Tear down the Raylet.
bash ../../../src/ray/test/stop_raylets.sh
