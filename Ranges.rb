# A range is an object which has a starting value & ending value,
# they help you create sequences that span the whole range between these two values.
#
# You could go from 1 to 20, or from "a" to "z"

# (1..20)
# The parenthesis are not necessary to define a Range.
#
# But if you want to call methods on your range you will need them.
# Otherwise, you are calling the method on the 2nd element of the range,
# instead of the range itself..

# Range has some useful methods, like the step method.
# Example:

p (10..20).step(2).to_a #[10, 12, 14, 16, 18, 20]

# How to Find Out If A Number is Inside a Range---------------------------------
#
# Other Range methods to be aware of are: cover? & include?.
# The include? method just does what you would expect, check for inclusion inside
# the range. So it would be equivalent to expanding the Range into an Array and
# checking if something is in there.
#
# But cover? is different, all it does is check against the initial & ending
# values of the range (begin <= obj <= end), which can yield unexpected results.

p ('a'..'z').include? "cc" # false
p ('a'..'z').cover? "cc"   # true

# The cover? example is equivalent to:
"a" <= "cc" && "cc" <= "z"
# The reason this returns true is that strings are compared character by character.
# Since "a" comes before "c", the characters that come after the first "c" don't matter.

# How Ranges Are Implemented in Ruby--------------------------------------------

# Ranges are not limited to numbers & letters, you can use any objects as long as
# they implement the following methods: <=> and succ.
#
# For example, here is a DateTime range:
p 'a'.next

# So how does this work? Let's take a look at this implementation:
def range(a, b)
  # if the first element is bigger than the second
  # then this isn't a sequential range
  return [] if a > b
  out = []
  # advance until the 2nd element is the same
  # as the first one
  while a != b
    out << a
    a = a.next
  end
  # add last element (inclusive range)
  # this also returns the results via implicit return
  out << a
end
p range 1, 10
p range 'a', 'z'
