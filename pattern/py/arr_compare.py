def check(a, x): 
    return x in a

    for element in a:
	    if element == x:
	        return True
    return False
    return True if x in a else False
    from operator import contains as check
    check = lambda x,a: a in x
    return a.count(x) > 0

geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]
def goose_filter(birds):
    return [i for i in birds if i not in geese]

    return list(filter(lambda x: x not in geese, birds))
    