#!/usr/bin/env python

from operator import itemgetter
import sys

current_platform = None
current_count = 0
platform = None

# input comes from STDIN
for line in sys.stdin:
    
    line = line.strip()

    platform, count = line.split('\t', 1)

    try:
        count = int(count)
    except ValueError:
        continue

    if current_platform == platform:
        current_count += count
    else:
        if current_platform:
            print '%s\t%s' % (current_platform, current_count)
        current_count = count
        current_platform = platform

if current_platform == platform:
    print '%s\t%s' % (current_platform, current_count)

