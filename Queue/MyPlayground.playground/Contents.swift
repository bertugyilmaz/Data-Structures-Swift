//
// Created by Bertug YILMAZ
// 20/03/2018
//
// Simple Array Typed Queue

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
    func peek()->NSObject
    func isEmpty()->Bool
}

class SimpleArrayTypedQueue {
    private var queue: [NSObject]
    private var front: Int = -1
    private var rear: Int = 0
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

extension SimpleArrayTypedQueue: Queue {
    func insert(object: NSObject) {
        
        if size == count || rear == -1 {
            print("Queue size full")
            return
        }
        
        if front == -1 {
            front = 0
        }
        
        queue[rear] = object
        rear += 1
        count += 1
    }
    
    func remove() -> NSObject {
        var temp = queue[front]
        
        queue[front] = NSObject()
        front += 1
        count -= 1
        
        return temp
    }
    
    func peek() -> NSObject {
        var temp = queue[front]
        queue[front] = NSObject()
        queue[rear] = temp
        rear += 1
        front += 1
        
        return temp
    }
    
    func isEmpty() -> Bool {
        return count == 0 ? true : false
    }
}

var arr = SimpleArrayTypedQueue(size: 3)

var p = Person()
p.name = "Bertug"
p.surname = "YILMAZ"
p.age = 22

arr.insert(object: p )

print(arr.queueCount)


