def substrings(input, dictionary)
 
  substrings = input.downcase.split(" ")
  output_hash = Hash.new(0)
 
  dictionary.each do |word|
    substrings.each do |string|
      if string =~ /#{word}/
        output_hash[word] +=1
      end
    end
  end    
  
puts output_hash

end  

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
    