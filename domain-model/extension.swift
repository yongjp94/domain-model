//
//  extension.swift
//  domain-model
//
//  Created by Yongjun Park on 10/17/17.
//  Copyright © 2017 Yongjun Park. All rights reserved.
//

import Foundation

extension Double {
    var USD: Money { return Money(amount: self, currency: .USD) }
    var EUR: Money { return Money(amount: self, currency: .EUR) }
    var GBP: Money { return Money(amount: self, currency: .GBP) }
    var CAN: Money { return Money(amount: self, currency: .CAN) }
}
