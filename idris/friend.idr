module friend
import bool

||| A friend is someone who is or isn't trustworthy, who has
||| a name, and whohas an age in years

data friend = mkFriend bool String Nat

james: friend
james =  mkFriend true "James" 19

larry: friend
larry =  mkFriend false "Larry" 25

-- projection functions

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> String
getName (mkFriend b s n) = s

getTrust: friend -> bool
getTrust (mkFriend b s n) = b

--override functions
setName: friend -> String -> friend
setName (mkFriend b s n) s' = mkFriend b s' n

setAge: friend -> Nat -> friend
setAge (mkFriend b s n) n' = mkFriend b s n'

setTrust: friend -> bool -> friend
setTrust (mkFriend b s n) b' = mkFriend b' s n
