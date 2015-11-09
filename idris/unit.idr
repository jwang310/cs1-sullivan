module unit
import bool
import eq
import serialize

-- data type
data unit = mkUnit

-- function

id: unit -> unit
id mkUnit = mkUnit

-- overloaded operators

instance eq unit where
  eql u1 u2 = true

instance Serialize unit where
  toString u = "()"
