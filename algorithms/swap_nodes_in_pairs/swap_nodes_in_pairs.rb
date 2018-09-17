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
def swap_pairs(head)
  return head if head.nil? or head.next.nil?
  dummy = ListNode.new(0)
  first, second, third = dummy, head, head.next
  while third
    second.next = third.next
    third.next = second
    first.next = third
    
    first = second
    break if second.nil?
    second = second.next
    break if second.nil?
    third = second.next
  end
  return dummy.next
end
