import UIKit

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0
        for char in t {
            if i < s.count && char == s[s.index(s.startIndex, offsetBy: i)] {
                i += 1
            }
        }
        return i == s.count
    }
}

//Test case #1
let s = "abc", t = "ahbgdc"
let expected = true

//Test case #2
//let s = "", t = "ahbgdc"
//let expected = true

let result = Solution().isSubsequence(s, t)
print(result == expected ? "Pass" : "Fail")


