=begin
Ruby compares the object in the when clause with the object in the case clause
  using the === operator. For example, 1..5 === x, and not x === 1..5.

This allows for sophisticated when clauses as seen above. Ranges, classes and
all sorts of things can be tested for rather than just equality.

Unlike switch statements in many other languages, Ruby’s case does not have
  fall-through, so there is no need to end each when with a break.
  You can also specify multiple matches in a single when clause like
when "foo", "bar".
=end
x = 2
case x
when 1..5
  p "It's between 1 and 5"
when 6
  p "It's 6"
when "foo", "bar"
  p "It's either foo or bar"
when String
  p "You passed a string"
else
  p "You gave me #{x} -- I have no idea what to do with that."
end
