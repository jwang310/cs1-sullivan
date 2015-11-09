module listTest
import list
import nat
import ite
import bool
import eq
import serialize

l1: list nat
l1 = (S (S (S O))) :: (S (S (S (S (S O))))) :: nil

len1: Nat
len1 = length nil {a=Nat}

len3: Nat
len3 = length (5 :: nil)

app1: list Nat
app1 = (3::nil)++nil

app2: list Nat
app2 =(2::(4::nil))++nil

isThree: bool
isThree = (member (S (S (S O))) l1)

s: String
s = toString l1
