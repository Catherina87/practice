# given non-nil string of alphabets/numbers/punctuation,
# reverse only the alphabet parts
# "ABC" => "CBA"
# "!ab!" => "!ba!"
# "!ab" => "!ba"
# "a!!" => "!!a"
# what's Big O?


def reverse_letters(input)
  size = input.length
  first = 0
  last = input.length - 1

  while first <= last
    while (input[first] !~ /[A-Za-z]/) && (first < size - 1)
      first += 1
    end

    while input[last] !~ /[A-Za-z]/
      last -=1 
    end

    temp = input[first]
    input[first] = input[last]
    input[last] = temp

    first += 1
    last -= 1
  end

  return input
end

p reverse_letters("!ab!")
p reverse_letters("!ab")
p reverse_letters("a!!")

