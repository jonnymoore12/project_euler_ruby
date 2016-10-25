def even_fibonacci(upper_bound)
  # Finds the sum of all even-valued fibonacci terms not greater than upper_bound
  even_fibonacci_numbers = fibonacci_numbers_not_exceeding_upper_bound(upper_bound).select { |term| term % 2 == 0 }
  even_fibonacci_numbers.inject(:+)
end

def fibonacci(n)
  # Generates terms in the fibonacci sequence
  return 1 if n == 0
  return 1 if n == 1
  fibonacci(n-1) + fibonacci(n-2)
end

def fibonacci_numbers_not_exceeding_upper_bound(upper_bound)
  fibonacci_numbers_not_exceeding_upper_bound = []
  n = 1
  while fibonacci(n) < upper_bound
    fibonacci_numbers_not_exceeding_upper_bound << fibonacci(n)
    n += 1
  end
  fibonacci_numbers_not_exceeding_upper_bound
end

puts even_fibonacci(4_000_000)
