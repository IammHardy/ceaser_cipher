def ceaser_cipher(word, key)
  alphabet = ('a'..'z').to_a
  uppercase_alphabet = ('A'..'Z').to_a
  key = key.to_i
 
  letters = word.split("")
  new_word = []

  letters.each do |letter|
  
    if alphabet.include?(letter)
      old_position = alphabet.index(letter)
       new_position = (old_position + key) % 26
       new_letter =  alphabet[new_position]
    elsif uppercase_alphabet.include?(letter)
      old_position = uppercase_alphabet.index(letter)
       new_position = (old_position + key) % 26
       new_letter =  uppercase_alphabet[new_position]
    else
      new_letter = letter
    end
    new_word << new_letter
  end

  new_word.join
end
ceaser_cipher("I love you Mama", 5)