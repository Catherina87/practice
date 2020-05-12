# You are given an unsorted array containing all integers between 1 and 1,000,000. 
# One integer is missing. Determine which one?

# create a hash of the same length and set values to false
# loop through the array, setting the value for each current element to true
# filter hash by value == false

# def missing_num(nums)
#   nums_hash = {}
#   (1..10).each do |i|
#     nums_hash[i] = false
#   end
  
#   nums.each do |num|
#     nums_hash[num] = true
#   end

#   missing = nums_hash.filter { |key, value| value == false}.keys.first
# end

# p missing_num([1, 2, 3, 4, 5, 7, 8, 9, 10])



# You are given an unsorted array containing all integers between 1 and 1,000,000. 
# One integer is missing. Determine which one?

# [1,3,2,1,1000,45] => 1
# [235, 12, 35,9,9] => 9
# [500, 45, 1, 45, 300] => 45

def duplicate(nums)
  hash_nums = {}

  nums.each do |num|
    if hash_nums[num]
      hash_nums[num] += 1
    else
      hash_nums[num] = 1
    end
  end

  # hash_nums.key(2)
  return hash_nums.select { |key, value| value > 1 }.keys[0]
end


p duplicate([1,3,2,1,1000,45]) 
p duplicate([235, 12, 35,9,9]) 
p duplicate([500, 45, 1, 45, 300])
