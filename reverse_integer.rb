# @param {Integer} x
# @return {Integer}
def reverse(x)
  if x == 0
    0
  elsif x > 0
    y = x.to_s.chars.reverse.join.to_i
    y > 2**31 - 1 ? 0 : y
  else
    y = -(x.abs.to_s.chars.reverse.join.to_i)
    y < -2**31 + 1 ? 0 : y
  end
end
