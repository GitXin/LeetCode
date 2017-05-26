# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  search = {}
  nums.each_with_index do |num, num_index|
    search_index = search[target - num]
    return [search_index, num_index] if search_index != nil
    search[num] = num_index
  end
end