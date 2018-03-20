//
//  Car.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

class Car: NSObject {
    private var identifier: Int!
    private var nameStr: String!
    
    init(name: String!) {
        super.init()
        self.identifier = random(1000..<2000)
        self.nameStr = name
    }
    
    var name: String! {
        get{
            return self.nameStr
        }
    }
    
    var id: Int! {
        get {
            return self.identifier
        }
    }
}
