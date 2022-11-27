//
//  PaymentFactory.swift
//  DesignPatterns
//
//  Created by iXavy on 25/11/22.
//

import Foundation

class PaymentFactory {
    static func buildPayment(paymentType: PaymentType) -> Payment {
        switch paymentType {
        case .GOOGLE:
            return GooglePayment()
        case .CARD:
            return CardPayment()
        }
    }
}
