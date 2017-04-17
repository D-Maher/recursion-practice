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