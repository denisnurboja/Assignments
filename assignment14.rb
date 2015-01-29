# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"

class PigLatin
  VOWELS =  %w(a e i o u)

  def self.pigatize(passed_text)

    # Check to see if the first letter is a vowel, if not it's a consonant
    if PigLatin.starts_with_vowel(passed_text[0])
      puts "#{passed_text}" + "way"
      pigatized_text = passed_text
    else
      puts "#{passed_text}"[1..-1] + "#{passed_text}"[0] + "ay"
      pigatized_text = passed_text
    end
    return pigatized_text
  end

  def self.pigatize_phrase(passed_text)
    "#{passed_text}".split.each do |n|
      "#{PigLatin.pigatize(n)}" + "way"
    end
  end

  # Check to see if the first letter is a vowel
  def self.starts_with_vowel(first_letter)
    VOWELS.include?(first_letter)
  end
end

puts "Please enter a word or a phrase and I will translate to pig latin"
text = gets.chomp.to_s
puts "Pigatized: #{PigLatin.pigatize_phrase(text).join(" ")}"
