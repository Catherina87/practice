# pale, ple -> true
# pales, pale -> true
# pale, bale -> true
# pale, bae -> false

def one_edit_replace(s1, s2)
  found_difference = false 

  s1.length.times do |i|
    if s1[i] != s2[i]
      if found_difference
        return false
      end

      found_difference = true
    end
  end

  return true
end

# check if you can insert a character into s1 to make s2
def one_edit_insert(s1, s2) # s1 = pale, s2 = bae
  index1 = 0
  index2 = 0

  while index2 < s2.length && index1 < s1.length
    if s1[index1] != s2[index2]
      if index1 != index2
        return false
      end

      index2 += 1
    else
      index1 += 1
      index2 += 1
    end
  end

  return true
end

def one_edit_away(string1, string2)
  if string1.length == string2.length
    return one_edit_replace(string1, string2)
  elsif string1.length + 1 == string2.length
    return one_edit_insert(string1, string2)
  elsif string1.length - 1 == string2.length
    return one_edit_insert(string2, string1)
  end

  return false
end