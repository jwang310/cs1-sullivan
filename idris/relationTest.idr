import relation

import list
import bool
import pair
import Person
import People

years: Nat
years = query2 people gender age plus 0

totalInches: Nat
totalInches = query2 people gender height mult 1

names: String
names = query2 people gender name (++) ""

number: Nat
number = query2 people gender countOne plus 0

aveAge: pair Nat Nat
aveAge = ave_rel people gender age
