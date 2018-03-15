//
// Created by Bertug YILMAZ
// 10/03/2018
//
// Array Typed Stack

import UIKit
import Foundation

class Person: NSObject {
    
    private var nameStr: String!
    private var surnameStr: String!
    private var ageStr: String!
    
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
    
    var age: String! {
        get{
            return ageStr
        }set{
            self.ageStr = newValue
        }
    }
}

protocol Stack {
    var top: Int! { get set }
    func push(object: NSObject)
    func pop() -> NSObject
    func peek() -> NSObject
    func isEmpty() -> Bool
}

class ArrayTypedStack: Stack {
    private var items: [NSObject]!
    var top: Int! = -1
    
    init(itemsCount: Int){
        self.items = [NSObject](repeating: NSObject(), count: itemsCount)
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
        
        var temp = items[top]
        items[top] = NSObject()
        top = top - 1
        
        return temp
    }
    
    func peek() -> NSObject {
        if isEmpty() {
            print("Array is empty")
            return NSObject()
        }
        print(top)
        return items[top]
    }
    
    func isEmpty() -> Bool {
        return top == -1 ? true : false
    }
}





