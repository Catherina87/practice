# Find fibonacci number for a given number 

# create a helper method that will take last, second_to_last numbers (0 and 1), current (2) and n which is given.

# if n is 0 or 1 then return n 

# if current number equls n then return last + second_to_last

# if not:
# sum = last + second_to_last
# second_to_last = last
# last = sum 

# then return a recursive call to helper method, and increase current in it by 1

def helper(last, second_to_last, current, n)
  return n if n == 0 || n == 1 

  if current == n
    return last + second_to_last
  end

  sum = last + second_to_last
  last = second_to_last
  second_to_last = sum

  return helper(last, second_to_last, current + 1, n)
end

def fibonacci(n)
  return helper(0, 1, 2, n)
end

p fibonacci(6)