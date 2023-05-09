import UIKit

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var set:Set<Character> = []
        var l = 0
        var result = 0
        let array = Array(s)
        let length = array.count
        for r in 0..<length {
            while set.contains(array[r]) {
                set.remove(array[l])
                l+=1
            }
            set.insert(array[r])
            result = max(result, r - l + 1)
        }
        return result
    }
}


//Test case #1
//let s = "abcabcbb"
//let expected = 3

//Test case #2
//let s = "bbbb"
//let expected = 1

//Test case #3
//let s = "pwwkew"
//let expected = 3

//Test case #4
let s = "dvdf"
let expected = 3

print(Solution().lengthOfLongestSubstring(s) == expected ? "Pass" : "Fail")
