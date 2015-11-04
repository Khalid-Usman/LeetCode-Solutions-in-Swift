/*

#94 Binary Tree Inorder Traversal

Given a binary tree, return the inorder traversal of its nodes' values.

For example:
Given binary tree {1,#,2,3},
1
 \
  2
 /
3
return [1,3,2].

Note: Recursive solution is trivial, could you do it iteratively?

*/

import Foundation

class Medium_094_Binary_Tree_Inorder_Traversal {
    class Node {
        var value: Int
        var left: Node?
        var right: Node?
        init(value: Int, left: Node?, right: Node?) {
            self.value = value
            self.left = left
            self.right = right
        }
    }
    class func inorderTraversal(root: Node?) -> [Int] {
        return inorderTraversal_recursion(root)
    }
    class func inorderTraversal_recursion_helper(root root: Node?, inout arr: [Int]) {
        if let unwrapped = root {
            inorderTraversal_recursion_helper(root: unwrapped.left, arr: &arr)
            arr.append(unwrapped.value)
            inorderTraversal_recursion_helper(root: unwrapped.right, arr: &arr)
        } else {
            return
        }
    }
    // Recursion, t = O(N), s = O(N)
    class func inorderTraversal_recursion(root: Node?) -> [Int] {
        var res: [Int] = []
        inorderTraversal_recursion_helper(root: root, arr: &res)
        return res
    }
    
}