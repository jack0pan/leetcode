# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
  hash = {}
  inorder.each_with_index do |v, i|
    hash[v] = i
  end
  _build_tree(postorder, 0, postorder.length - 1, inorder, 0, inorder.length - 1, hash)
end

def _build_tree(postorder, post_left, post_right, inorder, in_left, in_right, hash)
  return nil if post_left > post_right or in_left > in_right
  root = TreeNode.new(postorder[post_right])
  delta = hash[root.val] - in_left
  root.left = _build_tree(postorder, post_left, post_left + delta - 1, inorder, in_left, hash[root.val] - 1, hash)
  root.right = _build_tree(postorder, post_left + delta, post_right - 1, inorder, hash[root.val] + 1, in_right, hash)
  return root
end
