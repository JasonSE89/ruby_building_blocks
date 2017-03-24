def stock_picker(stock_list)
 current_value = [0,0]
 i = 0
 stock_list = stock_list.split(',')
 new_stock = []
 stock_list.each do |stock|
  new_stock.push(stock.to_i)
 end
 if(new_stock[0]==new_stock.max)
   new_stock.delete_at(0)
 end
 if(new_stock[new_stock.length-1]==new_stock.min)
   new_stock.delete_at(new_stock.length-1)
 end
 until i == new_stock.length - 1
   temp = new_stock.slice(i+1, new_stock.length-1)
     if(temp.max-new_stock[i]>current_value[1]-current_value[0])
        current_value[0]=new_stock[i]
        current_value[1]=temp.max
       end
       i+=1
  end
  puts current_value
 end
puts "Enter stock List"
user_input = gets.chomp
stock_picker(user_input)