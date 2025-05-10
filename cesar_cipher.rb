def encode_character(character)
  character.downcase.ord - 'a'.ord
end

def decode_character(number)
  chars = 'abcdefghijklmnopqrstuvwxyz'.split('')
  chars[number]
end

def shift_character(character, shift, num_chars = 26)
  encoded_char = (encode_character(character) + shift)%num_chars

  unless character.upcase == character
    return decode_character(encoded_char)
  else
    return decode_character(encoded_char).upcase
  end
end

def caesar_cipher(string, shift)
  string.split('').map {|char| shift_character(char, shift)}.join() 
end
