# The alias keyword
# Ruby provides an alias keyword to deal with method and attribute aliases

class User
  def fullname
    'John Doe'
  end

  alias username fullname
  alias name     username
end

u = User.new

p u.fullname # => "John Doe"
p u.username # => "John Doe"
p u.name     # => "John Doe"
# Here we define a User#fullname method and we define a username alias for
# this method.
# Then, the username alias is aliased with a name alias.
# So, a call to name or username will call the code defined within the
# User#fullname method and return the same result.
# Note that it’s possible to define an alias for an existing alias.

# The alias_method method-------------------------------------------------------
# The Module#alias_method method shares the same behavior as the alias keyword
# but it complies to the method syntax
class User
  def fullname
    'John Doe'
  end

  alias_method :username, :fullname
  alias_method 'name',    :username
end

u = User.new

p u.fullname # => "John Doe"
p u.username # => "John Doe"
p u.name     # => "John Doe"
# Like the alias keyword, we define a User#fullname method and we define a
# username alias for this method.
# Then the username alias is aliased with a name alias.
# So, a call to name, username or fullname returns the same result.
# We can see that the alias_method method takes a String or a Symbol as argument
# that allows Ruby to identify the alias and the method to alias.
# If alias and Module#alias_method share the same behavior, then what’s the
# purpose of dealing with two things that do the exact same job?
# The answer is that they don’t exactly do the same thing.

# Aliases and scopes------------------------------------------------------------
# In effect, the Module#alias_method acts differently than the alias keyword on
# one specific point: the scope.

class Device
  def description
    'I\'m a device'
  end

  def self.alias_description
    alias_method :describe, :description
  end
end

class Microwave < Device
  def description
    'I\' a microwave'
  end

  alias_description
end

m = Microwave.new

p m.description  # => "I' a microwave"
p m.describe     # => "I' a microwave"
# Here we can see that the call to alias_method within the Device#alias_description
# method defines the describe alias on the Microwave#description method and not
# on the Device#description one.

# Now let’s see what happens with the alias keyword-----------------------------

class Device
  def description
    'I\'m a device'
  end

  def self.alias_description
    alias describe description
  end
end

class Microwave < Device
  def description
    'I\' a microwave'
  end

  alias_description
end

m = Microwave.new

p m.description # => "I' a microwave"
p m.describe    # => "I'm a device"
# Here we can see that the call to alias within the Device#alias_description
# method sets the describe alias on the Device#description method and not on
# the Microwave#description one.
