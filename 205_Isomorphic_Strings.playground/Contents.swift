import UIKit

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var index = 0
        let sArray = Array(s)
        var dictST:[Character:Character] = [:]
        var dictTS:[Character:Character] = [:]
        for character2 in t {            
            if dictST[sArray[index]] != nil && dictST[sArray[index]] != character2 ||
                dictTS[character2] != nil && dictTS[character2] != sArray[index] {
                return false
            }
            dictST[sArray[index]] = character2
            dictTS[character2] = sArray[index]
            index+=1
        }
        return true
    }
}
//Test case #1
//let s = "egg", t = "add"
//let expected = true

//Test case #2
//let s = "foo", t = "bar"
//let expected = false

//Test case #3
//let s = "paper", t = "title"
//let expected = true

//Test case #4
let s = "badc", t = "baba"
let expected = false

let result = Solution().isIsomorphic(s, t)
print(result == expected ? "Pass" : "Fail")
