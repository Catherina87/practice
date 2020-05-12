# Given an array of integers write a program that will determine if 
# any two numbers add up to a specified number N

# is array sorted?
# what should be returned? true/false? or numbers? or indices of those numbers?

# nums = [2, 11, 7, 15]
# target = 9

# time: O(n)
# space: O(n)
require 'set'

def add_up?(nums, target)
  # create empty hash (or set if need to return true false)
  # loop thru an array
  # for the current number, check if there is a complement in hash/set
  # if yes, return true or indices (depending on the task)
  # else - if hash/set doesn't contain the complement, add NUMBER to hash/set
  # after the loop return false or [] depending on the task

  complements = Set.new
  nums.each do |num|
    if complements.include?(target - num)
      return true
    else
      complements << num
    end
  end
  p complements
  return false
end

nums = [2, 11, 7, 15]
target = 9
p add_up?(nums, target)


# brute-force solution:
# time: O(n^2)
# space: O(1)
def adds_up(nums, target)

  i = 0
  while i < nums.length
    j = i + 1
    while j < nums.length
      if nums[i] == target - nums[j]
        return [i, j]
      end

      j += 1
    end

    i += 1
  end

  return []
end

nums = [2, 11, 7, 15]
target = 9
p adds_up(nums, target)  # [0,2]
