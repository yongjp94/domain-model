//
//  money.swift
//  domain-model
//
//  Created by Yongjun Park on 10/17/17.
//  Copyright © 2017 Yongjun Park. All rights reserved.
//

import Foundation


protocol Mathematics {
    func add(other: Money) -> Double
    func subtract(other: Money) -> Double
}

struct Money: CustomStringConvertible, Mathematics {
    
    enum Currency {
        case USD
        case GBP
        case EUR
        case CAN
    }
    
    var description: String {
        return "\(self.currency)\(self.amount)"
    }
    
    var amount : Double
    
    var currency : Currency
    
    init(amount: Double, currency: Currency) {
        self.currency = currency
        self.amount = amount
    }
    
    
    
    //takes a new currency and coverts the
    func convert(newCurrency: Currency) -> Double {
        switch self.currency {
        case .USD:
            switch newCurrency {
            case .GBP:
                return self.amount * 0.5
            case .EUR:
                return self.amount * 1.5
            case .CAN:
                return self.amount * 1.25
            default:
                break
            }
        case .GBP:
            switch newCurrency {
            case .CAN:
                return self.amount * 2.5
            case .EUR:
                return self.amount * 3
            case .USD:
                return self.amount * 2
            default:
                break
            }
        case .EUR:
            switch newCurrency {
            case .CAN:
                return self.amount * (5.0/6.0)
            case .USD:
                return self.amount * (2.0/3.0)
            case .GBP:
                return self.amount * (1.0/3.0)
            default:
                break
            }
        case .CAN:
            switch newCurrency {
            case .USD:
                return self.amount * (4.0/5.0)
            case .GBP:
                return self.amount * (2.0/5.0)
            case .EUR:
                return self.amount * (6.0/5.0)
            default:
                break
            }
        }
        return self.amount
    }
    
    func add(other money: Money) -> Double {
        let sum = money.convert(newCurrency: self.currency)
        return self.amount + sum
    }
    
    func subtract(other money: Money) -> Double {
        let sum = money.convert(newCurrency: self.currency)
        return self.amount - sum
    }
    
}
