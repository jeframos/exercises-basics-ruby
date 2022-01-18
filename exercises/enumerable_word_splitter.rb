class WordSplitter
    include Enumerable

    attr_accessor :string

    def each
        string.split(" ").each do |word|
            yield word
        end
    end
end

puts "splitter = WordSplitter.new
splitter.string = salad beefcake corn beef pasta beefy"

splitter = WordSplitter.new
splitter.string = "salad beefcake corn beef pasta beefy"

#Métodos existentes do modulo "Enumerable"
#O método "find_all", lozaliza todos os itens para os quais o bloco retorna true.
puts "\nsplitter.find_all {|word| word.include?(\"b\")}"
p splitter.find_all {|word| word.include?("b") }
puts "\n"

#O método "reject", rejeita itens parar os quais o bloco retorna true.
puts "splitter.reject   {|word| word.include?(\"beef\")}"
p splitter.reject   {|word| word.include?("beef") }
puts "\n"

#O método "map", retorna um arraycom todos os valores de retorno do bloco.
puts "splitter.map      {|word| word.reverse}"
p splitter.map      {|word| word.reverse}
puts "\n"

#O método "any?", retorna true se o bloco retornar true para qualquer item.
puts "splitter.any?     {|word| word.include?(\"e\") }"
p splitter.any?     {|word| word.include?("e") }
puts "\n"

#O método "count", efetua a contagem dos itens
puts "splitter.count"
p splitter.count
puts "\n"

#O método "first", retorna o primeiro item
puts "splitter.first"
p splitter.first
puts "\n"

#O método "sort", retorna um array com todos os itens ordenados
puts "splitter.sort"
p splitter.sort
puts "\n"

#O método "find", localiza a primeira palavra que inclui beef
puts "splitter.find { |word| word.include?(\"beef\") }"
p splitter.find { |word| word.include?("beef") }
puts "\n"

#O método "group_by", divide as palavras em dois arrays:palavras que incluem "beef", e palavras que não
puts "splitter.group_by {|word| word.include?(\"beef\")}"
p splitter.group_by {|word| word.include?("beef")}
puts "\n"

#O método "to_a", obtém um array com todas as palavras
puts "splitter.to_a"
p splitter.to_a