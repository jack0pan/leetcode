# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  dummy = ListNode.new(0)
  new_dummy = ListNode.new(0)
  dummy.next = head
  cur, new_cur = dummy, new_dummy
  while cur.next
    if cur.next.val < x
      new_cur.next = cur.next
      new_cur = new_cur.next
      cur.next = cur.next.next
      new_cur.next = nil
    else
      cur = cur.next
    end
  end
  new_cur.next = dummy.next
  return new_dummy.next
end
