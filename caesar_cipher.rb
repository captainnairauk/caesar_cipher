def caesar_cipher(string, shift_factor)
  str = string.split('')
  str1 = str.map { |word| word.downcase.ord }
  str2 = str1.map do |word|
    if (0..47).include?(word)
      word
    else
      ((word + shift_factor - 97) % 26) + 97
    end
  end
  str3 = str2.map(&:chr)
  puts str3.join
end

caesar_cipher('Aniket Unnikrishnan Kaimal', -5)
caesar_cipher('vidfzo piidfmdncivi fvdhvg', 5)
