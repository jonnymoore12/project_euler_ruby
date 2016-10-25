def factorial_digit_sum(n)
  # Returns the sum of the digits in n!
  digits = []
  factorial(n).to_s.each_char { |char| digits << char.to_i }
  sum_digits(digits)
end

def sum_digits(digits)
  digits.inject(&:+)
end

def factorial(n)
  return 1 if n == 0
  return factorial(n-1) * n
end
