//
//  main.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

// Temp Data
let basement = Basement(size: FLOOR_SIZE)
let groundFloor = GroundFloor(size: FLOOR_SIZE)
let secondFloor = SecondFloor()

for i in 0..<15 {
    basement.push(object: Car(name: "basement\(i)"))
    groundFloor.insert(object: Car(name: "groundFloor\(i)"))
    secondFloor.insertLast(object: Car(name: "seconFloor\(i)"))
}


while true {
    
    if basement.isEmpty() && groundFloor.isEmpty() {
        print("Ended")
        break
    }
    
    if random(1..<3) == 1 {
        if !basement.isEmpty() {
            secondFloor.insertLast(object: basement.pop())
        }
    }else {
        if !groundFloor.isEmpty() {
            secondFloor.insertLast(object: groundFloor.remove())
        }
    }
}




