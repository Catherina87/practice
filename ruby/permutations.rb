def swap(string, i, j)
  temp = string[i]
  string[i] = string[j]
  string[j] = temp

  # puts "swap #{string}"
  return string
end

def permutations(string, low, high) # low = start of the string, high = end of the string
  if low == high
    puts string
  else
    i = low 
    while i < high 
      swapped = swap(string, low, i)
      permutations(swapped, low + 1, high)
      swap(string, low, i)

      i += 1
    end
  end
end

permutations("ABC", 0, "ABC".length)

# ABC => ABC