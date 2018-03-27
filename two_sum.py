class Solution:
  def twoSum(self, nums, target):
    for i, num in enumerate(nums):
      secNum = target - num
      try:
        j = nums.index(secNum)
        if i != j: return [i, j]
      except Exception as e:
        pass
