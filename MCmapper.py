#!/usr/bin/env python

import sys

# input comes from STDIN (standard input)
for line in sys.stdin:

	line = line.strip()
	s = line.split(",")
	country, market = line.split(",")
	results = [market, "1"]
	print("\t".join(results))
