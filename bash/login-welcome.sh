#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
USER="harsh"
hostname=$(hostname)
day=$(date +%A)
time=$(date +'%H:%M')
###############
# Main        #
###############
test $day = Monday && title="Exhausting"
test $day = Tuesday && title="Depressing"
test $day = Wednesday && title="Amazing"
test $day = Thursday && title="Pathetic"
test $day = Friday && title="Beautiful"
test $day = Saturday && title="Extraordinary"
test $day = Sunday && title="Inspiring"

welcome="Welcome to planet $hostname, On $day it might be $title $USER! It is $day at $time"
echo $welcome|cowsay
