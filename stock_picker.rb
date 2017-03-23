def stock_picker(stock_list)
  current_value = [0,0]
  stock_list = stock_list.split(' ')
  new_stock = []
  stock_list.each do |stock|
    new_stock.push(stock.to_i)
  end
    until new_stock.length==0
      if(new_stock.first==new_stock.max)
      	new_stock.delete(0)
      elsif(new_stock.last==new_stock.min)
        new_stock.delete(new_stock.last)
      else
        if((current_value.last-current_value.first)<current	
    end
end

puts "Enter stock List"
user_input = gets.chomp
stock_picker(user_input)