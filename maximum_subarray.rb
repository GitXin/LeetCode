# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = nums.first
  sum = 0

  (0...nums.size).each do |index|
    if sum < 0
      sum = nums[index]
    else
      sum += nums[index]
    end

    max = sum if sum > max
  end

  max
end