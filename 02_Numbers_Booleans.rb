# .class method
p 5.class #Integer (shows what blueprint(class) it was made of)
p -4.33.class #Float

# Convert nums to str and vise versa
puts
str = "5"
p str
p str.class #string
p str.to_i.class #integer

p str.to_f.class #float
#--------------------------
number = 10
p number.to_s.class

p number.to_f.class
#--------------------------
pi = 3.14 #float
p pi.to_i.class #integer
p pi.to_s.class #string

#Booleans
puts
p 5 > 2 #true
p 5 < 2 #false

yes = true
no = false
p yes
p no

#The odd? and even?
puts
p 10.odd? #false
p 11.odd? #true
p 10.even? #true
p 11.even? #false

#Comparison == operator
puts
a = 10
p a == 10 #true
p 5 == "5" #false
p "5" == "5" #true
puts
p 5 == 5.0 #true (doesn't care about type, int == float, but it's better to compare the same types of data)
p 5 == 5.0.to_i #to make it the same types

#=== operator
String === "zen"  # OutRange === (1..2)   # Output: => true
Array === [1,2,3]   # Output: => true
Integer === 2   # Output: => trueput: => true
Range === (1..2)   # Output: => true
Array === [1,2,3]   # Output: => true
Integer === 2   # Output: => true
#IF use == on above, all will be false

#Comparison != operator
puts
p 10 != 5 #true
p "Hello" != "hello" #true
p "Hello".downcase != "heLLo".downcase #false

#Arithmetic methods
p 1+2
p 1.+(2) #same as above

p 10-5
p 10.-(5)
p 10.-5 #also correct

p 3*4
p 3.*(4)

p 10/5
p 10./(5)
p 10.div(5)

p 10%3
p 10.%(3)

#Object Methods with Parameters (The .between? Predicate Method)
# between?(min, max) -> true or false
# Returns false if obj <=> min is less than zero or if anObject <=> max is greater
# than zero, true otherwise
puts
p 3.between?(1,5) #true
p 6.between?(1,5) #false
p 'cat'.between?('ant', 'dog') #true
p 'gnu'.between?('ant', 'dog') #false

#Float Methods
puts
p 10.5.floor #converts float into integer
p 10.5.floor.class #integer

p 10.5.ceil #round up, result 11, also converts into int

p 3.14159.round(2) #result 3.14, rounds to 2 decimals

p -3.14.abs #result 3.14

#Assignments and Reassignments
puts
a = 10
a+=5
p a

#same for -=, *=, /=, %= and **=

# And and Or operators
puts
tes = 12
tes2 = 10
tes3 = 9

if (tes == 11 && tes2 == 11) || tes3 == 9
  p "True"
end

#Create random number with specific length
puts
rand1 = rand().floor(9).to_s.split(".")[1].to_i
rand2 = rand().to_s[2..10].to_i #same as above
rand3 = "#{rand().to_s[2..10]}#{rand().to_s[2..10]}".to_i #increasing length from 9 to 18
p rand1
p rand2

#Equality methods---------------------------------------------------------------
# equal?_____
=begin
Unlike the == operator which tests if both operands are equal, the equal method
checks if the two operands refer to the same object. This is the strictest form
of equality in Ruby.
Example:
=end
a = "xyz" and b = "xyz"
a.object_id  # Output: => 20139460
b.object_id  # Output :=> 19972120
a.equal? b  # Output: => false

=begin
In the example above, we have two strings with the same value. However, they
are two distinct objects, with different object IDs. Hence, the equal? method
will return false.
Let’s try again, only this time b will be a reference to a. Notice that the
object ID is the same for both variables, as they point to the same object.
=end
a = "string"
b = a
a.object_id  # Output: => 18637360
b.object_id  # Output: => 18637360
a.equal? b  # Output: => true

# eql?_____
=begin
The eql? method returns true if obj and other refer to the same hash key.
This is used by Hash to test members for equality. For objects of class Object,
eql? is synonymous with ==. Subclasses normally continue this tradition by
aliasing eql? to their overridden ==method, but there are exceptions.
Numeric types, for example, perform type conversion across ==, but not across
eql?, so:
=end
1 == 1.0     #=> true
1.eql? 1.0   #=> false
