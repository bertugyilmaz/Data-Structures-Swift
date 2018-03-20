//
//  Car.swift
//  Task-1
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation
import Darwin

class Car: NSObject {
    private var nameStr: String!
    private var randomTime: Int!
    
    init(name: String!) {
        super.init()
        self.nameStr = name
        self.randomTime = self.random(10..<300)
    }
    
    var name: String! {
        get{
            return self.nameStr
        }
    }
    
    var time: Int! {
        get {
            return self.randomTime
        }
    }
    
    func random(_ range:Range<Int>) -> Int {
        return range.lowerBound + Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound)))
    }
}
