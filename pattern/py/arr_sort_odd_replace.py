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



def sort_array(source_array):
    result = sorted([l for l in source_array if l % 2 == 1])
    for index, item in enumerate(source_array):
        if item % 2 == 0:
            result.insert(index, item)
    return result
        


  odds = sorted((x for x in arr if x%2 != 0), reverse=True)
  return [x if x%2==0 else odds.pop() for x in arr]


    odds = iter(sorted(v for v in source_array if v % 2))
    return [next(odds) if i % 2 else i for i in source_array]



      odds = []
    answer = []
    
    for i in source_array:
        if i % 2 > 0:
            odds.append(i)
            answer.append("X")
            
        else:
            answer.append(i)
            
    odds.sort()
    
    for i in odds:
        x = answer.index("X")
        answer[x] = i
    return answer