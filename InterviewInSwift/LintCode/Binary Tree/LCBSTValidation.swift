//
//  LCBSTValidation.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 4/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Validate Binary Search Tree
// http://www.lintcode.com/en/problem/validate-binary-search-tree/

class LCBSTValidation: NSObject {
    private var lastVal = Int.min
    private var firstNode = true
    
    func isValidBST(root: LCTreeNode?) -> Bool {
        if let node = root {
            if !isValidBST(node.left) {
                return false
            }
            
            if !firstNode && lastVal >= node.val {
                return false
            }
            
            firstNode = false
            lastVal = node.val
            if (!isValidBST(node.right)) {
                return false
            }
        }
        
        return true
    }
}
