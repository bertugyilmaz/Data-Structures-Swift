//
//  CircularLinkedList.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

protocol CircularLinkedList {
    func insertLast(object: NSObject)
    func insertFirst(value: NSObject)
    func removeWithJosephus()
    func isEmpty() -> Bool
}
