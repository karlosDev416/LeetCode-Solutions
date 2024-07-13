import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        
        var stack = [Character]()
        let dict: [Character: Character] = [")": "(", "]": "[", "}": "{"]
                
        for char in s {
            if let matchingOpen = dict[char] {
                if stack.last == matchingOpen {
                    stack.removeLast()
                } else {
                    return false
                }
            } else {
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}


let input = "()[]{}"

let solution = Solution().isValid(input)
let expected = true

print(expected == solution)
