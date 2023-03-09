import UIKit

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty { return true }
        let sArray = Array(s)
        var counter = sArray.count
        var i = 0
        for tLetter in t {
            if sArray[i] == tLetter {
                counter-=1
                if counter == 0 {
                    return true
                }
                i+=1
            }
        }
        return false
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


