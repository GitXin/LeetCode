# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  i = 0
  j = x / 2 + 1
  while i <= j
    mid = (i + j) / 2
    square = mid * mid
    if square == x
      return mid
    elsif square < x
      i = mid + 1
    else
      j = mid - 1
    end
  end
  j
end
# def my_sqrt(x)
#   i = 1
#   while true
#     square = i * i
#     return i if square == x
#     return i - 1 if square > x
#     i += 1
#   end
# end