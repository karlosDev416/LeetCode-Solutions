import UIKit

class Solution {
    func addDigits(_ num: Int) -> Int {
        let array = String(num).compactMap {Int(String($0)) }
        if array.count == 1, let result = array.first {
            return result
        } else {
            return addDigits(array.reduce(0, +))
        }
    }
}

//Test case #1
let number = 38
let output = 2

//Test case #2
//let number = 0
//let output = 0

let solution = Solution()
let result = solution.addDigits(number)

print(result == output ? "Pass" : "Fail")
