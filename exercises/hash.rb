letters = ['a','c','a','b','c','a']

counts = Hash.new(0)

letters.each do |letter|
    counts[letter] += 1
end

p counts

#########################################
hash = Hash.new(0)

hash['a'] += 1
hash['b'] += 2

p hash.default
p hash