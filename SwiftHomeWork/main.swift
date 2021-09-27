//
//  main.swift
//  SwiftHomeWork
//
//  Created by Валерия Сакович on 27.09.21.
//

import Foundation

struct SportCar {
    let name: String
    let year: Int
    let color: String
    var mileage: Int
    let trunkCapacity: Double
    var trunkFullness: Double
    let engineCapacity: Double
    let doorNumber: Int
    
    var doorState: DoorActions {
        willSet {
            newValue == .open ? print("Двери открываются") : print("Двери закрываются")
        }
    }
    
    mutating func openDoors () {
        if self.doorState == .open {
            print("Двери \(name) уже открыты")
        } else {
        self.doorState = .open
        print("Двери \(name) открыты")
        }
    }
    
    mutating func closeDoors () {
        if self.doorState == .close {
            print("Двери \(name) уже закрыты")
        } else {
        self.doorState = .close
        print("Двери \(name) закрыты")
        }
    }
    
    var windowState: WindowActions {
        willSet {
            newValue == .open ? print("Окна открываются") : print("Окна закрываются")
        }
    }
    
    mutating func openWindows () {
        if self.windowState == .open {
            print("Окна \(name) уже открыты")
        } else {
        self.windowState = .open
        print("Окна \(name) открыты")
        }
    }
    
    mutating func closeWindows () {
        if self.windowState == .close {
            print("Окна \(name) уже закрыты")
        } else {
        self.windowState = .close
        print("Окна \(name) закрыты")
        }
    }
    
    var engineState: EngineActions {
        willSet {
            newValue == .turnOn ? print("Двигатель заводится") : print("Двигатель заглушается")
        }
    }
    
    mutating func turnOnEngine() {
        if self.engineState == .turnOn {
            print("Двигатель \(name) уже запущен")
        } else {
        self.engineState = .turnOn
        print("Двигатель \(name) запущен")
        }
    }
    
    mutating func turnOffEngine() {
        if self.engineState == .turnOff {
            print("Двигатель \(name) уже заглушен")
        } else {
        self.engineState = .turnOff
        print("Двигатель \(name) заглушен")
        }
    }

   mutating func checkTrunkStatus(_ cargo: Double) {
        if trunkFullness == trunkCapacity {
            print("Багажник заполнен, груз не влезет")
        } else if cargo <= trunkCapacity - trunkFullness {
            trunkFullness += cargo
            print("Груз погружен")
        } else {
            print("Груз слишком большой")
        }
    }
}

struct TrunkCar {
    let name: String
    let year: Int
    let color: String
    var mileage: Int
    let trunkCapacity: Double
    var trunkFullness: Double
    let engineCapacity: Double
    
    var doorState: DoorActions {
        willSet {
            newValue == .open ? print("Двери открываются") : print("Двери закрываются")
        }
    }
    
    mutating func openDoors () {
        if self.doorState == .open {
            print("Двери \(name) уже открыты")
        } else {
        self.doorState = .open
        print("Двери \(name) открыты")
        }
    }
    
    mutating func closeDoors () {
        if self.doorState == .close {
            print("Двери \(name) уже закрыты")
        } else {
        self.doorState = .close
        print("Двери \(name) закрыты")
        }
    }
    
    var windowState: WindowActions {
        willSet {
            newValue == .open ? print("Окна открываются") : print("Окна закрываются")
        }
    }
    
    mutating func openWindows () {
        if self.windowState == .open {
            print("Окна \(name) уже открыты")
        } else {
        self.windowState = .open
        print("Окна \(name) открыты")
        }
    }
    
    mutating func closeWindows () {
        if self.windowState == .close {
            print("Окна \(name) уже закрыты")
        } else {
        self.windowState = .close
        print("Окна \(name) закрыты")
        }
    }
    
    var engineState: EngineActions {
        willSet {
            newValue == .turnOn ? print("Двигатель заводится") : print("Двигатель заглушается")
        }
    }
    
    mutating func turnOnEngine() {
        if self.engineState == .turnOn {
            print("Двигатель \(name) уже запущен")
        } else {
        self.engineState = .turnOn
        print("Двигатель \(name) запущен")
        }
    }
    
    mutating func turnOffEngine() {
        if self.engineState == .turnOff {
            print("Двигатель \(name) уже заглушен")
        } else {
        self.engineState = .turnOff
        print("Двигатель \(name) заглушен")
        }
    }
    
    mutating func checkTrunkStatus(_ cargo: Double) {
         if trunkFullness == trunkCapacity {
             print("Багажник заполнен, груз не влезет")
         } else if cargo <= trunkCapacity - trunkFullness {
             trunkFullness += cargo
             print("Груз погружен")
         } else {
             print("Груз слишком большой")
         }
     }
}

enum DoorActions: String {
    case open = "Двери открыты"
    case close = "Двери закрыты"
}

enum WindowActions: String {
    case open = "Окна открыты"
    case close = "Окна закрыты"
}

enum TrunkActions: String {
    case load = "Багажник загружен"
    case unload = "Багажник разгружен"
}

enum EngineActions: String {
    case turnOn = "Двигатель запущен"
    case turnOff = "Двигатель заглушен"
}

var mercSprinter = SportCar(name: "Mercedes", year: 1997, color: "White", mileage: 200000, trunkCapacity: 25, trunkFullness: 12, engineCapacity: 190, doorNumber: 4, doorState: DoorActions.open, windowState: WindowActions.close, engineState: EngineActions.turnOff)

print(mercSprinter.name, mercSprinter.color)
mercSprinter.checkTrunkStatus(14)
mercSprinter.checkTrunkStatus(13)
mercSprinter.closeDoors()
mercSprinter.closeWindows()
mercSprinter.turnOnEngine()

