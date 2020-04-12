# QUESTION 1:
# Strip whitespace from a string in-place e.g.
# "H e  llo W orl     d"

def strip_whitespace(input)
  i = 0
  while i < input.length
    if input[i] == " "
      input[i] = ""
      i -= 1
    end

    i += 1
  end

  return input
end

puts strip_whitespace("H e  llo W orl     d")

# QUESTION 2:
# Remove duplicate chars from a string e.g. "AAA BBB" -> "A B"

def remove_duplicates(input)
  i = 0
  while i < input.length - 1
    p "B============"
    puts

    p i
    if (input[i] == input[i + 1])
      input[i] = ""
      i -= 1
    end

    i += 1

    puts
    p "E======"
  end

  return input
end

p remove_duplicates("AAA BBB")