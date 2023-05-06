import UIKit

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m
        var j = n
        var k = m+n-1
        while i > 0 && j > 0 {
            if nums1[i-1] > nums2[j-1] {
                nums1[k] = nums1[i-1]
                i-=1
            } else {
                nums1[k] = nums2[j-1]
                j-=1
            }
            k-=1
        }
        while j > 0 {
            nums1[k] = nums2[j-1]
            j-=1
            k-=1
        }
    }
}

//Test case #1
var nums1 = [1,2,3,0,0,0], m = 3
let nums2 = [2,5,6], n = 3
let expected = [1,2,2,3,5,6]

//Test case #2
//var nums1 = [1], m = 1
//let nums2:[Int] = [], n = 0
//let expected = [1]

//Test case #3
//var nums1 = [0], m = 0
//let nums2:[Int] = [1], n = 1
//let expected = [1]

//Test case #45
//var nums1 = [2,0], m = 1
//let nums2:[Int] = [1], n = 1
//let expected = [1,2]

Solution().merge(&nums1, m, nums2, n)
print(nums1 == expected ? "Pass" : "Fail")

