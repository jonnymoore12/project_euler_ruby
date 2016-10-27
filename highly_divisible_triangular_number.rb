# This brute forcer is too slow!

def highly_divisible_triangular_number(number_of_wanted_divisors)
  n = 10_000
  found_solution = false
  ans = ''
  while !found_solution
    if number_of_divisors(triangle_number(n)) >= number_of_wanted_divisors
      ans = triangle_number(n)
      return ans
    else
      n += 1
    end
  end
end

def number_of_divisors(n)
  divisors = 0
  for i in (1..n)
    divisors += 1 if n % i == 0
  end
  divisors
end

def triangle_number(n)
  return 1 if n == 1
  return n + triangle_number(n-1)
end
