//
//  SecondFloor.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

class SecondFloor {
    private var size: Int = 0
    private var head: Node!
    
    var listSize: Int {
        get {
            return self.size
        }
    }
}

extension SecondFloor: CircularLinkedList {

    func insertFirst(value: NSObject){
        let newNode = Node(data: value)
        
        if self.head == nil {
            self.head = newNode
        }else {
            newNode.next = self.head
            self.head = newNode
        }
        
        self.size += 1
    }
    
    func insertLast(object: NSObject) {
        let newNode = Node(data: object)
        
        if self.head == nil {
            self.insertFirst(value: object)
        }else {
            var lastNode = self.head
            
            while lastNode != nil {
                if lastNode?.next != nil {
                    lastNode = lastNode?.next
                }else {
                    break
                }
            }
            
            lastNode?.next = newNode
            
            self.size += 1
        }
    }
    
    func removeWithJosephus() {
        let position: Int = findMyJosephus(n: size)
        
        if head != nil {
            var tempNode = self.head
            var prevNode: Node!
            var currentPosition: Int = 0
            
            while tempNode != nil {
                if currentPosition != position {
                    prevNode = tempNode
                    tempNode = tempNode?.next
                    
                    currentPosition += 1
                }else {
                    if prevNode != nil {
                        prevNode?.next = tempNode?.next
                        self.size -= 1
                        break
                    }else {
                        deleteFirst()
                        break
                    }
                }
            }
        }else {
            print("Empty list*")
        }
    }
    
    func deleteFirst(){
        if self.head != nil {
            if self.head.next == nil {
                self.head = nil
            }else {
                self.head = self.head.next
            }
            
            self.size -= 1
        }else {
            print("Empty list*")
        }
    }
    
    func isEmpty() -> Bool {
        return size == 0 ? true : false
    }
    
    
}
