#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

cd "$SCRIPTPATH"

LD_LIBRARY_PATH=./:./converter
export LD_LIBRARY_PATH

LD_PRELOAD=./libcef.so
export LD_PRELOAD

exec ./DesktopEditors $@

