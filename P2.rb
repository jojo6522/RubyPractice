# Write a method that, given a sentence without punctuation or capitalization, returns the word with the greatest number of repeated letters. 
# Return the first word if there's a tie. It doesn't matter how often individual letters repeat, just that they repeat.
# word_with_most_repeats("I took the road less traveled and that has made all the difference") => 
# "difference" because "difference" has two repeated letters, more than the other words.

def repeats(sentence)

  words = sentence.split
  hash = {}

  words.each do |word|
    hash[word] = count(word)
  end

  greatest_value = hash.sort_by{|k, v| v}.last.last

  hash.select{|k,v|v=greatest_value}.first.first

end

def count(word)

  characs = word.chars.uniq
  characs.count{|chr| word.count(chr)>1}

end

puts repeats("the difference is obvious")

