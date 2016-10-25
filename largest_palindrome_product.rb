def product_of_two_three_digit_numbers
  numbers = []
  for i in 1..999
    for j in 1..999
      numbers << i * j
    end
  end
  numbers
end

def palindrome_array(numbers)
  numbers.select {|number| is_a_palindrome?(number)}
end

def is_a_palindrome?(number)
  number.to_s.reverse == number.to_s
end

puts palindrome_array(product_of_two_three_digit_numbers).max
