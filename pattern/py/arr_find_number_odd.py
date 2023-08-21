def find_it(seq):
    counts = {}  # Dictionary to store counts of integers
    for n in seq:
# находим повторяющиеся значения и подсчитываем их
        if n in counts: counts[n] += 1
# собираем значения в обжект counts    
        else: counts[n] = 1
#   находим в counts, нечетные елемменты и возвращаем их значения  
    for n, count in counts.items(): 
        if count % 2 == 1: return n

	return [x for x in seq if seq.count(x) % 2][0]

import operator

def find_it(xs):
    return reduce(operator.xor, xs)

def find_it(seq):
    for elem in set(seq):
        if seq.count(elem) % 2 == 1:
            return elem

