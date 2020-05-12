# given a sorted array, remove the duplicates and
# return an array of unique numbers, still in order
# [1, 2, 2, 3, 3, 4, 4]

# remove in place or return a new array?

# using set:
# Time complexity: O(n + m), where n is the number of elements in array, and m - number of elements in set.
# Space complexity: O(n)
require 'set'

def remove_dupes(nums)
  return Set.new(nums).to_a # will work only for Ruby. In other languages Set is unordered collection
end

nums = [1, 2, 2, 3, 3, 4, 4]
p remove_dupes(nums)


# algorithm with new array created
# Time complexity: O(n)
# Space complexity: O(n)
def remove_duplicates(nums)
  unique = [nums[0]]

  i = 1
  while i < nums.length
    if unique.last != nums[i]
      unique << nums[i]
    end

    i += 1
  end

  return unique
end

nums = [1, 2, 2, 3, 3, 4, 4]
p remove_duplicates(nums)

# algorithm to remove dupes in place
# time: O(n)
# space: O(1)
def remove_dupl(nums)
  i = 1
  while i < nums.length
    if nums[i-1] == nums[i]
      nums.delete_at(i)
      i -= 1
    end

    i += 1
  end
  
  return nums
end

nums = [1, 2, 2, 3, 3, 4, 4]
p remove_dupl(nums)