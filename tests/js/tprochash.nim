import std/sets

proc foo(x: int): proc (): int =
  result = proc (): int = x

proc bar(): int = 9

let
  x = foo(9)
  y = foo(1)
  z = bar
  procs = [x, y, z]

var all = initHashSet[proc (): int]()
for p in procs:
  all.incl p
  assert p in all





