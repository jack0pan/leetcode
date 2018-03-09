# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  min_diff = "#"
  nums.each_with_index do |i, index|
    j, k = index + 1, nums.length - 1
    while j < k
      diff = target - nums[j] - nums[k] - i
      return target if diff == 0
      min_diff = diff if min_diff == "#" or diff.abs < min_diff.abs
      if diff > 0
        j += 1
      else
        k -= 1
      end
    end
  end
  target - min_diff
end
