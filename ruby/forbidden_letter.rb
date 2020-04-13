# "given a string and a forbidden letter, 
# remove that forbidden letter from the string IN PLACE.
#   ex: ""dog"" & ""o"" => ""dg""
#   ex: ""cat"" & ""d"" => ""cat""
#   ex: ""doggy"" & ""g"" => ""doy"""

def remove_letter(word, letter)
  i = 0
  while i < word.length 
    if word[i] == letter
      word[i] = ""
      i -= 1
    end

    i += 1
  end

  return word
end

p remove_letter("dog", "o")
p remove_letter("cat", "d")
p remove_letter("doggy", "g")