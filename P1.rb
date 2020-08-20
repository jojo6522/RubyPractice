# Define a method that multiplies the frequencies of the periods, commas, hyphens, semicolons, question marks, 
# and exclamation points in a given string and returns the product. If any punctuation does not occur, don't include it in the product, 
# i.e., don't multiply by zero!

def punctuation(sentence)

  # Breaks the sentence into characters
  chrs = sentence.chars
  # Creates a list of the desired characters
  marks = ["?", "-", ":", ".", "!"]
  hash = Hash.new(0)

  # Compares each character in the sentence
  # to the punctuation marks array and increments the hash value by one if it contains a match

  chrs.each do |charac|

    if marks.include?(charac)
      hash[charac] += 1
    end
  end

  puts hash.values.reduce(:*)

end

