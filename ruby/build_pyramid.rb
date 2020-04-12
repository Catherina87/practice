def build_pyramid (height)  # height means number of rows
  pyramid = ""
  width = height * 2 

  height.times do |i|
    # add spaces for this line
    spaces = height - i - 1
    spaces.times do
      pyramid += " "
    end

    # add pyramid blocks
    (width - spaces * 2).times do
      pyramid += "#"
    end

    # finish the line
    pyramid += "\n"
  end

  return pyramid
end

puts build_pyramid(4)
