 # Find the difference between the sum of the squares of the first n natural numbers (1 <= n <= 100) and the square of their sum.
#
# Example
# For example, when n = 10:
#
# The square of the sum of the numbers is:
#
# (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10)2 = 552 = 3025
#
# The sum of the squares of the numbers is:
#
# 12 + 22 + 32 + 42 + 52 + 62 + 72 + 82 + 92 + 102 = 385
#
# Hence the difference between square of the sum of the first ten natural numbers and the sum of the squares of those numbes is: 3025 - 385 = 2640

def difference_of_squares(n)

#   square of the sum of numbers
  sum1 = 0
  (1..n).to_a.each do |num|
    sum1 += num
  end
  sum1 = sum1**2

#   the sum of the squares of numbers

  sum2 = 0
  (1..n).to_a.each do |num|
    sum2 += (num**2)
  end

  return sum1-sum2
end

def difference_of_squares(n)
  # Your solution
#   square of the sum of numbers
  sum1 = (1..n).to_a.reduce(0) { |sum, num| sum + num }
  sum1 = sum1**2
#   sum of the square of numbers
  sum2 = (1..n).to_a.reduce(0) { |sum, num| sum + num**2 }

  return sum1-sum2
end

def difference_of_squares(x)
  r = 1..x
  r.inject(:+) ** 2 - r.map{|x| x ** 2 }.inject(:+)
end
