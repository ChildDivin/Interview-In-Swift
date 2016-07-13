//
//  LC100SameTree.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Same Tree
// https://leetcode.com/problems/same-tree/
class LC100SameTree: NSObject {
    class func isSameTree(node1: LCTreeNode?, node2: LCTreeNode?) -> Bool {
        if node1 == nil && node2 == nil {
            return true
        } else if node1 == nil || node2 == nil {
            return false
        }

        if let node1 = node1, node2 = node2 {
            if node1.val == node2.val {
                let left = LC100SameTree.isSameTree(node1.left, node2: node2.left)
                let right = LC100SameTree.isSameTree(node1.right, node2: node2.right)

                return left && right
            }
        }

        return false

    }
}
