# When given a string of space separated words, return the word with the longest length. If there are multiple words with the longest length, return the last instance of the word with the longest length.
#
# Example:
#
# 'red white blue' //returns string value of white
#
# 'red blue gold' //returns gold

def longest_word(string_of_words)
  # Give me back the longest word!
  longest = ""
  string_of_words.split(" ").each do | word |
      if longest.length <= word.length
        longest = word
      end
  end
  return longest
end

def longest_word(string_of_words)
  string_of_words.split.sort_by(&:size).last
end
