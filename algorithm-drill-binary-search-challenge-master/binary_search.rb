def binary_search(array, target, midpoint_index = array.length / 2)
  return nil if array.length <= 1 && array[0] != target

  left = array[0...midpoint_index]
  right = array[midpoint_index..-1]

  if array[midpoint_index] == target
    midpoint_index
  elsif array[midpoint_index] > target
    binary_search(left, target)
  elsif array[midpoint_index] < target
    if binary_search(right, target) == nil
      return nil
    else
      midpoint_index + binary_search(right, target)
    end
  end

end