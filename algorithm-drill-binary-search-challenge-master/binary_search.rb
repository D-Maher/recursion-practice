# Assumptions:
  # This method assumes the input array is comprised of elements of the same data type, which are already sorted

# Restrictions:
  # This method cannot use any fancy built-in Ruby array methods, only 'Array#[]' and 'Array#length'

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
      nil
    else
      midpoint_index + binary_search(right, target)
    end
  end

end

def linear_search(array, target)
  idx = 0

  while idx < array.length
    if array[idx] == target
      return idx
    else
      idx += 1
    end
  end

  nil
end


require 'benchmark'

Benchmark.bm do |x|

  test_array = ("a".."eeeee").to_a
  target = "dbc"

  x.report("binary search:") { binary_search(test_array, target) }

  puts "-" * 70

  x.report("linear search:") { linear_search(test_array, target) }

  puts "-" * 70

  x.report("Array#index:") { test_array.index(target) }

end

# Benchmark output:

#                   user     system      total        real
# binary search:  0.000000   0.000000   0.000000 (  0.007298)
# ----------------------------------------------------------------------
# linear search:  0.000000   0.000000   0.000000 (  0.000901)
# ----------------------------------------------------------------------
# Array#index:    0.000000   0.000000   0.000000 (  0.000109)
