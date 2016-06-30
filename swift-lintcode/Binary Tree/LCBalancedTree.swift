//
//  LCBalancedTree.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 30/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Balanced Binary Tree
// http://www.lintcode.com/en/problem/balanced-binary-tree/

class LCBalancedTree: NSObject {
    /**
     * @param root: The root of binary tree.
     * @return: True if this Binary tree is Balanced, or false.
     */
    class func isBalanced(root: LCTreeNode) -> Bool {
        return LCDepthTree.maxDepth(root) != -1
    }
    
    private class func maxDepth(root: LCTreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        let left = LCDepthTree.maxDepth(root!.left)
        let right = LCDepthTree.maxDepth(root!.right)
        
        if (left == -1 || right == -1 || abs(left - right) > 1) {
            return -1
        }
        
        return max(left, right) + 1
    }
}