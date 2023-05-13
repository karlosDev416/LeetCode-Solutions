import UIKit

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0, j = 0
        let sLength = s.count
        let tLength = t.count
        while i < sLength && j < tLength {
            let sStartIndex = s.index(s.startIndex, offsetBy: i)
            let sEndIndex = s.index(s.startIndex, offsetBy: i+1)
            let tStartIndex = t.index(t.startIndex, offsetBy: j)
            let tEndIndex = t.index(t.startIndex, offsetBy: j+1)
            if s[sStartIndex..<sEndIndex] == t[tStartIndex..<tEndIndex]  {
                i+=1
            }
            j+=1
        }
        return i == sLength
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


