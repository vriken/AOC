from os import path
from collections import defaultdict


with open(path.join(path.dirname(__file__), 'input_7.txt')) as f:
    dir = defaultdict(int)
    array = []
    for line in f.read().splitlines():
        if line.startswith("$ cd"):
            ls = False
            start = line[5:]
            if start == "..":
                array.pop()
            else:
                array.append(start)
        elif line.startswith("$ ls"):
            continue
        else:
            try:
                dir["/".join(array)] += int(line.split()[0])
            except ValueError:
                pass

for key in sorted(dir.keys() , key = lambda x: x.count("/"), reverse = True):
    dir["/".join(key.split("/")[:-1])] += dir[key]

# part 1
print(sum([x for x in dir.values() if x < 100000]))

# part 2
available = 70_000_000 - dir["/"]
at_least = 30_000_000 - available

print(min([x for x in dir.values() if x > at_least and x < available]))