//
//  CalculatorLogic.swift
//  Auto Layout Calculator
//
//  Created by Jaypee Umandap on 6/30/20.
//  Copyright © 2020 Jervy Umandap. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number / 100
        }
        return nil
    }
    
    
    
}
