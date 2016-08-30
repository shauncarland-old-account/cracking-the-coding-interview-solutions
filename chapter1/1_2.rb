#note: this can be accomplished trivially w/the .reverse method

def reverse_string(s)
  s.each_char.with_index do |left_char, left_index|
    if s.nil?
      return nil
    end

    right_index = (s.length - 1) - left_index

    if left_index > right_index
      break
    end

    right_char = s[right_index]
    s[left_index] = right_char
    s[right_index] = left_char
  end
  return s
end

#test
puts reverse_string('shaun') #nuahs
