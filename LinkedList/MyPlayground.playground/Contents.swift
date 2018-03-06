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
        var tempNode = Node(data: value)
        
        if self.head == nil {
            self.head = tempNode
        }else {
            tempNode.next = self.head
            self.head = tempNode
        }
        
        self.size += 1
    }
    
    func insertLast(value: Int){
        var tempNode = Node(data: value)
        
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
            
            lastNode?.next = tempNode
            
            self.size += 1
        }
    }
    
    func deleteFirst(){
        if self.head != nil {
            if self.head.next != nil {
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
    
    func getElements(){
        var tempNode = self.head

        while tempNode != nil {
            if let data = tempNode?.data {
                print("Data: \(data)")
                tempNode = tempNode?.next
            }
        }
    }
}

