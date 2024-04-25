#!/bin/sh

date=$(date +"%Y-%m-%d" | awk '{print tolower($0)}')
time=$(date +"%H:%M:%S" | awk '{print tolower($0)}')
echo "$date $time"
