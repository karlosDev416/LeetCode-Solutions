import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slowNode = head
        var fastNode = head
        while fastNode != nil && fastNode?.next != nil {
            slowNode = slowNode?.next
            fastNode = fastNode?.next?.next
        }
        return slowNode
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
let result = solution.middleNode(head)
let expected = "3-->4-->5-->null"
print(solution.display(head: result) == expected ? "Pass" : "Fail")

