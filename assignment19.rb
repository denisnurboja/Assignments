# Assignment 19

class String
  VOWELS =  %w(a e i o u)
  # Extend Ruby's String class to have a "pigatize" method that will turn any
  #   string into pig latin.
  def pigatize
    # Declare the output string
    piglatin = ''
    # Split the input text into words and loop with .each,
    #   and 'word' as the iterator variable.
    split(' ').each do |word|
      # Check to see if the first letter is a vowel, else it's a consonant.
      if starts_with_vowel(word[0])
        # Add onto the output string with += and add an extra space.
        piglatin += word + 'way'
      else
        piglatin += word[1..-1] + word[0] + 'ay' + ' '
      end
    end
    # Added a .chomp here to get rid of any trailing space.
    piglatin.chomp
  end
  # Check to see if the first letter is a vowel.
  def starts_with_vowel(first_letter)
    # This should determine if it starts with a vowel.
    VOWELS.include?(first_letter)
  end
end
