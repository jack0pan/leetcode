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
def merge_two_lists(l1, l2)
  l = ListNode.new(0)
  c1, c2, c3 = l1, l2, l
  while c1 or c2
    if (c1 and c2 and c1.val < c2.val) or (c1 and c2.nil?)
      n = ListNode.new(c1.val)
      c1 = c1.next
    elsif (c1 and c2 and c1.val >= c2.val) or (c2 and c1.nil?)
      n = ListNode.new(c2.val)
      c2 = c2.next
    end
    c3.next = n
    c3 = n
  end
  l.next
end
