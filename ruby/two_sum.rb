# Below is the solution with Set 
# It works if you're required to return true/false
require 'set'

def hasPairWithSum(nums, target)
  complements = Set.new

  nums.each do |num|
    if complements.include?(target - num)
      return true
    else
      complements << num
    end
  end

  return false
end

nums = [1, 2, 4, 5]
target = 8

p hasPairWithSum(nums, target)


# Solution two uses hashMap
# It is when you're requred to return the indices of the 
# elements that add up to the given target.
def two_sum(nums, target)
  complements = Hash.new
  
  nums.each_with_index do |num, index|
      if complements.has_key? (target - num)
          return [complements[target - num], index]
      else
          complements[num] = index
      end
  end
  
  return []
end

nums = [2, 7, 11, 15]
target = 9

p two_sum(nums, target)


# If a given array is sorted, then we can use two pointers
# Solution for sorted array where you're required to return 
# indices of the elements which add up to the sum
def two_sum(nums, target)
  low = 0
  high = nums.length - 1

  while low < high
    sum = nums[low] + nums[high]

    if sum < target
      low += 1
    elsif sum > target
      high -= 1
    else
      return[low, high]
    end
  end
end