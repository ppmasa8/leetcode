# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    node1 = head
    until node1&.next&.next.nil?
      node1.next = node1.next.next
      node1 = node1.next
      return true if node1 == node1.next
    end
    return false
end