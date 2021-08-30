#!/bin/bash

# This script show  active  port active on system
# use -4 as an argument to limit to tcp4 ports


netstat -nutl ${1} | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}' 

