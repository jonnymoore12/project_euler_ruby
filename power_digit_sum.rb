def power_digit_sum
  # Finds the sum of the digits of 2^1000
  two_to_the_one_thousand = two_to_the_power(1000)
  array_of_digits = []
  two_to_the_one_thousand.to_s.each_char { |char| array_of_digits << char.to_i }
  sum_digits_in_array(array_of_digits)
end

def two_to_the_power(power)
  2 ** power
end

def sum_digits_in_array(array)
  array.inject(&:+)
end
