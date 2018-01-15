#!/usr/bin/env python

import sys

# input comes from STDIN (standard input)
for line in sys.stdin:

	line = line.strip()
	unpacked = line.split(",")
	name, gender = line.split(",")
	results = [gender, "1"]
	print("\t".join(results))
