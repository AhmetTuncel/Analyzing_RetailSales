import sys

for line in sys.stdin:
    line = line.strip()
    unpacked = line.split(",")
    Name,Gender = line.split(",")
    results = [Gender, "1"]
    print("\t".join(results))
