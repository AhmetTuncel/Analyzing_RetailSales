#!/usr/bin/env python

from operator import itemgetter
import sys

current_market = None
current_count = 0
market = None

# input comes from STDIN
for line in sys.stdin:
    
    line = line.strip()

    market, count = line.split('\t', 1)

    try:
        count = int(count)
    except ValueError:
        continue

    if current_market == market:
        current_count += count
    else:
        if current_market:
            print '%s\t%s' % (current_market, current_count)
        current_count = count
        current_market = market

if current_market == market:
    print '%s\t%s' % (current_market, current_count)

