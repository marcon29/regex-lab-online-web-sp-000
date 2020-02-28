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
  #numbers = phone.grep(/(\d{3}\d{3}\d{4}\b|\d{3}\D\d{3}\d{4}\b|\d{3}\d{3}\D\d{4}\b|\d{3}\D\d{3}\D\d{4}\b)/)
  numbers = phone.grep(/\A.+/)
  
  #array = word.scan(/\b\w+/)
  numbers.all?{|each_num| each_num.match(/(\d{3}\d{3}\d{4}\b|\d{3}\D\d{3}\d{4}\b|\d{3}\d{3}\D\d{4}\b|\d{3}\D\d{3}\D\d{4}\b)/)}
end

text = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134", "28894546", "(718)891-13135", "234 43 9978", "(800)IloveNY"]
puts valid_phone_number?(text)
