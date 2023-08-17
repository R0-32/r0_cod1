def sort_array(source_array):
    # отсортированный список нечетных чисел 
    odd_numbers = sorted([x for x in source_array if x % 2 == 1])
    result = [] 
    odd_index = 0
    for i in source_array:
# проверяем четное ли текущее число 
        if i % 2 == 0:
            result.append(i)
# если нечет то замняем его на нечет из отсортированного списка
        else:
            result.append(odd_numbers[odd_index])
            odd_index += 1
    return result

print(sort_array([5, 3, 2, 8, 1, 4]))
