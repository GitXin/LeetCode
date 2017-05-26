# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  if x < 0
    false
  elsif x < 10
    true
  else
    x == x.to_s.reverse.to_i
  end
end