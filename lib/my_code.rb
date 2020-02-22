def map(source_array)
  array = []
  i = 0
  while i < source_array.length
    array << yield(source_array[i])
    i += 1
  end
  array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    i = 0
    num1 = starting_point
  while i < source_array.length do
    num1 += source_array[i]
    i += 1
  end
  num1
  else
  i = 0
  while i < source_array.length do
    if yield(source_array[i]) == false
      return false
    end
      i += 1
  end
  return true
end
end
# returns a running total when not given a starting point