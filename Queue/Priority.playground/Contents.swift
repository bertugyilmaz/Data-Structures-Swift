//
// Created by Bertug YILMAZ
// 20/03/2018
//
// Priority Queue

import UIKit

class Person: NSObject {

    private var nameStr: String!
    private var surnameStr: String!
    private var ageStr: Int!
    
    var name: String! {
        get{
            return nameStr
        }set {
            self.nameStr = newValue
        }
    }
    
    var surname: String! {
        get{
            return surnameStr
        }set {
            self.surnameStr = newValue
        }
    }
    
    var age: Int! {
        get{
            return ageStr
        }set{
            self.ageStr = newValue
        }
    }
}

protocol Queue {
    func insert(object: NSObject)
    func remove()->NSObject
    func isEmpty()->Bool
}

class PriorityQueue {
    private var queue: [NSObject]
    private var front: Int = -1
    private var size: Int = 0
    private var count: Int = 0
    
    init(size: Int){
        self.size = size
        queue = [NSObject](repeating: NSObject(), count: self.size)
    }
    
    var queueCount: Int! {
        get {
            return self.count
        }
    }
}

extension PriorityQueue: Queue {
    func insert(object: NSObject) {

        if size == count {
            print("Queue size full")
            return
        }
        
        if isEmpty() {
            front += 1
            queue[front] = object
        }else {
            var i: Int = count - 1
            
            while true {
            
                if i == 0 {
                    break
                }
                
                let insertedValue = object as! Person
                let queueElement = queue[i] as! Person
                
                if insertedValue.age > queueElement.age {
                    queue[i + 1] = queue[i]
                }else {
                    break
                }
                i -= 1
            }
            queue[i + 1] = object
            front += 1
        }
        count += 1
    }
    
    func remove() -> NSObject {
        if isEmpty() {
            print("Array is empty  ")
            return NSObject()
        }
        
        var temp = queue[front]
        queue[front] = NSObject()
        
        front -= 1
        count -= 1
        
        return temp
    }
    
    func isEmpty() -> Bool {
        return count == 0 ? true : false
    }
    
    func getElement(){
        for q in queue {
            if let p = q as? Person {
                print(p.age)
            }
        }
    }
}

var arr = PriorityQueue(size: 5)

var p = Person()
p.name = "Bertug"
p.surname = "YILMAZ"
p.age = 22

var p2 = Person()
p2.age = 12

var p3 = Person()
p3.age = 4

arr.insert(object: p)
arr.insert(object: p2)
arr.insert(object: p3)
arr.insert(object: p)

arr.getElement()


