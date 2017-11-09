//
//  main.swift
//  domain-model
//
//  Created by Yongjun Park on 10/17/17.
//  Copyright © 2017 Yongjun Park. All rights reserved.
//

import Foundation


print("Hello, World!")

var money = Money(amount: 200, currency: .USD)
print("\(money.amount) To CAN : \(money.convert(newCurrency: .CAN))")

var moneyEUR = Money(amount: 400, currency: .EUR)


print("200 USD + 400 EUR \(money.add(other: moneyEUR))")
print("400 EUR - 200 USD \(moneyEUR.subtract(other: money))")

var job = Job(title: "Software Engineer", salery: Job.Salary.hourly(50.0))

print("Software Engineer $40/hr calcualte 80hrs: \(job.calculateIncome(hours: 80))")
print("Software Engineer $40/hr raise 10%: \(job.raise(percentage: 0.1) )")

var job2 = Job(title: "Software Engineer", salery: Job.Salary.yearly(103000.0))

print("Software Engineer $100000.0/yr calcualte 80hrs: \(job2.calculateIncome(hours: 80))")
print("Software Engineer $100000.0/yr raise 10%: \(job2.raise(percentage: 0.1) )")

var son = Person(firstName: "lazy", lastName: "son", age: 23, job: nil, spouse: nil)
var mom = Person(firstName: "Dudette", lastName: "Dudeson", age: 43, job: job, spouse: nil)
var dad = Person(firstName: "Dude", lastName: "Dudeson", age: 45, job: job2, spouse: nil)
dad.spouse = mom
mom.spouse = dad
print(mom.toString())
print(dad.toString())
print(son.toString())

let family = Family(members: [son, mom, dad])
print(family.description)
