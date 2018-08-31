# Complete the method which accepts an array of integers, and returns one of the following:
#
# "yes, ascending" - if the numbers in the array are sorted in an ascending order
# "yes, descending" - if the numbers in the array are sorted in a descending order
# "no" - otherwise
# You can assume the array will always be valid, and there will always be one correct answer.
#

def is_sorted_and_how(arr)
    # your code here
    if arr == arr.sort
      return 'yes, ascending'
    elsif arr == arr.sort.reverse
      return 'yes, descending'
    else
      return 'no'
    end
end


def is_sorted_and_how(arr)
    # your code here
    arr == arr.sort ? 'yes, ascending' : arr == arr.sort.reverse ? 'yes, descending' : 'no'      
end
