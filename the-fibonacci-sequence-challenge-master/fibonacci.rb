# Note: In this challenge the Fibonacci sequence is zero-indexed and the first term is 0

def iterative_nth_fibonacci_number(n)
  return 0 if n == 0
  return 1 if n == 1

  fibs = [0, 1]

  until fibs.length == n + 1
    fibs << fibs[-1] + fibs[-2]
  end

  fibs[n]
end

def recursive_nth_fibonacci_number(n)
  return 0 if n == 0
  return 1 if n == 1

  recursive_nth_fibonacci_number(n - 1) + recursive_nth_fibonacci_number(n - 2)
end


require 'benchmark'

n = 40

Benchmark.bm do |x|

  start_time = Time.now

  x.report("iterative:") { iterative_nth_fibonacci_number(n) }

  end_time = Time.now

  puts "It took #{end_time - start_time} seconds to iteratively calculate the #{n}th Fibonacci number."


  start_time = Time.now

  x.report("recursive:") { recursive_nth_fibonacci_number(n) }

  end_time = Time.now

  puts "It took #{end_time - start_time} seconds to recursively calculate the #{n}th Fibonacci number."

end