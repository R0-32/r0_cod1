def sequence_sum(begin_number, end_number, step):
    arr_sequence = []
    while begin_number <= end_number:
        arr_sequence.append(begin_number)
        begin_number += step
    return sum(arr_sequence)

    return sum(range(start, end+1, step))