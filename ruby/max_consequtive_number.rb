# Given a binary array, find the maximum number of 
# consecutive 1s in this array.

# [1,1,0,1,1,1] => 3     length = 6
# [0,1] => 1
# [0,0] => 0

# create variable counter and set it equal to 0.
# start looping the array (if the last eleemnt is the end of the array and if it equals to 1, we would need to add that 1 to our counter)
# if current element == 1, then increment counter by 1
# and if the next element is also one, then keep the counter
# if the next element is 0, then add the counter value to the counters_array, and set the counter back to zero
# in the end, return the max of the counters_array

def max_consecutive_ones(nums)
  return 1 if nums.length == 1 && nums[0] == 1
  return 0 if nums.length == 1 && nums[0] == 0
  

  counter = 0
  counters_array = [0]

  i = 0
  while i < nums.length - 1
    if nums[i] == 1
      counter += 1

      if nums[i + 1] != 1
        counters_array << counter
        counter = 0
      end
    end

    if (i + 1) == (nums.length - 1) && nums[i + 1] == 1
      counter += 1
      counters_array << counter
    end

    i += 1
  end

  return counters_array.max
end

p max_consecutive_ones([1,1,0,1,1,1]) # 3
p max_consecutive_ones([0,1]) # 1
p max_consecutive_ones([1,1]) # 2
p max_consecutive_ones([1,0,1]) # 1
p max_consecutive_ones([1,0,1,1,0,1]) # 2
p max_consecutive_ones([1]) # 1
p max_consecutive_ones([0,0]) # 0