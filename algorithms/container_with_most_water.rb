# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max, left, right = 0, 0, height.length - 1
  while left < right
    max = [max, [height[left], height[right]].min * (right - left)].max
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  return max
end
