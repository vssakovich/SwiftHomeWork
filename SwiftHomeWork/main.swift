//
//  main.swift
//  SwiftHomeWork
//
//  Created by Валерия Сакович on 27.09.21.
//

import Foundation

protocol CarProtocol {
    var model: String { get set }
    var year: Int { get set }
    var color: String { get set }
    var mileage: Int { get set }
    var trunkCapacity: Double { get set }
    var engineCapacity: Double { get set }
    var doorsState: DoorActions { get set }
    var windowsState: WindowActions { get set }
    var engineState: EngineActions { get set }
    
    func doSmthWithCar()
}

enum DoorActions {
    case open
    case close
}

enum WindowActions {
    case open
    case close
}

enum EngineActions {
    case turnOn
    case turnOff
}

extension CarProtocol {
    mutating func openDoors() {
        if self.doorsState == .open {
            print("Двери \(model) уже открыты")
        } else {
        self.doorsState = .open
        print("Двери \(model) открыты")
        }
    }
    mutating func closeDoors() {
        if self.doorsState == .close {
            print("Двери \(model) уже закрыты")
        } else {
        self.doorsState = .close
        print("Двери \(model) закрыты")
        }
    }
}

extension CarProtocol {
    mutating func openWindows() {
        if self.windowsState == .open {
            print("Окна \(model) уже открыты")
        } else {
        self.windowsState = .open
        print("Окна \(model) открыты")
        }
    }
    mutating func closeWindows() {
        if self.windowsState == .close {
            print("Окна \(model) уже закрыты")
        } else {
        self.windowsState = .close
        print("Окна \(model) закрыты")
        }
    }
}

extension CarProtocol {
    mutating func turnOnEngine() {
        if self.engineState == .turnOn {
            print("Двигатель \(model) уже запущен")
        } else {
        self.engineState = .turnOn
        print("Двигатель \(model) запущен")
        }
    }
    mutating func turnOffEngine() {
        if self.engineState == .turnOff {
            print("Двигатель \(model) уже заглушен")
        } else {
        self.engineState = .turnOff
        print("Двигатель \(model) заглушен")
        }
    }
}

final class TrunkCar: CarProtocol {
    var model: String
    
    var year: Int
    
    var color: String
    
    var mileage: Int
    
    var trunkCapacity: Double
    
    var engineCapacity: Double
    
    var doorsState: DoorActions
    
    var windowsState: WindowActions
    
    var engineState: EngineActions
    
    let loadCapacity: Double
    let cargoType: String
    let bodyType: String
    
    func doSmthWithCar() { }
    
    init(model: String, year: Int, color: String, mileage: Int, trunkCapacity: Double, engineCapacity: Double, doorsState: DoorActions, windowsState: WindowActions, engineState: EngineActions, loadCapacity: Double, cargoType: String, bodyType: String) {
        self.model = model
        self.year = year
        self.color = color
        self.mileage = mileage
        self.trunkCapacity = trunkCapacity
        self.engineCapacity = engineCapacity
        self.doorsState = doorsState
        self.windowsState = windowsState
        self.engineState = engineState
        self.loadCapacity = loadCapacity
        self.cargoType = cargoType
        self.bodyType = bodyType
    }
}

final class SportCar: CarProtocol {
    var model: String
    
    var year: Int
    
    var color: String
    
    var mileage: Int
    
    var trunkCapacity: Double
    
    var engineCapacity: Double
    
    var doorsState: DoorActions
    
    var windowsState: WindowActions
    
    var engineState: EngineActions
    
    let doorNumber: Int
    let carClass: String
    let safityRating: Int
    
    func doSmthWithCar() { }
    
    init(model: String, year: Int, color: String, mileage: Int, trunkCapacity: Double, engineCapacity: Double, doorsState: DoorActions, windowsState: WindowActions, engineState: EngineActions, doorNumber: Int, carClass: String, safityRating: Int) {
        self.model = model
        self.year = year
        self.color = color
        self.mileage = mileage
        self.trunkCapacity = trunkCapacity
        self.engineCapacity = engineCapacity
        self.doorsState = doorsState
        self.windowsState = windowsState
        self.engineState = engineState
        self.doorNumber = doorNumber
        self.carClass = carClass
        self.safityRating = safityRating
    }
}

protocol CustomStringConvertibleProtocol { }

extension TrunkCar: CustomStringConvertibleProtocol { }
extension SportCar: CustomStringConvertibleProtocol { }

var trunkCar = TrunkCar(model: "Citroen", year: 2000, color: "Grey", mileage: 100000, trunkCapacity: 500, engineCapacity: 80, doorsState: .close, windowsState: .close, engineState: .turnOff, loadCapacity: 500, cargoType: "Кирпич", bodyType: "Кузов")

var sportCar = SportCar(model: "KIA", year: 2020, color: "Black", mileage: 20, trunkCapacity: 50, engineCapacity: 110, doorsState: .open, windowsState: .open, engineState: .turnOff, doorNumber: 4, carClass: "S", safityRating: 89)

trunkCar.openDoors()
trunkCar.closeWindows()
trunkCar.turnOffEngine()

sportCar.closeDoors()
sportCar.closeWindows()
sportCar.turnOnEngine()

