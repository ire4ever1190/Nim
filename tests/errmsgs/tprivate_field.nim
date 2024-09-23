import mprivate_field
discard Foo(
  privField: "bar" #[tt.Error
  ^ the field 'privField' is not accessible. ]#
)
