# Definition for singly-linked list.
# class ListNode
#     attr_accessor :next,:data
#     def initialize(data)
#         @data = data
#         @next=nil
#     end
# end

class Solution
    # @param a : head node of linked list
    # @return the head node in the linked list
    def deleteDuplicates(a)
        
        if a == nil
            return a
        end
        
        if a.data == 0
            return a
        end
    
        current_node = a
        
        if current_node.next == nil
            return current_node
        end
        
        if current_node.next.next == nil
            if current_node.data == current_node.next.data
                current_node.next = nil
                return current_node
            end
            return current_node
        end
        
        while current_node.next.next != nil
            if current_node.data == current_node.next.data
                current_node.next = current_node.next.next
            else
                current_node = current_node.next
            end
        end
        
        if current_node.data == current_node.next.data
            current_node.next = current_node.next.next
        end
        
        return a
    end
end
