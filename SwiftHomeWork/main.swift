//
//  main.swift
//  SwiftHomeWork
//
//  Created by Валерия Сакович on 27.09.21.
//

import Foundation

enum BankUsersError {
    case error
}

enum CashWithdrawn: Error {
    case nameError
    case moneyAmountError
}

struct BankUsersParameters {
    var name: String
    var deposit: Int
}

final class BankUsers {
    var usersAndDeposits = ["Анна Иванова": BankUsersParameters(name: "Анна Иванова", deposit: 56890),
                            "Петр Сидоров": BankUsersParameters(name: "Петр Сидоров", deposit: 33446),
                            "Алексей Петров": BankUsersParameters(name: "Алексей Петров", deposit: 568895)]

    func checkAverageDeposit() -> (Double, BankUsersError?) {
        guard usersAndDeposits.count > 0 else { return (0, BankUsersError.error) }
        var totalDepositsSum: Double = 0
        for (_, deposit) in usersAndDeposits {
            totalDepositsSum += Double(deposit.deposit)
        }
        return ((totalDepositsSum / Double(usersAndDeposits.count)), nil)
    }
    
    func withdrawnMoneyFromDeposit(_ name: String, _ moneyAmount: Int) throws {
        guard var user = usersAndDeposits[name] else { throw CashWithdrawn.nameError }
        guard moneyAmount <= user.deposit else { throw CashWithdrawn.moneyAmountError }
        user.deposit -= moneyAmount
        print("Деньги были сняты со счета")
        }
}

var users = BankUsers()
print(users.checkAverageDeposit())

try? users.withdrawnMoneyFromDeposit("Петр Сидоров", 5666)

do {
    try users.withdrawnMoneyFromDeposit("Петр Сидоров", 700000009)
} catch CashWithdrawn.moneyAmountError {
    print("Недостаточно денег")
} catch CashWithdrawn.nameError {
    print("Неправильное имя пользователя")
}
