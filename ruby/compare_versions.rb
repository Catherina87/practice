# s1 = 10.1.24 and s2 = 10.2.13
# compare software versions and return one of the following:

# if s1 > s2 => 1
# if s1 = s2 => 0
# if s1 < s2 => -1


def compare(num1, num2)
  return 0 if num1.to_i == num2.to_i
  return 1 if num1.to_i > num2.to_i
  return -1
end


def versions(s1, s2)
  a1 = s1.split(".") # [10, 1, 24]
  a2 = s2.split(".") # [10, 2, 13]

  a1.length.times do |i|
    result = compare(a1[i], a2[i])
    return result if result != 0
  end

  return 0
end

p versions("10.1.24", "10.2.13")