def starts_with_a_vowel?(word)
  !!word.match(/\b[aeiou]\w+/i)
  #word.all? do |arg|
  #code to execute using arg>
#end
word
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)

end

def valid_phone_number?(phone)

end
