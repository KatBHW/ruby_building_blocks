

puts "What is the message you would like to put into code?"
input = gets.chomp
characters = input.scan(/./) #create array of characters from the sentence

puts "What is the offset you would like to use?"
input_number = gets.chomp.to_i
offset = input_number % 26 #correct offsets greater than the length of the alphabet

lower_cases = ("a".."z")
upper_cases = ("A".."Z")
coded_letters = []


characters.map do |letter|
  if lower_cases.include?(letter) 
    letter = letter.sum + offset #convert letter to ASCII value and add offset
    letter.between?(97,122)? letter = letter.chr : letter = (letter-26).chr #convert back to letter and wrap around alphabet  
  elsif upper_cases.include?(letter) 
    letter = letter.sum + offset
    letter.between?(65,90)? letter = letter.chr : letter = (letter-26).chr   
  else
    letter = letter #retain punctuation
  end
  
coded_letters << letter #push each letter into a array of coded letters
  
end

translation = coded_letters.join #join the coded letters array into a sentence

puts "Your original message was: #{input}"
puts "Your coded message is: #{translation}"
  
















