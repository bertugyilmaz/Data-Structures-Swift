//
//  Helper.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

func findMyJosephus(n: Int)-> Int {
    var y: Int!
    var base: Int = 2
    var pow: Int!
    
    while base < n {
        base = base * 2
    }
    
    if base > n {
        pow = base / 2
    }else {
        pow = base
    }
    
    y = n - pow
    
    return 2 * y + 1
}

func random(_ range:Range<Int>) -> Int {
    return range.lowerBound + Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound)))
}
