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




