# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  i, j = 0, 0
  while j < nums.length
    if nums[j] != val
      nums[i] = nums[j]
      i += 1
    end
    j += 1
  end
  return i
end
