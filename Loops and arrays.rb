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
puts "to_h() method form : #{a.to_h()}"
