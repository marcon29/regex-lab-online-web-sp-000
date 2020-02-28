def starts_with_a_vowel?(word)
  array = word.scan(/\b\w+/)
  array.all?{|each_word| each_word.match(/\b[aeiou]\w+/i)}
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.scan(/\A.+/) == text.scan(/\b[A-Z].+[.?!]/)
end

def valid_phone_number?(phone)
  numbers = phone.scan(/\A.+/)
  numbers.all?{|each_num| each_num.match(/(\d{3}\d{3}\d{4}\b|\d{3}\D\d{3}\d{4}\b|\d{3}\d{3}\D\d{4}\b|\d{3}\D\d{3}\D\d{4}\b)/)}
end
