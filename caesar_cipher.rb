def caesar_cipher(string, shift)
  alphabet = ("a".."z").to_a
  shifted_alphabet = alphabet.rotate(shift)
  result = ""

  string.each_char do |char|
    index = alphabet.index(char.downcase)

    if index.nil?
      result << char
    elsif char == char.upcase
        result << shifted_alphabet[index].upcase
    else
        result << shifted_alphabet[index]
    end
  end

  result
end


puts caesar_cipher("Oh NO! You can't be serious! That's OUTRAGEOUS!", 9)