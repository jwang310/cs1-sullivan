module unitTest

import unit
import serialize

u1: unit
u1 = mkUnit

u2: unit
u2 = mkUnit

u3: unit
u3 = id mkUnit

s: String
s = toString u1
