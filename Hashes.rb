=begin
A Hash is a collection of key-value pairs like this: "employee" = > "salary".
It is similar to an Array, except that indexing is done via arbitrary keys of
any object type, not an integer index.

The order in which you traverse a hash by
either key or value may seem arbitrary and will generally not be in the
insertion order. If you attempt to access a hash with a key that does not exist,
the method will return nil.
=end

# Creating Hashes---------------------------------------------------------------

# As with arrays, there is a variety of ways to create hashes. You can create an
# empty hash with the new class method

months = Hash.new

#You can also use new to create a hash with a default value, which is otherwise just nil
months = Hash.new( "month" )
#or
months = Hash.new "month"

# When you access any key in a hash that has a default value, if the key or
# value doesn't exist, accessing the hash will return the default value
months = Hash.new( "month" )

puts "#{months[0]}"
puts "#{months[72]}"

H = Hash["a" => 100, "b" => 200]
puts
puts H['a']
puts H['b']

# You can use any Ruby object as a key or value, even an array
Q = Hash[[1,"jan"] => "January"]
puts Q[[1,"jan"]]

# Hash Built-in Methods---------------------------------------------------------
# We need to have an instance of Hash object to call a Hash method.
# As we have seen, following is the way to create an instance of Hash object
# Hash[[key =>|, value]* ] or
# Hash.new [or] Hash.new(obj) [or]
# Hash.new { |hash, key| block }
# This will return a new hash populated with the given objects.
# Now using the created object, we can call any available instance methods.
puts
months = Hash.new( "month" ) #"month" is default value, aslo can be:
#months.default = "month"

months = {"1" => "January", "2" => "February", "3" => "March"}
#or
#months = Hash["1" => "January", "2" => "February", "3" => "March"]

keys = months.keys
puts "#{keys}"

# Reassiging value
months["1"] = "Jan"
p months["1"] #"Jan"

# Hashes allow an alternate syntax for keys that are symbols. Instead of:
puts "
Syntax--------------------------------"
options = { :font_size => 10, :font_family => "Arial" }
# You could write it as:
options = { font_size: 10, font_family: "Arial" }
p options #{:font_size=>10, :font_family=>"Arial"}
p options[:font_size]  # => 10
# Can use same symbol :font_size as key in another map and it won't affect the previous map
# Ruby has methods to convert object from symbol to string and vice versa.
"apple".to_sym #:apple
:apple.to_s #"apple"

# Delete key-value pair
puts
months.delete("1") #"Jan" removed
p months

# Delete IF...
puts
months.delete_if{|key,value|value=="February"} #Delete key where value is "February"
p months

# Iterate thru the Hash
puts
hs = Hash.new("numbers")
hs = {1 => "one", 2 => "two", 3 => "three"}
hs.each{|key, value| puts "#{key} = #{value}"}

# Iterate thru the hash and push it into the new hash
puts
hsNew = {}
hs.each{|key, value| hsNew[key] = "NEW_#{value}"}
p hsNew #{1=>"NEW_one", 2=>"NEW_two", 3=>"NEW_three"}

# Iterate thru the Hash and make changes to value
puts
hs = Hash.new("numbers")
hs = {1 => "one", 2 => "two", 3 => "three"}
hs.each_key{|value| hs[value] = hs[value].upcase}
p hs

# Merge two hashes into one
puts
merged = Hash.new('mergedHash')
merged = hs.merge(months) #hs.update(months) will do the same
p merged #{1=>"ONE", 2=>"TWO", 3=>"THREE", "3"=>"March"}

# Return a new hash for every pair the block evaluates to true
puts
newHs = merged.select{|key,value| key.class == Integer} #{1=>"ONE", 2=>"TWO", 3=>"THREE"},
p newHs #"3"=>"March" removed

# Shift method: Remove a key-value pair from hash and return it as a two-element array
puts
arr = []
hs.each_key{|value| arr.push(hs.shift)}
p arr #[[1, "ONE"], [2, "TWO"], [3, "THREE"]]
#note that now hs Hash is empty

# Or just use .to_a instead of above
puts
hs = Hash.new("numbers")
hs = {1 => "one", 2 => "two", 3 => "three"}
p hs.to_a #[[1, "one"], [2, "two"], [3, "three"]]

