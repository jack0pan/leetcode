# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  nums.sort!
  i, table, result = 0, Hash.new, Array.new
  while i < nums.length - 1
    j = i + 1
    while j < nums.length
      sum = nums[i] + nums[j]
      if table.has_key?(sum)
        table[sum].push([i, j])
      else
        table[sum] = [[i, j]]
      end
      j += 1
    end
    i += 1
  end
  i = 0
  while i < nums.length - 3
    if i > 0 and nums[i] == nums[i - 1]
      i += 1
      next
    end
    j = i + 1
    while j < nums.length - 2
      if j > i + 1 and nums[j] == nums[j - 1]
        j += 1
        next
      end
      other = target - nums[i] - nums[j]
      if table.has_key?(other)
        pairs = table[other]
        k = 0
        while k < pairs.length
          if pairs[k][0] > j
            p = [nums[i], nums[j], nums[pairs[k][0]], nums[pairs[k][1]]]
            result.push(p) if not result.include?(p)
          end
          k += 1
        end
      end
      j += 1
    end
    i += 1
  end
  return result 
end
