# Write a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number's decimal digits.

def sumDigits(number)
  number.to_s.split('').map(&:to_i).sum
end

def sumDigits(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

def sumDigits(number)
  number.abs.digits.sum
end
