def gimme(input_array):
    # Implement this function
#       сохранить индексы
    # save_index = input_array
#       расположить ел масс в возростающей последовательности
    arr_sort = sorted(set(input_array))

    for i, n in enumerate(input_array) :
        if arr_sort[1] == input_array[i] :
            return i

    # if input_array[0] < input_array[1] or input_array[0] < input_array[2] :
    # if input_array[1] > input_array[2] or input_array[1] > input_array[0] :
    #     arr_sort.append(input_array[1])
    #     elif input_array[i] < input_array[i+1] or input_array[i] < input_array[i+2] :
    #         arr_sort.append(i)
    #     elif input_array[i] > input_array[i+1] or input_array[i] < input_array[i+2] :
    #         arr_sort.append(i)
#       выбрать ел масс в центре массива и найти его индекс в масиве индексов

print(gimme([5, 3, 2]))
