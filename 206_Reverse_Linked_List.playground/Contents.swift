import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev:ListNode? = nil
        var curr:ListNode? = head
        while curr != nil {
            let next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }
        return prev
    }
    
    func display(head:ListNode?) -> String {
        if head == nil {
            return ""
        }
        var current = head
        var result = ""
        while current?.next != nil {
            result = result + "\(current!.val)-->"
            current = current?.next
        }
        return result + "\(current!.val)-->" + "null"
    }
}

//Test case #1
let head = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
let solution = Solution()
let result = solution.reverseList(head)
let expected = "5-->4-->3-->2-->1-->null"
print(solution.display(head: result) == expected ? "Pass" : "Fail")

