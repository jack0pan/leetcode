# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} m
# @param {Integer} n
# @return {ListNode}
def reverse_between(head, m, n)
  return head if head.nil?
  dummy = ListNode.new(0)
  dummy.next = head
  m_prev, i = dummy, 1
  while i < m and m_prev.next
    m_prev = m_prev.next
    i += 1
  end
  return head if i < m
  m_node = m_prev.next
  return head if m_node.nil?
  c_node = m_node.next
  while i < n and c_node
    t = c_node.next
    c_node.next = m_prev.next
    m_prev.next = c_node
    c_node = t
    m_node.next = c_node
    i += 1
  end
  return dummy.next
end
