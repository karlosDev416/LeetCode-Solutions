import UIKit

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowerbed = flowerbed
        var i = 0
        var counter = 0
        let lenght = flowerbed.count
        while i < lenght {
            if flowerbed[i] == 0 {
                let prev = (i == 0 || flowerbed[i-1] == 0) ? 0 : 1
                let next = (i == lenght-1 || flowerbed[i+1] == 0) ? 0 : 1
                if prev == 0 && next == 0 {
                    flowerbed[i] = 1
                    counter += 1
                }
            }
            i+=1
        }
        return counter >= n
    }
}

//Test case #1
let flowerbed = [1,0,0,0,1], n = 1
let expected = true

//Test case #2
//let flowerbed = [1,0,0,0,1], n = 2
//let expected = false

let result = Solution().canPlaceFlowers(flowerbed, n)
print(result == expected ? "Pass" : "Fail")
