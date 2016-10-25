def largest_prime_factor(number)
  prime_factors(factors(number)).max
end

def prime_factors(factors)
  factors.select {|factor| is_prime?(factor) }
end

def factors(number)
  (1..number).select {|factor| number % factor == 0 }
end

def is_prime?(number)
  return false if number < 2
  for i in (2..number - 1)
    return false if number % i == 0
  end
  true
end
