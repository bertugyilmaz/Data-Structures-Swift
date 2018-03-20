//
//  Basement.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

class Basement: Stack {
    private var items: [NSObject]!
    var top: Int! = -1
    
    init(size: Int){
        self.items = [NSObject](repeating: NSObject(), count: size)
    }
    
    func push(object: NSObject) {
        if top + 1 == items.count {
            print("Array size full")
            return
        }
        top = top + 1
        items[top] = object
    }
    
    func pop() -> NSObject {
        if isEmpty() {
            print("Array is empty")
            return NSObject()
        }
        
        let temp = items[top]
        items[top] = NSObject()
        top = top - 1
        
        return temp
    }
    
    func peek() -> NSObject {
        if isEmpty() {
            print("Array is empty")
            return NSObject()
        }
        
        return items[top]
    }
    
    func isEmpty() -> Bool {
        return top == -1 ? true : false
    }
}
