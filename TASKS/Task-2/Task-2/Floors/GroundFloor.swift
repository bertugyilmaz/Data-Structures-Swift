//
//  GroundFloor.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

class GroundFloor {
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

extension GroundFloor: Queue {
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
        if isEmpty() {
            print("Array is empty  ")
            return NSObject()
        }
        
        let temp = queue[front]
        
        queue[front] = NSObject()
        front += 1
        count -= 1
        
        return temp
    }
    
    func peek() -> NSObject {
        if isEmpty() {
            print("Array is empty")
            return NSObject()
        }
        
        let temp = queue[front]
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
