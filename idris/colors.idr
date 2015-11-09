module colors
import pair
import bool

data color = red | yellow | blue | green | cyan | magenta

complement: color -> color
complement red = cyan
complement green = magenta
complement blue = yellow
complement cyan = red
complement yellow = blue
complement magenta = green

additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive cyan = false
additive magenta = false
additive yellow = false

subtractive: color -> bool
subtractive c = not (additive c)

mixink: pair color color -> color
mixink mkPair(magenta yellow) = red
mixink mkPair(yellow cyan) = green
mixink mkPair(cyan magenta) = blue
