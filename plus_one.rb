# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  i = digits.size - 1

  while i >= 0
    if digits[i] + 1 > 9
      digits[i] = 0
      i -= 1
    else
      digits[i] += 1
      break
    end
  end

  if digits[0] == 0
    digits.unshift 1
  end

  digits
end

=begin
def plus_one(digits)
  number = digits.join.to_i
  number += 1
  number.to_s.chars.map(&:to_i)
end
=end