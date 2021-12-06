def find_adjective(string)
    words = string.split(" ")
    index = words.find_index("is")
    words[index + 1]
end

lines = []
File.open("reviews.txt") do |review_lines|
    lines = review_lines.readlines
end

relevant_lines = lines.find_all {|line| line.include?("Truncated")}
reviews        = lines.reject {|line| line.include?("--")}

adjectives = reviews.map do |review|
    adjective = find_adjective(review)
    "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives