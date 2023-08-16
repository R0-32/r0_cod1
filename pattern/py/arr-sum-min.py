# you can add elements to an array using the append() , extend() , and insert() methods

def sum_of_minimums(numbers):
    r_counter = [];
    for i in numbers:
        r_counter.append(min(i))
    return sum(r_counter)
    return sum(map(min, numbers))
    return sum([min(rows) for rows in numbers])

    return sum(min(xs) for xs in numbers)

def stairs_in_20(stairs):
    return sum(sum(i) for i in stairs)*20
    return sum(sum(i) for i in stairs)*20
