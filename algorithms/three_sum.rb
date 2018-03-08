# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  set = Array.new
  i = 0
  while i < nums.length - 2
    break if nums[i] > 0
    if i > 0 and nums[i] == nums[i - 1]
      i += 1
      next
    end
    j = i + 1
    k = nums.length - 1
    while j < k
      if nums[i] + nums[j] + nums[k] == 0
        triplet = [nums[i], nums[j], nums[k]]
        set.push triplet
        j += 1 while nums[j] == nums[j + 1]
        k -= 1 while nums[k] == nums[k - 1]
        j, k = j + 1, k - 1
      elsif nums[i] + nums[j] + nums[k] < 0
        j += 1
      else
        k -= 1
      end
    end
    i += 1
  end
  return set
end
