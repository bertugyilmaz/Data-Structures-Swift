//
//  main.swift
//  Task-2
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

let programStart = Date()
// Temp Data
let basement = Basement(size: FLOOR_SIZE)
let groundFloor = GroundFloor(size: FLOOR_SIZE)
let secondFloor = SecondFloor()

print("############TEMP DATA ")
for i in 0..<15 {
    basement.push(object: Car(name: "basement\(i)"))
    groundFloor.insert(object: Car(name: "groundFloor\(i)"))
    secondFloor.insertLast(object: Car(name: "secondFloor\(i)"))
}
print("############TEMP DATA ")

while true {
    
    if basement.isEmpty() && groundFloor.isEmpty() {
        print("Ended")
        break
    }
    
    groundFloor.remove()
   
    if random(1..<3) == 2 && !basement.isEmpty() {
        groundFloor.insert(object: basement.pop())
    }else {
        if !secondFloor.isEmpty() {
            groundFloor.insert(object: secondFloor.removeWithJosephus())
            
        }
    }
}

let programFinish = Date()
let executionTime = programFinish.timeIntervalSince(programStart)
print("\n\nExecution time: \(executionTime)")
print("\nIt solved in 5 minutes \(executionTime*5)\n")



