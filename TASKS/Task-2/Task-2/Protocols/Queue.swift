//
//  Queue.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

protocol Queue {
    func insert(object: NSObject)
    func remove()->NSObject
    func peek()->NSObject
    func isEmpty()->Bool
}
