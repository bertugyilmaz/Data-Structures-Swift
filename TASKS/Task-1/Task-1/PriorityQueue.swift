//
//  PriorityQueue.swift
//  Task-1
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

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
    
    var queueArr: [NSObject]! {
        get {
            return self.queue 
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
                
                if i == -1 {
                    break
                }
                
                let insertedValue = object as! Car
                let queueElement = queue[i] as! Car
                
                if insertedValue.time < queueElement.time {
                    queue[i + 1] = queueElement
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
            print("Array is empty ")
            return NSObject()
        }
        
        let temp = queue[front]
        queue[front] = NSObject()
        
        front -= 1
        count -= 1
        
        return temp
    }
    
    func isEmpty() -> Bool {
        return count == 0 ? true : false
    }
}
