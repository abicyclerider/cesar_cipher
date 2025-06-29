def encode_character(character)
  character.downcase.ord - 'a'.ord
end

def decode_character(number)
  chars = 'abcdefghijklmnopqrstuvwxyz'.split('')
  chars[number]
end

# Handles letters uppercase and lowercase
def shift_character(character, shift, num_chars = 26)
  # Check if character should be shifted
  return character unless ('a'..'z').include?(character) || ('A'..'Z').include?(character)

  encoded_char = (encode_character(character) + shift) % num_chars
  return decode_character(encoded_char) unless character.upcase == character

  decode_character(encoded_char).upcase
end

def caesar_cipher(string, shift)
  string.split('').map { |char| shift_character(char, shift) }.join
end
