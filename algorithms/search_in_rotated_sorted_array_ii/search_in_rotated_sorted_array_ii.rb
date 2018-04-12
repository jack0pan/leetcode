# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  i, j = 0, nums.length - 1
  while i <= j
    m = (i + j) / 2
    return true if nums[m] == target
    if nums[m] < nums[j]
      if nums[m] <= target and target <= nums[j]
        i = m + 1
      else
        j = m - 1
      end
    elsif nums[m] > nums[j]
      if nums[i] <= target and target <= nums[m]
        j = m - 1
      else
        i = m + 1
      end
    else
      j -= 1
    end
  end
  return false
end
