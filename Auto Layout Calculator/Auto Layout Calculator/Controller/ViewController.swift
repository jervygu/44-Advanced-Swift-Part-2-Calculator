//
//  ViewController.swift
//  Auto Layout Calculator
//
//  Created by Jaypee Umandap on 6/11/20.
//  Copyright © 2020 Jervy Umandap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishTypingNumber: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label text to a Double")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        // when non-number button is pressed
//        if let calcButton =
        isFinishTypingNumber = true
        
        
        if let calcMethod = sender.currentTitle {
            
            let calculator = CalculatorLogic(number: displayValue)
            
            guard let result = calculator.calculate(symbol: calcMethod) else {
                fatalError("The result of the calculation is nil")
            }
            displayValue = result
            
            
            
//            if calcMethod == "+/-" {
////                displayLabel.text = String(displayValue * -1)
////                displayValue = displayValue * -1
//                displayValue *= -1
//            } else if calcMethod == "AC" {
//                displayLabel.text = "0"
//            } else if calcMethod == "%" {
////                displayLabel.text = String(displayValue / 100) // number * 0.01
//                displayValue /= 100
//            }
        }
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        // when number button is pressed
        
        if let numValue = sender.currentTitle {
            if isFinishTypingNumber {
                displayLabel.text = numValue
                isFinishTypingNumber = false
            } else {
                if numValue == "." {
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
    }
    
    
    
}

