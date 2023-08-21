def count(s):
    if s == '': return {}

    char_count = {}

    for i in s :
        if i in char_count : char_count[i] += 1
        else: char_count[i] = 1

    return char_count

from collections import Counter

def count(string):
    return Counter(string)

    return {i: string.count(i) for i in string}
    return {x:s.count(x) for x in set(s)}

from collections import Counter as count

    a = {}
    for i in string:
        a[i] = a.setdefault(i, 0)+1

    return {} if not string else a