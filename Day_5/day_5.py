from os import path

with open(path.join(path.dirname(__file__), 'input_5.txt')) as f:
    line = iter(f.read().splitlines())
    list = [[] for i in range(10)]

    



# Print the first 10 lines of the file

for i in range(10):
    print(next(line))


    