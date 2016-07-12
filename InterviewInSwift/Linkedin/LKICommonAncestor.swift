//
//  LKICommonAncestor.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

/// Refer to `LCLowestCommonAncestor`

// Find common ancestor in binary tree
class LKICommonAncestor: NSObject {
    class func lowestCommonAncestor(root: LCTreeNode?, A: LCTreeNode, B: LCTreeNode) -> LCTreeNode? {
        return LCLowestCommonAncestor.lowestCommonAncestor(root, A: A, B: B)
    }
}
