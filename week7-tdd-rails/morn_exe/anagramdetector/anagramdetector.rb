require 'pry'
#{`"listen"` and `["enlists", "google", "inlets", "banana"]`}

array = %w{enlists google inlets banana}

test_word = ("listen".scan /\w/).sort

def check_anagram string1, string2
  string1.sort == string2.sort
end

array.each do |word|
  letters = word.scan /\w/
  # binding.pry
  if check_anagram letters, test_word
    puts "#{letters.join}"
  end
end




