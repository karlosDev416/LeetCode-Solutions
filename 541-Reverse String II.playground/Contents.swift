import UIKit


class Solution {
    
    func reverseStr(_ s: String, _ k: Int) -> String {
        let length = s.count
        if length < 2 {
            return s
        }
        var charArray = s.map({ $0 })
        var i = 0
        var j = k < length ? k-1 : length - 1
        var times = 1
        while i < j {
            reverseString(&charArray, i, j)
            if k*2*times < length {
                i = (k*2*times)
                j = i + k - 1
                if j >= length {
                    j = length - 1
                } 
                times+=1
            } else {
                break
            }
        }
        return String(charArray)
    }
    
    func reverseString(_ s: inout [Character],_ i:Int,_ j:Int) {
        var i = i
        var j = j
        while i < j {
            let temp = s[i]
            s[i] = s[j]
            s[j] = temp
            i+=1
            j-=1
        }
    }
}

//Test case #1
//let input = "abcdefg"
//let output = "bacdfeg"
//let k = 2

//Test case #2
//let input = "abcd"
//let output = "bacd"
//let k = 2

//Test case #3
//let input = "a"
//let output = "a"
//let k = 2

//Test case #4
//let input =  "abcdefg"
//let output = "gfedcba"
//let k = 8

//Test case #5                                       here                                   here
//let input =  "hyzqyljrnigxvdtneasepfahmtyhlohwxmkqcdfehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqlimjkfnqcqnajmebeddqsgl"
//let output = "fdcqkmxwholhytmhafpesaentdvxginrjlyqzyhehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqllgsqddebemjanqcqnfkjmi"
//let k = 39

//Test case #6
let input =  "krmyfshbspcgtesxnnljhfursyissjnsocgdhgfxubewllxzqhpasguvlrxtkgatzfybprfmmfithphckksnvjkcvnsqgsgosfxc"
let output = "jlnnxsetgcpsbhsfymrkhfursyissjnsocgdhgfxtxrlvugsaphqzxllwebukgatzfybprfmmfithphccxfsogsgqsnvckjvnskk"
let k = 20

let result = Solution().reverseStr(input, k)
print(result == output ? "Pass" : "Fail")







