discard """
  output: "int | string"
"""

type thing [T] = object
  value: T

converter asValue[T](o: thing[T]): T =
  o.value

proc mycall(num: int, str: string) =
  echo ($(num.type) & " | " & $(str.type))

mycall( # This gives a type error as if the converter was not defined and I tried to pass in a thing directly
  thing[int](value: 2),
  thing[string](value: "foo"),
)
