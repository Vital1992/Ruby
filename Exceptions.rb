=begin
Dealing with exceptions or aborting the program - depends on whether you
have provided a rescue clause (rescue is a fundamental part of the Ruby language).
If you haven't provided such a clause, the program terminates; if you have,
control flows to the rescue clause.
=end
def raise_exception
  puts 'I am before the raise.'
  raise 'An error has occured'
  puts 'I am after the raise'
end
#raise_exception
# I am before the raise.
# in `raise_exception': An error has occured (RuntimeError)

def inverse(x)
  raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric
  1.0 / x
end
puts inverse(2)
#puts inverse('not a number')
# 0.5
# in `inverse': Argument is not numeric (ArgumentError)
# is_a? is a method in the Object class and returns true or false.
# The unless modifier when tacked at the end of a normal statement means
# execute the preceding expression unless condition is true.

# Handling an Exception---------------------------------------------------------
=begin
To do exception handling, we enclose the code that could raise an exception
in a begin-end block and use one or more rescue clauses to tell Ruby the
types of exceptions we want to handle. It is to be noted that the body of
a method definition is an implicit begin-end block; the begin is omitted,
and the entire body of the method is subject to exception handling, ending with
the end of the method.
=end

def raise_and_rescue
  begin
    puts 'I am before the raise.'
    raise 'An error has occured.'
    puts 'I am after the raise.'
  rescue
    puts 'I am rescued.'
  end
  puts 'I am after the begin block.'
end
raise_and_rescue
# Observe that the code interrupted by the exception never gets run.
# Once the exception is handled, execution continues immediately after the
# begin block that spawned it.

# For each rescue clause in the begin block, Ruby compares the raised Exception
# against each of the parameters in turn. The match will succeed if the exception
# named in the rescue clause is the same as the type of the currently thrown
# exception, or is a superclass of that exception.
begin
  raise 'A test exception.'
rescue StandardError => e
  puts e.message
  puts e.backtrace.inspect
end
