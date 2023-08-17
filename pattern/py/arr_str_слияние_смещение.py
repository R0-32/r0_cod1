def longest_consec(strarr, k):
    arr = []
    result = ""
    for i in range(len(strarr)-k+1) :
        s = ''
# соеденяем строки массива по к елементов
        for j in range(k) :
            # смещение на i
            j += i
            s += strarr[j]
        # собираем в новый масив
        arr.append(s)

# находим самую длинную строку в массиве
    for s in arr:
        if len(s) > len(result):
            result = s

    return result

print(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2))


def longest_consec(strarr, k):
    result = ""    
    if k > 0 and len(strarr) >= k:
        for i in range(len(strarr)-k+1) :
            s = ''.join(strarr[i:i+k])
            if len(s) > len(result):
                result = s
            
    return result

def longest_consec(s, k):
	return max(["".join(s[i:i+k]) for i in range(len(s)-k+1)], key=len) if s and 0 < k <= len(s) else ""