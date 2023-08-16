.isupper()
.islower()
.count()


uppercase_chars = [c for c in s if c.isupper()]
uppercase_count = len([c for c in s if c.isupper()])
uppercase_count = sum(1 for c in s if c.isupper())

uppercase_count = 0
for c in s:
    if c.isupper():
        uppercase_count += 1


def solve(s):
    uppercase_count = len([c for c in s if c.isupper()])
    lowercase_count = len([c for c in s if c.islower()])
#     lowercase_count = s.count(c for c in s if c.islower())
    if lowercase_count >= uppercase_count:
        return s.lower()
    elif lowercase_count < uppercase_count:
        return s.upper()
    
def solve(s):
    if sum(c.isupper() for c in s) > sum(c.islower() for c in s):
        return s.upper()
    else:
        return s.lower()