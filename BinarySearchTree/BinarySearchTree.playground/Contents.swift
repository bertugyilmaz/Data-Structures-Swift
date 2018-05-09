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

extension Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.left == rhs.left && lhs.right == rhs.right && (lhs.value != nil) && (rhs.value != nil)
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
    
    func getMinValue(node: Node!) -> Int! {
        if node == nil { return nil }
        
        var temp: Node = node
        
        while temp.left != nil {
            temp = temp.left
        }
        return temp.value
    }
    
    func getMaxValue(node: Node!) -> Int! {
        if node == nil { return nil }
        
        var temp: Node = node
        
        while temp.right != nil {
            temp = temp.right
        }
        
        return temp.value
    }
    
    func successor(node: Node!) -> Node {
        
        var tempParent: Node = node
        var temp: Node = node
        var currentTemp: Node! = node.right
        
        while currentTemp != nil {
            tempParent = temp
            temp = currentTemp
            currentTemp = currentTemp.left
        }
        
        if temp != node.right {
            tempParent.left = tempParent.right
            temp.right = root.right
        }
        
        return temp
    }
    
    func insert(value: Int) {
        var tempParent: Node!
        var temp: Node! = root
        
        while temp != nil {
            tempParent = temp
            
            if value == temp.value {
                return
            }else if value < temp.value {
                temp = temp.left
            }else if value > temp.value {
                temp = temp.right
            }
        }
        
        let newNode: Node = Node(value: value)
        
        if root == nil {
            root = newNode
        }else if value < tempParent.value {
            tempParent.left = newNode
        }else if value > tempParent.value {
            tempParent.right = newNode
        }
    }
    
    func remove(value: Int) -> Bool{
        var tempParent: Node!
        var temp: Node! = root
        
        var isLeft: Bool = true
        
        while temp.value != value {
            tempParent = temp
            if value < temp.value {
                isLeft = true
                temp = temp.left
            }else {
                isLeft = false
                temp = temp.right
            }
            
            if temp == nil {
                return false
            }
        }
        
        if temp.left == nil && temp.right == nil {
            if temp == root {
                root = nil
            }else if isLeft {
                tempParent.left = nil
            }else {
                tempParent.right = nil
            }
        }else if temp.right == nil {
            if temp == root {
                root = temp.left
            }else if isLeft {
                tempParent.left = temp.left
            }else {
                tempParent.right = temp.left
            }
        }else if temp.left == nil {
            if temp == root {
                root = temp.right
            }else if isLeft {
                tempParent.left = temp.right
            }else {
                tempParent.right = temp.right
            }
        }else {
            let successor: Node = self.successor(node: temp)
            if temp == root {
                root = successor
            }else if isLeft {
                tempParent.left = successor
            }else {
                tempParent.right = successor
            }
            
            successor.left = temp.left
        }
        return true
    }
}
