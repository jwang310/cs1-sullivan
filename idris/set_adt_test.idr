module set_adtTest

import set_adt_hw
import list
import serialize
import eq
import bool
import nat
import pair
import option
import ite


list1: list nat
list1 = (S (S O))::(S (S (S (S O))))::(S (S O))::(S (S (S (S (S (S O))))))::nil

list2: list nat
list2 = (S O)::(S (S (S O)))::(S (S O))::(S (S (S (S O))))::(S (S O))::(S (S (S (S (S O)))))::nil

list3: list nat
list3 = (S O)::(S (S (S O)))::(S O)::(S (S O))::nil

s1: set nat
s1 = mkSet list1

s2: set nat
s2 = mkSet list2

s3: set nat
s3 = mkSet list3

sr: set nat
sr = set_remove (S (S O)) s1

sc: Nat
sc = set_cardinality s1

sm: bool
sm = set_member (S (S (S (S O)))) s1

su: set nat
su = set_union s1 s2

si: set nat
si = set_intersection s1 s2

sd: set nat
sd = set_difference s1 s2

sf: bool
sf = set_forall evenb s1

se: bool
se = set_exists evenb s2

sp: set_spec.set (pair nat nat)
sp = set_product s1 s2

sw: option nat
sw = set_witness evenb s1
