# find greatest common divisor
# gcd of 8 and 12 is 4
# gcd of 5 and 3 is 1
# gcd of 6 and 8 is 2


# Basic Euclidean Algorithm for GCD
# If we subtract smaller number from larger (we reduce larger number), GCD doesn’t change. So if we keep subtracting repeatedly the larger of two, we end up with GCD.

# def greatest_common_divisor(num1, num2)
#   while num1 != num2
#     if num1 > num2
#       num1 -= num2
#     else
#       num2 -= num1  
#     end
#   end

#   return num1
# end

# p greatest_common_divisor(6, 8)


# solution # 2: with recursion 
def gcd(num1, num2)
  return num1 if num1 == num2

  if num1 > num2
    num1 -= num2
  else
    num2 -=num1
  end

  return gcd(num1, num2)
end

p gcd(6, 8)