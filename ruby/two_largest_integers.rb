# Return the sum of the two largest integers in an array # input: [19, 4, 2, -19, 100, 9]
# output: 119 (100 + 19)


# Create largest_num variable and set it to input[0]
# Create second_to_largest and set it to input[0]
# Loop through the array
# If current number is greater than largest, then set the second_to_largetst to equal largest, and overwrite largest with the current number

def two_largest_integers_sum(input)
  largest = input[0]
  second_to_largest = input[0]

  input.each do |num|
    if largest < num
      second_to_largest = largest
      largest = num 
    end
  end

  return largest + second_to_largest
end

p two_largest_integers_sum([19, 4, 2, -19, 100, 9])