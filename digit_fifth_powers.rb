# Finds the sum of all integers that are equal to the sum of the individual digits
# each raised to the power of 5

def digit_fifth_powers
  solutions = []
  for i in 10..10_000_000 # upper bound as a guess
    solutions << i if sum_of_fifth_powers_of_digits(i) == i
  end
  sum_of_solutions(solutions)
end

def sum_of_fifth_powers_of_digits(number)
  sum_of_digits = 0
  number.to_s.each_char { |char| sum_of_digits += char.to_i ** 5 }
  sum_of_digits
end

def sum_of_solutions(solutions)
  solutions.inject(&:+)
end
