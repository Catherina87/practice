def reverse_phrase(phrase)
  return phrase if phrase.nil? || phrase.length == 0 || phrase == ""

  # reverse all chars in phrase
  reversed_chars = reverse_characters(phrase, 0, phrase.length - 1)

  current_word_start_index = 0

  (0..phrase.length).each do |i|
    p phrase
    if phrase[i] == " " || i == phrase.length
      reverse_characters(phrase, current_word_start_index, i - 1)
      current_word_start_index = i + 1
    end
  end

  return phrase
end

def reverse_characters(phrase, first_index, last_index)
  while first_index < last_index
    temp = phrase[first_index]
    phrase[first_index] = phrase[last_index]
    phrase[last_index] = temp

    first_index += 1
    last_index -= 1
  end

  return phrase
end

p reverse_phrase("  I can do this!     ")
p reverse_phrase("apple cake")