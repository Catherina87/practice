# "You are given an array of integers (i.e. [1,2,3,3,4]). 
# Return the most frequent element in the array.
# It's possible 2 elements can appear the same max number of 
# times (i.e. [1,1,1,2,3,3,3,4,5]), in that case, 
# the output can be [1,3]"

def most_frequent(nums)
  hash = {}
  max_occurence = 0

  nums.each do |num|
   if !hash.has_key?(num.to_s)
    hash[num.to_s] = 1
   else
    hash[num.to_s] += 1
    if max_occurence < hash[num.to_s] 
      max_occurence = hash[num.to_s]
    end
   end
  end

  hash.select { |key, value| value == max_occurence }
  .map { |key, value| key.to_i} 
end

list = [1,2,3,3,4,4]
p most_frequent(list)