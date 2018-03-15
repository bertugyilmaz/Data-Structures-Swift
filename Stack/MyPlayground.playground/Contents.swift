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

        return items[top]
    }
    
    func isEmpty() -> Bool {
        return top == -1 ? true : false
    }
}

var person = Person()
person.name = "Bertug"
person.surname = "Yılmaz"
person.age = "22"

var person2 = Person()
person2.name = "Bertug2"
person2.surname = "Yılmaz2"
person2.age = "222"

var arr = ArrayTypedStack(itemsCount: 4)

arr.push(object: person)
arr.push(object: person2)
arr.pop()

print("top index -> \(arr.top!)")

arr.push(object: person)
arr.push(object: person)

var peek = arr.peek() as! Person
print("peek      -> \(peek.name!)")

print("isEmpty   -> \(arr.isEmpty())")

arr.push(object: person2)

var peek2 = arr.peek() as! Person
print("peek2     -> \(peek2.name!)")
