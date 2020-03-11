#Puts, print and p methods
puts "Hello world!";
#puts 5+"apples"; will cause error
puts
puts
puts "Here's two line breaks above"

puts "Here's a line
break too"

print "I'm "
print 27
print " years old"
# => I'm 27 years old
puts
p "Hello world!"; # =>"Hello world!"
p "Here's a line
break"

#Basic arithmetic
p "School"+'bus' #Schoolbus
p 12/5 #2, without decimal part
#to fix that:
p 12.0/5 #2.4

p 2*2*2*2
p 2 ** 4 #2 to the power of 4

p 23 % 4 #module

#Varables
name = "John"
last_name = "Smith"
cool = true
age = Time.new.year - 1992

puts name + " " + last_name
puts age
puts cool

#Parallel variable assignment
a = 10
b = 20
c = 30
#or
a, b, c = 10, 20, 30

puts a, b, c
p a, b, c
# 10
# 20
# 30

# Var swapping
a, b = 1, 2
p a, b #1 and 2

a, b = b, a
p a, b #2 and 1

#Constants
NAME = "John"
p NAME

#Methods
p "hello world".length #11
p "hello world".upcase
p "HELLO WORLD".downcase
foo = "hello world"
p foo.length

puts

p 10.next
p -1.next

puts

puts "hello world"
puts "hello world".inspect

#String Interpolation
p 5.to_s #to String

name = "John"
p "Hello #{name}, how are you?"
age = 28

p "I'm " + age.to_s + " years old"
#or
p "I'm #{age} years old"

p "The result of adding 1 + 1 is #{1+1}"
p "In 5 years I'm gonna be #{age+5}"
