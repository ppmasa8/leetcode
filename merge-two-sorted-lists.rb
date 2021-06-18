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
def merge_two_lists(l1, l2)
    l1_val, l2_val = [], []
    
    while true
        break if l1.nil? && l2.nil?
        unless l1.nil?
            l1_val << l1.val
            l1 = l1.next
        end
        unless l2.nil?
            l2_val << l2.val
            l2 = l2.next
        end 
    end
    val = [l1_val, l2_val].flatten!.sort
    val
end
