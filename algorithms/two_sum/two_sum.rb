# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  h = Hash.new
  nums.each_with_index do |num, index|
    left = target - num
    if h[left] 
      return [h[left], index]
    end
    h[num] = index
  end
end
