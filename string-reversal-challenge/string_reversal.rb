# Reversing strings without using built-in '.reverse' method

def iterative_reverse_string(string)
  reverse_string = ""

  i = string.length - 1

  until i < 0
    reverse_string += string[i]
    i -= 1
  end

  reverse_string
end

def recursive_reverse_string(string)
  return string if string.length == 1

  string[-1] + recursive_reverse_string(string[0...-1])
end


# BREAKDOWN:

# given recursive_reverse_string("hello")
  # => "o" + recursive_reverse_string("hell")
    # => "l" + recursive_reverse_string("hel")
      # => "l" + recursive_reverse_string("he")
        # =>  "e" + recursive_reverse_string("h")
          # =>  "h" (the base case)

# "o" + "l" + "l" + "e" + "h" => "olleh"


require 'benchmark'

test_string = "qwertyuiop" * 1000

Benchmark.bm do |x|

  start_time = Time.now

  x.report("iterative:") { iterative_reverse_string(test_string) }

  end_time = Time.now

  puts "It took #{end_time - start_time} seconds to iteratively reverse the test_string of length #{test_string.length}."

  puts "-" * 70


  start_time = Time.now

  x.report("recursive:") { recursive_reverse_string(test_string) }

  end_time = Time.now

  puts "It took #{end_time - start_time} seconds to recursively reverse the test_string of length #{test_string.length}."

end