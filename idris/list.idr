module list
import bool
import ite
import nat
import eq
import serialize

data list a = nil | (::) a (list a)

infixr 7 ::,++

length: list a -> Nat
length nil = 0
length (h::t) = S (length t)

(++): list a -> list a -> list a
(++) h1 nil = h1
(++) (h1::t1) t2 = h1::(t1++t2)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)


--eql: a -> a -> bool
--eql v1 v2 = ?big_hole

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                        true
                         (member v t)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) =
    and (eql h1 h2) (eql t1 t2)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::t) = (toString h) ++ "," ++ (toStringList t)


instance (Serialize a) => Serialize (list a) where
  toString nil = "[]"
  toString l = "[" ++ (toStringList l) ++ "]"


contain_list: (eq a) => list a -> list a -> bool
contain_list (h::t) l2 = and (member h l2) (contain_list t l2)
