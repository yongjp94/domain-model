//
//  family.swift
//  domain-model
//
//  Created by Yongjun Park on 10/17/17.
//  Copyright © 2017 Yongjun Park. All rights reserved.
//

import Foundation


class Family: CustomStringConvertible {
    var members : [Person]
    
    var description: String {
        return "\(self.members.description)"
    }
    
    init(members: [Person]) {
        self.members = members
    }
    
    func householdIncome() -> Double {
        var total = 0.0
        
        for person in members {
            if let job = person.job {
                switch job.salary {
                case .yearly(let amount):
                    total += amount
                case .hourly(let amount):
                    total += amount
                }
            }
        }
        return total
    }
    
    func haveChild() -> [Person] {
        for person in members {
            if person.age >= 21 {
                members.append(Person(firstName: "", lastName: "", age: 0, job: nil, spouse: nil))
                return members
            }
        }
        return members
    }
}
