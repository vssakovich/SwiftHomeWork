//
//  main.swift
//  SwiftHomeWork
//
//  Created by Валерия Сакович on 27.09.21.
//

import Foundation

class Car {
    let name: String
    var year: Int
    let color: String
    var mileage: Int
    let engineCapacity: Double
    var doorState: DoorActions
    var windowState: WindowActions
    var engineState: EngineActions
    
    init(name: String, year: Int, color: String, mileage: Int, engineCapacity: Double, doorState: DoorActions, windowState: WindowActions, engineState: EngineActions) {
        self.name = name
        self.year = year
        self.color = color
        self.mileage = mileage
        self.engineCapacity = engineCapacity
        self.doorState = doorState
        self.windowState = windowState
        self.engineState = engineState
    }
    
    func printGeneralCharacts() {
        print("Имя \(name), год выпуска \(year), цвет \(color), пробег \(mileage), объем двигателя \(engineCapacity)")
    }
}

final class TrunkCar: Car {
    let loadCapacity: Double
    let cargoType: String
    let bodyType: String
    var trunkState: TrunkActions
    
    init(name: String, year: Int, color: String, mileage: Int, engineCapacity: Double, doorState: DoorActions, windowState: WindowActions, engineState: EngineActions, loadCapacity: Double, cargoType: String, bodyType: String, trunkState: TrunkActions) {
        self.loadCapacity = loadCapacity
        self.cargoType = cargoType
        self.bodyType = bodyType
        self.trunkState = trunkState
        super.init(name: name, year: year, color: color, mileage: mileage, engineCapacity: engineCapacity, doorState: doorState, windowState: windowState, engineState: engineState)
    }
    
    override func printGeneralCharacts() {
        print("Особенности грузового автомобиля: грузоподъемность \(loadCapacity), тип груза \(cargoType), тип кузова \(bodyType), состояние кузова \(trunkState)")
    }
}

final class SportCar: Car {
    let doorNumber: Int
    let carClass: String
    let safityRating: Int
    var hatchState: HatchActions
    
    init(name: String, year: Int, color: String, mileage: Int, engineCapacity: Double, doorState: DoorActions, windowState: WindowActions, engineState: EngineActions, doorNumber: Int, carClass: String, safityRating: Int, hatchState: HatchActions) {
        self.doorNumber = doorNumber
        self.carClass = carClass
        self.safityRating = safityRating
        self.hatchState = hatchState
        super.init(name: name, year: year, color: color, mileage: mileage, engineCapacity: engineCapacity, doorState: doorState, windowState: windowState, engineState: engineState)
    }
    
    override func printGeneralCharacts() {
        super.printGeneralCharacts()
        print("Особенности легкового автомобиля: количество дверей \(doorNumber), класс машины \(carClass), уровень безопасности \(safityRating), состояние люка \(hatchState)")
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

enum EngineActions: String {
    case turnOn = "Двигатель запущен"
    case turnOff = "Двигатель заглушен"
}

enum TrunkActions: String {
    case load = "Груз загружен"
    case unload = "Груз разгружен"
}

enum HatchActions: String {
    case open = "Люк открыт"
    case close = "Люк закрыт"
}

var car = Car(name: "KIA", year: 2020, color: "Black", mileage: 20, engineCapacity: 100, doorState: .close, windowState: .close, engineState: .turnOff)

var trunkCar = TrunkCar(name: "KIA", year: 2000, color: "Grey", mileage: 200000, engineCapacity: 100, doorState: .close, windowState: .close, engineState: .turnOn, loadCapacity: 500, cargoType: "Кирпич", bodyType: "Прицеп", trunkState: .unload)

var sportCar = SportCar(name: "KIA", year: 2021, color: "White", mileage: 20, engineCapacity: 100, doorState: .close, windowState: .close, engineState: .turnOff, doorNumber: 4, carClass: "S", safityRating: 89, hatchState: .close)

car.printGeneralCharacts()
trunkCar.printGeneralCharacts()
sportCar.printGeneralCharacts()

trunkCar.doorState = .open

sportCar.year = 2017
print(sportCar.year)


