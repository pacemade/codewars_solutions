# https://www.codewars.com/kata/duplicate-encoder


# The goal of this exercise is to convert a string to a new string where each character
# in the new string is '(' if that character appears only once in the original string, or ')'
# if that character appears more than once in the original string. Ignore capitalization when
# determining if a character is a duplicate.
#
# Examples:
#
# "din" => "((("
#
# "recede" => "()()()"
# 
# "Success" => ")())())"
#
# "(( @" => "))(("


def duplicate_encode(word)
  word = word.upcase.chars
  word = word.map do |letter|
    if word.count(letter) > 1
      letter = ")"
    else
      letter = "("
    end
  end
  return word.join
end

# OR

def duplicate_encode(word)
  word
      .downcase
      .chars
      .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
      .join
end
