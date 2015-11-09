module boolTest
import bool

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

and_t_t: bool
and_t_t = and true true
-- expect true
and_t_t = and true false
-- expect false
and_t_t = and false true
-- expect false
and_t_t = and false false
-- expect false

or_t_t: bool
or_t_t = or true true
-- expect true
or_t_t = or true false
-- expect true
or_t_t = or false true
-- expect true
or_t_t = or false false
-- expect false

xor_t_t: bool
xor_t_t = xor true true
-- expect false
xor_t_t = xor true false
-- expect true
xor_t_t = xor false true
-- expect true
xor_t_t = xor false false
-- expect false

nand_t_t: bool
nand_t_t = nand true true
-- expect false
nand_t_t = nand true false
-- expect true
nand_t_t = nand false true
-- expect true
nand_t_t = nand false false
-- expect true
