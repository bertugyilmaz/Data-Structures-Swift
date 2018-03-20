//
//  main.swift
//  Task-1
//
//  Created by Bertuğ Yılmaz on 20.03.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

var queue = SimpleQueue(size: 10)

var c1 = Car(name: "Mercedes")
var c2 = Car(name: "BMW")
var c3 = Car(name: "Seat")
var c4 = Car(name: "Honda")

queue.insert(object: c4)
queue.insert(object: c1)
queue.insert(object: c3)
queue.insert(object: c2)

var t: Int = 0
var t2: Int = 0

print("Simple Queue")
for i in 0..<queue.queueCount {
    if let car = queue.queueArr[i] as? Car{
        t += car.time
        car.waitingTime = t
        print("-----------------------------------------------------------------------------------------------------------------------------------------------------")
        print("--- index -> \(i) -- id -> \(car.id!) --- Name -> \(car.name!) ---------- Current Time Spent -> \(car.time!) -------- Time Spent -> \(t)sn")
        print("-----------------------------------------------------------------------------------------------------------------------------------------------------")
    }
}

print("\n--- AVARAGE -> \(t/queue.queueCount)")
print("\n\n")

var priorityQueue = PriorityQueue(size: 10)

priorityQueue.insert(object: c1)
priorityQueue.insert(object: c2)
priorityQueue.insert(object: c3)
priorityQueue.insert(object: c4)

print("Priority Queue")
for i in 0..<priorityQueue.queueCount {
    if let car = priorityQueue.queueArr[i] as? Car {
        t2 += car.time
        let diff = t2 - car.waitingTime!
        let rate = (Double(t2) / (Double(car.waitingTime) ) - 1) * 100

        print("-----------------------------------------------------------------------------------------------------------------------------------------------------")
        print("--- index -> \(i) -- id -> \(car.id!) --- Name -> \(car.name!) --- Current Time Spent -> \(car.time!) --- Time Spent -> \(t2)sn --- Diff -> \(diff) --- Rate -> \(String(format: "%.2f", rate))%")
        print("-----------------------------------------------------------------------------------------------------------------------------------------------------")
    }
}

print("\n--- AVARAGE -> \(t2/priorityQueue.queueCount)")
print("\n\n")





