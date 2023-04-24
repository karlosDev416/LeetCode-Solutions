import UIKit

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        let array = String(x).map { Int(String($0)) }.compactMap { $0 }
        var i = 0, j = array.count-1
        while i < j {
            if array[i] == array[j] {
                i+=1
                j-=1
            } else {
                return false
            }
        }
        return true
    }
}


//Test case #1
let x = 121
let output = true

//Test case #2
//let x = -121
//let output = false

//Test case #3
//let x = 10
//let output = false


let result = Solution().isPalindrome(x)
print(output == result ? "Pass" : "Fail")
