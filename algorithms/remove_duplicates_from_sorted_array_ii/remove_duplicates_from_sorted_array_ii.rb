# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums.length if nums.length <= 2
  previous, current = 1, 2
  while current < nums.length
    if nums[current] == nums[previous] and nums[current] == nums[previous - 1]
      current += 1
    else
      previous += 1
      nums[previous] = nums[current]
      current += 1
    end
  end
  return previous + 1
end
