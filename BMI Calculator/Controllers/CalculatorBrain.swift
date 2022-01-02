//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by mac on 1/2/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        bmi = BMI(value: bmiValue, advice: switchAdvice(value: bmiValue), color: switchColors(value: bmiValue))
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func switchColors(value: Float) -> UIColor{
        switch value {
        case ...18.4:
            return .red
        case 18.5...24.8:
            return .blue
        case 24.9...:
            return .green
        default:
            return .white
        }
    }
    
    func setColor() -> UIColor {
        if let bmiColor = bmi?.color {
            return bmiColor
        } else {
            return .white
        }
    }
    
    func switchAdvice(value: Float) -> String {
        switch value {
        case ...18.4:
            return "Eat more pies!"
        case 18.5...24.8:
            return "You are doing well"
        case 24.9...:
            return "You need to watch it"
        default:
            return "Default"
        }
    }
    
    func setAdvice() -> String {
        guard let bmiAdvice = bmi?.advice else { return "" }
        return bmiAdvice
    }
}
