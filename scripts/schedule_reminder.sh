#!/bin/bash
echo 'espeak -s 120 -p 10 "start to work"' | at 9:00
echo 'espeak -s 120 -p 10 "time to have a break"' | at 9:50
echo 'espeak -s 120 -p 10 "back to work"' | at 10:00
echo 'espeak -s 120 -p 10 "lesson is over"' | at 10:30