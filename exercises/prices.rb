def total(prices)
   amount = 0
   prices.each do |price|
      amount += price
   end
   amount
end

def refund(prices)
   amount = 0
   prices.each do |price|
      amount -= price
   end
   amount
end


def show_discount(prices)
   prices.each do |price|
      amount_off = price / 3.0
      puts format("Your discount: $%.2f", amount_off)
   end
end

range_prices = [3.99,25.00,8.99]

puts format("$%.2f",total(range_prices))

puts format("$%.2f",refund(range_prices))

show_discount(range_prices)
