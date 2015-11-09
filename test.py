

''' Key differences, Idris vs Python
1: Idris is a compiled language; Python is interpreted (by default)
2: Idris uses static type checking; Python uses dynamic type checking
3: Idris values are immutable whereas Python has mutable state
4: Idris is a language of expressions; Python is a language of commands
'''

def foo(n):
    return n + 3

print(foo(6))

print(None)


# {}
x = 5
# {(x,5)}
x = 6
# {(x,6)}
y = 7
# {(x,6) (y,7)}
