# input = [-6, -4, 1, 2, 3, 5] => [1, 4, 9, 16, 25, 36]
# create an output array of the same size as input and set all elements to 0
# loop the output array backwards
# set pointers to the input array (to the beginning and end)
# use .abs to get an absolute value of a number and compare the elements at pointers
# add the one which is greater to the output array


# time complexity: O(n)
def squared_array(input)
  size = input.length
  output = Array.new(size, 0)

  first = 0
  last = input.length - 1

  i = size - 1
  while i >= 0
    if (input[first].abs) > input[last]
      output[i] = input[first] * input[first]
      first += 1
    else
      output[i] = input[last] * input[last]
      last -= 1
    end

    i -= 1
  end

  return output
end

input = [-6, -4, 1, 2, 3, 5]
p squared_array(input)