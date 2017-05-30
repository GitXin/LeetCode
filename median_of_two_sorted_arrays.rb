# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  size1 = nums1.size
  size2 = nums2.size
  average = (size1 + size2) / 2.0

  return (nums1[0] || nums2[0]) if average < 1

  position1 = average.to_i - 1
  position2 = average.to_i
  i = j = 0
  num = num1 = num2 = nil

  while num1.nil? || num2.nil?
    if nums1[i].nil?
      num = nums2[j]
      j += 1
    elsif nums2[j].nil?
      num = nums1[i]
      i += 1
    elsif nums1[i] >= nums2[j]
      num = nums2[j]
      j += 1
    else
      num = nums1[i]
      i += 1
    end

    position = i + j - 1
    if position == position1
      num1 = num
    elsif position == position2
      num2 = num
    end
  end

  if average.to_i == average
    (num1 + num2) / 2.0
  else
    num2
  end
end

=begin
def find_median_sorted_arrays(nums1, nums2)
  nums = (nums1 + nums2).sort
  average = nums.size / 2.0
  if average.to_i == average
    position1 = average.to_i - 1
    position2 = average.to_i
    (nums[position1] + nums[position2]) / 2.0
  else
    position = average.to_i
    nums[position]
  end
end
=end
