# Leetcode 53. Maximum Subarray

# Return the largest sum of contiguous integers in the array.
# e.g. Given [-10, 2, 3, -2, 0, 5, -15], 
# the largest sum is 8 (2 + 3 + -2 + 0 + 5)

# Kadane's algorithm

def largest_sum(array)
  current_max = array[0] # max subarray that ends at current index
  global_max = array[0] # keeps track of global max sum

  i = 1
  while i < array.length
    if array[i] > (current_max + array[i]) # compare the value under current index with the sum of the 
      current_max = array[i]               # (max subarray plus value under current index).  
    else
      current_max = current_max + array[i]
    end

    if global_max < current_max
      global_max = current_max
    end

    i += 1
  end

  return global_max
end

arr = [-10, 2, 3, -2, 0, 5, -15]
p largest_sum(arr)



# index       | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
#             |   |   |   |   |   |   |   |
# current_max |-10| 2 | 5 | 3 | 3 | 8 | -7|
#             |   |   |   |   |   |   |   |
# global_max  |-10| 2 | 5 | 5 | 5 | 8 | 8 |
