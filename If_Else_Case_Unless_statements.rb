# If Else-----------------------------------------------------------------------
x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   puts "I can't guess the number"
end

# If modifier
$debug = 1
print "debug\n" if $debug

# Unless Statement
x = 1
unless x>=2
   puts "x is less than 2"
 else
   puts "x is greater than 2"
end

# Unless modifier
$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" unless $var

# Case Statement----------------------------------------------------------------
=begin
case expr0
when expr1, expr2
   stmt1
when expr3, expr4
   stmt2
else
   stmt3
end
_tmp = expr0
=end
$age =  5
case $age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end

# ||= (Double Pipe / Or Equals)
a = false
b = 20
a ||= b
p a
# a ||= b seems to behave like a = a || b, because a and b both are local variables
