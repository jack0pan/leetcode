# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  left = search_index(nums, target, true)
  if left == nums.length or nums[left] != target
    return [-1, -1]
  end
  right = search_index(nums, target, false)
  return [left, right - 1]
end

def search_index(nums, target, left)
  i, j = 0, nums.length
  while i < j
    m = (i + j) / 2
    if nums[m] > target or (left and target == nums[m])
      j = m
    else
      i = m + 1
    end
  end
  return i
end
