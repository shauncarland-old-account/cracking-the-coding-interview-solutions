def print_array(array)
  array.each_index do |row|
    puts "#{array[row]}"
  end
end


def set_rows_and_columns(array, xi, yi)
  # set items above zero_locations[xi][yi] to zero
  (0..xi).each do |x|
    array[x][yi] = 0
  end

  # set items right of zero_locations[xi][yi] to zero
  (xi..array[0].length - 1).each do |x|
    array[x][yi] = 0
  end

  # set items left of zero_locations[xi][yi] to zero
  (0..yi).each do |y|
    array[xi][y] = 0
  end

  # set items right of zero_locations[xi][yi] to zero
  (yi..array.length - 1).each do |y|
    array[xi][y] = 0
  end

  return array
end

def zero_cols_and_rows(array)
  #Create a MxN array B to store location of the zeros
  zero_locations = Array.new(array.length) { Array.new(array[0].length) }

  # iterate through A
  array.each_with_index do |x, xi|
    x.each_with_index do |y, yi|
      if array[xi][yi] == 0
        zero_locations[xi][yi] = true
      end
    end
  end

  # iterate through zero_locations
  zero_locations.each_with_index do |x,xi|
    x.each_with_index do |y, yi|
      if zero_locations[xi][yi]
        set_rows_and_columns(array,xi,yi)
      end
    end
  end

  print_array(array)
  return array
end

test1 = [[1,2,3],[4,0,6],[7,8,9]]
zero_cols_and_rows(test1)
# [1, 0, 3]
# [0, 0, 0]
# [7, 0, 9]

test2 = [[3,2,5,4],[4,1,5,0],[0,3,3,5],[1,4,3,3]]
zero_cols_and_rows(test2)
# [0, 2, 5, 0]
# [0, 0, 0, 0]
# [0, 0, 0, 0]
# [0, 4, 3, 0]
