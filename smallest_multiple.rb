def smallest_multiple
  # Finds the smallest number evenly divisible by the numbers 1 to 20
  attempt = 20
  found_solution = false
  while found_solution == false
    if number_evenly_divides_range(attempt)
      found_solution = true
      return attempt
    else
      attempt +=1
    end
  end
end

def number_evenly_divides_range(number)
  for i in 1..20
    if number % i != 0
      return false
    end
  end
  return true
end
