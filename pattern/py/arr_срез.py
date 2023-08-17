for i in range(len(strarr)-k+1) :
    s = ''
# соеденяем строки массива по к елементов
    for j in range(k) :
        # смещение на i
        j += i
        s += strarr[j]
    # собираем в новый масив
    arr.append(s)


for i in range(len(strarr)-k+1) :
# вынимаем срез из strarr и кладем в s
    s = ''.join(strarr[i:i+k])

начиная с индекса i и включая следующие k элементов
состоит из k элементов списка strarr, начиная с индекса i.
