def declare_winner(fighter1, fighter2, first_attacker):
    class Fighter(object):
        def __init__(self, name, health, damage_per_attack):
            self.name = name
            self.health = health
            self.damage_per_attack = damage_per_attack

        def __str__(self): return "Fighter({}, {}, {})".format(self.name, self.health, self.damage_per_attack)
        __repr__=__str__
    
    f1 = Fighter(
        fighter1.name,
        fighter1.health,
        fighter1.damage_per_attack
    )
    
    f2 = Fighter(
        fighter2.name,
        fighter2.health,
        fighter2.damage_per_attack
    )

    if first_attacker == f1.name :
        # for _ in range(min(f1.health // f2.damage_per_attack, f2.health // f1.damage_per_attack) + 1):
        while f1.health > 0 and f2.health > 0:
            f2.health -= f1.damage_per_attack
            f1.health -= f2.damage_per_attack

            if f2.health <= 0: return f1.name
            elif f1.health <= 0: return f2.name

    else:
        # for _ in range(min(f1.health // f2.damage_per_attack, f2.health // f1.damage_per_attack) + 1):
        while f1.health > 0 and f2.health > 0:
            f1.health -= f2.damage_per_attack
            f2.health -= f1.damage_per_attack

            if f1.health <= 0: return f2.name
            elif f2.health <= 0: return f1.name


def declare_winner(fighter1, fighter2, first_attacker):
    cur, opp = (fighter1, fighter2) if first_attacker == fighter1.name else (fighter2, fighter1)
    while cur.health > 0:        
        opp.health -= cur.damage_per_attack
        cur, opp = opp, cur
    return opp.name


from math import ceil
from operator import attrgetter


def declare_winner(fighter1, fighter2, first_attacker):
    fighter1.turns = ceil(fighter1.health / float(fighter2.damage_per_attack))
    fighter2.turns = ceil(fighter2.health / float(fighter1.damage_per_attack))
    if fighter1.turns == fighter2.turns:
        return first_attacker
    return max(fighter1, fighter2, key=attrgetter('turns')).name



        