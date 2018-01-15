#!/usr/bin/env python

from operator import itemgetter
import sys

current_gender = None
current_count = 0
gender = None

# input comes from STDIN
for line in sys.stdin:
    
    line = line.strip()

    gender, count = line.split('\t', 1)

    try:
        count = int(count)
    except ValueError:
        continue

    if current_gender == gender:
        current_count += count
    else:
        if current_gender:
            print '%s\t%s' % (current_gender, current_count)
        current_count = count
        current_gender = gender

if current_gender == gender:
    print '%s\t%s' % (current_gender, current_count)

