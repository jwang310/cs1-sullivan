module Person
import list
import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.

record Person where
    constructor mkPerson
    name : String
    age : Nat
    gender: bool
    height: Nat

setName: Person -> String -> Person
setName p n = record { name=n } p

setAge: Person -> Nat -> Person
setAge p a = record { age=a } p

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)
