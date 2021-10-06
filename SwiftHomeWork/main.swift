//
//  main.swift
//  SwiftHomeWork
//
//  Created by Валерия Сакович on 27.09.21.
//

import Foundation

struct Queue<T> {
    var elements: [T] = []
    
    mutating func addElement(_ value: T) {
        elements.append(value)
    }
    
    mutating func removeFirstElement() {
        elements.removeFirst()
    }
    
    mutating func sortQueue(queue: Queue, closure: (T) -> Bool) -> [T] {
        var sortedQueue = [T]()
        for element in queue.elements {
            if closure(element) {
                sortedQueue.append(element)
            }
        }
        return sortedQueue
    }
    
    subscript(index: Int) -> T? {
        switch true {
        case index <= elements.count:
            return elements[index]
        default:
            return nil
        }
    }
}

var users = Queue(elements: ["Владислав" ,"Максим", "Валерия", "Татьяна", "Михаил", "Мария"])

var wallet = Queue(elements: [1000, 100, 2000, 5000, 1000, 5000])
 
var sortedWallet = wallet.sortQueue(queue: wallet, closure: { element in element >= 1000 && element <= 2000})

print(sortedWallet)

var sortedUsers = users.sortQueue(queue: users, closure: { element in element.hasPrefix("М") })

print(sortedUsers)
