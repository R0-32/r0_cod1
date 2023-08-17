def bin_to_decimal(inp):
    return int(inp, 2)

bin_to_decimal = lambda inp: int(inp,2)

def bin_to_decimal(inp):
    length = len(inp)
    s = 0
    
    for i in range(length):
        if inp[i] == '1':
            s += 2 ** (length - i - 1)
    
    return s