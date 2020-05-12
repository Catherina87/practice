# max subarray
# Return the largest sum of contiguous integers in the array.
# e.g. Given [-10, 2, 3, -2, 0, 5, -15], 
# the largest sum is 8 (2 + 3 + -2 + 0 + 5)

# what should be returned? largest subarray? or the sum of that subarray?
def max_sub_array(nums)
  max_current = nums[0]
  max_global = nums[0]

  i = 1
  while i < nums.length
    if nums[i] > (nums[i] + max_current)
      max_current = nums[i]
    else
      max_current = (nums[i] + max_current)
      
    end

    if max_current > max_global
      max_global = max_current
    end


    i += 1
  end

  return max_global
end

nums = [-10, 2, 3, -2, 0, 5, -15]
p max_sub_array(nums)