# Characters in:
# one to nine: 36
# ten to nineteen: 70
# twenty to twenty-nine: (10 * 6) + 36 = 96
# thirty to thirty-nine: (10 * 6) + 36 = 96
# forty to forty-nine: (10 * 5) + 36 = 86
# fifty to fifty-nine: (10 * 5) + 36 = 86
# sixty to sixty-nine: (10 * 5) + 36 = 86
# seventy to seventy-nine: (10 * 7) + 36 = 106
# eighty to eighty-nine: (10 * 6) + 36 = 96
# ninety to ninety-nine: (10 * 6) + 36 = 96
# CHARS ONE TO NINETY-NINE: 854

# Chars for each hundred numbers higher than ninenty-nine
# (using 100 to 199 as an example):
# 854 + 100 * "onehundred".length + 99 * "and".length
# = 1851 + "one".length * 100

# So total =
# CHARS ONE TO NINETY-NINE + CHARS 100 to 199 +
# + ... + CHARS 900 to 999 + CHARS 1000

# = 854 + 1851 * 9 + 11 ("onethousand".length) + "one".length * 100 + ... + "nine".length * 100
# = 17424                                      + 36 * 100
def number_letter_counts
  # Returns the total number of characters writing one, two, ..., one thousand
  854 + (1851 * 9) + 11 + (36 * 100)
end