# Store method: Store key-value value in Hash. Can be used to conver arr to Hash
puts
converted = Hash.new()
arr.each do |item|
  converted.store(item[0], item[1])
end
p converted

# Or just use .to_h instead of above
p arr.to_h
p arr.to_h{|item| [item[1], item[0]]} #to specify key-value pairs
p arr.to_h{|item| [Integer===item[1] ? item[1] : item[1].downcase, Integer===item[0] ? item[0] : item[0].downcase]}
#above is using ternary operator to midify items before putting into the hash

# Same as above but using function to keep code DRY
def modify(arr)
  Integer===arr ? arr : arr.downcase
end
p arr.to_h{|item| [modify(item[1]),modify(item[0])]}


# Following are the public hash methods (assuming hash is an array object)------
=begin
1 hash == other_hash
Tests whether two hashes are equal, based on whether they have the same number
of key-value pairs, and whether the key-value pairs match the corresponding pair
in each hash.

2	hash.[key]
Using a key, references a value from hash. If the key is not found, returns
a default value.

3	hash.[key] = value
Associates the value given by value with the key given by key.

4	hash.clear
Removes all key-value pairs from hash.

5	hash.default(key = nil)
Returns the default value for hash, nil if not set by default=. ([] returns
a default value if the key does not exist in hash.)

6	hash.default = obj
Sets a default value for hash.

7	hash.default_proc
Returns a block if hash was created by a block.

8	hash.delete(key) [or]
array.delete(key) { |key| block }
Deletes a key-value pair from hash by key. If block is used, returns the result
of a block if pair is not found. Compare delete_if.

9	hash.delete_if { |key,value| block }
Deletes a key-value pair from hash for every pair the block evaluates to true.

10	hash.each { |key,value| block }
Iterates over hash, calling the block once for each key, passing the key-value
as a two-element array.

11	hash.each_key { |key| block }
Iterates over hash, calling the block once for each key, passing key as a parameter.

12	hash.each_key { |key_value_array| block }
Iterates over hash, calling the block once for each key, passing the key and
value as parameters.

13	hash.each_key { |value| block }
Iterates over hash, calling the block once for each key, passing value as a parameter.

14	hash.empty?
Tests whether hash is empty (contains no key-value pairs), returning true or false.

15	hash.fetch(key [, default] ) [or]
hash.fetch(key) { | key | block }
Returns a value from hash for the given key. If the key can't be found, and
there are no other arguments, it raises an IndexError exception; if default is
given, it is returned; if the optional block is specified, its result is returned.

16	hash.has_key?(key) [or] hash.include?(key) [or]
hash.key?(key) [or] hash.member?(key)
Tests whether a given key is present in hash, returning true or false.

17	hash.has_value?(value)
Tests whether hash contains the given value.

18	hash.index(value)
Returns the key for the given value in hash, nil if no matching value is found.

19	hash.indexes(keys)
Returns a new array consisting of values for the given key(s). Will insert the
default value for keys that are not found. This method is deprecated. Use select.

20	hash.indices(keys)
Returns a new array consisting of values for the given key(s). Will insert the
default value for keys that are not found. This method is deprecated. Use select.

21	hash.inspect
Returns a pretty print string version of hash.

22	hash.invert
Creates a new hash, inverting keys and values from hash; that is, in the new
hash, the keys from hash become values and values become keys.

23	hash.keys
Creates a new array with keys from hash.

24	hash.length
Returns the size or length of hash as an integer.

25	hash.merge(other_hash) [or]
hash.merge(other_hash) { |key, oldval, newval| block }
Returns a new hash containing the contents of hash and other_hash, overwriting
pairs in hash with duplicate keys with those from other_hash.

26	hash.merge!(other_hash) [or]
hash.merge!(other_hash) { |key, oldval, newval| block }
Same as merge, but changes are done in place.

27	hash.rehash
Rebuilds hash based on the current values for each key. If values have changed
since they were inserted, this method reindexes hash.

28	hash.reject { |key, value| block }
Creates a new hash for every pair the block evaluates to true

29	hash.reject! { |key, value| block }
Same as reject, but changes are made in place.

