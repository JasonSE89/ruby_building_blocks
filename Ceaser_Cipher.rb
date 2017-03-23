def ceaser_cipher(phrase, number)
  new_phrase = ""
  phrase.split('').each do |letter|
    if(letter == "." || letter == "?" || letter == " " || letter == "!" || letter == '"')
      new_phrase += letter
    else
      letter = letter.ord
      if(letter > 85 && letter <+ 90)
        letter = 65 + (number - (91 - letter))
      elsif(letter > 118)
        letter = 97 + (number - (124 - letter))
      else
        letter += 5
      end
      new_phrase += letter.chr
    end
  end
  puts new_phrase
end

puts "Please enter a String"
phrase = gets.chomp
puts "Please put shift factor"
Shift = gets.chomp.to_i
ceaser_cipher(phrase, Shift)