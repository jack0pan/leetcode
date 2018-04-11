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
  return head if head.nil? or head.next.nil?
  start = ListNode.new(0)
  start.next = head
  pre = start
  while pre.next
    cur = pre.next
    cur = cur.next while cur.next and cur.next.val == cur.val
    if cur != pre.next
      pre.next = cur.next
    else
      pre = pre.next
    end
  end
  return start.next
end
