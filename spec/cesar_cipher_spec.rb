# frozen_string_literal: true

require_relative '../lib/cesar_cipher'

# Test for cesar cipher

describe '#cesar_cipher' do
  context 'when string is one word and all lower case' do
    it 'retuns shifted letters of the same case' do
      test_str = 'aaaaa'
      result = caesar_cipher(test_str, 1)
      expect(result).to eq('bbbbb') 
    end

  context 'when string is a mixture of upper and lower case' do
    it 'shifts the letters and preserves the case' do
      test_str = 'Aaaaa'
      result = caesar_cipher(test_str, 1)
      expect(result).to eq('Bbbbb')
    end
  end

  end
end
