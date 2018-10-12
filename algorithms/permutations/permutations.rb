# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  used = Array.new(nums.length, false)
  tmp, result = [], []
  _permute(nums, tmp, used, result)
  return result
end

def _permute(nums, tmp, used, result)
  if tmp.length == nums.length
    new_tmp = tmp.dup
    result.push new_tmp
  else
    nums.length.times do |i|
      next if used[i]
      used[i] = true
      tmp.push nums[i]
      _permute(nums, tmp, used, result)
      tmp.pop
      used[i] = false
    end
  end
end
