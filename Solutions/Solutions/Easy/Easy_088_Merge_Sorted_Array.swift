/*

https://leetcode.com/problems/merge-sorted-array/

#88 Merge Sorted Array

Level: easy

Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

Note:
You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.

Inspired by @leetchunhui at https://leetcode.com/discuss/8233/this-is-my-ac-code-may-help-you

*/

import Foundation

struct Easy_088_Merge_Sorted_Array {
    static func merge(nums1: inout [Int], m: Int, nums2: [Int], n: Int) {
        var i = m - 1
        var j = n - 1
        var k = m + n - 1
        while i >= 0 && j >= 0 {
            if nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                k -= 1
                i -= 1
            } else {
                nums1[k] = nums2[j]
                k -= 1
                j -= 1
            }
        }
        while j >= 0 {
            nums1[k] = nums2[j]
            k -= 1
            j -= 1
        }
    }
}


// Other Solution

func mergedArrays(_ array1: [Int], _ array2: [Int]) -> [Int] {
    var result = [Int]()
    var i = 0
    var j = 0

    while i < array1.count && j < array2.count {
        if array1[i] < array2[j] {
            result.append(array1[i])
            i += 1
        } else {
            result.append(array2[j])
            j += 1
        }
    }

    while i < array1.count {
        result.append(array1[i])
        i += 1
    }

    while j < array2.count {
        result.append(array2[j])
        j += 1
    }

    return result
}
