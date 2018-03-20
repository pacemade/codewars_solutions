

# def longest(a1, a2)
#   # your code
#   a = a1 + a2
#   a.chars.uniq.sort.join
# end

#your code here
#   iterable = iterable.class == String ? iterable.chars : iterable
  iterable = iterable.chars if iterable.class == String
  next_index = 0
  iterable.reduce([]) do |final, element|
    next_index += 1
    if element == iterable[next_index]
      final
    else
      final << element
    end
  end
end
