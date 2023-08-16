string = "Пример строки для преобразования"
array = list(string)

def name_shuffler(str_):
    arr = str_.split()
    return arr[1] + " " + arr[0]
    
    return ' '.join(str_.split(' ')[::-1])
    return ' '.join(reversed(s.split()))