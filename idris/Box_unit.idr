module Box 
import bool
import unit


data Box = mkBox bool

b1: Box
b1 = (mkBox mkUnit)


unbox: Box -> bool
unbox _ = mkUnit

