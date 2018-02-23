# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    h = Hash.new
    nums.each_with_index do |num, index|
        if h[num]
            h[num].push(index)
        else
            h[num] = [index]
        end
    end
    nums.each_with_index do |num, index|
        left = target - num
        if h[left]
            h[left].each do |left_index|
                if left_index != index
                    return [index, left_index]
                end
            end
        end
    end
end
