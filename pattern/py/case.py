def whatday(num):
    match num:
        case 1:
            return "Sunday"
        case 2:
            return "Monday"
        case 3:
            return "Tuesday"
        case 4:
            return "Wednesday"
        case 5:
            return "Thursday"
        case 6:
            return "Friday"
        case 7:
            return "Saturday"
        case _:
            return "Wrong, please enter a number between 1 and 7"

WEEKDAY = {
    1: 'Sunday',
    2: 'Monday',
    3: 'Tuesday',
    4: 'Wednesday',
    5: 'Thursday',
    6: 'Friday',
    7: 'Saturday' }
ERROR = 'Wrong, please enter a number between 1 and 7'


def whatday(n):
    return WEEKDAY.get(n, ERROR)

def whatday(num):
    weekday = {1:'Sunday',
               2:'Monday',
               3:'Tuesday',
               4:'Wednesday',
               5:'Thursday',
               6:'Friday',
               7:'Saturday'}
    try:
        return weekday[num]
    except:
        return("Wrong, please enter a number between 1 and 7")

        
