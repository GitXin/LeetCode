class Solution:
  def reverse(self, x):
    arr = list(str(abs(x)))
    arr.reverse()
    y = int(''.join(arr))
    if x < 0:
      y = -y
      return 0 if y < -2**31 + 1 else y
    else:
      return 0 if y > 2**31 - 1 else y