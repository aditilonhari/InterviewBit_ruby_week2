/**
 * Definition for singly-linked list.
 * class ListNode {
 *     public int val;
 *     public ListNode next;
 *     ListNode(int x) { val = x; next = null; }
 * }
 */
public class Solution {
    public ListNode insertionSortList(ListNode A) {
        
        if (A == null && A.next == null)
            return A;
            
        ListNode newHead = new ListNode(A.val);
        ListNode pointer = A.next;
        
        while(pointer!= null){
            
            ListNode innerPointer = newHead;
            ListNode nextPointer = pointer.next;
            if(pointer.val <= newHead.val){
                ListNode oldHead = newHead;
                newHead = pointer;
                newHead.next = oldHead;
            } else {
                 while(innerPointer.next != null){
                     
                    if(pointer.val > innerPointer.val && pointer.val <= innerPointer.next.val){
                         ListNode oldNext = innerPointer.next;
                        innerPointer.next = pointer;
                        pointer.next = oldNext;
                     }
                    innerPointer = innerPointer.next;  
                 }
                 
                 if(innerPointer.next == null && pointer.val > innerPointer.val){
                     innerPointer.next = pointer;
                     pointer.next = null;
                 }
             }
             pointer = nextPointer;
        }
        return newHead;
    }
}
