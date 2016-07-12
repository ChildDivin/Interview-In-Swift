//
//  LCLowestCommonAncestor.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

class LCLowestCommonAncestor: NSObject {
    /**
     * @param root: The root of the binary search tree.
     * @param A and B: two nodes in a Binary.
     * @return: Return the least common ancestor(LCA) of the two nodes.
     */
    class func lowestCommonAncestor(root: LCTreeNode?, A: LCTreeNode, B: LCTreeNode) -> LCTreeNode? {
        guard let root = root else {
            return nil
        }
        
        if root == A || root == B {
            return root
        }
        
        // Divide
        let left = LCLowestCommonAncestor.lowestCommonAncestor(root.left, A: A, B: B)
        let right = LCLowestCommonAncestor.lowestCommonAncestor(root.right, A: A, B: B)
        
        // Conquer
        if left != nil && right != nil {
            return root
        }
        
        if left != nil {
            return left
        }
        
        if right != nil {
            return right
        }
        
        return nil
    }
}
