# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  c, n = head, head
  while n
    if c.val == n.val
      n = n.next
      c.next = n
    else
      c = n
      n = n.next
    end
  end
  return head
end
