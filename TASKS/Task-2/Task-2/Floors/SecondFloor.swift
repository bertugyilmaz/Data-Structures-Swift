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
    
    func removeWithJosephus() -> NSObject {
        let position: Int = findMyJosephus(n: size)
        
        if head != nil {
            var tempNode = self.head
            var prevNode: Node!
            var currentPosition: Int = 0
            let returnData: NSObject!
            
            while tempNode != nil {
                if currentPosition != position - 1{
                    prevNode = tempNode
                    tempNode = tempNode?.next
                    
                    currentPosition += 1
                }else {
                    if prevNode != nil {
                        returnData = tempNode?.data
                        prevNode?.next = tempNode?.next
                        self.size -= 1
                        
                        let car = returnData as! Car
                        print("Second Floor removed data --> \(car.name!)\n-------------------------------------------------------------------------------- ")
                        return returnData
                    }else {
                        return deleteFirst()
                    }
                }
            }
        }else {
            print("Empty list*")
            return NSObject()
        }
        return NSObject()
    }
    
    func deleteFirst() -> NSObject{
        if self.head != nil {
            let temp = head
            if self.head.next == nil {
                self.head = nil
            }else {
                self.head = self.head.next
            }
            
            self.size -= 1
            return (temp?.data)!
        }else {
            print("Empty list*")
            return NSObject()
        }
    }
    
    func isEmpty() -> Bool {
        return size == 0 ? true : false
    }
}
