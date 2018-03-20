//
//  Stack.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

protocol Stack {
    var top: Int! { get set }
    func push(object: NSObject)
    func pop() -> NSObject
    func peek() -> NSObject
    func isEmpty() -> Bool
}
