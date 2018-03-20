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
    private var identifier: Int!
    private var nameStr: String!
    private var randomTime: Int!
    private var waitingtime: Int!
    
    init(name: String!) {
        super.init()
        self.identifier = self.random(1000..<2000)
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
    
    var id: Int! {
        get {
            return self.identifier
        }
    }
    
    var waitingTime: Int! {
        get {
            return self.waitingtime
        } set {
            self.waitingtime = newValue
        }
    }
    
    private func random(_ range:Range<Int>) -> Int {
        return range.lowerBound + Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound)))
    }
}
