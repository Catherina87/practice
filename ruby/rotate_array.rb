# Given an array, rotate the array to the right by k steps, where k is non-negative.

# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]

# slice: starting index and length of elements
def rotate(nums, k)
  right_part = nums.slice(nums.length - k, k)
  left_part = nums.slice(0, nums.length - k)

  return right_part + left_part

end

p rotate([1,2,3,4,5,6,7], 3)