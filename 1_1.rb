def uniq_chars(s)
  if s.length == 1
    return true
  end

  s = s.split('').sort.join
  s.each_char.with_index do |char, index|
    if index + 1 == s.length
      break
    end

    if char == s[index + 1]
      return false
    end
  end
  return true;
end

def test(s)
  puts 'true' if uniq_chars(s) == true
  puts 'false' if uniq_chars(s) == false
end

test("banana") # = false
test("shaun") # = true
