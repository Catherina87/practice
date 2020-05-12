# A prime number is an integer greater than 1, which is only divisible by 1 and itself. First few prime numbers are : 2 3 5 7 11

def is_prime?(num)
  return false if num <= 1
  
  (2...num).each do |i|
    if num % i == 0
      return false
    end
  end

  return true
end

p is_prime?(2) # true
p is_prime?(7) # true
p is_prime?(1) # false
p is_prime?(4) # false