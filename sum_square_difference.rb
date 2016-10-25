def sum_square_difference(number)
  square_of_sum(number) - sum_of_squares(number)
end

def sum_of_squares(number)
  (1..number).inject(0) {|sum, value| sum + value * value}
end

def square_of_sum(number)
  sum_of_first_n_numbers = (1..number).inject(&:+)
  sum_of_first_n_numbers * sum_of_first_n_numbers
end
