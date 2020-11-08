# Echo hello/bye
def echo (greet)
    greet
end


#Shout function
def shout(greet)
    greet.upcase
end  


# Repeat function
def repeat(greet, times = 2)
    result = greet
    for _ in 0...times-1
        result += " " + greet
    end
    result
end


# Start of word function
def start_of_word(greet, num)
    greet[0..(num-1)]
end   


#First word function
def first_word(greet)
    greet.split.first
end    


#Titleize function
def titleize(titles) 
    little_words = %w(and or the of in a an over)
     titles = titles.split()
    output = [];
    titles.each_with_index  do |title, index|
     
     if ( index == 0 && little_words.include?(title))
       
       output.push(title.capitalize)
     else 
       if (little_words.include?(title))
         output.push(title)
       else
         output.push(title.capitalize)
       end
     end
    end
    output.join(" ")
 end  