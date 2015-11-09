module Bit

-- Data type
data Bit = zero | one

-- functions
change: Bit -> Bit
change zero = one
change one = zero

id: Bit -> Bit
id one = one
id zero = zero
