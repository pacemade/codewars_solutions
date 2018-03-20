https://www.codewars.com/kata/write-number-in-expanded-form/ruby

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'

def expanded_form(num)
  num = num.digits
  num = num.each_with_index.map do |digit, i|
    if digit != 0
      digit * 10**i
    else
      nil
    end
  end
  return num.compact.reverse.join(' + ')
end

DIGITS DIDNT WORK FOR SOME REASON FOR THE TESTS

def expanded_form(num)
  num = num.to_s.chars
  num = num.reverse.each_with_index.map do |digit, i|
    if digit != "0"
      digit.to_i * 10**i
    else
      nil
    end
  end
  return num.compact.reverse.join(' + ')
end

BEST ANSWER


def expanded_form(num)
  num.to_s
     .chars
     .reverse
     .map.with_index { |d, idx| d.to_i * 10**idx }
     .reject(&:zero?)
     .reverse
     .join (' + ')
end
