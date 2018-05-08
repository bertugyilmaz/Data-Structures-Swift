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
}
