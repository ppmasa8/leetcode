# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    hash = Hash.new(0)
    ptr = head
    while ptr
        hash[ptr.val] += 1
        ptr = ptr.next
    end
    
    ptr = head
    head = nil
    last_approved = nil
    
    while ptr
        if hash[ptr.val] == 1
            head = ptr if head.nil?
            last_approved.next = ptr if !last_approved.nil?
            last_approved = ptr
        end
        ptr = ptr.next
    end
    return nil if last_approved.nil?
    last_approved.next = nil
    return head
    
end
