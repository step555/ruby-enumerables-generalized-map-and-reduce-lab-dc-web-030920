def map(source_array)
  array = []
  i = 0
  while i < source_array.length
    array << yield(source_array[i])
    i += 1
  end
  array
end

def reduce(source_array, starting_value = nil) 
  if starting_value
  starting_value = 0
  else
  i = 0
  while i < source_array.length do
    if yield(source_array[i]) == false
      return false
    end
      i += 1
  end
  end
  return true
end