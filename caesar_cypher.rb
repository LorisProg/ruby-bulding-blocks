=begin
Caesar Cypher
for The Odin Project  
by Loris Aranda
version 1.0 written with my current knowldge of Ruby (1st August 2016)
=end

def caesar_cipher (text, key)

  alpha = ("a".."z").to_a
  text.split("").each_with_index do |letter, index|
    if /[a-zA-Z]/.match(letter)  # checks that the characher is a letter
      if /[A-Z]/.match(letter)
        upper = true
      end
        
      letter = letter.downcase

      newIndex = alpha.index(letter) + key
      
      if newIndex > 25
        newIndex -= 26
      end
              
      text[index] = alpha[newIndex]
          
      if upper
        text[index] = text[index].upcase
      end
    end
  end
  return text
end