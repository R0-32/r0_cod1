def stairs_in_20(stairs):
    # result = []
    # for i in stairs:
    #     result.append(sum(i)/len(i))
    # return result
    return sum(sum(i) for i in stairs)

print(stairs_in_20([ [ 7,9,8,6,2 ], [6,3,5,4,3], [5,8,7,4,5]]))
