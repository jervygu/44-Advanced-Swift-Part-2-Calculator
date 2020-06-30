//
//  CalculatorLogic.swift
//  Auto Layout Calculator
//
//  Created by Jaypee Umandap on 6/30/20.
//  Copyright © 2020 Jervy Umandap. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    // tuples
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n / 100
            case "=":
                return performTwoNumCalculation(n2: n)
            default :
                intermediateCalculation = (n1: n, calcMethod: symbol) // need mutating
            }
            
        }
        return nil
    }
    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        // optional chaining
        if let n1 = intermediateCalculation?.n1,
            let operation = intermediateCalculation?.calcMethod {
            
//            if operation == "+" {
//                return n1 + n2
//            }
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "x":
                return n1 * n2
            case "÷":
                return n1 / n2
            default:
                fatalError("Fatal error, the operation does not match any of the cases.")
            }
        }
        return nil
    }
    
}
