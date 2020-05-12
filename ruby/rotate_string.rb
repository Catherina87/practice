# time: O(n)
# space: O(1)
def rotate_string(a, b)
  return false if a.length != b.length
  return true if a == "" && b == ""
  
  size = a.length
  
  size.times do |i|
    first_char = a.slice!(0,1)
    a += first_char
    
    if a == b
      return true
    end
  end
  
  return false
end

s1 = "doghouse"
s2 = "usedogho"

s3 = "dog"
s4 = "dgo"

p rotate_string(s1, s2)
p rotate_string(s3, s4)


# similar solution
# time: O(n)
# space: O(n)
def rotate(s1, s2)
  return false if s1.length != s2.length

  s1.length.times do |i|
    if s1 == s2
      return true
    else
      s1 = s1[1..-1] + s1[0]
    end
  end
  
  return false
end