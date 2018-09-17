# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.length == 0
  i, j = 0, 1
  while j < nums.length
    if nums[j] != nums[i]
      i += 1
      nums[i] = nums[j]
    end
    j += 1
  end
  return i + 1
end
