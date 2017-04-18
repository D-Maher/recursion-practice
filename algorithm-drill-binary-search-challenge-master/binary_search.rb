def binary_search(array, target, midpoint_index = array.length / 2)
  return nil if array.length == 1 && array[0] != target

  left = array[0...midpoint_index]
  right = array[midpoint_index..-1]

  p "array: #{array}"
  p "midpoint_index: #{midpoint_index}"

  p "left: #{left}"
  p "right: #{right}"

  if array[midpoint_index] == target
    midpoint_index
  elsif array[midpoint_index] > target
    p "SEARCHING LEFT"
    binary_search(left, target)
  elsif array[midpoint_index] < target
    p "SEARCHING RIGHT"
    if binary_search(right, target) == nil
      return nil
    else
      midpoint_index + binary_search(right, target)
    end
  end

end