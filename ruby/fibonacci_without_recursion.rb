# solution without recursion
def fibonacci(num)
  last = 0
  second_to_last = 1
  sum = 0
  (2..num).each do |num|
    sum = last + second_to_last
    last = second_to_last
    second_to_last = sum
  end

  return sum
end

p fibonacci(6)