# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"

class PigLatin
  VOWELS =  %w(a e i o u)

  def self.pigatize(passed_text)
    # Declare the output string
    piglatin = ''
    # Split the input text into words and loop with .each,
    #   and 'word' as the iterator variable
    passed_text.split(' ').each do |word|
      # Check to see if the first letter is a vowel, else it's a consonant
      if PigLatin.starts_with_vowel(word[0])
        # Add onto the output string with += and add an extra space
        piglatin += word + 'way' + ' '
      else
        piglatin += word[1..-1] + word[0] + 'ay' + ' '
      end
    end
    # Added a .chomp here to get rid of any trailing space
    piglatin.chomp
  end
  # Check to see if the first letter is a vowel
  def self.starts_with_vowel(first_letter)
    # this should determine if it starts with a vowel
    first_letter
  end
end
puts 'Please enter a word and I will translate it into Pig Latin. Ippyyay!'
text = gets.chomp
puts 'Pigatized: ' + PigLatin.pigatize(text)
