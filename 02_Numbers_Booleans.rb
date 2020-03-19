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
