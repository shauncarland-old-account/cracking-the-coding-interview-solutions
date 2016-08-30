# Note: This was done purposefully without additional data strutures (part of the
# constraint of the problem).
def remove_dups(s)
  return_string = ""
  flag = true
  s.each_char.with_index do |char, index|
    # iterate through s upto the current char
    s.each_char.with_index do |char_2, index_2|
      if index_2 == index
        break
      end

      #this char has been seen previously before
      if char == char_2
        flag = false
        break
      end

      if flag == true
        return_string =+ char
      end
    end
  end

  return return_string
end

#test
puts remove_dups('banana')
