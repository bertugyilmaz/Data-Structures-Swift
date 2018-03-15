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

