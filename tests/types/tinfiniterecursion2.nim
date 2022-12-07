discard """
  errormsg: "illegal recursion in type 'Tree'"
"""

type Tree[T] = object
    node: Tree[T]
    data: int

var tree: Tree[int] = Tree[int]()
