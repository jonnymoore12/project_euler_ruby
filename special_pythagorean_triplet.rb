# Euclid's formula for pythagorean triplets states:
# a = m^2 - n^2; b = 2mn; c = m^2 + n^2

# We also have:
# a + b + c = 1000

# Hence
# m^2 = n^2 + 2mn + m^2 + n^2 = 1000
# 2m^2 + 2mn = 1000
# equation: m(m + n) = 500

def special_pythagorean_triplet
  m, n = solve_equation_for_m_and_n
  a = m * m - n * n
  b = 2 * m * n
  c = m * m + n * n
  product_of_triplet(a, b, c)
end

def solve_equation_for_m_and_n
  for m in 2..500
    for n in 2..500
      # m must be > n for c non-negative
      if m * (m + n) == 500 && (m > n)
        return [m, n]
      end
    end
  end
end

def product_of_triplet(a, b, c)
  a * b * c
end
