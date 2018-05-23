# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  l3 = ListNode.new(0)
  c1 = l1
  c2 = l2
  c3 = l3
  carry = 0
  while c1 or c2
    x = c1.nil? ? 0 : c1.val
    y = c2.nil? ? 0 : c2.val
    sum = x + y + carry
    carry = sum / 10
    c3.next = ListNode.new(sum % 10)
    c1 = c1.nil? ? nil : c1.next
    c2 = c2.nil? ? nil : c2.next
    c3 = c3.next
  end
  if (carry > 0)
    c3.next = ListNode.new(carry)
  end
  l3.next
end
