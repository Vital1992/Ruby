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

# Suppose we added two more states to track to the GoodDog class called
# "height" and "weight":
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!" #it's not necessary to use @ when we have attr_accessor
  end

  def change_info(n, h, w)
    self.name = n #self.name= to let Ruby know that we're calling a method and not declaring a var
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

# And we can use the change_info method like this:
sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts
p sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
p sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.

p GoodDog.instance_methods #shows all attributes of a class

# Note that prefixing self. is not restricted to just the accessor methods;
# you can use it with any instance method. For example, the info method is not
# a method given to us by attr_accessor, but we can still call it using self.info:
class GoodDog
  # ... rest of code omitted for brevity
  def some_method
    self.info
  end
end

# We can use Hashes to pass args in the Classs' function
class Person
  attr_accessor :name, :age

  def initialize(params)
    @name = params[:name]
    @age  = params[:age]
  end

  def change(params)
    @name = params[:name]
    @age  = params[:age]
  end
end

a = Person.new(name: "John Doe", age: 'unknown')
a.change(name: "Jack Shepherd", age: 27)
puts
p "Name is #{a.name} and age is #{a.age}"

# Class inheritance-------------------------------------------------------------

class Mammal
  def breathe
    puts "inhale and exhale"
  end
end

class Cat < Mammal
  def speak
    puts "Meow"
  end
end

puts
rani = Cat.new
rani.breathe
rani.speak
# Though we didn't specify how a Cat should breathe, every cat will inherit that
# behaviour from the Mammal class since Cat was defined as a subclass of Mammal.

# There will be situations where certain properties of the super-class should
# not be inherited by a particular subclass.
# In the example below, we override fly in class Penguin:
class Bird
  def preen
    puts "I am cleaning my feathers."
  end
  def fly
    puts "I am flying."
  end
end

class Penguin < Bird
  def fly
    puts "Sorry. I'd rather swim."
  end
end

p = Penguin.new
puts
p.preen
p.fly

# Another example---------------------------------------------------------------
class GF
def initialize
puts 'In GF class'
end
def gfmethod
puts 'GF method call'
end
end

# class F sub-class of GF
class F < GF
def initialize
puts 'In F class'
end
end

# class S sub-class of F
class S < F
def initialize
puts 'In S class'
end
end
son = S.new
son.gfmethod

# Inheritance and Instance Variables--------------------------------------------
class Dog
  def initialize(breed)
    @breed = breed
  end
end

class Lab < Dog
  def initialize(breed, name)
    super(breed)
    @name = name
  end

  def to_s
    "#@breed, #@name"
  end
end

puts
puts Lab.new("Labrador", "Benzy").to_s

=begin
When you invoke super with arguments, Ruby sends a message to the parent of
the current object, asking it to invoke a method of the same name as the
method invoking super. super sends exactly those arguments.
The to_s method in class Lab references @breed variable from the super-class Dog.

Lab defines an initialize method that chains to the initialize method of its
super-class. The chained method assigns values to the variable @breed,
which makes those variables come into existence for a particular instance of Lab.

The reason that they sometimes appear to be inherited is that instance variables
are created by the methods that first assign values to them, and those methods
are often inherited or chained.

Since instance variables have nothing to do with inheritance, it follows that
an instance variable used by a subclass cannot "shadow" an instance variable
in the super-class. If a subclass uses an instance variable with the same
name as a variable used by one of its ancestors, it will overwrite the value
of its ancestor's variable.
=end

# Instance vs. Class------------------------------------------------------------

class Person2
  def instance_var
    @instance_variable = "instance var"
  end

  def self.class_var
    @@class_variable = "class var"
  end

  def say_hi
    p "Hi, I have an #{self.instance_var}"
  end

  def self.say_hi
    p "Hi, I have a #{self.class_var}"
  end
end

bob = Person2.new
puts
bob.say_hi
Person2.say_hi

# Referencing to class method---------------------------------------------------

class Person3
  attr_accessor :age
  @@people = []

  def initialize(age)
    @age = age
    self.class.all << self #calling def self.all
  end

  def age_in_dog_years
    age*7
  end

  def self.all
    @@people
  end

  def self.num_people
    all.length
  end
end

rob = Person3.new(20)
puts
p rob.age
p rob.age_in_dog_years
p Person3.all
p Person3.num_people
