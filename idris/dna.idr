module dna
import list
import pair

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand (h::t) = map dna.complement_base (h::t)

firstbase: pair base base -> base
firstbase (mkPair b1 b2) = b1

secondbase: pair base base -> base
secondbase (mkPair b1 b2) = b2

strand1: list (pair base base) -> list base
strand1 (h::t) = map dna.firstbase (h::t)

strand2: list (pair base base) -> list base
strand2 (h::t) = map dna.secondbase (h::t)

basePair: base -> pair base base
basePair b = mkPair b (complement_base b)

complete: list base -> list (pair base base)
complete a = map dna.basePair a

basetoNat: base -> base -> Nat
basetoNat A A = 1
basetoNat G G = 1
basetoNat T T = 1
basetoNat C C = 1
basetoNat _ _ = 0

countBase: list base -> base -> Nat
countBase a x = list.foldr plus 0 (map (basetoNat x) a)
