def words_to_marks(s):
    # str = 'abcd'
    accum = 0

    for i in s:
        char_code = ord(i) - 96
        accum += char_code

    return accum
	return sum(ord(c)-96 for c in s)
    return sum( ord(i)-(ord('a')-1) for i in s)
    