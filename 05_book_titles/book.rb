class Book
    attr_accessor :title

    def title=(book)
      short_words = %w(and or the of in a an)
       @title = book.capitalize.split(" ").map do |letter|
       if short_words.include? letter
           letter
         else
           letter.capitalize
         end
       end.join(" ")
   end
end
