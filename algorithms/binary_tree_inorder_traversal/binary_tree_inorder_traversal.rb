# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  return [] if root.nil?
  node, stack, path = root, [], []
  while node or not stack.empty?
    while node
      stack.push node
      node = node.left
    end
    node = stack.pop
    path << node.val
    node = node.right
  end
  path
end
