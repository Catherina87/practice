# Given a sorted array, a value (val), and a number (k), 
# find the k number of elements closest in value to the given value (val). 
# In the case of a tie, use the one on the left. 
# Array given was [1, 3, 5, 6, 7, 8, 11, 12, 20], value was 8, and k was 3. 

# input: [1, 3, 5, 6, 7, 8, 11, 12, 20], value 8, k = 3
# output: 7, 6, 5

# what should be returned when k > array.length ?


def closest_in_value(input, val, k)

  return [] if input.length == 0

  raise ArgumentError.new("k is greater than array length") if k > input.length

  val_index = input.index(val)

  closest_values = []

  low = val_index - 1
  high = val_index + 1

  while k > 0
    if (input[low]) != nil && (input[high]) != nil 
      if (input[low] - val).abs <= (input[high] - val).abs
        closest_values << input[low]
        low -= 1
        k -= 1
      else 
        closest_values << input[high]
        high += 1
        k -= 1
      end
    elsif (input[low]) != nil && (input[high]) == nil 
      closest_values << input[low]
      low -= 1
      k -= 1
    elsif (input[low]) == nil && (input[high]) != nil 
      closest_values << input[high]
      high += 1
      k -= 1
    else 
      break;
    end
  end

  return closest_values
end

p closest_in_value([1, 3, 5, 6, 7, 8, 10, 12, 20], 8, 3) # 7,6,10
p closest_in_value([1, 3, 5, 6, 7, 8, 10, 12, 20], 20, 3) # 12,10,8
p closest_in_value([1, 3, 5, 6, 7, 8, 10, 12, 20], 1, 3) # 3,5,6
p closest_in_value([1, 3, 5, 6, 7, 8, 11, 12, 20], 8, 3) # 7,6,5
p closest_in_value([], 20, 3) # []
p closest_in_value([12, 20], 20, 3) # Argument Error





def find_elements(input, value, k)
  result = []

  value_index = input.index(value)

  low_index = value_index - 1
  high_index = value_index + 1

  i = 0
  while i < k
    if input[low_index] != nil && input[high_index] != nil 

      if (value - input[low_index]).abs <= (value - input[high_index]).abs
        result << input[low_index]
        low_index -=1
      else
        result << input[high_index]
        high_index += 1
      end

    elsif input[low_index] != nil && input[high_index] == nil 
      result << input[low_index]
      low_index -= 1
    elsif input[low_index] == nil && input[high_index] != nil 
      result << input[high_index]
      high_index += 1
    end

    i += 1
  end

  return result
end

p find_elements([1, 3, 5, 6, 7, 8, 10, 12, 20], 8, 3) # 7,6,10
p find_elements([1, 3, 5, 6, 7, 8, 10, 12, 20], 20, 3) # 12,10,8
p find_elements([1, 3, 5, 6, 7, 8, 10, 12, 20], 1, 3) # 3,5,6
p find_elements([1, 3, 5, 6, 7, 8, 11, 12, 20], 8, 3) # 7,6,5