//: Playground - noun: a place where people can play

import UIKit

class Node {
    var value: Int!
    var left: Node!
    var right: Node!
    
    init(value: Int) {
        self.value = value
    }
}

class BinarySearchTree {
    var root: Node!
    
    init() {
        root = nil
    }
    
    func search(key: Int) -> Node! {
        return search(root: self.root, key: key)
    }
    
    private func search(root: Node!, key: Int) -> Node! {
        
        if root == nil { return nil }
        
        if root.value == key {
            return root
        }else if root.value > key {
            return search(root: root.left, key: key)
        }else {
            return search(root: root.right, key: key)
        }
    }
}
