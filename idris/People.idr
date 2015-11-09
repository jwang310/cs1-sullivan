module People
import bool
import Person
import list
import nat


tom: Person
tom = mkPerson "Tom" 19 true 190

mary: Person
mary = mkPerson "Mary" 20 false 170

ge: Person
ge = mkPerson "Ge" 21 true 175

daryl: Person
daryl = mkPerson "Daryl" 19 true 189

people: list Person
people = tom::mary::ge::daryl::nil
