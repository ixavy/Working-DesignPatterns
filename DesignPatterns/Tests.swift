//
//  Tests.swift
//  DesignPatterns
//
//  Created by iXavy on 27/11/22.
//

import Foundation

enum typeTest{
    //  Creacionales
    case FactoryMethod
    case AbstractFactory
    case Builder
    case Prototype
    case Singleton
    
    //  Estructurales
    case Adapter
    case Bridge
    case Composite
    case Decorator
    case Facade
    case Flyweight
    case Proxy
    
    //  Comportamiento
    case ChainOfResponsibility
    case Command
    case Iterator
    case Mediator
    case Memento
    case Observer
    case State
    case Strategy
    case TemplateMethod
    case Visitor
}

struct Tests {
    
    let test: typeTest = typeTest.FactoryMethod
    
    init() {
        switch test {
        case typeTest.FactoryMethod:
            testFactoryMethod()
        default:
            testFactoryMethod()
        }
    }

    func testFactoryMethod() {
        var payment: Payment
        payment = PaymentFactory.buildPayment(paymentType: .CARD)
        payment.doPayment()
    }
}
