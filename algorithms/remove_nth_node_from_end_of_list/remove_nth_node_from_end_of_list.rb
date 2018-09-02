# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  dummy = ListNode.new(0)
  dummy.next = head
  first, second = dummy, dummy
  (n + 1).times{ first = first.next }
  while first
    first = first.next
    second = second.next
  end
  second.next = second.next.next
  return dummy.next
end
