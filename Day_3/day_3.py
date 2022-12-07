data = open("C:/Users/vrike/Documents/input_3.txt").read().split('\n')

def find_sum_of_priorities(data):
    total_sum = 0
    
    for rucksack in rucksacks:
        first_compartment = rucksack[:len(rucksack)//2]
        second_compartment = rucksack[len(rucksack)//2:]
        common_items = set(first_compartment).intersection(second_compartment)
        
        for item in common_items:
            item_priority = 0
            if item.isupper():
                item_priority = ord(item) - ord('A') + 27
            else:
                item_priority = ord(item) - ord('a') + 1
            total_sum += item_priority
    
    return total_sum

print(find_sum_of_priorities(data))
