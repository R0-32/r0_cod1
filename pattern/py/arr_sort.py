my_array.sort()
sorted_array = sorted(my_array)

def min_max(lst):
    lst.sort()
    result = []
    result.append(min(lst))
    result.append(max(lst))
    return result 
	
	return [min(lst), max(lst)]

	lst.sort()
	return [lst[0],lst[-1]]

    return [sorted(lst)[0],sorted(lst)[-1]]
    
min_max = lambda l: [min(l), max(l)]