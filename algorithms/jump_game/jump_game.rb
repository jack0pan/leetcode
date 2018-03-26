# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  last, i = nums.length - 1, nums.length - 1
  while i >= 0
    last = i if i + nums[i] >= last
    i -= 1
  end
  return last == 0
end
