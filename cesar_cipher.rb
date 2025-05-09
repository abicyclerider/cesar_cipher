def encode_character(character)
  character.downcase.ord - 'a'.ord
end

def decode_character(number)
  chars = 'abcdefghijklmnopqrstuvwxyz'.split('')
  chars[number]

def shift_character(character, shift)
  (encode_character(character) + shift)%25

end

def caesar_cipher(string, shift)
end
