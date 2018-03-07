// Created by Bertug YILMAZ
// 06/03/2018
//
// Simple Linked List

import UIKit
import Foundation

class Node {
    var data: Int!
    var next: Node!
    
    init(data: Int) {
        self.data = data
    }
}

class LinkedList {
    private var size: Int = 0
    private var head: Node!
    
    var listSize: Int {
        get {
            return size
        }
    }
}

extension LinkedList {
    
    func insertFirst(value: Int){
        let newNode = Node(data: value)
        
        if self.head == nil {
            self.head = newNode
        }else {
            newNode.next = self.head
            self.head = newNode
        }
        
        self.size += 1
    }
    
    func insertLast(value: Int){
        let newNode = Node(data: value)
        
        if self.head == nil {
            self.insertFirst(value: value)
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

    func insertPosition(position: Int, value: Int){
        let newNode = Node(data: value)
        var tempNode = self.head
        var prevNode: Node!
        var currentPosition: Int = 0
        
        if self.head == nil {
            insertFirst(value: value)
            return
        }
        
        if self.size < position + 1 {
            insertLast(value: value)
            return
        }
        
        while tempNode != nil {
            
            if currentPosition != position {
                prevNode = tempNode
                tempNode = tempNode?.next
          
                currentPosition += 1
            }else {
                if prevNode != nil {
                    newNode.next = tempNode
                    prevNode.next = newNode
                    self.head = prevNode
                    self.size += 1
                }else {
                    insertFirst(value: value)
                }
                
                break
            }
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

    
    func deleteLast(){
        if self.head != nil {
            var lastNode = self.head
            var tempNode: Node!
            
            while lastNode != nil {
                if lastNode?.next != nil {
                    tempNode = lastNode
                    lastNode = lastNode?.next
                }else{
                    lastNode = nil
                    if tempNode != nil {
                        tempNode.next = nil
                        self.head = tempNode
                    }else {
                        self.head = nil
                    }
                    break
                }
            }
            
            self.size -= 1
        }else {
            print("Empty list*")
        }
    }

    func deletePosition(position: Int){
        if self.head != nil {
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
    
    func getElements(){
        var tempNode = self.head
        var id: Int = 0
        
        while tempNode != nil {
            if let data = tempNode?.data {
                print("\(id) - Data: \(data)")
                tempNode = tempNode?.next
                id += 1
            }
        }
        
        print("\nSize: \(self.size)")
    }
}

    var linkedList = LinkedList()

    linkedList.insertFirst(value: 5)
    linkedList.insertLast(value: 6)
    linkedList.deleteFirst()
    linkedList.insertPosition(position: 0, value: 4)
    linkedList.deletePosition(position: 0)
    linkedList.getElements()

