# write a method that will output the first n prime numbers

# input: 5 - means method should return 5 prime nums
# outpit: [2, 3, 5, 7, 11]

# create a helper method is_prime
# in main method set the var count = n
# loop through all numbers and call the helper method on each num
# if number is prime, add it to primes array and decrement count var
# exit the loop once count = 0


def is_prime?(num)

  (2...num).each do |digit|
    if num % digit == 0
      return false
    end
  end

  return true 
end


def output_primes(n)

  primes = []
  puts "primes = #{primes}"

  count = n
  puts "count = #{count}"

  i = 2
  while count != 0
    if is_prime?(i)
      primes << i 
      count -= 1
      
      puts "count inside while loop = #{count}"
    end

    i += 1
  end

  return primes
end

p output_primes(5)