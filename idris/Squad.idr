-- A member of the squad has name, age in years,
-- and whether they are from Virginia

module Squad
import bool
import list
import relation
import pair

record Squad where
    constructor mkSquad
    name : String
    age : Nat
    fromVA : bool


m1: Squad
m1 =  mkSquad "Jimmy" 18 false

m2: Squad
m2 = mkSquad "Sophia" 18 true

m3: Squad
m3 = mkSquad "Joyce" 18 true

m4: Squad
m4 = mkSquad "Sherry" 17 false

m5: Squad
m5 = mkSquad "Austin" 18 true

m6: Squad
m6 = mkSquad "Grace" 18 true

mySquad: list Squad
mySquad = m1::m2::m3::m4::m5::nil
