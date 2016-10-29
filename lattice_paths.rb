def lattice_paths(m,n)
  # Using binomial coefficients, there are m + n moves to be made for an m * n
  # grid. And m of those must be down, so there are (m + n) choose m (or
  # equivalently, (m + n) choose n) solutions.
  # = (m + n)! / ( (m + n - n!) *  n!)
  
  factorial(m + n) / (factorial(m) * factorial(n))
end

def factorial(n)
  return 1 if n == 0
  return n * factorial(n-1)
end
