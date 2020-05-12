# [6,4,8,2,9] => max: 9; sum = 29; average = 5; median = 6
# [6,4,8,2,9,10] => max: 10; sum = 39; average = 6; median = 7
# how all this data needs to be returned? in array? as a hash? printed on console?

# to find median data should be sorted from lowest to highest
# if number of items in data set is even, then the median is the average of the two middlemost numbers.

# time complexity: O(n + n log n)
# space complexity: O(n)
def calculation(nums) 
  sum = 0
  max = nums[0]

  nums.each do |num| # O(n)
    sum += num

    if max < num
      max = num
    end
  end

  average = sum / nums.length

  sorted_nums = nums.sort # O(n log n)
  if sorted_nums.length % 2 == 0
    index_one = (sorted_nums.length / 2) - 1
    index_two = (sorted_nums.length / 2)
    median = (sorted_nums[index_one] + sorted_nums[index_two]) / 2
  else
    index = ((sorted_nums.length / 2) + 1) - 1
    median = sorted_nums[index]
  end

  return {max: max, sum: sum, average: average, median: median}
end

nums = [6,4,8,2,9]
p calculation(nums)

