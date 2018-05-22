# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  min_diff = Float::INFINITY
  nums.each_with_index do |i, index|
    next if index > 0 && i == nums[index - 1]
    
    j, k = index + 1, nums.length - 1
    while j < k
      diff = target - nums[j] - nums[k] - i
      return target if diff == 0
      min_diff = diff if diff.abs < min_diff.abs
      if diff > 0
        j += 1
      else
        k -= 1
      end
    end
  end
  target - min_diff
end
