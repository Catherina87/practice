def is_subset?(nums1, nums2) 
  length = nums2.length

  subsets = []

  nums1.length.times do |i|
    if nums1[i, length] != nil
      subsets << nums1[i, length]
    end
  end

  subsets.each do |subset|
    if subset == nums2
      return true
    end
  end

  return false
end

p is_subset?([6,2,5,9], [2,5,9]) # true
p is_subset?([6,2,5,9], [1,3]) # false
p is_subset?([2,2], [2]) # true