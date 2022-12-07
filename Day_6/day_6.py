from os import path

with open(path.join(path.dirname(__file__), 'input_6.txt')) as f:
    input = f.read()

def solution(input, y):
    for i in range(y, len(input)):
        if len(set(input[i - y : i])) == y:
            return i

print(solution(input, 4))
print(solution(input, 14))