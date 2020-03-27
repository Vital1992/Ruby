#Object constructor
class Foo
  def initialize(color)
    @color = color
  end
end

class Bar
  def initialize(color)
    @color = color
  end

  def color
    @color
  end
end
# def color is a getter method. Ruby has a built-in way to automatically create
# these getter and setter methods for us, using the attr_accessor method
# so instead of def color we can use attr_accessor :color

class Baz
  def initialize(color)
    @color = color
  end

  def color
    @color
  end

  def colorChange(value) #settler method (can be "color="), can use attr_accessor
    @color = value
  end
end

class WithAttr
  attr_accessor :color #allows to get color and set color
  def initialize(color)
    @color = color
  end
end

f = Foo.new("red")
#p f.color # NoMethodError: undefined method ‘color’

b = Bar.new("red")
p b.color # => "red"
#p b.color = "yellow" # NoMethodError: undefined method `color='

z = Baz.new("red")
z.colorChange("yellow")
p z.color # => "yellow"

x = WithAttr.new("blue")
puts
p x.color
x.color = "green"
p x.color

# If we only want the getter method without the setter method?
# Then we would want to use the attr_reader method
# It works the same way but only allows you to retrieve the instance variable.
# And if you only want the setter method, you can use the attr_writer method.
# All of the attr_* methods take a Symbol as parameters; if there are more states
# you're tracking, you can use this syntax:
# attr_accessor :name, :height, :weight

# Another example

class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"

# A speak method referenced the @name instance variable, like below:
# def speak
#   "#{@name} says arf!"
# end

# Instead of referencing the instance variable directly, we want to use the name
# getter method that we created earlier, and that is given to us now by
# attr_accessor. We'll change the speak method to this:
# def speak
#   "#{name} says arf!"
# end

# By removing the @ symbol, we're now calling the instance method, rather than
# the instance variable. Technically, you could just reference the instance
# variable, but it's generally a good idea to call the getter method instead.
