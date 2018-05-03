# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer} n
# @return {TreeNode[]}
def generate_trees(n)
  return [] if n == 0
  _generate_trees(1, n)
end

def _generate_trees(left, right)
  result = []
  if left > right
    result << nil
  else
    (left..right).each do |i|
      lefts = _generate_trees(left, i - 1)
      rights = _generate_trees(i + 1, right)
      lefts.length.times.each do |j|
        rights.length.times.each do |k|
          root = TreeNode.new(i)
          root.left = lefts[j]
          root.right = rights[k]
          result << root
        end
      end
    end
  end
  return result
end
