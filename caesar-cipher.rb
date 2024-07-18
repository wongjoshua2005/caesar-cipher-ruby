# Shifts the text to create an encryption using caesar cipher
def caesar_cipher(text, key)
  # Print our result and ignores all punctuations or special characters
  result = ""
  punctuation = [" ", "!", "?", "."]

  # Goes through each character in the string
  text.each_char do |char|
    # Ignores punctuation or spaces
    if punctuation.include?(char)
      result += char
    else
      # Converts to the new character based on key steps
      newChar = char.ord + key

      fixChar = 0

      # Loops back to the beginning if goes beyond ASCII scope
      if (char == char.upcase && newChar.ord >= 91)
        fixChar += newChar.ord - 91
        newChar = fixChar + 65
      elsif (char == char.downcase && newChar.ord >= 123)
        fixChar += newChar.ord - 123
        newChar = fixChar + 97
      end

      # Adds the new character into the result
      result += newChar.chr
    end
  end

  return result
end