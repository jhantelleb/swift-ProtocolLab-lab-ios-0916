//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        if password.count > 10 || password.isEmpty {
            return false
        } else {
            for (index, value) in password.enumerated() {
                if index % 2 == 0 && value % 2 == 0 { return true
                } else { return false }}
        }
    return false }
}




