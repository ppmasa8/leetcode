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
    return l2 if !l1
    return l1 if !l2
    
    res = ListNode.new(0)
    ptr = res
    carry = 0
    while l1 || l2
        sum = carry
        sum += l1.val if l1
        sum += l2.val if l2
        carry = sum / 10
        ptr.next = ListNode.new(sum % 10)
        ptr = ptr.next
        l1 = l1.next if l1
        l2 = l2.next if l2
    end
    ptr.next = ListNode.new(carry) if carry > 0
    res.next
end
