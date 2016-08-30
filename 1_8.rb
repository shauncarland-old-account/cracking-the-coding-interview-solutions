def increment_offset(offset, s1)
  if offset == s1.length - 1
    offset = 0
  else
    offset += 1
  end
  return offset
end


def is_rotation?(s1,s2)
  return false if s1.length != s2.length
  return true if s1.length == 0

  # iterate over the rotated string
  s2.each_char.with_index do |s2_char, s2_index|
    # if the s2_indexth character in s2 is equal to the first character in s1
    if s2_char == s1[0]
      # build an array [s2_index, s2_index + 1, ... 0, 1, ..., s2_index - 1]
      index_array = []
      s1_index = 0
      offset = s2_index
      while true do
        index_array[s1_index] = s2[offset]
        offset = increment_offset(offset, s1)
        s1_index += 1

        if s1_index == s1.length
          break
        end
      end
    end

    if !index_array.nil? && index_array.join == s1
      return true
    end
  end

  return false
end



#test
puts "#{is_rotation?('waterbottle','erbottlewat')}"
puts "#{is_rotation?('shaun','shuan')}"
