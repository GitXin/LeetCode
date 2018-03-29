class Solution:
  def isPalindrome(self, x):
    if x < 0: return False
    if x == 0: return True
    strX = str(x)
    reverseStrX = strX[::-1]
    if int(strX) == int(reverseStrX):
      return True
    else:
      return False
