module gunrow
import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per 10,000,000
||| by gun for homicide, suicides, unintentional, undetermined, other

data gunrow = mkGunrow country Nat Nat Nat Nat



argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austrl: gunrow
austrl = mkGunrow Australia 11 62 5 8

austr: gunrow
austr = mkGunrow Austria 18 268 1 8

hondu: gunrow
hondu = mkGunrow Honduras 648 0 0 0

america: gunrow
america = mkGunrow USA 355 670 16 9

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

recordgunrow: list gunrow
recordgunrow = argen::austrl::austr::hondu::america::nil


--cons (countryName homicidePer10M suicidePer10M unintentionalPer10M otherPer10M)
