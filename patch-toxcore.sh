#!/bin/bash

# Cocoapods are unhappy with .c files, replacing them with .m
for f in **/*.c
do
    mv "$f" "${f%.c}.m"
done

git apply includes.patch
