# [[1,2],[4,6],[4,3]]. Numbers inside, the length and width of a rectangle.
# Return the largest area.

# what if an array is empty?
# what if one of the arrays has invalid data in it?

# time: O(n)
# space: O(1)
def largest_area(nums)
  max_area = nums[0][0] * nums[0][1]

  nums.each do |num_set|
    if max_area < (num_set[0] * num_set[1])
      max_area = num_set[0] * num_set[1]
    end
  end

  return max_area
end

nums = [[1,2],[4,6],[4,3]]
p largest_area(nums)