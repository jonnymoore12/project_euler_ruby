# Problem 31
# How many ways are there to make £2.00 exactly using any combination of
# the standard British coins (1p, 2p, 5p, 10p, 20p, 50p, £1, £2)

# Solving recursively, we can start with just the 1p option
# Using ONLY this type of coin, there is only 1 possible combination

# As we introduce each new coin, we subtract the value (e.g. 2 for 2p)
# from n (total amount to be made) so we recursively consider each possible
# quantity of said coin.

def one_pence(n)
  1
end

def two_pence(n)
  n >= 0 ? two_pence(n-2) + one_pence(n) : 0
end

def five_pence(n)
  n >= 0 ? five_pence(n-5) + two_pence(n) : 0
end

def ten_pence(n)
  n >= 0 ? ten_pence(n-10) + five_pence(n) : 0
end

def twenty_pence(n)
  n >= 0 ? twenty_pence(n-20) + ten_pence(n) : 0
end

def fifty_pence(n)
  n >= 0 ? fifty_pence(n-50) + twenty_pence(n) : 0
end

def one_pound(n)
  n >= 0 ? one_pound(n-100) + fifty_pence(n) : 0
end

def two_pound(n)
  n >= 0 ? two_pound(n-200) + one_pound(n) : 0
end

p two_pound(200)
