# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  return head if head.nil? or k == 0
  n, current = 1, head
  while current.next
    current = current.next
    n += 1
  end
  current.next = head
  m = n - k % n
  while m > 0
    current = current.next
    m -= 1
  end
  new_head = current.next
  current.next = nil
  return new_head
end
