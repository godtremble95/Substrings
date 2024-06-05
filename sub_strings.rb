dictionary = ["below","down","go","going","horn","how","howdy",
              "it","i","low","own","part","partner","sit"]

def substrings(phrase, dic)
  phrase_arr = phrase.downcase.gsub(/[^a-z\s]/, '').split(' ')

  totalled_arr = dic.map do |key_word|
    reg = %r/#{key_word}/
    num_occurred = phrase_arr.reduce(0) do |count, string|
      if string.match?(reg) then count + 1
      else count end
    end
    [key_word, num_occurred] if num_occurred > 0
  end
  return totalled_arr.compact.to_h
end

puts "Enter your phase:"
phrase = gets.chomp

puts substrings(phrase, dictionary)