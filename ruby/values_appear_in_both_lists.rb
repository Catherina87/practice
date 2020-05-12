# Given 2 arrays, return values that appear in both lists.
# [1,1,2,3,5] and [1,8,10,5] => [1,5]
# [1,2,3] and [6] => []
# [1,2,2] and [2,2] => [2,2]

# create an empty array common_values
# loop through the first aray
# on each iteration, check if the second array has that current value
# can use method index which is similar to include? (returns the index of the element if element is present)
# add that value to the common_values array
# delete that value from that second array using slice!

# time: O(n*m) where n is number of chars in first array and m - number of chars in the second
# space: O(m)

def appear_in_both(nums1, nums2)
  common_values = []

  nums1.each do |num|
    if nums2.index(num) # check if nums2 includes num
      common_values << num
      nums2.slice!(nums2.index(num))
    end
  end

  return common_values
end

p appear_in_both([1,1,2,3,5], [1,8,10,5])
p appear_in_both([1,2,3], [6])
p appear_in_both([1,2,2], [2,2])

# create a hash out of the first array
# create a hash out of the second array
# create an empty array common_values
# loop through the first array and check if both hashes has that current element as a key and if value of that element for each hash is not equal to zero
# if condition above is met, then add that element to the common_values array and
# decrement the value of each hash by one
# in the end return the common_values array

# time: O(n) + O(n) + O(m), where n is the number of elements in first array, and m - number of elements in the second array
# space: O(n) + O(m) + O(k), where n is the length of hash_one, m - length of hash_two and k - length of common_values array
def appear_in_both(nums1, nums2)
  hash_one = {}
  nums1.each do |num|
    if hash_one[num]
      hash_one[num] += 1
    else
      hash_one[num] = 1
    end
  end

  hash_two = {}
  nums2.each do |num|
    if hash_two[num]
      hash_two[num] += 1
    else
      hash_two[num] = 1
    end
  end

  common_values = []

  nums1.each do |num|
    if hash_one.has_key?(num) && hash_two.has_key?(num) && hash_one[num] > 0 && hash_two[num] > 0
      common_values << num 
      hash_one[num] -= 1
      hash_two[num] -= 1
    end
  end

  return common_values
end

p appear_in_both([1,1,2,3,5], [1,8,10,5])
p appear_in_both([1,2,3], [6])
p appear_in_both([1,2,2], [2,2])