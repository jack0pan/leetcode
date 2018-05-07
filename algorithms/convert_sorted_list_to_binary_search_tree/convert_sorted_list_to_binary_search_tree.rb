# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {ListNode} head
# @return {TreeNode}
def sorted_list_to_bst(head)
  count, current = 0, head
  while current
    count += 1
    current = current.next
  end
  array = [head]
  helper(array, 0, count - 1)
end

def helper(array, left, right)
  return nil if left > right
  m = (left + right) / 2
  left_tree = helper(array, left, m - 1)
  root = TreeNode.new(array[0].val)
  array[0] = array[0].next
  right_tree = helper(array, m + 1, right)
  root.left = left_tree
  root.right = right_tree
  return root
end
