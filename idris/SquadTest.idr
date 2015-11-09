module SquadTest
import Squad
import bool
import relation
import pair
import list

n1: String
n1 = name m1
-- expect "Jimmy"

t4: Nat
t4 = age m4
-- expect 17

v2: bool
v2 = fromVA m2
-- expect true

years: Nat
years = query2 mySquad fromVA age plus 0
-- expect 54
number: Nat
number = query2 mySquad fromVA countOne plus 0
-- expect 3

aveAge: pair Nat Nat
aveAge = ave_rel mySquad fromVA age
-- expect 54 and 3

names: String
names = query2 mySquad fromVA name (++) ""
-- expect Sophia Joyce and Austin
