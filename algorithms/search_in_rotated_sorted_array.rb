# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  i, j = 0, nums.length - 1
  while i <= j
    m = (i + j) / 2
    return m if nums[m] == target
    if nums[m] < nums[j]
      if nums[m] <= target and target <= nums[j]
        i = m + 1
      else
        j = m - 1
      end
    else
      if nums[i] <= target and target <= nums[m]
        j = m - 1
      else
        i = m + 1
      end
    end
  end
  return -1
end
