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
    merged_node = []
    node1 = l1
    node2 = l2
    until node1.nil? || node2.nil?
        p node1.val
        p node2.val
        if node1.val > node2.val
            merged_node << node2.val 
            node2 = node2.next
        elsif node1.val < node2.val
            merged_node << node1.val
            node1 = node1.next
        else
            merged_node << node1.val 
            node1 = node1.next
            merged_node << node2.val
            node2 = node2.next
        end
    end
    
    if node2.nil?
        until node1.nil?
            merged_node << node1.val
            node1 = node1.next
        end
    elsif node1.nil?
        until node2.nil?
            merged_node << node2.val
            node2 = node2.next
        end
    end
    
    return merged_node
        
end