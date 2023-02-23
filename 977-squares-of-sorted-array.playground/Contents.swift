import UIKit

let input = [-4,-1,0,3,10]
let expected = [0,1,9,16,100]

class Solution {
    func sortedSquares(_ array: [Int]) -> [Int] {
        var result = [Int]()
        var i = 0
        var j = array.count - 1
        for _ in 0..<array.count {
            let firstItem = abs(array[i])
            let lastItem = abs(array[j])
            if lastItem > firstItem {
                result.insert (square (value: lastItem), at: 0)
                j -= 1
            } else {
                result.insert (square (value: firstItem), at: 0)
                i += 1
            }
            if i == j {
                result.insert(square(value: abs(array[i])), at: 0)
                break
            }
        }
        return result
    }
    private func square (value: Int) -> Int {
        return value * value
    }
}

let result = Solution().sortedSquares(input)

print(result == expected ? "Pass" : "Fail")
