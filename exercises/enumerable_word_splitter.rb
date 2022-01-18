class WordSplitter
    include Enumerable

    attr_accessor :string

    def each
        string.split(" ").each do |word|
            yield word
        end
    end
end


splitter = WordSplitter.new
splitter.string = "how do you do"

#Métodos existentes do modulo "Enumerable"
#O método "find_all", lozaliza todos os itens para os quais o bloco retorna true.
p splitter.find_all {|word| word.include?("d") }

#O método "reject", rejeita itens parar os quais o bloco retorna true.
p splitter.reject   {|word| word.include?("d") }

#O método "map", retorna um arraycom todos os valores de retorno do bloco.
p splitter.map      {|word| word.reverse}

#O método "any?", retorna true se o bloco retornar true para qualquer item.
p splitter.any?     {|word| word.include?("e") }

#O método "count", efetua a contagem dos itens
p splitter.count

#O método "first", retorna o primeiro item
p splitter.first

#O método "sort", retorna um array com todos os itens ordenados
p splitter.sort

#O método "find", localiza a primeira palavra que inclui beef
p splitter.find { |word| word.include?("beef") }