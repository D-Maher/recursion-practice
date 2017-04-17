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
