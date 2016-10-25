def longest_collatz_sequence
  longest_sequence_length = 0
  starting_number = 1
  for i in 1..999_999
    attempt_length = 1
    value = i
    while value > 1
      value = calculate_next_number(value)
      attempt_length += 1
    end
    if attempt_length > longest_sequence_length
      longest_sequence_length = attempt_length
      starting_number = i
    end
  end
  starting_number
end

def calculate_next_number(number)
  return number % 2 == 0 ? number / 2 : (3 * number + 1)
end
