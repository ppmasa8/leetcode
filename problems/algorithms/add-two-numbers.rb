# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = l1.val + l2.val
  res = ListNode.new(sum%10)

  if l1.next || l2.next || sum/10>0
    l1 = l1.next || ListNode.new
    l2 = l2.next || ListNode.new
    l1.val += sum/10
    res.next = add_two_numbers(l1, l2)
  end

  res
end