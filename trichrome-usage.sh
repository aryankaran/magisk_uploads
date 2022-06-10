#!/bin/bash

path="/sdcard/Trichrome-stable-android.txt" # put here path to version list
pack=com.google.android.trichromelibrary

vl=$(cat "$path")
vl=$(bash -c "echo $vl")

for v in $vl;do pm uninstall ${pack}_${v}34 && echo -e "$v\n";done
