# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# iteratively implement
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  dummy_head = ListNode.new(0)
  p = head
  while p
    n = p.next
    p.next = dummy_head.next
    dummy_head.next = p
    p = n
  end
  dummy_head.next
end

# recursively implement
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  if head.nil? or head.next.nil?
    return head
  else
    n = head.next
    head.next = nil
    rest = reverse_list(n)
    n.next = head
    return rest
  end
end
