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

class Baz
  def initialize(color)
    @color = color
  end

  def color
    @color
  end

  def colorChange(value)
    @color = value
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
