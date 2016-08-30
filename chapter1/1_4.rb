#1.4: Write a function to determine if two strings are anagrams or not

def is_anagram?(string1, string2)
  return string1.split('').sort.join == string2.split('').sort.join
end

#test

puts 'true' if is_anagram?("cinema","iceman")
puts 'false' if !is_anagram?("shaun","iceman")
