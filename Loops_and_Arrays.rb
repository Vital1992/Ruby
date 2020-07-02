#for loop
x = [1,3,4,6,8]
for i in x do
  p i
end

#forEach loop with index
puts
x.each_with_index do |item, index|
  puts "current_index: #{index}"
end

#How to start loop with an index
puts
a = [0,1,2,3,4,5,6,7]
a = a.drop(3)
for i in a do
  p i
end

#How to start loop with an index and specify end
puts
puts "Start from 3rd element and stop at penultimate item"
b = [0,1,2,3,4,5,6,7]
b = b.drop(3)
b.each_with_index do |item, index|
  if index <= b.length-2
    p b[-2]
   puts "Index is #{index} and item is #{item}"
  end
end

#Same as above but shorter
puts
puts "Start from 3rd element and stop at penultimate item V2"
c = [0,1,2,3,4,5,6,7]
p c[3..-2] #[3, 4, 5, 6]

c[3..-2].each do |i|
  p i
end

#Other array modifications
puts
a = [0,1,2,3,4,5,6,7]
a = a.drop(3).select{|n| n.even?}.map { |x| x * 2 } # or a.drop(3).select(&:even?).map { |x| x * 2 }
#Removes first 3 items, select even item and multiple it by 2
p a # => [8, 12]

#Create array
puts
arr = (0..10).to_a
p arr

#Range of string
puts
str = 13141313.to_s[0..2]
p str

# Ruby code for to_h() method
puts
# declaring array
a = [[:foo, :bar], [1, 2]]
# to_h method example
puts "to_h() method form : #{a.to_h()}" #{:foo=>:bar, 1=>2}

# Merge two Arrays and convert to Hash
arr = (0..10).to_a
arr2 = ['a','b','c','d','e','f','g','e','h','i','k']
arr3 = []
arr.each_with_index do |item, index|
  arr3.push([item,arr2[index]])
end
puts
p arr3
p arr3.to_h{|item| [item[1], item[0]]}

# Break, Next and Return--------------------------------------------------------

# Use the keyword next. If you do not want to continue to the next item, use break.
#
# When next is used within a block, it causes the block to exit immediately,
# returning control to the iterator method, which may then begin a new iteration
# by invoking the block again:
@f = ['#this is comment','b','c','d','e','f','g','e','h','i','k']
puts
@f.each do |line|              # Iterate over the lines in file f
  next if line[0,1] == "#"    # If this line is a comment, go to the next
  puts line
end

# When used in a block, break transfers control out of the block, out of the
# iterator that invoked the block, and to the first expression following the
# invocation of the iterator:
puts
@f.each do |line|             # Iterate over the lines in file f
  break if line == "f"  # If this break statement is executed...
  puts line
end

# And finally, the usage of return in a block:
# return always causes the enclosing method to return, regardless of how deeply
# nested within blocks it is (except in the case of lambdas):

def find(array, target)
  @f.each_with_index do |element,index|
    return index if (element == target)  # return from find
  end
  nil  # If we didn't find the element, return nil
end
puts
p find(@f,"c")

# '<<' -------------------------------------------------------------------------
# '<<' is a method defined like the rest of them, in your case it means
# "add to the end of this array
# Syntax: obj << stuff is equivalent to obj.<<(stuff)

puts
@f << "end"
p @f #["#this is comment", "b", "c", "d", "e", "f", "g", "e", "h", "i", "k", "end"]
