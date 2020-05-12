def intersect(nums1, nums2)
  intersection = []

  nums1.each do |num|
    if nums2.index(num) # index same as includes?, but returns index of the element
      intersection << num
      nums2.slice!(nums2.index(num))
    end
  end

  return intersection
end

num1 = [1, 2, 2]
num2 = [2]
p intersect(num1, num2)
