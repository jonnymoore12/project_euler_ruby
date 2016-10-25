def multiples_of_3_and_5(upper_bound)
  # returns the sum of all natrual numbers < number which are multiples of 3 or 5
  solutions = (1..upper_bound - 1).select { |number| number % 3 == 0 || number % 5 == 0 }
  solutions.inject(:+)
end
