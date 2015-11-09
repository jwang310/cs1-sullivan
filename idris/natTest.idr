module natTest
import nat
import bool
import serialize

--zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S (S (S O))

x: bool
x = isZero r

y: nat
y = (succ O)

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb (S r)

||| a test, expecting O
h1: nat
h1 = add O O

||| a test, expecting S (S O)
h2: nat
h2 = add O (S (S O))

||| a test, expecting (S O)
h3: nat
h3 = add (S O) O

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = add (S (S O)) (S (S (S O)))

s: String
s = toString h4
