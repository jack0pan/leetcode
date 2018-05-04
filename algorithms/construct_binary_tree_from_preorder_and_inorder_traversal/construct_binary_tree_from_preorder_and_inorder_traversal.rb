# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  hash = {}
  inorder.each_with_index do |v, i|
    hash[v] = i
  end
  _build_tree(preorder, 0, preorder.length - 1, inorder, 0, inorder.length - 1, hash)
end

def _build_tree(preorder, pre_left, pre_right, inorder, in_left, in_right, hash)
  return nil if pre_left > pre_right or in_left > in_right
  root = TreeNode.new(preorder[pre_left])
  delta = hash[root.val] - in_left
  root.left = _build_tree(preorder, pre_left + 1, pre_left + delta, inorder, in_left, hash[root.val] - 1, hash)
  root.right = _build_tree(preorder, pre_left + delta + 1, pre_right, inorder, hash[root.val] + 1, in_right, hash)
  return root
end
