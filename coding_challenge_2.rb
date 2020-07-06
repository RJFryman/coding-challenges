# Write a function that returns True if two lists, when combined, form a consecutive sequence.
#
# Example (in Python):
# consecutive_combo([7, 4, 5, 1], [2, 3, 6]) ➞ True
#
# consecutive_combo([1, 4, 6, 5], [2, 7, 8, 9]) ➞ False
#
# consecutive_combo([1, 4, 5, 6], [2, 3, 7, 8, 10]) ➞ False
#
# consecutive_combo([44, 46], [45]) ➞ True

def consecutive_combo(first_array, second_array)
  full_array = first_array.concat second_array
  full_array.sort!
  return full_array == (full_array.first..full_array.last).to_a
end

# ways to test in command line run irb copy method and run tests
#
#
# irb(main):001:1* def consecutive_combo(first_array, second_array)
#   irb(main):002:1*   full_array = first_array.concat second_array
#   irb(main):003:1*   full_array.sort!
#   irb(main):004:1*   return full_array == (full_array.first..full_array.last).to_a
#
#   irb(main):005:0> end
# => :consecutive_combo
# irb(main):006:0> consecutive_combo([7, 4, 5, 1], [2, 3, 6])
# => true
# irb(main):007:0> consecutive_combo([1, 4, 6, 5], [2, 7, 8, 9])
# => false
# irb(main):008:0> consecutive_combo([1, 4, 5, 6], [2, 3, 7, 8, 10])
# => false
# irb(main):009:0> consecutive_combo([44, 46], [45])
# => true