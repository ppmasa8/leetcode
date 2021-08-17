# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    cnt_node = head; cnt = 0;
    while !cnt_node.nil?
        cnt += 1
        cnt_node = cnt_node.next
    end
    
    return head.next if (cnt - n) == 0
    
    node = head
    (cnt - n - 1).times do
        node = node.next
    end
    node.next = node.next.next
    return head
end