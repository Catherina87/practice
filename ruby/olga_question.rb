# Given an array of numbers, return a similar array whose values are the product of every index except for the index it is in.

# input: [1,2,3]
# output: [6,3,2]


# brute-force:
# def product(nums)
#   i = 0
#   new_array = []

#   while i < nums.length
#     product = 1
#     j = 0
#     while j < nums.length
#       if i != j
#         product *= nums[j]
#       end

#       j += 1
#     end

#     new_array << product
#     i += 1
#   end

#   return new_array
# end

# p product([1,2,3])


# first multiply all numbers in the array
# then loop through the array and divide multiplication by the current number.
def find_product(nums)
  multiplication = 1

  new_array = []

  nums.each do |num|
    multiplication *= num
  end

  nums.each do |num|
    new_array << multiplication / num
  end

  return new_array
end

p find_product([1,2,3])