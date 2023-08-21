def gimme(input_array):
    arr_sort = sorted(set(input_array))

    for i, n in enumerate(input_array) :
        if arr_sort[1] == input_array[i] :
            return i

    return inputArray.index(sorted(inputArray)[1])

gimme=lambda l:l.index(sorted(l)[1])
def gimme(a): return a.index(sorted(a)[1])
