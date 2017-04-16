def factorial_iterative(n)
  factorial = 1 # aka 0!

  while n > 0
    factorial *= n

    n -= 1
  end

  factorial
end

def factorial_recursive(n)
  return 1 if n == 0 # base case

  n * factorial_recursive(n - 1)
end


# BREAKDOWN:

# given factorial_recursive(3)
  # => 3 * factorial_recursive(2)
    # => 3 * 2 * factorial_recursive(1)
      # => 3 * 2 * 1 factorial_recursive(0)
        #                  ^base case^

  # => 3 * 2 * 1 * 1 = 6