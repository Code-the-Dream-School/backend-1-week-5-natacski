def translate(words)
  outputWords = []
  words.split.each do |word|
    if ["a", "e", "i", "o", "u"].include?word[0]
      word << 'ay'
    else
      consonant_one = word[0]
      if ["a", "e", "i", "o", "u"].include?word[1]
        vowel = word[1]
        if consonant_one == "q" 
          word = word[2..-1] # take out first letter
          word << "#{consonant_one}#{vowel}ay"
        else  
        word = word[1..-1] # take out first letter
        word << "#{consonant_one}ay"
        end
      else
        
        consonant_two = word[1]
         if ["a", "e", "i", "o", "u"].include?word[2]
         if (word.index("squ") == 0)
          word= word[3..-1]
           word << "squay"
         else 
          word = word[2..-1] # take out first 2 letters
          word << "#{consonant_one}#{consonant_two}ay"
         end
        else
          consonant_three = word[2]
        word = word[3..-1] # take out first 3 letters
        word << "#{consonant_one}#{consonant_two}#{consonant_three}ay"
        end
      end
    end
    outputWords.push(word)
  end
  return outputWords.join(' ')
end