30	hash.replace(other_hash)
Replaces the contents of hash with the contents of other_hash.

31	hash.select { |key, value| block }
Returns a new array consisting of key-value pairs from hash for which the
block returns true.

32	hash.shift
Removes a key-value pair from hash, returning it as a two-element array.

33	hash.size
Returns the size or length of hash as an integer.

34	hash.sort
Converts hash to a two-dimensional array containing arrays of key-value pairs,
then sorts it as an array.

35	hash.store(key, value)
Stores a key-value pair in hash.

36	hash.to_a
Creates a two-dimensional array from hash. Each key/value pair is converted to
an array, and all these arrays are stored in a containing array.

37	hash.to_hash
Returns hash (self).

38	hash.to_s
Converts hash to an array, then converts that array to a string.

39	hash.update(other_hash) [or]
hash.update(other_hash) {|key, oldval, newval| block}
Returns a new hash containing the contents of hash and other_hash, overwriting pairs in hash with duplicate keys with those from other_hash.

40	hash.value?(value)
Tests whether hash contains the given value.

41	hash.values
Returns a new array containing all the values of hash.

42	hash.values_at(obj, ...)
Returns a new array containing the values from hash that are associated with the given key or keys.
=end

# Hashes can be used to pass args into a function
@varA = 1
@varB = 2

def ch(args)
  @varA = args[:one]
  @varB = args[:two]
end

ch(:one => 11, :two => 22) #or ch(one: 11, two: 22)
p @varA, @varB

# Dig - Extracts the nested value specified by the sequence of key objects by
# calling dig at each step, returning nil if any intermediate step is nil.
h = { foo: {bar: {baz: 1}}}

h.dig(:foo, :bar, :baz)     #=> 1
h.dig(:foo, :zot, :xyz)     #=> nil

g = { foo: [10, 11, 12] }
g.dig(:foo, 1)              #=> 11

# Fetch - Returns a value from the hash for the given key. If the key can't be
# found, there are several options: With no other arguments, it will raise a
# KeyError exception; if default is given, then that will be returned; if the
# optional code block is specified, then that will be run and its result returned.
h = { "a" => 100, "b" => 200 }
h.fetch("a")                            #=> 100
h.fetch("z", "go fish")                 #=> "go fish"
h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"

# fetch_values - Returns an array containing the values associated with the given
# keys but also raises KeyError when one of keys can't be found. Also see
# Hash#values_at and Hash#fetch.
h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }

h.fetch_values("cow", "cat")                   #=> ["bovine", "feline"]
#h.fetch_values("cow", "bird")                  # raises KeyError
h.fetch_values("cow", "bird") { |k| k.upcase } #=> ["bovine", "BIRD"]

# flatten, flatten(level) - returns a new array that is a one-dimensional
# lattening of this hash. The optional level argument determines the level of
# recursion to flatten.
a =  {1=> "one", 2 => [2,"two"], 3 => "three"}
a.flatten    # => [1, "one", 2, [2, "two"], 3, "three"]
a.flatten(2) # => [1, "one", 2, 2, "two", 3, "three"]

# invert - Returns a new hash created by using hsh's values as keys, and the
# keys as values. If a key with the same value already exists in the hsh, then
# the last one defined will be used, the earlier value(s) will be discarded.
h = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
h.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}

# rehash - Rebuilds the hash based on the current hash values for each key.
# If values of key objects have changed since they were inserted, this method
# will reindex hsh. If Hash#rehash is called while an iterator is traversing the
# hash, a RuntimeError will be raised in the iterator.
a = [ "a", "b" ]
c = [ "c", "d" ]
h = { a => 100, c => 300 }
puts
h[a]       #=> 100
a[0] = "z"
p h[a]       #=> nil
h.rehash   #=> {["z", "b"]=>100, ["c", "d"]=>300}
p h[a]       #=> 100

puts
params = { user: { address: { street: '123 Fake Street', town: 'Faketon', postcode: '12345' } } }
# or
params2 = { user: { address: { :street => '123 Fake Street', :town => 'Faketon', :postcode => '12345' } } }
p params[:user][:address][:street]
p params.dig(:user, :address, :street)
