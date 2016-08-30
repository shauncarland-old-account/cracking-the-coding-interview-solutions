# 1.5 write a method to replace all spaces in a string w/ '%20'

def replace_spaces(s)
  # count number of spaces
  space_count = 0
  return_string = ""
  return_string_counter = 0

  s.each_char do |char|
    if char == ' '
      space_count += 1
    end
  end

  #now insert %20 where the spaces would
  s.each_char do |char|
    if char == ' '
      return_string[return_string_counter] = '%'
      return_string[return_string_counter + 1] = '2'
      return_string[return_string_counter + 2] = '0'
      return_string_counter += 3
    else
      return_string[return_string_counter] = char
      return_string_counter += 1
    end
  end

  return return_string
end


# test

puts replace_spaces("shaun carland") #shaun%20carland
puts replace_spaces('shaun lawerence carland  ') #shaun%20lawerence%20carland%20%20
